; ModuleID = 'coreutils-8.27/src/readlink.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.hash_tuning = type { float, float, float, float, i8 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%struct.F_triple = type { i8*, i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Print value of a symbolic link or canonical file name\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [437 x i8] c"  -f, --canonicalize            canonicalize by following every symlink in\0A                                every component of the given name recursively;\0A                                all but the last component must exist\0A  -e, --canonicalize-existing   canonicalize by following every symlink in\0A                                every component of the given name recursively,\0A                                all components must exist\0A\00", align 1
@.str.4 = private unnamed_addr constant [522 x i8] c"  -m, --canonicalize-missing    canonicalize by following every symlink in\0A                                every component of the given name recursively,\0A                                without requirements on components existence\0A  -n, --no-newline              do not output the trailing delimiter\0A  -q, --quiet,\0A  -s, --silent                  suppress most error messages (on by default)\0A  -v, --verbose                 report error messages\0A  -z, --zero                    end each output line with NUL, not newline\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"readlink\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"efmnqsvz\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@no_newline = internal unnamed_addr global i1 false, align 1
@verbose = internal unnamed_addr global i1 false, align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Dmitry V. Levin\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"ignoring --no-newline with multiple arguments\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"canonicalize\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"canonicalize-existing\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"canonicalize-missing\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"no-newline\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), align 8, !dbg !72
@.str.17 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !78
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !83
@.str.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !86
@.str.51 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.52 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.53 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.54 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4, !dbg !93
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !114
@.str.73 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.85, i32 0, i32 0), i8* null], align 16, !dbg !121
@.str.76 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.77 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.78 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.79 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.80 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.81 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.82 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.83 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.84 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.85 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !149
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !156
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !169
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.87 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.89 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.90 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.91 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !176
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !183
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !171
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !185
@.str.98 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.100 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.101 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.102 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.103 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.104 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.105 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.106 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.107 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.108 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.109 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.110 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.111 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.112 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.115 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.116 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.117 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.118 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.119 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !189
@.str.1.132 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.152 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.153 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.158 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !198
@.str.3.159 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.160 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.161 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.162 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.163 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.164 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !616 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !620, metadata !621), !dbg !622
  %2 = icmp eq i32 %0, 0, !dbg !623
  br i1 %2, label %8, label %3, !dbg !625

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !626, !tbaa !628
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #13, !dbg !626
  %6 = load i8*, i8** @program_name, align 8, !dbg !626, !tbaa !628
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #13, !dbg !626
  br label %42, !dbg !626

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #13, !dbg !632
  %10 = load i8*, i8** @program_name, align 8, !dbg !632, !tbaa !628
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #13, !dbg !632
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 5) #13, !dbg !634
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !628
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #13, !dbg !634
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([437 x i8], [437 x i8]* @.str.3, i64 0, i64 0), i32 5) #13, !dbg !635
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !628
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #13, !dbg !635
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([522 x i8], [522 x i8]* @.str.4, i64 0, i64 0), i32 5) #13, !dbg !636
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !636, !tbaa !628
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #13, !dbg !636
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #13, !dbg !637
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !628
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #13, !dbg !637
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #13, !dbg !638
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !638, !tbaa !628
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #13, !dbg !638
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !47, metadata !621) #13, !dbg !639
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !47, metadata !621) #13, !dbg !639
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #13, !dbg !641
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #13, !dbg !641
  %29 = tail call i8* @setlocale(i32 5, i8* null) #13, !dbg !642
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !55, metadata !621) #13, !dbg !643
  %30 = icmp eq i8* %29, null, !dbg !644
  br i1 %30, label %37, label %31, !dbg !646

; <label>:31:                                     ; preds = %8
  %32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #15, !dbg !647
  %33 = icmp eq i32 %32, 0, !dbg !647
  br i1 %33, label %37, label %34, !dbg !648

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0), i32 5) #13, !dbg !649
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #13, !dbg !649
  br label %37, !dbg !651

; <label>:37:                                     ; preds = %8, %31, %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #13, !dbg !652
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #13, !dbg !652
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #13, !dbg !653
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #13, !dbg !653
  br label %42

; <label>:42:                                     ; preds = %37, %3
  tail call void @exit(i32 %0) #16, !dbg !654
  unreachable, !dbg !654
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !655 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !660, metadata !621), !dbg !671
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !661, metadata !621), !dbg !672
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !662, metadata !621), !dbg !673
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !663, metadata !621), !dbg !674
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !665, metadata !621), !dbg !675
  %3 = load i8*, i8** %1, align 8, !dbg !676, !tbaa !628
  tail call void @set_program_name(i8* %3) #13, !dbg !677
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #13, !dbg !678
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #13, !dbg !679
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #13, !dbg !680
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #13, !dbg !681
  br label %8, !dbg !682

; <label>:8:                                      ; preds = %23, %2
  %9 = phi i8 [ 1, %23 ], [ 0, %2 ]
  %10 = phi i32 [ %12, %23 ], [ -1, %2 ]
  br label %11, !dbg !683

; <label>:11:                                     ; preds = %17, %8
  %12 = phi i32 [ %10, %8 ], [ %18, %17 ]
  br label %13, !dbg !683

; <label>:13:                                     ; preds = %22, %11
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !662, metadata !621), !dbg !673
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !665, metadata !621), !dbg !675
  %14 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #13, !dbg !683
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !664, metadata !621), !dbg !684
  switch i32 %14, label %28 [
    i32 -1, label %29
    i32 101, label %17
    i32 102, label %15
    i32 109, label %16
    i32 110, label %19
    i32 113, label %20
    i32 115, label %20
    i32 118, label %21
    i32 122, label %23
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !682, !llvm.loop !685

; <label>:15:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !662, metadata !621), !dbg !673
  br label %17, !dbg !687

; <label>:16:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !662, metadata !621), !dbg !673
  br label %17, !dbg !690

; <label>:17:                                     ; preds = %13, %16, %15
  %18 = phi i32 [ 1, %15 ], [ 2, %16 ], [ 0, %13 ]
  br label %11, !dbg !683, !llvm.loop !685

; <label>:19:                                     ; preds = %13
  store i1 true, i1* @no_newline, align 1
  br label %22, !dbg !691

; <label>:20:                                     ; preds = %13, %13
  store i1 false, i1* @verbose, align 1
  br label %22, !dbg !692

; <label>:21:                                     ; preds = %13
  store i1 true, i1* @verbose, align 1
  br label %22, !dbg !693

; <label>:22:                                     ; preds = %21, %20, %19
  br label %13, !dbg !673, !llvm.loop !685

; <label>:23:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !665, metadata !621), !dbg !675
  br label %8, !dbg !694, !llvm.loop !685

; <label>:24:                                     ; preds = %13
  tail call void @usage(i32 0) #17, !dbg !695
  unreachable, !dbg !695

; <label>:25:                                     ; preds = %13
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !696, !tbaa !628
  %27 = load i8*, i8** @Version, align 8, !dbg !696, !tbaa !628
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #13, !dbg !696
  tail call void @exit(i32 0) #16, !dbg !696
  unreachable, !dbg !696

; <label>:28:                                     ; preds = %13
  tail call void @usage(i32 1) #17, !dbg !697
  unreachable, !dbg !697

; <label>:29:                                     ; preds = %13
  %30 = load i32, i32* @optind, align 4, !dbg !698, !tbaa !700
  %31 = icmp slt i32 %30, %0, !dbg !702
  br i1 %31, label %34, label %32, !dbg !703

; <label>:32:                                     ; preds = %29
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #13, !dbg !704
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %33) #13, !dbg !706
  tail call void @usage(i32 1) #17, !dbg !707
  unreachable, !dbg !707

; <label>:34:                                     ; preds = %29
  %35 = sub nsw i32 %0, %30, !dbg !708
  %36 = icmp sgt i32 %35, 1, !dbg !710
  br i1 %36, label %37, label %44, !dbg !711

; <label>:37:                                     ; preds = %34
  %38 = load i1, i1* @no_newline, align 1
  br i1 %38, label %39, label %42, !dbg !712

; <label>:39:                                     ; preds = %37
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 5) #13, !dbg !714
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %40) #13, !dbg !716
  %41 = load i32, i32* @optind, align 4, !dbg !717, !tbaa !700
  br label %42, !dbg !716

; <label>:42:                                     ; preds = %39, %37
  %43 = phi i32 [ %41, %39 ], [ %30, %37 ], !dbg !717
  store i1 false, i1* @no_newline, align 1
  br label %44, !dbg !718

; <label>:44:                                     ; preds = %42, %34
  %45 = phi i32 [ %43, %42 ], [ %30, %34 ], !dbg !717
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !663, metadata !621), !dbg !674
  %46 = icmp slt i32 %45, %0, !dbg !719
  br i1 %46, label %47, label %92, !dbg !720

; <label>:47:                                     ; preds = %44
  %48 = icmp eq i32 %12, -1
  %49 = icmp eq i8 %9, 0
  %50 = select i1 %49, i32 10, i32 0
  %51 = trunc i32 %50 to i8
  br label %52, !dbg !720

; <label>:52:                                     ; preds = %47, %87
  %53 = phi i32 [ %45, %47 ], [ %90, %87 ]
  %54 = phi i32 [ 0, %47 ], [ %88, %87 ]
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !663, metadata !621), !dbg !674
  %55 = sext i32 %53 to i64, !dbg !721
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !721
  %57 = load i8*, i8** %56, align 8, !dbg !721, !tbaa !628
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !666, metadata !621), !dbg !722
  br i1 %48, label %60, label %58, !dbg !723

; <label>:58:                                     ; preds = %52
  %59 = tail call i8* @canonicalize_filename_mode(i8* %57, i32 %12) #13, !dbg !724
  br label %62, !dbg !723

; <label>:60:                                     ; preds = %52
  %61 = tail call i8* @areadlink_with_size(i8* %57, i64 63) #13, !dbg !725
  br label %62, !dbg !723

; <label>:62:                                     ; preds = %60, %58
  %63 = phi i8* [ %59, %58 ], [ %61, %60 ], !dbg !723
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !670, metadata !621), !dbg !726
  %64 = icmp eq i8* %63, null, !dbg !727
  br i1 %64, label %81, label %65, !dbg !729

; <label>:65:                                     ; preds = %62
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !730, !tbaa !628
  %67 = tail call i32 @fputs_unlocked(i8* nonnull %63, %struct._IO_FILE* %66) #13, !dbg !730
  %68 = load i1, i1* @no_newline, align 1
  br i1 %68, label %80, label %69, !dbg !732

; <label>:69:                                     ; preds = %65
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !733, metadata !621) #13, !dbg !739
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !742, !tbaa !628
  %71 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %70, i64 0, i32 5, !dbg !742
  %72 = load i8*, i8** %71, align 8, !dbg !742, !tbaa !743
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %70, i64 0, i32 6, !dbg !742
  %74 = load i8*, i8** %73, align 8, !dbg !742, !tbaa !747
  %75 = icmp ult i8* %72, %74, !dbg !742
  br i1 %75, label %78, label %76, !dbg !742, !prof !748

; <label>:76:                                     ; preds = %69
  %77 = tail call i32 @__overflow(%struct._IO_FILE* %70, i32 %50) #13, !dbg !742
  br label %80, !dbg !742

; <label>:78:                                     ; preds = %69
  %79 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !742
  store i8* %79, i8** %71, align 8, !dbg !742, !tbaa !743
  store i8 %51, i8* %72, align 1, !dbg !742, !tbaa !749
  br label %80, !dbg !742

; <label>:80:                                     ; preds = %78, %76, %65
  tail call void @free(i8* nonnull %63) #13, !dbg !750
  br label %87, !dbg !751

; <label>:81:                                     ; preds = %62
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !663, metadata !621), !dbg !674
  %82 = load i1, i1* @verbose, align 1
  br i1 %82, label %83, label %87, !dbg !752

; <label>:83:                                     ; preds = %81
  %84 = tail call i32* @__errno_location() #18, !dbg !754
  %85 = load i32, i32* %84, align 4, !dbg !754, !tbaa !700
  %86 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %57) #13, !dbg !756
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %86) #13, !dbg !757
  br label %87, !dbg !757

; <label>:87:                                     ; preds = %81, %83, %80
  %88 = phi i32 [ %54, %80 ], [ 1, %83 ], [ 1, %81 ]
  tail call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !663, metadata !621), !dbg !674
  %89 = load i32, i32* @optind, align 4, !dbg !758, !tbaa !700
  %90 = add nsw i32 %89, 1, !dbg !758
  store i32 %90, i32* @optind, align 4, !dbg !758, !tbaa !700
  tail call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !663, metadata !621), !dbg !674
  %91 = icmp slt i32 %90, %0, !dbg !719
  br i1 %91, label %52, label %92, !dbg !720, !llvm.loop !759

; <label>:92:                                     ; preds = %87, %44
  %93 = phi i32 [ 0, %44 ], [ %88, %87 ]
  ret i32 %93, !dbg !761
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

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @areadlink_with_size(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !762 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !767, metadata !621), !dbg !785
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !768, metadata !621), !dbg !786
  tail call void @llvm.dbg.value(metadata i64 1024, i64 0, metadata !769, metadata !621), !dbg !787
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !770, metadata !621), !dbg !788
  tail call void @llvm.dbg.value(metadata i64 1025, i64 0, metadata !771, metadata !621), !dbg !789
  %3 = icmp ult i64 %1, 1025, !dbg !790
  %4 = add i64 %1, 1, !dbg !791
  %5 = select i1 %3, i64 %4, i64 1025, !dbg !792
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !772, metadata !621), !dbg !793
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !772, metadata !621), !dbg !793
  %6 = tail call noalias i8* @malloc(i64 %5) #13, !dbg !794
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !781, metadata !621), !dbg !795
  %7 = icmp eq i8* %6, null, !dbg !796
  br i1 %7, label %35, label %8, !dbg !798

; <label>:8:                                      ; preds = %2
  br label %9, !dbg !799

; <label>:9:                                      ; preds = %8, %31
  %10 = phi i8* [ %33, %31 ], [ %6, %8 ]
  %11 = phi i64 [ %32, %31 ], [ %5, %8 ]
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !772, metadata !621), !dbg !793
  %12 = tail call i64 @readlink(i8* %0, i8* nonnull %10, i64 %11) #13, !dbg !799
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !773, metadata !621), !dbg !800
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !780, metadata !621), !dbg !801
  %13 = icmp slt i64 %12, 0, !dbg !802
  br i1 %13, label %14, label %19, !dbg !803

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #18, !dbg !804
  %16 = load i32, i32* %15, align 4, !dbg !804, !tbaa !700
  %17 = icmp eq i32 %16, 34, !dbg !805
  br i1 %17, label %19, label %18, !dbg !806

; <label>:18:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !782, metadata !621), !dbg !807
  tail call void @free(i8* nonnull %10) #13, !dbg !808
  store i32 %16, i32* %15, align 4, !dbg !809, !tbaa !700
  br label %35

; <label>:19:                                     ; preds = %14, %9
  %20 = icmp ult i64 %12, %11, !dbg !810
  br i1 %20, label %21, label %23, !dbg !812

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds i8, i8* %10, i64 %12, !dbg !813
  store i8 0, i8* %22, align 1, !dbg !815, !tbaa !749
  br label %35, !dbg !816

; <label>:23:                                     ; preds = %19
  tail call void @free(i8* nonnull %10) #13, !dbg !817
  %24 = icmp ult i64 %11, 4611686018427387904, !dbg !818
  br i1 %24, label %25, label %27, !dbg !820

; <label>:25:                                     ; preds = %23
  %26 = shl i64 %11, 1, !dbg !821
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !772, metadata !621), !dbg !793
  br label %31, !dbg !822

; <label>:27:                                     ; preds = %23
  %28 = icmp ult i64 %11, 9223372036854775807, !dbg !823
  br i1 %28, label %31, label %29, !dbg !825

; <label>:29:                                     ; preds = %27
  %30 = tail call i32* @__errno_location() #18, !dbg !826
  store i32 12, i32* %30, align 4, !dbg !828, !tbaa !700
  br label %35, !dbg !829

; <label>:31:                                     ; preds = %27, %25
  %32 = phi i64 [ %26, %25 ], [ 9223372036854775807, %27 ]
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !772, metadata !621), !dbg !793
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !772, metadata !621), !dbg !793
  %33 = tail call noalias i8* @malloc(i64 %32) #13, !dbg !794
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !781, metadata !621), !dbg !795
  %34 = icmp eq i8* %33, null, !dbg !796
  br i1 %34, label %35, label %9, !dbg !798, !llvm.loop !830

; <label>:35:                                     ; preds = %31, %2, %18, %21, %29
  %36 = phi i8* [ null, %29 ], [ %10, %21 ], [ null, %18 ], [ null, %2 ], [ null, %31 ]
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !772, metadata !621), !dbg !793
  ret i8* %36, !dbg !833
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @readlink(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @canonicalize_filename_mode(i8*, i32) local_unnamed_addr #6 !dbg !834 {
  %3 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !840, metadata !621), !dbg !920
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !841, metadata !621), !dbg !921
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !844, metadata !621), !dbg !922
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !848, metadata !621), !dbg !923
  tail call void @llvm.dbg.value(metadata %struct.hash_table* null, i64 0, metadata !849, metadata !621), !dbg !924
  %4 = and i32 %1, 4, !dbg !925
  %5 = icmp eq i32 %4, 0, !dbg !926
  %6 = and i32 %1, 3, !dbg !927
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !841, metadata !621), !dbg !921
  %7 = add i32 %1, 3, !dbg !928
  %8 = and i32 %7, %6, !dbg !928
  %9 = icmp eq i32 %8, 0, !dbg !928
  br i1 %9, label %12, label %10, !dbg !930

; <label>:10:                                     ; preds = %2
  %11 = tail call i32* @__errno_location() #18, !dbg !931
  store i32 22, i32* %11, align 4, !dbg !933, !tbaa !700
  br label %289, !dbg !934

; <label>:12:                                     ; preds = %2
  %13 = icmp eq i8* %0, null, !dbg !935
  br i1 %13, label %14, label %16, !dbg !937

; <label>:14:                                     ; preds = %12
  %15 = tail call i32* @__errno_location() #18, !dbg !938
  store i32 22, i32* %15, align 4, !dbg !940, !tbaa !700
  br label %289, !dbg !941

; <label>:16:                                     ; preds = %12
  %17 = load i8, i8* %0, align 1, !dbg !942, !tbaa !749
  switch i8 %17, label %20 [
    i8 0, label %18
    i8 47, label %31
  ], !dbg !944

; <label>:18:                                     ; preds = %16
  %19 = tail call i32* @__errno_location() #18, !dbg !945
  store i32 2, i32* %19, align 4, !dbg !947, !tbaa !700
  br label %289, !dbg !948

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @xgetcwd() #13, !dbg !949
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !842, metadata !621), !dbg !950
  %22 = icmp eq i8* %21, null, !dbg !951
  br i1 %22, label %289, label %23, !dbg !953

; <label>:23:                                     ; preds = %20
  %24 = tail call i64 @strlen(i8* nonnull %21), !dbg !954
  %25 = getelementptr i8, i8* %21, i64 %24, !dbg !954
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !843, metadata !621), !dbg !955
  %26 = icmp slt i64 %24, 4096, !dbg !956
  br i1 %26, label %27, label %35, !dbg !957

; <label>:27:                                     ; preds = %23
  %28 = tail call i8* @xrealloc(i8* nonnull %21, i64 4096) #13, !dbg !958
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !857, metadata !621), !dbg !959
  %29 = getelementptr inbounds i8, i8* %28, i64 %24, !dbg !960
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !843, metadata !621), !dbg !955
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !842, metadata !621), !dbg !950
  %30 = getelementptr inbounds i8, i8* %28, i64 4096, !dbg !961
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !847, metadata !621), !dbg !962
  br label %35, !dbg !963

; <label>:31:                                     ; preds = %16
  %32 = tail call noalias i8* @xmalloc(i64 4096) #13, !dbg !964
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !842, metadata !621), !dbg !950
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !847, metadata !621), !dbg !962
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !843, metadata !621), !dbg !955
  %33 = getelementptr inbounds i8, i8* %32, i64 4096, !dbg !966
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !843, metadata !621), !dbg !955
  %34 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !967
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !843, metadata !621), !dbg !955
  store i8 47, i8* %32, align 1, !dbg !968, !tbaa !749
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !845, metadata !621), !dbg !969
  br label %35

; <label>:35:                                     ; preds = %27, %23, %31
  %36 = phi i8* [ %33, %31 ], [ %30, %27 ], [ %25, %23 ]
  %37 = phi i8* [ %34, %31 ], [ %29, %27 ], [ %25, %23 ]
  %38 = phi i8* [ %32, %31 ], [ %28, %27 ], [ %21, %23 ]
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !842, metadata !621), !dbg !950
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !843, metadata !621), !dbg !955
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !856, metadata !621), !dbg !970
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !845, metadata !621), !dbg !969
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !847, metadata !621), !dbg !962
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !840, metadata !621), !dbg !920
  call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !842, metadata !621), !dbg !950
  call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !844, metadata !621), !dbg !922
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !856, metadata !621), !dbg !970
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !845, metadata !621), !dbg !969
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !853, metadata !621), !dbg !971
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !848, metadata !621), !dbg !923
  call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !847, metadata !621), !dbg !962
  %39 = load i8, i8* %0, align 1, !dbg !972, !tbaa !749
  %40 = icmp eq i8 %39, 0, !dbg !973
  br i1 %40, label %255, label %41, !dbg !973

; <label>:41:                                     ; preds = %35
  %42 = bitcast %struct.stat* %3 to i8*
  %43 = icmp eq i32 %6, 2
  %44 = and i32 %1, 7
  %45 = icmp eq i32 %44, 6
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %47 = icmp ne i32 %6, 2
  %48 = select i1 %43, i32 4, i32 13
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8
  %50 = trunc i32 %1 to i2
  br label %51, !dbg !973

; <label>:51:                                     ; preds = %41, %243
  %52 = phi i8 [ %39, %41 ], [ %253, %243 ]
  %53 = phi i8* [ %0, %41 ], [ %252, %243 ]
  %54 = phi i8* [ %38, %41 ], [ %251, %243 ]
  %55 = phi i8* [ %37, %41 ], [ %250, %243 ]
  %56 = phi i8* [ null, %41 ], [ %249, %243 ]
  %57 = phi i8* [ %0, %41 ], [ %248, %243 ]
  %58 = phi i32 [ undef, %41 ], [ %247, %243 ]
  %59 = phi i64 [ 0, %41 ], [ %246, %243 ]
  %60 = phi i8* [ %36, %41 ], [ %245, %243 ]
  %61 = phi %struct.hash_table* [ null, %41 ], [ %244, %243 ]
  call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !845, metadata !621), !dbg !969
  call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !847, metadata !621), !dbg !962
  call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !848, metadata !621), !dbg !923
  call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !853, metadata !621), !dbg !971
  call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !845, metadata !621), !dbg !969
  call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !844, metadata !621), !dbg !922
  call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !842, metadata !621), !dbg !950
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !840, metadata !621), !dbg !920
  %62 = icmp eq i8 %52, 47, !dbg !974
  br i1 %62, label %63, label %69, !dbg !975

; <label>:63:                                     ; preds = %51
  br label %64, !dbg !976

; <label>:64:                                     ; preds = %63, %64
  %65 = phi i8* [ %66, %64 ], [ %57, %63 ]
  call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !845, metadata !621), !dbg !969
  %66 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !976
  call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !845, metadata !621), !dbg !969
  %67 = load i8, i8* %66, align 1, !dbg !974, !tbaa !749
  call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !845, metadata !621), !dbg !969
  %68 = icmp eq i8 %67, 47, !dbg !974
  br i1 %68, label %64, label %69, !dbg !975, !llvm.loop !977

; <label>:69:                                     ; preds = %64, %51
  %70 = phi i8 [ %52, %51 ], [ %67, %64 ]
  %71 = phi i8* [ %57, %51 ], [ %66, %64 ]
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !846, metadata !621), !dbg !979
  br label %72, !dbg !980

; <label>:72:                                     ; preds = %75, %69
  %73 = phi i8 [ %70, %69 ], [ %77, %75 ], !dbg !982
  %74 = phi i8* [ %71, %69 ], [ %76, %75 ]
  call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !846, metadata !621), !dbg !979
  switch i8 %73, label %75 [
    i8 0, label %78
    i8 47, label %78
  ], !dbg !984

; <label>:75:                                     ; preds = %72
  %76 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !985
  call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !846, metadata !621), !dbg !979
  %77 = load i8, i8* %76, align 1, !dbg !982, !tbaa !749
  br label %72, !dbg !986, !llvm.loop !987

; <label>:78:                                     ; preds = %72, %72
  %79 = ptrtoint i8* %74 to i64, !dbg !990
  %80 = ptrtoint i8* %71 to i64, !dbg !990
  %81 = sub i64 %79, %80, !dbg !990
  switch i64 %81, label %106 [
    i64 0, label %255
    i64 1, label %82
    i64 2, label %84
  ], !dbg !991

; <label>:82:                                     ; preds = %78
  %83 = icmp eq i8 %70, 46, !dbg !992
  br i1 %83, label %243, label %106, !dbg !993

; <label>:84:                                     ; preds = %78
  %85 = icmp eq i8 %70, 46, !dbg !994
  br i1 %85, label %86, label %106, !dbg !995

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !996
  %88 = load i8, i8* %87, align 1, !dbg !996, !tbaa !749
  %89 = icmp eq i8 %88, 46, !dbg !997
  br i1 %89, label %90, label %106, !dbg !998

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !999
  %92 = icmp ugt i8* %55, %91, !dbg !1002
  br i1 %92, label %93, label %243, !dbg !1003

; <label>:93:                                     ; preds = %90
  call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !843, metadata !1004), !dbg !955
  %94 = getelementptr inbounds i8, i8* %55, i64 -1
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !843, metadata !621), !dbg !955
  %95 = icmp ugt i8* %94, %54, !dbg !1005
  br i1 %95, label %96, label %243, !dbg !1008

; <label>:96:                                     ; preds = %93
  br label %100, !dbg !1009

; <label>:97:                                     ; preds = %100
  %98 = getelementptr inbounds i8, i8* %101, i64 -1
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !843, metadata !621), !dbg !955
  %99 = icmp ugt i8* %98, %54, !dbg !1005
  br i1 %99, label %100, label %243, !dbg !1008, !llvm.loop !1010

; <label>:100:                                    ; preds = %96, %97
  %101 = phi i8* [ %98, %97 ], [ %94, %96 ]
  %102 = phi i8* [ %101, %97 ], [ %55, %96 ]
  %103 = getelementptr inbounds i8, i8* %102, i64 -2, !dbg !1009
  %104 = load i8, i8* %103, align 1, !dbg !1009, !tbaa !749
  %105 = icmp eq i8 %104, 47, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %101, i64 0, metadata !843, metadata !1004), !dbg !955
  br i1 %105, label %243, label %97, !dbg !1011

; <label>:106:                                    ; preds = %82, %78, %86, %84
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %42) #13, !dbg !1013
  %107 = getelementptr inbounds i8, i8* %55, i64 -1, !dbg !1014
  %108 = load i8, i8* %107, align 1, !dbg !1014, !tbaa !749
  %109 = icmp eq i8 %108, 47, !dbg !1014
  br i1 %109, label %112, label %110, !dbg !1016

; <label>:110:                                    ; preds = %106
  %111 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1017
  call void @llvm.dbg.value(metadata i8* %111, i64 0, metadata !843, metadata !621), !dbg !955
  store i8 47, i8* %55, align 1, !dbg !1018, !tbaa !749
  br label %112, !dbg !1019

; <label>:112:                                    ; preds = %110, %106
  %113 = phi i8* [ %55, %106 ], [ %111, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !843, metadata !621), !dbg !955
  %114 = getelementptr inbounds i8, i8* %113, i64 %81, !dbg !1020
  %115 = icmp ult i8* %114, %60, !dbg !1021
  br i1 %115, label %129, label %116, !dbg !1022

; <label>:116:                                    ; preds = %112
  %117 = ptrtoint i8* %113 to i64, !dbg !1023
  %118 = ptrtoint i8* %54 to i64, !dbg !1023
  %119 = sub i64 %117, %118, !dbg !1023
  call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !907, metadata !621), !dbg !1024
  %120 = ptrtoint i8* %60 to i64, !dbg !1025
  %121 = sub i64 %120, %118, !dbg !1025
  call void @llvm.dbg.value(metadata i64 %121, i64 0, metadata !911, metadata !621), !dbg !1026
  %122 = icmp sgt i64 %81, 4095, !dbg !1027
  %123 = add nsw i64 %81, 1, !dbg !1029
  %124 = select i1 %122, i64 %123, i64 4096, !dbg !1030
  %125 = add i64 %124, %121
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !911, metadata !621), !dbg !1026
  %126 = call i8* @xrealloc(i8* %54, i64 %125) #13, !dbg !1031
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !842, metadata !621), !dbg !950
  %127 = getelementptr inbounds i8, i8* %126, i64 %125, !dbg !1032
  call void @llvm.dbg.value(metadata i8* %127, i64 0, metadata !847, metadata !621), !dbg !962
  %128 = getelementptr inbounds i8, i8* %126, i64 %119, !dbg !1033
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !843, metadata !621), !dbg !955
  br label %129, !dbg !1034

; <label>:129:                                    ; preds = %112, %116
  %130 = phi i8* [ %127, %116 ], [ %60, %112 ]
  %131 = phi i8* [ %128, %116 ], [ %113, %112 ]
  %132 = phi i8* [ %126, %116 ], [ %54, %112 ]
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !842, metadata !621), !dbg !950
  call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !847, metadata !621), !dbg !962
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %131, i8* %71, i64 %81, i32 1, i1 false), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !843, metadata !621), !dbg !955
  %133 = getelementptr inbounds i8, i8* %131, i64 %81, !dbg !1036
  call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !843, metadata !621), !dbg !955
  store i8 0, i8* %133, align 1, !dbg !1037, !tbaa !749
  br i1 %45, label %155, label %134, !dbg !1038

; <label>:134:                                    ; preds = %129
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !862, metadata !621), !dbg !1040
  br i1 %5, label %137, label %135, !dbg !1041

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !1043, metadata !621) #13, !dbg !1051
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1050, metadata !621) #13, !dbg !1051
  %136 = call i32 @__xstat(i32 1, i8* nonnull %132, %struct.stat* nonnull %3) #13, !dbg !1053
  br label %139, !dbg !1041

; <label>:137:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !1054, metadata !621) #13, !dbg !1058
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1057, metadata !621) #13, !dbg !1058
  %138 = call i32 @__lxstat(i32 1, i8* nonnull %132, %struct.stat* nonnull %3) #13, !dbg !1060
  br label %139, !dbg !1041

; <label>:139:                                    ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ], !dbg !1041
  %141 = icmp eq i32 %140, 0, !dbg !1061
  br i1 %141, label %142, label %144, !dbg !1062

; <label>:142:                                    ; preds = %139
  %143 = load i32, i32* %46, align 8, !dbg !1063, !tbaa !1064
  br label %157, !dbg !1062

; <label>:144:                                    ; preds = %139
  %145 = tail call i32* @__errno_location() #18, !dbg !1067
  %146 = load i32, i32* %145, align 4, !dbg !1067, !tbaa !700
  call void @llvm.dbg.value(metadata i32 %146, i64 0, metadata !853, metadata !621), !dbg !971
  switch i2 %50, label %155 [
    i2 0, label %236
    i2 1, label %147
  ], !dbg !1069

; <label>:147:                                    ; preds = %144
  %148 = call i64 @strspn(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #15, !dbg !1070
  %149 = getelementptr inbounds i8, i8* %74, i64 %148, !dbg !1074
  %150 = load i8, i8* %149, align 1, !dbg !1074, !tbaa !749
  %151 = icmp ne i8 %150, 0, !dbg !1074
  %152 = icmp ne i32 %146, 2, !dbg !1075
  %153 = or i1 %152, %151, !dbg !1076
  %154 = select i1 %153, i32 13, i32 4, !dbg !1077
  br label %238, !dbg !1077

; <label>:155:                                    ; preds = %144, %129
  %156 = phi i32 [ %58, %129 ], [ %146, %144 ]
  call void @llvm.dbg.value(metadata i32 %156, i64 0, metadata !853, metadata !621), !dbg !971
  store i32 0, i32* %46, align 8, !tbaa !1064
  br label %157, !dbg !1063

; <label>:157:                                    ; preds = %142, %155
  %158 = phi i32 [ 0, %155 ], [ %143, %142 ], !dbg !1063
  %159 = phi i32 [ %156, %155 ], [ %58, %142 ]
  call void @llvm.dbg.value(metadata i32 %159, i64 0, metadata !853, metadata !621), !dbg !971
  %160 = trunc i32 %158 to i16, !dbg !1078
  %161 = and i16 %160, -4096, !dbg !1078
  switch i16 %161, label %225 [
    i16 -24576, label %162
    i16 16384, label %229
  ], !dbg !1078

; <label>:162:                                    ; preds = %157
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !862, metadata !621), !dbg !1040
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1079, metadata !621) #13, !dbg !1092
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1088, metadata !621) #13, !dbg !1095
  %163 = icmp eq %struct.hash_table* %61, null, !dbg !1096
  br i1 %163, label %164, label %168, !dbg !1097

; <label>:164:                                    ; preds = %162
  call void @llvm.dbg.value(metadata i64 7, i64 0, metadata !1089, metadata !621) #13, !dbg !1098
  %165 = call %struct.hash_table* @hash_initialize(i64 7, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @triple_hash, i1 (i8*, i8*)* nonnull @triple_compare_ino_str, void (i8*)* nonnull @triple_free) #13, !dbg !1099
  %166 = icmp eq %struct.hash_table* %165, null, !dbg !1100
  br i1 %166, label %167, label %168, !dbg !1102

; <label>:167:                                    ; preds = %164
  call void @xalloc_die() #16, !dbg !1103
  unreachable, !dbg !1103

; <label>:168:                                    ; preds = %164, %162
  %169 = phi %struct.hash_table* [ %165, %164 ], [ %61, %162 ]
  %170 = call zeroext i1 @seen_file(%struct.hash_table* nonnull %169, i8* %53, %struct.stat* nonnull %3) #13, !dbg !1104
  br i1 %170, label %171, label %173, !dbg !1106

; <label>:171:                                    ; preds = %168
  %172 = select i1 %43, i32 %159, i32 40, !dbg !1107
  br label %238, !dbg !1107

; <label>:173:                                    ; preds = %168
  call void @record_file(%struct.hash_table* nonnull %169, i8* %53, %struct.stat* nonnull %3) #13, !dbg !1110
  %174 = load i64, i64* %49, align 8, !dbg !1111, !tbaa !1112
  %175 = call i8* @areadlink_with_size(i8* %132, i64 %174) #13, !dbg !1113
  call void @llvm.dbg.value(metadata i8* %175, i64 0, metadata !912, metadata !621), !dbg !1114
  %176 = icmp eq i8* %175, null, !dbg !1115
  br i1 %176, label %177, label %185, !dbg !1117

; <label>:177:                                    ; preds = %173
  %178 = tail call i32* @__errno_location() #18, !dbg !1118
  br i1 %43, label %179, label %183, !dbg !1121

; <label>:179:                                    ; preds = %177
  %180 = load i32, i32* %178, align 4, !dbg !1118, !tbaa !700
  %181 = icmp eq i32 %180, 12, !dbg !1122
  br i1 %181, label %183, label %182, !dbg !1123

; <label>:182:                                    ; preds = %179
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !840, metadata !621), !dbg !920
  call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !844, metadata !621), !dbg !922
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !856, metadata !621), !dbg !970
  call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !846, metadata !621), !dbg !979
  call void @llvm.dbg.value(metadata i32 %240, i64 0, metadata !853, metadata !621), !dbg !971
  call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !848, metadata !621), !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %42) #13, !dbg !1124
  br label %243

; <label>:183:                                    ; preds = %179, %177
  %184 = load i32, i32* %178, align 4, !dbg !1125, !tbaa !700
  call void @llvm.dbg.value(metadata i32 %184, i64 0, metadata !853, metadata !621), !dbg !971
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !840, metadata !621), !dbg !920
  call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !844, metadata !621), !dbg !922
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !856, metadata !621), !dbg !970
  call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !846, metadata !621), !dbg !979
  call void @llvm.dbg.value(metadata i32 %240, i64 0, metadata !853, metadata !621), !dbg !971
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !848, metadata !621), !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %42) #13, !dbg !1124
  br label %282

; <label>:185:                                    ; preds = %173
  %186 = call i64 @strlen(i8* nonnull %175) #15, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %186, i64 0, metadata !915, metadata !621), !dbg !1127
  %187 = call i64 @strlen(i8* %74) #15, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %187, i64 0, metadata !916, metadata !621), !dbg !1129
  %188 = icmp eq i64 %59, 0, !dbg !1130
  %189 = add i64 %186, 1
  %190 = add i64 %189, %187
  br i1 %188, label %191, label %195, !dbg !1132

; <label>:191:                                    ; preds = %185
  %192 = icmp ugt i64 %190, 4096, !dbg !1133
  %193 = select i1 %192, i64 %190, i64 4096, !dbg !1135
  call void @llvm.dbg.value(metadata i64 %193, i64 0, metadata !848, metadata !621), !dbg !923
  %194 = call noalias i8* @xmalloc(i64 %193) #13, !dbg !1136
  call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !844, metadata !621), !dbg !922
  br label %199, !dbg !1137

; <label>:195:                                    ; preds = %185
  %196 = icmp ugt i64 %190, %59, !dbg !1138
  br i1 %196, label %197, label %199, !dbg !1140

; <label>:197:                                    ; preds = %195
  call void @llvm.dbg.value(metadata i64 %190, i64 0, metadata !848, metadata !621), !dbg !923
  %198 = call i8* @xrealloc(i8* %56, i64 %190) #13, !dbg !1141
  call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !844, metadata !621), !dbg !922
  br label %199, !dbg !1143

; <label>:199:                                    ; preds = %195, %197, %191
  %200 = phi i64 [ %190, %197 ], [ %59, %195 ], [ %193, %191 ]
  %201 = phi i8* [ %198, %197 ], [ %56, %195 ], [ %194, %191 ]
  call void @llvm.dbg.value(metadata i8* %201, i64 0, metadata !844, metadata !621), !dbg !922
  call void @llvm.dbg.value(metadata i64 %200, i64 0, metadata !848, metadata !621), !dbg !923
  %202 = getelementptr inbounds i8, i8* %201, i64 %186, !dbg !1144
  %203 = add i64 %187, 1, !dbg !1145
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %202, i8* %74, i64 %203, i32 1, i1 false), !dbg !1146
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %201, i8* nonnull %175, i64 %186, i32 1, i1 false), !dbg !1147
  call void @llvm.dbg.value(metadata i8* %201, i64 0, metadata !846, metadata !621), !dbg !979
  call void @llvm.dbg.value(metadata i8* %201, i64 0, metadata !840, metadata !621), !dbg !920
  %204 = load i8, i8* %175, align 1, !dbg !1148, !tbaa !749
  %205 = icmp eq i8 %204, 47, !dbg !1148
  %206 = getelementptr inbounds i8, i8* %132, i64 1
  br i1 %205, label %207, label %208, !dbg !1149

; <label>:207:                                    ; preds = %199
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !917, metadata !621), !dbg !1150
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !843, metadata !621), !dbg !955
  store i8 47, i8* %132, align 1, !dbg !1151, !tbaa !749
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !856, metadata !621), !dbg !970
  br label %223, !dbg !1152

; <label>:208:                                    ; preds = %199
  %209 = icmp ugt i8* %133, %206, !dbg !1153
  br i1 %209, label %210, label %223, !dbg !1156

; <label>:210:                                    ; preds = %208
  call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !843, metadata !1004), !dbg !955
  %211 = getelementptr inbounds i8, i8* %133, i64 -1
  call void @llvm.dbg.value(metadata i8* %211, i64 0, metadata !843, metadata !621), !dbg !955
  %212 = icmp ugt i8* %211, %132, !dbg !1157
  br i1 %212, label %213, label %223, !dbg !1160

; <label>:213:                                    ; preds = %210
  br label %217, !dbg !1161

; <label>:214:                                    ; preds = %217
  %215 = getelementptr inbounds i8, i8* %218, i64 -1
  call void @llvm.dbg.value(metadata i8* %215, i64 0, metadata !843, metadata !621), !dbg !955
  %216 = icmp ugt i8* %215, %132, !dbg !1157
  br i1 %216, label %217, label %223, !dbg !1160, !llvm.loop !1162

; <label>:217:                                    ; preds = %213, %214
  %218 = phi i8* [ %215, %214 ], [ %211, %213 ]
  %219 = phi i8* [ %218, %214 ], [ %133, %213 ]
  %220 = getelementptr inbounds i8, i8* %219, i64 -2, !dbg !1161
  %221 = load i8, i8* %220, align 1, !dbg !1161, !tbaa !749
  %222 = icmp eq i8 %221, 47, !dbg !1161
  call void @llvm.dbg.value(metadata i8* %218, i64 0, metadata !843, metadata !1004), !dbg !955
  br i1 %222, label %223, label %214, !dbg !1163

; <label>:223:                                    ; preds = %217, %214, %210, %207, %208
  %224 = phi i8* [ %206, %207 ], [ %133, %208 ], [ %211, %210 ], [ %218, %217 ], [ %215, %214 ]
  call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !856, metadata !621), !dbg !970
  call void @free(i8* %175) #13, !dbg !1165
  call void @llvm.dbg.value(metadata i8* %201, i64 0, metadata !840, metadata !621), !dbg !920
  call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i8* %201, i64 0, metadata !844, metadata !621), !dbg !922
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !856, metadata !621), !dbg !970
  call void @llvm.dbg.value(metadata i8* %201, i64 0, metadata !846, metadata !621), !dbg !979
  call void @llvm.dbg.value(metadata i32 %159, i64 0, metadata !853, metadata !621), !dbg !971
  call void @llvm.dbg.value(metadata i64 %200, i64 0, metadata !848, metadata !621), !dbg !923
  br label %229

; <label>:225:                                    ; preds = %157
  %226 = load i8, i8* %74, align 1, !dbg !1166, !tbaa !749
  %227 = icmp ne i8 %226, 0, !dbg !1166
  %228 = and i1 %47, %227, !dbg !1169
  br i1 %228, label %236, label %229, !dbg !1169

; <label>:229:                                    ; preds = %225, %157, %223
  %230 = phi %struct.hash_table* [ %61, %225 ], [ %61, %157 ], [ %169, %223 ]
  %231 = phi i64 [ %59, %225 ], [ %59, %157 ], [ %200, %223 ]
  %232 = phi i8* [ %74, %225 ], [ %74, %157 ], [ %201, %223 ]
  %233 = phi i8* [ %56, %225 ], [ %56, %157 ], [ %201, %223 ]
  %234 = phi i8* [ %133, %225 ], [ %133, %157 ], [ %224, %223 ]
  %235 = phi i8* [ %53, %225 ], [ %53, %157 ], [ %201, %223 ]
  call void @llvm.dbg.value(metadata i8* %235, i64 0, metadata !840, metadata !621), !dbg !920
  call void @llvm.dbg.value(metadata i8* %234, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i8* %233, i64 0, metadata !844, metadata !621), !dbg !922
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !856, metadata !621), !dbg !970
  call void @llvm.dbg.value(metadata i8* %232, i64 0, metadata !846, metadata !621), !dbg !979
  call void @llvm.dbg.value(metadata i32 %159, i64 0, metadata !853, metadata !621), !dbg !971
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !848, metadata !621), !dbg !923
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !840, metadata !621), !dbg !920
  call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !844, metadata !621), !dbg !922
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !856, metadata !621), !dbg !970
  call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !846, metadata !621), !dbg !979
  call void @llvm.dbg.value(metadata i32 %240, i64 0, metadata !853, metadata !621), !dbg !971
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !848, metadata !621), !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %42) #13, !dbg !1124
  br label %243

; <label>:236:                                    ; preds = %144, %225
  %237 = phi i32 [ 20, %225 ], [ %146, %144 ]
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !840, metadata !621), !dbg !920
  call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !844, metadata !621), !dbg !922
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !856, metadata !621), !dbg !970
  call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !846, metadata !621), !dbg !979
  call void @llvm.dbg.value(metadata i32 %240, i64 0, metadata !853, metadata !621), !dbg !971
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !848, metadata !621), !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %42) #13, !dbg !1124
  br label %282

; <label>:238:                                    ; preds = %171, %147
  %239 = phi %struct.hash_table* [ %61, %147 ], [ %169, %171 ]
  %240 = phi i32 [ %146, %147 ], [ %172, %171 ]
  %241 = phi i32 [ %154, %147 ], [ %48, %171 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !840, metadata !621), !dbg !920
  call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !844, metadata !621), !dbg !922
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !856, metadata !621), !dbg !970
  call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !846, metadata !621), !dbg !979
  call void @llvm.dbg.value(metadata i32 %240, i64 0, metadata !853, metadata !621), !dbg !971
  call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !848, metadata !621), !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %42) #13, !dbg !1124
  %242 = trunc i32 %241 to i4
  switch i4 %242, label %289 [
    i4 -3, label %282
    i4 4, label %243
  ]

; <label>:243:                                    ; preds = %97, %100, %93, %182, %229, %90, %82, %238
  %244 = phi %struct.hash_table* [ %239, %238 ], [ %61, %90 ], [ %61, %82 ], [ %230, %229 ], [ %169, %182 ], [ %61, %93 ], [ %61, %100 ], [ %61, %97 ]
  %245 = phi i8* [ %130, %238 ], [ %60, %90 ], [ %60, %82 ], [ %130, %229 ], [ %130, %182 ], [ %60, %93 ], [ %60, %100 ], [ %60, %97 ]
  %246 = phi i64 [ %59, %238 ], [ %59, %90 ], [ %59, %82 ], [ %231, %229 ], [ %59, %182 ], [ %59, %93 ], [ %59, %100 ], [ %59, %97 ]
  %247 = phi i32 [ %240, %238 ], [ %58, %90 ], [ %58, %82 ], [ %159, %229 ], [ %159, %182 ], [ %58, %93 ], [ %58, %100 ], [ %58, %97 ]
  %248 = phi i8* [ %74, %238 ], [ %74, %90 ], [ %74, %82 ], [ %232, %229 ], [ %74, %182 ], [ %74, %93 ], [ %74, %100 ], [ %74, %97 ]
  %249 = phi i8* [ %56, %238 ], [ %56, %90 ], [ %56, %82 ], [ %233, %229 ], [ %56, %182 ], [ %56, %93 ], [ %56, %100 ], [ %56, %97 ]
  %250 = phi i8* [ %133, %238 ], [ %55, %90 ], [ %55, %82 ], [ %234, %229 ], [ %133, %182 ], [ %94, %93 ], [ %98, %97 ], [ %101, %100 ]
  %251 = phi i8* [ %132, %238 ], [ %54, %90 ], [ %54, %82 ], [ %132, %229 ], [ %132, %182 ], [ %54, %93 ], [ %54, %100 ], [ %54, %97 ]
  %252 = phi i8* [ %53, %238 ], [ %53, %90 ], [ %53, %82 ], [ %235, %229 ], [ %53, %182 ], [ %53, %93 ], [ %53, %100 ], [ %53, %97 ]
  call void @llvm.dbg.value(metadata i8* %252, i64 0, metadata !840, metadata !621), !dbg !920
  call void @llvm.dbg.value(metadata i8* %251, i64 0, metadata !842, metadata !621), !dbg !950
  call void @llvm.dbg.value(metadata i8* %250, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i8* %249, i64 0, metadata !844, metadata !621), !dbg !922
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !856, metadata !621), !dbg !970
  call void @llvm.dbg.value(metadata i8* %248, i64 0, metadata !846, metadata !621), !dbg !979
  call void @llvm.dbg.value(metadata i32 %247, i64 0, metadata !853, metadata !621), !dbg !971
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !848, metadata !621), !dbg !923
  call void @llvm.dbg.value(metadata i8* %245, i64 0, metadata !847, metadata !621), !dbg !962
  call void @llvm.dbg.value(metadata i8* %248, i64 0, metadata !845, metadata !621), !dbg !969
  call void @llvm.dbg.value(metadata i8* %252, i64 0, metadata !840, metadata !621), !dbg !920
  call void @llvm.dbg.value(metadata i8* %251, i64 0, metadata !842, metadata !621), !dbg !950
  call void @llvm.dbg.value(metadata i8* %250, i64 0, metadata !843, metadata !621), !dbg !955
  call void @llvm.dbg.value(metadata i8* %249, i64 0, metadata !844, metadata !621), !dbg !922
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !856, metadata !621), !dbg !970
  call void @llvm.dbg.value(metadata i8* %248, i64 0, metadata !845, metadata !621), !dbg !969
  call void @llvm.dbg.value(metadata i32 %247, i64 0, metadata !853, metadata !621), !dbg !971
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !848, metadata !621), !dbg !923
  call void @llvm.dbg.value(metadata i8* %245, i64 0, metadata !847, metadata !621), !dbg !962
  %253 = load i8, i8* %248, align 1, !dbg !972, !tbaa !749
  %254 = icmp eq i8 %253, 0, !dbg !973
  br i1 %254, label %255, label %51, !dbg !973, !llvm.loop !1170

; <label>:255:                                    ; preds = %243, %78, %35
  %256 = phi %struct.hash_table* [ null, %35 ], [ %61, %78 ], [ %244, %243 ]
  %257 = phi i8* [ %36, %35 ], [ %60, %78 ], [ %245, %243 ]
  %258 = phi i8* [ null, %35 ], [ %56, %78 ], [ %249, %243 ]
  %259 = phi i8* [ %37, %35 ], [ %55, %78 ], [ %250, %243 ]
  %260 = phi i8* [ %38, %35 ], [ %54, %78 ], [ %251, %243 ]
  %261 = getelementptr inbounds i8, i8* %260, i64 1, !dbg !1172
  %262 = icmp ugt i8* %259, %261, !dbg !1174
  br i1 %262, label %263, label %268, !dbg !1175

; <label>:263:                                    ; preds = %255
  %264 = getelementptr inbounds i8, i8* %259, i64 -1, !dbg !1176
  %265 = load i8, i8* %264, align 1, !dbg !1176, !tbaa !749
  %266 = icmp eq i8 %265, 47, !dbg !1176
  call void @llvm.dbg.value(metadata i8* %264, i64 0, metadata !843, metadata !621), !dbg !955
  %267 = select i1 %266, i8* %264, i8* %259, !dbg !1177
  br label %268, !dbg !1177

; <label>:268:                                    ; preds = %263, %255
  %269 = phi i8* [ %259, %255 ], [ %267, %263 ]
  call void @llvm.dbg.value(metadata i8* %269, i64 0, metadata !843, metadata !621), !dbg !955
  store i8 0, i8* %269, align 1, !dbg !1178, !tbaa !749
  %270 = getelementptr inbounds i8, i8* %269, i64 1, !dbg !1179
  %271 = icmp eq i8* %257, %270, !dbg !1181
  br i1 %271, label %278, label %272, !dbg !1182

; <label>:272:                                    ; preds = %268
  %273 = ptrtoint i8* %269 to i64, !dbg !1183
  %274 = ptrtoint i8* %260 to i64, !dbg !1183
  %275 = sub i64 1, %274, !dbg !1183
  %276 = add i64 %275, %273, !dbg !1184
  %277 = call i8* @xrealloc(i8* %260, i64 %276) #13, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %277, i64 0, metadata !842, metadata !621), !dbg !950
  br label %278, !dbg !1186

; <label>:278:                                    ; preds = %268, %272
  %279 = phi i8* [ %277, %272 ], [ %260, %268 ]
  call void @llvm.dbg.value(metadata i8* %279, i64 0, metadata !842, metadata !621), !dbg !950
  call void @free(i8* %258) #13, !dbg !1187
  call void @llvm.dbg.value(metadata %struct.hash_table* undef, i64 0, metadata !849, metadata !621), !dbg !924
  %280 = icmp eq %struct.hash_table* %256, null, !dbg !1188
  br i1 %280, label %289, label %281, !dbg !1190

; <label>:281:                                    ; preds = %278
  call void @hash_free(%struct.hash_table* nonnull %256) #13, !dbg !1191
  br label %289, !dbg !1191

; <label>:282:                                    ; preds = %238, %183, %236
  %283 = phi i32 [ %237, %236 ], [ %184, %183 ], [ %240, %238 ]
  %284 = phi %struct.hash_table* [ %61, %236 ], [ %169, %183 ], [ %239, %238 ]
  call void @free(i8* %56) #13, !dbg !1192
  call void @free(i8* %132) #13, !dbg !1193
  call void @llvm.dbg.value(metadata %struct.hash_table* %239, i64 0, metadata !849, metadata !621), !dbg !924
  %285 = icmp eq %struct.hash_table* %284, null, !dbg !1194
  br i1 %285, label %287, label %286, !dbg !1196

; <label>:286:                                    ; preds = %282
  call void @hash_free(%struct.hash_table* nonnull %284) #13, !dbg !1197
  br label %287, !dbg !1197

; <label>:287:                                    ; preds = %282, %286
  %288 = tail call i32* @__errno_location() #18, !dbg !1198
  store i32 %283, i32* %288, align 4, !dbg !1199, !tbaa !700
  br label %289, !dbg !1200

; <label>:289:                                    ; preds = %238, %281, %278, %20, %287, %18, %14, %10
  %290 = phi i8* [ null, %10 ], [ null, %14 ], [ null, %18 ], [ null, %287 ], [ null, %20 ], [ %279, %278 ], [ %279, %281 ], [ undef, %238 ]
  ret i8* %290, !dbg !1201
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1202 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1204, metadata !621), !dbg !1205
  store i8* %0, i8** @file_name, align 8, !dbg !1206, !tbaa !628
  ret void, !dbg !1207
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1208 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1212, metadata !621), !dbg !1213
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1214, !tbaa !1215
  ret void, !dbg !1217
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1218 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1225, !tbaa !628
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #13, !dbg !1226
  %3 = icmp eq i32 %2, 0, !dbg !1227
  br i1 %3, label %21, label %4, !dbg !1228

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1229, !tbaa !1215, !range !1230
  %6 = icmp eq i8 %5, 0, !dbg !1229
  %7 = tail call i32* @__errno_location() #18, !dbg !1231
  br i1 %6, label %11, label %8, !dbg !1233

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1234, !tbaa !700
  %10 = icmp eq i32 %9, 32, !dbg !1235
  br i1 %10, label %21, label %11, !dbg !1236

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #13, !dbg !1237
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1222, metadata !621), !dbg !1238
  %13 = load i8*, i8** @file_name, align 8, !dbg !1239, !tbaa !628
  %14 = icmp eq i8* %13, null, !dbg !1239
  %15 = load i32, i32* %7, align 4, !tbaa !700
  br i1 %14, label %18, label %16, !dbg !1240

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #13, !dbg !1241
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.43, i64 0, i64 0), i8* %17, i8* %12) #13, !dbg !1242
  br label %19, !dbg !1242

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.44, i64 0, i64 0), i8* %12) #13, !dbg !1243
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1244, !tbaa !700
  tail call void @_exit(i32 %20) #16, !dbg !1245
  unreachable, !dbg !1245

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1246, !tbaa !628
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #13, !dbg !1248
  %24 = icmp eq i32 %23, 0, !dbg !1249
  br i1 %24, label %27, label %25, !dbg !1250

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1251, !tbaa !700
  tail call void @_exit(i32 %26) #16, !dbg !1252
  unreachable, !dbg !1252

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1253
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @record_file(%struct.hash_table*, i8* nonnull, %struct.stat* nocapture nonnull readonly) local_unnamed_addr #6 !dbg !1254 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1282, metadata !621), !dbg !1297
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1283, metadata !621), !dbg !1298
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1284, metadata !621), !dbg !1299
  %4 = icmp eq %struct.hash_table* %0, null, !dbg !1300
  br i1 %4, label %23, label %5, !dbg !1302

; <label>:5:                                      ; preds = %3
  %6 = tail call noalias i8* @xmalloc(i64 24) #13, !dbg !1303
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1285, metadata !621), !dbg !1304
  %7 = tail call noalias i8* @xstrdup(i8* nonnull %1) #13, !dbg !1305
  %8 = bitcast i8* %6 to i8**, !dbg !1306
  store i8* %7, i8** %8, align 8, !dbg !1307, !tbaa !1308
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1, !dbg !1310
  %10 = load i64, i64* %9, align 8, !dbg !1310, !tbaa !1311
  %11 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !1312
  %12 = bitcast i8* %11 to i64*, !dbg !1312
  store i64 %10, i64* %12, align 8, !dbg !1313, !tbaa !1314
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0, !dbg !1315
  %14 = load i64, i64* %13, align 8, !dbg !1315, !tbaa !1316
  %15 = getelementptr inbounds i8, i8* %6, i64 16, !dbg !1317
  %16 = bitcast i8* %15 to i64*, !dbg !1317
  store i64 %14, i64* %16, align 8, !dbg !1318, !tbaa !1319
  %17 = tail call i8* @hash_insert(%struct.hash_table* nonnull %0, i8* %6) #13, !dbg !1320
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1295, metadata !621), !dbg !1321
  %18 = icmp eq i8* %17, null, !dbg !1322
  br i1 %18, label %19, label %20, !dbg !1324

; <label>:19:                                     ; preds = %5
  tail call void @xalloc_die() #16, !dbg !1325
  unreachable, !dbg !1325

; <label>:20:                                     ; preds = %5
  %21 = icmp eq i8* %17, %6, !dbg !1327
  br i1 %21, label %23, label %22, !dbg !1329

; <label>:22:                                     ; preds = %20
  tail call void @triple_free(i8* %6) #13, !dbg !1330
  br label %23, !dbg !1332

; <label>:23:                                     ; preds = %22, %20, %3
  ret void, !dbg !1333
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @seen_file(%struct.hash_table*, i8*, %struct.stat* nocapture readonly) local_unnamed_addr #6 !dbg !1334 {
  %4 = alloca %struct.F_triple, align 8
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1340, metadata !621), !dbg !1344
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1341, metadata !621), !dbg !1345
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1342, metadata !621), !dbg !1346
  %5 = bitcast %struct.F_triple* %4 to i8*, !dbg !1347
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #13, !dbg !1347
  %6 = icmp eq %struct.hash_table* %0, null, !dbg !1348
  br i1 %6, label %17, label %7, !dbg !1350

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 0, !dbg !1351
  store i8* %1, i8** %8, align 8, !dbg !1352, !tbaa !1308
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1, !dbg !1353
  %10 = load i64, i64* %9, align 8, !dbg !1353, !tbaa !1311
  %11 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 1, !dbg !1354
  store i64 %10, i64* %11, align 8, !dbg !1355, !tbaa !1314
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0, !dbg !1356
  %13 = load i64, i64* %12, align 8, !dbg !1356, !tbaa !1316
  %14 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 2, !dbg !1357
  store i64 %13, i64* %14, align 8, !dbg !1358, !tbaa !1319
  %15 = call i8* @hash_lookup(%struct.hash_table* nonnull %0, i8* nonnull %5) #13, !dbg !1359
  %16 = icmp ne i8* %15, null, !dbg !1360
  br label %17, !dbg !1361

; <label>:17:                                     ; preds = %3, %7
  %18 = phi i1 [ %16, %7 ], [ false, %3 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #13, !dbg !1362
  ret i1 %18, !dbg !1362
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_n_buckets(%struct.hash_table* nocapture readonly) local_unnamed_addr #11 !dbg !1363 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1404, metadata !621), !dbg !1405
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !1406
  %3 = load i64, i64* %2, align 8, !dbg !1406, !tbaa !1407
  ret i64 %3, !dbg !1409
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_n_buckets_used(%struct.hash_table* nocapture readonly) local_unnamed_addr #11 !dbg !1410 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1412, metadata !621), !dbg !1413
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !1414
  %3 = load i64, i64* %2, align 8, !dbg !1414, !tbaa !1415
  ret i64 %3, !dbg !1416
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_n_entries(%struct.hash_table* nocapture readonly) local_unnamed_addr #11 !dbg !1417 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1419, metadata !621), !dbg !1420
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !1421
  %3 = load i64, i64* %2, align 8, !dbg !1421, !tbaa !1422
  ret i64 %3, !dbg !1423
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_max_bucket_length(%struct.hash_table* nocapture readonly) local_unnamed_addr #11 !dbg !1424 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1426, metadata !621), !dbg !1436
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1428, metadata !621), !dbg !1437
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1438
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !dbg !1438, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %3, i64 0, metadata !1427, metadata !621), !dbg !1440
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1428, metadata !621), !dbg !1437
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %3, i64 0, metadata !1427, metadata !621), !dbg !1440
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1441
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !1441, !tbaa !1442
  %6 = icmp ult %struct.hash_entry* %3, %5, !dbg !1443
  br i1 %6, label %7, label %63, !dbg !1444

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.hash_entry* %5 to i8*
  %9 = ptrtoint %struct.hash_entry* %3 to i64
  %10 = xor i64 %9, -1, !dbg !1445
  %11 = getelementptr i8, i8* %8, i64 %10, !dbg !1445
  %12 = ptrtoint i8* %11 to i64
  %13 = lshr i64 %12, 4, !dbg !1445
  %14 = add nuw nsw i64 %13, 1, !dbg !1445
  %15 = and i64 %14, 1, !dbg !1445
  %16 = icmp eq i64 %13, 0, !dbg !1445
  br i1 %16, label %43, label %17, !dbg !1445

; <label>:17:                                     ; preds = %7
  %18 = sub nsw i64 %14, %15, !dbg !1445
  br label %19, !dbg !1445

; <label>:19:                                     ; preds = %76, %17
  %20 = phi i64 [ 0, %17 ], [ %77, %76 ]
  %21 = phi %struct.hash_entry* [ %3, %17 ], [ %78, %76 ]
  %22 = phi i64 [ %18, %17 ], [ %79, %76 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %21, i64 0, metadata !1427, metadata !621), !dbg !1440
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1428, metadata !621), !dbg !1437
  %23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 0, !dbg !1445
  %24 = load i8*, i8** %23, align 8, !dbg !1445, !tbaa !1446
  %25 = icmp eq i8* %24, null, !dbg !1448
  br i1 %25, label %37, label %26, !dbg !1449

; <label>:26:                                     ; preds = %19
  br label %27, !dbg !1450

; <label>:27:                                     ; preds = %26, %27
  %28 = phi %struct.hash_entry* [ %31, %27 ], [ %21, %26 ]
  %29 = phi i64 [ %33, %27 ], [ 1, %26 ]
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !1435, metadata !621), !dbg !1451
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %28, i64 0, metadata !1429, metadata !621), !dbg !1452
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %28, i64 0, i32 1, !dbg !1450
  %31 = load %struct.hash_entry*, %struct.hash_entry** %30, align 8, !dbg !1450, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %31, i64 0, metadata !1429, metadata !621), !dbg !1452
  %32 = icmp eq %struct.hash_entry* %31, null, !dbg !1454
  %33 = add i64 %29, 1, !dbg !1455
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1435, metadata !621), !dbg !1451
  br i1 %32, label %34, label %27, !dbg !1454, !llvm.loop !1456

; <label>:34:                                     ; preds = %27
  %35 = icmp ugt i64 %29, %20, !dbg !1457
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !1428, metadata !621), !dbg !1437
  %36 = select i1 %35, i64 %29, i64 %20, !dbg !1459
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1428, metadata !621), !dbg !1437
  br label %37, !dbg !1460

; <label>:37:                                     ; preds = %19, %34
  %38 = phi i64 [ %36, %34 ], [ %20, %19 ]
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1428, metadata !621), !dbg !1437
  %39 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 1, !dbg !1461
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %39, i64 0, metadata !1427, metadata !621), !dbg !1440
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1428, metadata !621), !dbg !1437
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %39, i64 0, metadata !1427, metadata !621), !dbg !1440
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %21, i64 0, metadata !1427, metadata !621), !dbg !1440
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1428, metadata !621), !dbg !1437
  %40 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 0, i32 0, !dbg !1445
  %41 = load i8*, i8** %40, align 8, !dbg !1445, !tbaa !1446
  %42 = icmp eq i8* %41, null, !dbg !1448
  br i1 %42, label %76, label %65, !dbg !1449

; <label>:43:                                     ; preds = %76, %7
  %44 = phi i64 [ undef, %7 ], [ %77, %76 ]
  %45 = phi i64 [ 0, %7 ], [ %77, %76 ]
  %46 = phi %struct.hash_entry* [ %3, %7 ], [ %78, %76 ]
  %47 = icmp eq i64 %15, 0, !dbg !1462
  br i1 %47, label %63, label %48, !dbg !1462

; <label>:48:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %46, i64 0, metadata !1427, metadata !621), !dbg !1440
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !1428, metadata !621), !dbg !1437
  %49 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %46, i64 0, i32 0, !dbg !1445
  %50 = load i8*, i8** %49, align 8, !dbg !1445, !tbaa !1446
  %51 = icmp eq i8* %50, null, !dbg !1448
  br i1 %51, label %63, label %52, !dbg !1449

; <label>:52:                                     ; preds = %48
  br label %53, !dbg !1450

; <label>:53:                                     ; preds = %53, %52
  %54 = phi %struct.hash_entry* [ %57, %53 ], [ %46, %52 ]
  %55 = phi i64 [ %59, %53 ], [ 1, %52 ]
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !1435, metadata !621), !dbg !1451
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %54, i64 0, metadata !1429, metadata !621), !dbg !1452
  %56 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %54, i64 0, i32 1, !dbg !1450
  %57 = load %struct.hash_entry*, %struct.hash_entry** %56, align 8, !dbg !1450, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %57, i64 0, metadata !1429, metadata !621), !dbg !1452
  %58 = icmp eq %struct.hash_entry* %57, null, !dbg !1454
  %59 = add i64 %55, 1, !dbg !1455
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !1435, metadata !621), !dbg !1451
  br i1 %58, label %60, label %53, !dbg !1454, !llvm.loop !1456

; <label>:60:                                     ; preds = %53
  %61 = icmp ugt i64 %55, %45, !dbg !1457
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !1428, metadata !621), !dbg !1437
  %62 = select i1 %61, i64 %55, i64 %45, !dbg !1459
  tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !1428, metadata !621), !dbg !1437
  br label %63, !dbg !1460

; <label>:63:                                     ; preds = %43, %48, %60, %1
  %64 = phi i64 [ 0, %1 ], [ %44, %43 ], [ %62, %60 ], [ %45, %48 ]
  ret i64 %64, !dbg !1462

; <label>:65:                                     ; preds = %37
  br label %66, !dbg !1450

; <label>:66:                                     ; preds = %66, %65
  %67 = phi %struct.hash_entry* [ %70, %66 ], [ %39, %65 ]
  %68 = phi i64 [ %72, %66 ], [ 1, %65 ]
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !1435, metadata !621), !dbg !1451
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %28, i64 0, metadata !1429, metadata !621), !dbg !1452
  %69 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %67, i64 0, i32 1, !dbg !1450
  %70 = load %struct.hash_entry*, %struct.hash_entry** %69, align 8, !dbg !1450, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %31, i64 0, metadata !1429, metadata !621), !dbg !1452
  %71 = icmp eq %struct.hash_entry* %70, null, !dbg !1454
  %72 = add i64 %68, 1, !dbg !1455
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1435, metadata !621), !dbg !1451
  br i1 %71, label %73, label %66, !dbg !1454, !llvm.loop !1456

; <label>:73:                                     ; preds = %66
  %74 = icmp ugt i64 %68, %38, !dbg !1457
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !1428, metadata !621), !dbg !1437
  %75 = select i1 %74, i64 %68, i64 %38, !dbg !1459
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1428, metadata !621), !dbg !1437
  br label %76, !dbg !1460

; <label>:76:                                     ; preds = %73, %37
  %77 = phi i64 [ %75, %73 ], [ %38, %37 ]
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1428, metadata !621), !dbg !1437
  %78 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 2, !dbg !1461
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %39, i64 0, metadata !1427, metadata !621), !dbg !1440
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1428, metadata !621), !dbg !1437
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %39, i64 0, metadata !1427, metadata !621), !dbg !1440
  %79 = add i64 %22, -2, !dbg !1444
  %80 = icmp eq i64 %79, 0, !dbg !1444
  br i1 %80, label %43, label %19, !dbg !1444, !llvm.loop !1463
}

; Function Attrs: nounwind readonly sspstrong uwtable
define zeroext i1 @hash_table_ok(%struct.hash_table* nocapture readonly) local_unnamed_addr #11 !dbg !1465 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1469, metadata !621), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1471, metadata !621), !dbg !1480
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1472, metadata !621), !dbg !1481
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1482
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !dbg !1482, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %3, i64 0, metadata !1470, metadata !621), !dbg !1483
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1472, metadata !621), !dbg !1481
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1471, metadata !621), !dbg !1480
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %3, i64 0, metadata !1470, metadata !621), !dbg !1483
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1484
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !1484, !tbaa !1442
  %6 = icmp ult %struct.hash_entry* %3, %5, !dbg !1485
  br i1 %6, label %7, label %65, !dbg !1486

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.hash_entry* %5 to i8*
  %9 = ptrtoint %struct.hash_entry* %3 to i64
  %10 = xor i64 %9, -1, !dbg !1487
  %11 = getelementptr i8, i8* %8, i64 %10, !dbg !1487
  %12 = ptrtoint i8* %11 to i64
  %13 = lshr i64 %12, 4, !dbg !1487
  %14 = add nuw nsw i64 %13, 1, !dbg !1487
  %15 = and i64 %14, 1, !dbg !1487
  %16 = icmp eq i64 %13, 0, !dbg !1487
  br i1 %16, label %44, label %17, !dbg !1487

; <label>:17:                                     ; preds = %7
  %18 = sub nsw i64 %14, %15, !dbg !1487
  br label %19, !dbg !1487

; <label>:19:                                     ; preds = %88, %17
  %20 = phi i64 [ 0, %17 ], [ %90, %88 ]
  %21 = phi i64 [ 0, %17 ], [ %89, %88 ]
  %22 = phi %struct.hash_entry* [ %3, %17 ], [ %91, %88 ]
  %23 = phi i64 [ %18, %17 ], [ %92, %88 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %22, i64 0, metadata !1470, metadata !621), !dbg !1483
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !1471, metadata !621), !dbg !1480
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1472, metadata !621), !dbg !1481
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i64 0, i32 0, !dbg !1487
  %25 = load i8*, i8** %24, align 8, !dbg !1487, !tbaa !1446
  %26 = icmp eq i8* %25, null, !dbg !1488
  br i1 %26, label %37, label %27, !dbg !1489

; <label>:27:                                     ; preds = %19
  br label %28

; <label>:28:                                     ; preds = %27, %28
  %29 = phi i64 [ %31, %28 ], [ %20, %27 ]
  %30 = phi %struct.hash_entry* [ %33, %28 ], [ %22, %27 ]
  %31 = add i64 %29, 1
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %30, i64 0, metadata !1473, metadata !621), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1472, metadata !621), !dbg !1481
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 1, !dbg !1491
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8, !dbg !1491, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %33, i64 0, metadata !1473, metadata !621), !dbg !1490
  %34 = icmp eq %struct.hash_entry* %33, null, !dbg !1492
  br i1 %34, label %35, label %28, !dbg !1492, !llvm.loop !1493

; <label>:35:                                     ; preds = %28
  %36 = add i64 %21, 1, !dbg !1495
  br label %37, !dbg !1496

; <label>:37:                                     ; preds = %35, %19
  %38 = phi i64 [ %21, %19 ], [ %36, %35 ]
  %39 = phi i64 [ %20, %19 ], [ %31, %35 ]
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1472, metadata !621), !dbg !1481
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1471, metadata !621), !dbg !1480
  %40 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i64 1, !dbg !1496
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %40, i64 0, metadata !1470, metadata !621), !dbg !1483
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1472, metadata !621), !dbg !1481
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1471, metadata !621), !dbg !1480
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %40, i64 0, metadata !1470, metadata !621), !dbg !1483
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %22, i64 0, metadata !1470, metadata !621), !dbg !1483
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !1471, metadata !621), !dbg !1480
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1472, metadata !621), !dbg !1481
  %41 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %40, i64 0, i32 0, !dbg !1487
  %42 = load i8*, i8** %41, align 8, !dbg !1487, !tbaa !1446
  %43 = icmp eq i8* %42, null, !dbg !1488
  br i1 %43, label %88, label %78, !dbg !1489

; <label>:44:                                     ; preds = %88, %7
  %45 = phi i64 [ undef, %7 ], [ %89, %88 ]
  %46 = phi i64 [ undef, %7 ], [ %90, %88 ]
  %47 = phi i64 [ 0, %7 ], [ %90, %88 ]
  %48 = phi i64 [ 0, %7 ], [ %89, %88 ]
  %49 = phi %struct.hash_entry* [ %3, %7 ], [ %91, %88 ]
  %50 = icmp eq i64 %15, 0, !dbg !1497
  br i1 %50, label %65, label %51, !dbg !1497

; <label>:51:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %49, i64 0, metadata !1470, metadata !621), !dbg !1483
  tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !1471, metadata !621), !dbg !1480
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !1472, metadata !621), !dbg !1481
  %52 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %49, i64 0, i32 0, !dbg !1487
  %53 = load i8*, i8** %52, align 8, !dbg !1487, !tbaa !1446
  %54 = icmp eq i8* %53, null, !dbg !1488
  br i1 %54, label %65, label %55, !dbg !1489

; <label>:55:                                     ; preds = %51
  br label %56

; <label>:56:                                     ; preds = %56, %55
  %57 = phi i64 [ %59, %56 ], [ %47, %55 ]
  %58 = phi %struct.hash_entry* [ %61, %56 ], [ %49, %55 ]
  %59 = add i64 %57, 1
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %58, i64 0, metadata !1473, metadata !621), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !1472, metadata !621), !dbg !1481
  %60 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i64 0, i32 1, !dbg !1491
  %61 = load %struct.hash_entry*, %struct.hash_entry** %60, align 8, !dbg !1491, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %61, i64 0, metadata !1473, metadata !621), !dbg !1490
  %62 = icmp eq %struct.hash_entry* %61, null, !dbg !1492
  br i1 %62, label %63, label %56, !dbg !1492, !llvm.loop !1493

; <label>:63:                                     ; preds = %56
  %64 = add i64 %48, 1, !dbg !1495
  br label %65, !dbg !1496

; <label>:65:                                     ; preds = %44, %51, %63, %1
  %66 = phi i64 [ 0, %1 ], [ %45, %44 ], [ %48, %51 ], [ %64, %63 ]
  %67 = phi i64 [ 0, %1 ], [ %46, %44 ], [ %47, %51 ], [ %59, %63 ]
  %68 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !1497
  %69 = load i64, i64* %68, align 8, !dbg !1497, !tbaa !1415
  %70 = icmp eq i64 %66, %69, !dbg !1499
  br i1 %70, label %71, label %75, !dbg !1500

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !1501
  %73 = load i64, i64* %72, align 8, !dbg !1501, !tbaa !1422
  %74 = icmp eq i64 %67, %73, !dbg !1502
  br i1 %74, label %76, label %75, !dbg !1503

; <label>:75:                                     ; preds = %71, %65
  br label %76, !dbg !1504

; <label>:76:                                     ; preds = %71, %75
  %77 = phi i1 [ false, %75 ], [ true, %71 ]
  ret i1 %77, !dbg !1505

; <label>:78:                                     ; preds = %37
  br label %79

; <label>:79:                                     ; preds = %79, %78
  %80 = phi i64 [ %82, %79 ], [ %39, %78 ]
  %81 = phi %struct.hash_entry* [ %84, %79 ], [ %40, %78 ]
  %82 = add i64 %80, 1
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %30, i64 0, metadata !1473, metadata !621), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1472, metadata !621), !dbg !1481
  %83 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %81, i64 0, i32 1, !dbg !1491
  %84 = load %struct.hash_entry*, %struct.hash_entry** %83, align 8, !dbg !1491, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %33, i64 0, metadata !1473, metadata !621), !dbg !1490
  %85 = icmp eq %struct.hash_entry* %84, null, !dbg !1492
  br i1 %85, label %86, label %79, !dbg !1492, !llvm.loop !1493

; <label>:86:                                     ; preds = %79
  %87 = add i64 %38, 1, !dbg !1495
  br label %88, !dbg !1496

; <label>:88:                                     ; preds = %86, %37
  %89 = phi i64 [ %38, %37 ], [ %87, %86 ]
  %90 = phi i64 [ %39, %37 ], [ %82, %86 ]
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1472, metadata !621), !dbg !1481
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1471, metadata !621), !dbg !1480
  %91 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i64 2, !dbg !1496
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %40, i64 0, metadata !1470, metadata !621), !dbg !1483
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1472, metadata !621), !dbg !1481
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1471, metadata !621), !dbg !1480
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %40, i64 0, metadata !1470, metadata !621), !dbg !1483
  %92 = add i64 %23, -2, !dbg !1486
  %93 = icmp eq i64 %92, 0, !dbg !1486
  br i1 %93, label %44, label %19, !dbg !1486, !llvm.loop !1506
}

; Function Attrs: nounwind sspstrong uwtable
define void @hash_print_statistics(%struct.hash_table* nocapture readonly, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1508 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1564, metadata !621), !dbg !1570
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1565, metadata !621), !dbg !1571
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1419, metadata !621), !dbg !1572
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !1574
  %4 = load i64, i64* %3, align 8, !dbg !1574, !tbaa !1422
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1566, metadata !621), !dbg !1575
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1404, metadata !621), !dbg !1576
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !1578
  %6 = load i64, i64* %5, align 8, !dbg !1578, !tbaa !1407
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1567, metadata !621), !dbg !1579
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1412, metadata !621), !dbg !1580
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !1582
  %8 = load i64, i64* %7, align 8, !dbg !1582, !tbaa !1415
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1568, metadata !621), !dbg !1583
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1426, metadata !621), !dbg !1584
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1428, metadata !621), !dbg !1586
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1587
  %10 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8, !dbg !1587, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %10, i64 0, metadata !1427, metadata !621), !dbg !1588
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1428, metadata !621), !dbg !1586
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %10, i64 0, metadata !1427, metadata !621), !dbg !1588
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1589
  %12 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8, !dbg !1589, !tbaa !1442
  %13 = icmp ult %struct.hash_entry* %10, %12, !dbg !1590
  br i1 %13, label %14, label %70, !dbg !1591

; <label>:14:                                     ; preds = %2
  %15 = bitcast %struct.hash_entry* %12 to i8*
  %16 = ptrtoint %struct.hash_entry* %10 to i64
  %17 = xor i64 %16, -1, !dbg !1592
  %18 = getelementptr i8, i8* %15, i64 %17, !dbg !1592
  %19 = ptrtoint i8* %18 to i64
  %20 = lshr i64 %19, 4, !dbg !1592
  %21 = add nuw nsw i64 %20, 1, !dbg !1592
  %22 = and i64 %21, 1, !dbg !1592
  %23 = icmp eq i64 %20, 0, !dbg !1592
  br i1 %23, label %50, label %24, !dbg !1592

; <label>:24:                                     ; preds = %14
  %25 = sub nsw i64 %21, %22, !dbg !1592
  br label %26, !dbg !1592

; <label>:26:                                     ; preds = %91, %24
  %27 = phi i64 [ 0, %24 ], [ %92, %91 ]
  %28 = phi %struct.hash_entry* [ %10, %24 ], [ %93, %91 ]
  %29 = phi i64 [ %25, %24 ], [ %94, %91 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %28, i64 0, metadata !1427, metadata !621), !dbg !1588
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1428, metadata !621), !dbg !1586
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %28, i64 0, i32 0, !dbg !1592
  %31 = load i8*, i8** %30, align 8, !dbg !1592, !tbaa !1446
  %32 = icmp eq i8* %31, null, !dbg !1593
  br i1 %32, label %44, label %33, !dbg !1594

; <label>:33:                                     ; preds = %26
  br label %34, !dbg !1595

; <label>:34:                                     ; preds = %33, %34
  %35 = phi %struct.hash_entry* [ %38, %34 ], [ %28, %33 ]
  %36 = phi i64 [ %40, %34 ], [ 1, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1435, metadata !621), !dbg !1596
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %35, i64 0, metadata !1429, metadata !621), !dbg !1597
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %35, i64 0, i32 1, !dbg !1595
  %38 = load %struct.hash_entry*, %struct.hash_entry** %37, align 8, !dbg !1595, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %38, i64 0, metadata !1429, metadata !621), !dbg !1597
  %39 = icmp eq %struct.hash_entry* %38, null, !dbg !1598
  %40 = add i64 %36, 1, !dbg !1599
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1435, metadata !621), !dbg !1596
  br i1 %39, label %41, label %34, !dbg !1598, !llvm.loop !1456

; <label>:41:                                     ; preds = %34
  %42 = icmp ugt i64 %36, %27, !dbg !1600
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1428, metadata !621), !dbg !1586
  %43 = select i1 %42, i64 %36, i64 %27, !dbg !1601
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1428, metadata !621), !dbg !1586
  br label %44, !dbg !1602

; <label>:44:                                     ; preds = %41, %26
  %45 = phi i64 [ %43, %41 ], [ %27, %26 ]
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !1428, metadata !621), !dbg !1586
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %28, i64 1, !dbg !1603
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %46, i64 0, metadata !1427, metadata !621), !dbg !1588
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !1428, metadata !621), !dbg !1586
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %46, i64 0, metadata !1427, metadata !621), !dbg !1588
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %28, i64 0, metadata !1427, metadata !621), !dbg !1588
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1428, metadata !621), !dbg !1586
  %47 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %46, i64 0, i32 0, !dbg !1592
  %48 = load i8*, i8** %47, align 8, !dbg !1592, !tbaa !1446
  %49 = icmp eq i8* %48, null, !dbg !1593
  br i1 %49, label %91, label %80, !dbg !1594

; <label>:50:                                     ; preds = %91, %14
  %51 = phi i64 [ undef, %14 ], [ %92, %91 ]
  %52 = phi i64 [ 0, %14 ], [ %92, %91 ]
  %53 = phi %struct.hash_entry* [ %10, %14 ], [ %93, %91 ]
  %54 = icmp eq i64 %22, 0, !dbg !1604
  br i1 %54, label %70, label %55, !dbg !1604

; <label>:55:                                     ; preds = %50
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %53, i64 0, metadata !1427, metadata !621), !dbg !1588
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1428, metadata !621), !dbg !1586
  %56 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %53, i64 0, i32 0, !dbg !1592
  %57 = load i8*, i8** %56, align 8, !dbg !1592, !tbaa !1446
  %58 = icmp eq i8* %57, null, !dbg !1593
  br i1 %58, label %70, label %59, !dbg !1594

; <label>:59:                                     ; preds = %55
  br label %60, !dbg !1595

; <label>:60:                                     ; preds = %60, %59
  %61 = phi %struct.hash_entry* [ %64, %60 ], [ %53, %59 ]
  %62 = phi i64 [ %66, %60 ], [ 1, %59 ]
  tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !1435, metadata !621), !dbg !1596
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %61, i64 0, metadata !1429, metadata !621), !dbg !1597
  %63 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %61, i64 0, i32 1, !dbg !1595
  %64 = load %struct.hash_entry*, %struct.hash_entry** %63, align 8, !dbg !1595, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %64, i64 0, metadata !1429, metadata !621), !dbg !1597
  %65 = icmp eq %struct.hash_entry* %64, null, !dbg !1598
  %66 = add i64 %62, 1, !dbg !1599
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !1435, metadata !621), !dbg !1596
  br i1 %65, label %67, label %60, !dbg !1598, !llvm.loop !1456

; <label>:67:                                     ; preds = %60
  %68 = icmp ugt i64 %62, %52, !dbg !1600
  tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !1428, metadata !621), !dbg !1586
  %69 = select i1 %68, i64 %62, i64 %52, !dbg !1601
  tail call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !1428, metadata !621), !dbg !1586
  br label %70, !dbg !1602

; <label>:70:                                     ; preds = %50, %55, %67, %2
  %71 = phi i64 [ 0, %2 ], [ %51, %50 ], [ %69, %67 ], [ %52, %55 ]
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !1569, metadata !621), !dbg !1605
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i64 0, i64 0), i64 %4) #13, !dbg !1604
  %73 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.52, i64 0, i64 0), i64 %6) #13, !dbg !1606
  %74 = uitofp i64 %8 to double, !dbg !1607
  %75 = fmul double %74, 1.000000e+02, !dbg !1607
  %76 = uitofp i64 %6 to double, !dbg !1607
  %77 = fdiv double %75, %76, !dbg !1607
  %78 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.53, i64 0, i64 0), i64 %8, double %77) #13, !dbg !1607
  %79 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.54, i64 0, i64 0), i64 %71) #13, !dbg !1608
  ret void, !dbg !1609

; <label>:80:                                     ; preds = %44
  br label %81, !dbg !1595

; <label>:81:                                     ; preds = %81, %80
  %82 = phi %struct.hash_entry* [ %85, %81 ], [ %46, %80 ]
  %83 = phi i64 [ %87, %81 ], [ 1, %80 ]
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1435, metadata !621), !dbg !1596
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %35, i64 0, metadata !1429, metadata !621), !dbg !1597
  %84 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %82, i64 0, i32 1, !dbg !1595
  %85 = load %struct.hash_entry*, %struct.hash_entry** %84, align 8, !dbg !1595, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %38, i64 0, metadata !1429, metadata !621), !dbg !1597
  %86 = icmp eq %struct.hash_entry* %85, null, !dbg !1598
  %87 = add i64 %83, 1, !dbg !1599
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1435, metadata !621), !dbg !1596
  br i1 %86, label %88, label %81, !dbg !1598, !llvm.loop !1456

; <label>:88:                                     ; preds = %81
  %89 = icmp ugt i64 %83, %45, !dbg !1600
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1428, metadata !621), !dbg !1586
  %90 = select i1 %89, i64 %83, i64 %45, !dbg !1601
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1428, metadata !621), !dbg !1586
  br label %91, !dbg !1602

; <label>:91:                                     ; preds = %88, %44
  %92 = phi i64 [ %90, %88 ], [ %45, %44 ]
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !1428, metadata !621), !dbg !1586
  %93 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %28, i64 2, !dbg !1603
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %46, i64 0, metadata !1427, metadata !621), !dbg !1588
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !1428, metadata !621), !dbg !1586
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %46, i64 0, metadata !1427, metadata !621), !dbg !1588
  %94 = add i64 %29, -2, !dbg !1591
  %95 = icmp eq i64 %94, 0, !dbg !1591
  br i1 %95, label %50, label %26, !dbg !1591, !llvm.loop !1463
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_lookup(%struct.hash_table* nocapture readonly, i8*) local_unnamed_addr #6 !dbg !1610 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1614, metadata !621), !dbg !1618
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1615, metadata !621), !dbg !1619
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1620, metadata !621) #13, !dbg !1627
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1625, metadata !621) #13, !dbg !1629
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !1630
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !dbg !1630, !tbaa !1631
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !1632
  %6 = load i64, i64* %5, align 8, !dbg !1632, !tbaa !1407
  %7 = tail call i64 %4(i8* %1, i64 %6) #13, !dbg !1633
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1626, metadata !621) #13, !dbg !1634
  %8 = load i64, i64* %5, align 8, !dbg !1635, !tbaa !1407
  %9 = icmp ult i64 %7, %8, !dbg !1637
  br i1 %9, label %11, label %10, !dbg !1638

; <label>:10:                                     ; preds = %2
  tail call void @abort() #16, !dbg !1639
  unreachable, !dbg !1639

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1640
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !1640, !tbaa !1439
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, !dbg !1641
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !1616, metadata !621), !dbg !1642
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0, !dbg !1643
  %16 = load i8*, i8** %15, align 8, !dbg !1643, !tbaa !1446
  %17 = icmp eq i8* %16, null, !dbg !1645
  %18 = icmp eq %struct.hash_entry* %14, null, !dbg !1646
  %19 = or i1 %17, %18, !dbg !1648
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !1617, metadata !621), !dbg !1649
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !1617, metadata !621), !dbg !1649
  br i1 %19, label %40, label %20, !dbg !1648

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !1617, metadata !621), !dbg !1649
  %22 = icmp eq i8* %16, %1, !dbg !1650
  br i1 %22, label %40, label %23, !dbg !1653

; <label>:23:                                     ; preds = %20
  br label %24, !dbg !1654

; <label>:24:                                     ; preds = %23, %36
  %25 = phi %struct.hash_entry* [ %34, %36 ], [ %14, %23 ]
  %26 = phi i8* [ %38, %36 ], [ %16, %23 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %25, i64 0, metadata !1617, metadata !621), !dbg !1649
  %27 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !dbg !1654, !tbaa !1655
  %28 = tail call zeroext i1 %27(i8* %1, i8* %26) #13, !dbg !1656
  br i1 %28, label %29, label %32, !dbg !1657

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i64 0, i32 0, !dbg !1658
  %31 = load i8*, i8** %30, align 8, !dbg !1659, !tbaa !1446
  br label %40, !dbg !1657

; <label>:32:                                     ; preds = %24
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i64 0, i32 1, !dbg !1660
  %34 = load %struct.hash_entry*, %struct.hash_entry** %33, align 8, !dbg !1660, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %34, i64 0, metadata !1617, metadata !621), !dbg !1649
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %34, i64 0, metadata !1617, metadata !621), !dbg !1649
  %35 = icmp eq %struct.hash_entry* %34, null, !dbg !1646
  br i1 %35, label %40, label %36, !dbg !1646, !llvm.loop !1661

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0
  %38 = load i8*, i8** %37, align 8, !dbg !1658, !tbaa !1446
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %34, i64 0, metadata !1617, metadata !621), !dbg !1649
  %39 = icmp eq i8* %38, %1, !dbg !1650
  br i1 %39, label %40, label %24, !dbg !1653

; <label>:40:                                     ; preds = %36, %32, %20, %29, %11
  %41 = phi i8* [ null, %11 ], [ %31, %29 ], [ %1, %20 ], [ null, %32 ], [ %1, %36 ]
  ret i8* %41, !dbg !1663
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @hash_get_first(%struct.hash_table* nocapture readonly) local_unnamed_addr #11 !dbg !1664 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1668, metadata !621), !dbg !1670
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !1671
  %3 = load i64, i64* %2, align 8, !dbg !1671, !tbaa !1422
  %4 = icmp eq i64 %3, 0, !dbg !1673
  br i1 %4, label %21, label %5, !dbg !1674

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1675
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !1675, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %7, i64 0, metadata !1669, metadata !621), !dbg !1677
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %7, i64 0, metadata !1669, metadata !621), !dbg !1677
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1678
  %9 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8, !dbg !1678, !tbaa !1442
  %10 = icmp ult %struct.hash_entry* %7, %9, !dbg !1681
  br i1 %10, label %11, label %14, !dbg !1682

; <label>:11:                                     ; preds = %5
  br label %15, !dbg !1683

; <label>:12:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %20, i64 0, metadata !1669, metadata !621), !dbg !1677
  %13 = icmp ult %struct.hash_entry* %20, %9, !dbg !1681
  br i1 %13, label %15, label %14, !dbg !1682, !llvm.loop !1685

; <label>:14:                                     ; preds = %12, %5
  tail call void @abort() #16, !dbg !1688
  unreachable, !dbg !1688

; <label>:15:                                     ; preds = %11, %12
  %16 = phi %struct.hash_entry* [ %20, %12 ], [ %7, %11 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %16, i64 0, metadata !1669, metadata !621), !dbg !1677
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 0, !dbg !1683
  %18 = load i8*, i8** %17, align 8, !dbg !1683, !tbaa !1446
  %19 = icmp eq i8* %18, null, !dbg !1689
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 1, !dbg !1690
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %20, i64 0, metadata !1669, metadata !621), !dbg !1677
  br i1 %19, label %12, label %21, !dbg !1691

; <label>:21:                                     ; preds = %15, %1
  %22 = phi i8* [ null, %1 ], [ %18, %15 ]
  ret i8* %22, !dbg !1692
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_get_next(%struct.hash_table* nocapture readonly, i8*) local_unnamed_addr #6 !dbg !1693 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1695, metadata !621), !dbg !1699
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1696, metadata !621), !dbg !1700
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1620, metadata !621) #13, !dbg !1701
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1625, metadata !621) #13, !dbg !1703
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !1704
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !dbg !1704, !tbaa !1631
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !1705
  %6 = load i64, i64* %5, align 8, !dbg !1705, !tbaa !1407
  %7 = tail call i64 %4(i8* %1, i64 %6) #13, !dbg !1706
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1626, metadata !621) #13, !dbg !1707
  %8 = load i64, i64* %5, align 8, !dbg !1708, !tbaa !1407
  %9 = icmp ult i64 %7, %8, !dbg !1709
  br i1 %9, label %11, label %10, !dbg !1710

; <label>:10:                                     ; preds = %2
  tail call void @abort() #16, !dbg !1711
  unreachable, !dbg !1711

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1712
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !1712, !tbaa !1439
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, !dbg !1713
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !1697, metadata !621), !dbg !1714
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !1698, metadata !621), !dbg !1715
  br label %15, !dbg !1716, !llvm.loop !1717

; <label>:15:                                     ; preds = %27, %11
  %16 = phi %struct.hash_entry* [ %14, %11 ], [ %21, %27 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %16, i64 0, metadata !1698, metadata !621), !dbg !1715
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 0, !dbg !1719
  %18 = load i8*, i8** %17, align 8, !dbg !1719, !tbaa !1446
  %19 = icmp eq i8* %18, %1, !dbg !1722
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %20, align 8, !tbaa !1453
  %22 = icmp eq %struct.hash_entry* %21, null
  br i1 %19, label %23, label %27, !dbg !1723

; <label>:23:                                     ; preds = %15
  br i1 %22, label %28, label %24, !dbg !1724

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 0, !dbg !1725
  %26 = load i8*, i8** %25, align 8, !dbg !1725, !tbaa !1446
  br label %42, !dbg !1726

; <label>:27:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %21, i64 0, metadata !1698, metadata !621), !dbg !1715
  br i1 %22, label %28, label %15, !dbg !1727, !llvm.loop !1717

; <label>:28:                                     ; preds = %27, %23
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !1697, metadata !621), !dbg !1714
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 1, !dbg !1728
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %29, i64 0, metadata !1697, metadata !621), !dbg !1714
  %30 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1729
  %31 = load %struct.hash_entry*, %struct.hash_entry** %30, align 8, !dbg !1729, !tbaa !1442
  %32 = icmp ult %struct.hash_entry* %29, %31, !dbg !1730
  br i1 %32, label %33, label %42, !dbg !1731

; <label>:33:                                     ; preds = %28
  br label %37, !dbg !1732

; <label>:34:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %38, i64 0, metadata !1697, metadata !621), !dbg !1714
  %35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %38, i64 1, !dbg !1728
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %35, i64 0, metadata !1697, metadata !621), !dbg !1714
  %36 = icmp ult %struct.hash_entry* %35, %31, !dbg !1730
  br i1 %36, label %37, label %42, !dbg !1731, !llvm.loop !1734

; <label>:37:                                     ; preds = %33, %34
  %38 = phi %struct.hash_entry* [ %35, %34 ], [ %29, %33 ]
  %39 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %38, i64 0, i32 0, !dbg !1732
  %40 = load i8*, i8** %39, align 8, !dbg !1732, !tbaa !1446
  %41 = icmp eq i8* %40, null, !dbg !1736
  br i1 %41, label %34, label %42, !dbg !1737

; <label>:42:                                     ; preds = %37, %34, %28, %24
  %43 = phi i8* [ %26, %24 ], [ null, %28 ], [ %40, %37 ], [ null, %34 ]
  ret i8* %43, !dbg !1738
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @hash_get_entries(%struct.hash_table* nocapture readonly, i8** nocapture, i64) local_unnamed_addr #6 !dbg !1739 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1744, metadata !621), !dbg !1750
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1745, metadata !621), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1746, metadata !621), !dbg !1752
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1747, metadata !621), !dbg !1753
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1754
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !1754, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %5, i64 0, metadata !1748, metadata !621), !dbg !1756
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %5, i64 0, metadata !1748, metadata !621), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1747, metadata !621), !dbg !1753
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1757
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !1757, !tbaa !1442
  %8 = icmp ult %struct.hash_entry* %5, %7, !dbg !1759
  br i1 %8, label %9, label %40, !dbg !1760

; <label>:9:                                      ; preds = %3
  br label %10, !dbg !1761

; <label>:10:                                     ; preds = %9, %35
  %11 = phi %struct.hash_entry* [ %36, %35 ], [ %7, %9 ]
  %12 = phi %struct.hash_entry* [ %38, %35 ], [ %5, %9 ]
  %13 = phi i64 [ %37, %35 ], [ 0, %9 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1747, metadata !621), !dbg !1753
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %12, i64 0, metadata !1748, metadata !621), !dbg !1756
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 0, i32 0, !dbg !1761
  %15 = load i8*, i8** %14, align 8, !dbg !1761, !tbaa !1446
  %16 = icmp eq i8* %15, null, !dbg !1764
  %17 = icmp eq %struct.hash_entry* %12, null, !dbg !1765
  %18 = or i1 %16, %17, !dbg !1768
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %12, i64 0, metadata !1749, metadata !621), !dbg !1769
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %12, i64 0, metadata !1749, metadata !621), !dbg !1769
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1747, metadata !621), !dbg !1753
  br i1 %18, label %35, label %19, !dbg !1768

; <label>:19:                                     ; preds = %10
  br label %20, !dbg !1770

; <label>:20:                                     ; preds = %19, %24
  %21 = phi %struct.hash_entry* [ %31, %24 ], [ %12, %19 ]
  %22 = phi i64 [ %27, %24 ], [ %13, %19 ]
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !1747, metadata !621), !dbg !1753
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %21, i64 0, metadata !1749, metadata !621), !dbg !1769
  %23 = icmp ult i64 %22, %2, !dbg !1770
  br i1 %23, label %24, label %40, !dbg !1774

; <label>:24:                                     ; preds = %20
  %25 = bitcast %struct.hash_entry* %21 to i64*, !dbg !1775
  %26 = load i64, i64* %25, align 8, !dbg !1775, !tbaa !1446
  %27 = add i64 %22, 1, !dbg !1776
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1747, metadata !621), !dbg !1753
  %28 = getelementptr inbounds i8*, i8** %1, i64 %22, !dbg !1777
  %29 = bitcast i8** %28 to i64*, !dbg !1778
  store i64 %26, i64* %29, align 8, !dbg !1778, !tbaa !628
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 1, !dbg !1779
  %31 = load %struct.hash_entry*, %struct.hash_entry** %30, align 8, !dbg !1779, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %31, i64 0, metadata !1749, metadata !621), !dbg !1769
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %31, i64 0, metadata !1749, metadata !621), !dbg !1769
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1747, metadata !621), !dbg !1753
  %32 = icmp eq %struct.hash_entry* %31, null, !dbg !1765
  br i1 %32, label %33, label %20, !dbg !1765, !llvm.loop !1780

; <label>:33:                                     ; preds = %24
  %34 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !1757, !tbaa !1442
  br label %35, !dbg !1782

; <label>:35:                                     ; preds = %33, %10
  %36 = phi %struct.hash_entry* [ %11, %10 ], [ %34, %33 ], !dbg !1757
  %37 = phi i64 [ %13, %10 ], [ %27, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !1747, metadata !621), !dbg !1753
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 1, !dbg !1782
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %38, i64 0, metadata !1748, metadata !621), !dbg !1756
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %38, i64 0, metadata !1748, metadata !621), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !1747, metadata !621), !dbg !1753
  %39 = icmp ult %struct.hash_entry* %38, %36, !dbg !1759
  br i1 %39, label %10, label %40, !dbg !1760, !llvm.loop !1783

; <label>:40:                                     ; preds = %35, %20, %3
  %41 = phi i64 [ 0, %3 ], [ %22, %20 ], [ %37, %35 ]
  ret i64 %41, !dbg !1785
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @hash_do_for_each(%struct.hash_table* nocapture readonly, i1 (i8*, i8*)* nocapture, i8*) local_unnamed_addr #6 !dbg !1786 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1794, metadata !621), !dbg !1800
  tail call void @llvm.dbg.value(metadata i1 (i8*, i8*)* %1, i64 0, metadata !1795, metadata !621), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1796, metadata !621), !dbg !1802
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1797, metadata !621), !dbg !1803
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1804
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !1804, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %5, i64 0, metadata !1798, metadata !621), !dbg !1806
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %5, i64 0, metadata !1798, metadata !621), !dbg !1806
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1797, metadata !621), !dbg !1803
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1807
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !1807, !tbaa !1442
  %8 = icmp ult %struct.hash_entry* %5, %7, !dbg !1809
  br i1 %8, label %9, label %40, !dbg !1810

; <label>:9:                                      ; preds = %3
  br label %10, !dbg !1811

; <label>:10:                                     ; preds = %9, %35
  %11 = phi %struct.hash_entry* [ %36, %35 ], [ %7, %9 ]
  %12 = phi %struct.hash_entry* [ %38, %35 ], [ %5, %9 ]
  %13 = phi i64 [ %37, %35 ], [ 0, %9 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1797, metadata !621), !dbg !1803
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %12, i64 0, metadata !1798, metadata !621), !dbg !1806
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 0, i32 0, !dbg !1811
  %15 = load i8*, i8** %14, align 8, !dbg !1811, !tbaa !1446
  %16 = icmp eq i8* %15, null, !dbg !1814
  %17 = icmp eq %struct.hash_entry* %12, null, !dbg !1815
  %18 = or i1 %16, %17, !dbg !1818
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %12, i64 0, metadata !1799, metadata !621), !dbg !1819
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %12, i64 0, metadata !1799, metadata !621), !dbg !1819
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1797, metadata !621), !dbg !1803
  br i1 %18, label %35, label %19, !dbg !1818

; <label>:19:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1797, metadata !621), !dbg !1803
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %12, i64 0, metadata !1799, metadata !621), !dbg !1819
  %20 = tail call zeroext i1 %1(i8* %15, i8* %2) #13, !dbg !1820
  br i1 %20, label %21, label %40, !dbg !1824

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1825

; <label>:22:                                     ; preds = %21, %29
  %23 = phi i64 [ %25, %29 ], [ %13, %21 ]
  %24 = phi %struct.hash_entry* [ %27, %29 ], [ %12, %21 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %24, i64 0, metadata !1799, metadata !621), !dbg !1819
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1797, metadata !621), !dbg !1803
  %25 = add i64 %23, 1, !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1797, metadata !621), !dbg !1803
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 1, !dbg !1826
  %27 = load %struct.hash_entry*, %struct.hash_entry** %26, align 8, !dbg !1826, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %27, i64 0, metadata !1799, metadata !621), !dbg !1819
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %27, i64 0, metadata !1799, metadata !621), !dbg !1819
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1797, metadata !621), !dbg !1803
  %28 = icmp eq %struct.hash_entry* %27, null, !dbg !1815
  br i1 %28, label %33, label %29, !dbg !1815, !llvm.loop !1827

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8, !dbg !1829, !tbaa !1446
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1797, metadata !621), !dbg !1803
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %27, i64 0, metadata !1799, metadata !621), !dbg !1819
  %32 = tail call zeroext i1 %1(i8* %31, i8* %2) #13, !dbg !1820
  br i1 %32, label %22, label %40, !dbg !1824

; <label>:33:                                     ; preds = %22
  %34 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !1807, !tbaa !1442
  br label %35, !dbg !1830

; <label>:35:                                     ; preds = %33, %10
  %36 = phi %struct.hash_entry* [ %11, %10 ], [ %34, %33 ], !dbg !1807
  %37 = phi i64 [ %13, %10 ], [ %25, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !1797, metadata !621), !dbg !1803
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 1, !dbg !1830
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %38, i64 0, metadata !1798, metadata !621), !dbg !1806
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %38, i64 0, metadata !1798, metadata !621), !dbg !1806
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !1797, metadata !621), !dbg !1803
  %39 = icmp ult %struct.hash_entry* %38, %36, !dbg !1809
  br i1 %39, label %10, label %40, !dbg !1810, !llvm.loop !1831

; <label>:40:                                     ; preds = %35, %19, %29, %3
  %41 = phi i64 [ 0, %3 ], [ %25, %29 ], [ %37, %35 ], [ %13, %19 ]
  ret i64 %41, !dbg !1833
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_string(i8* nocapture readonly, i64) local_unnamed_addr #11 !dbg !1834 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1838, metadata !621), !dbg !1842
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1839, metadata !621), !dbg !1843
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1840, metadata !621), !dbg !1844
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1838, metadata !621), !dbg !1842
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1840, metadata !621), !dbg !1844
  %3 = load i8, i8* %0, align 1, !dbg !1845, !tbaa !749
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !1841, metadata !621), !dbg !1848
  %4 = icmp eq i8 %3, 0, !dbg !1849
  br i1 %4, label %17, label %5, !dbg !1849

; <label>:5:                                      ; preds = %2
  br label %6, !dbg !1850

; <label>:6:                                      ; preds = %5, %6
  %7 = phi i8 [ %15, %6 ], [ %3, %5 ]
  %8 = phi i8* [ %14, %6 ], [ %0, %5 ]
  %9 = phi i64 [ %13, %6 ], [ 0, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1840, metadata !621), !dbg !1844
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1838, metadata !621), !dbg !1842
  %10 = mul i64 %9, 31, !dbg !1850
  %11 = zext i8 %7 to i64, !dbg !1851
  %12 = add i64 %10, %11, !dbg !1852
  %13 = urem i64 %12, %1, !dbg !1853
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1840, metadata !621), !dbg !1844
  %14 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1854
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1838, metadata !621), !dbg !1842
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1838, metadata !621), !dbg !1842
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1840, metadata !621), !dbg !1844
  %15 = load i8, i8* %14, align 1, !dbg !1845, !tbaa !749
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1841, metadata !621), !dbg !1848
  %16 = icmp eq i8 %15, 0, !dbg !1849
  br i1 %16, label %17, label %6, !dbg !1849, !llvm.loop !1855

; <label>:17:                                     ; preds = %6, %2
  %18 = phi i64 [ 0, %2 ], [ %13, %6 ]
  ret i64 %18, !dbg !1857
}

; Function Attrs: nounwind sspstrong uwtable
define void @hash_reset_tuning(%struct.hash_tuning* nocapture) local_unnamed_addr #6 !dbg !1858 {
  tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %0, i64 0, metadata !1863, metadata !621), !dbg !1864
  %2 = bitcast %struct.hash_tuning* %0 to i8*, !dbg !1865
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.hash_tuning* @default_tuning to i8*), i64 20, i32 4, i1 false), !dbg !1865, !tbaa.struct !1866
  ret void, !dbg !1869
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.hash_table* @hash_initialize(i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #6 !dbg !1870 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1875, metadata !621), !dbg !1881
  tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %1, i64 0, metadata !1876, metadata !621), !dbg !1882
  tail call void @llvm.dbg.value(metadata i64 (i8*, i64)* %2, i64 0, metadata !1877, metadata !621), !dbg !1883
  tail call void @llvm.dbg.value(metadata i1 (i8*, i8*)* %3, i64 0, metadata !1878, metadata !621), !dbg !1884
  tail call void @llvm.dbg.value(metadata void (i8*)* %4, i64 0, metadata !1879, metadata !621), !dbg !1885
  %6 = icmp eq i64 (i8*, i64)* %2, null, !dbg !1886
  tail call void @llvm.dbg.value(metadata i64 (i8*, i64)* @raw_hasher, i64 0, metadata !1877, metadata !621), !dbg !1883
  %7 = select i1 %6, i64 (i8*, i64)* @raw_hasher, i64 (i8*, i64)* %2, !dbg !1888
  tail call void @llvm.dbg.value(metadata i64 (i8*, i64)* %7, i64 0, metadata !1877, metadata !621), !dbg !1883
  %8 = icmp eq i1 (i8*, i8*)* %3, null, !dbg !1889
  tail call void @llvm.dbg.value(metadata i1 (i8*, i8*)* @raw_comparator, i64 0, metadata !1878, metadata !621), !dbg !1884
  %9 = select i1 %8, i1 (i8*, i8*)* @raw_comparator, i1 (i8*, i8*)* %3, !dbg !1891
  tail call void @llvm.dbg.value(metadata i1 (i8*, i8*)* %9, i64 0, metadata !1878, metadata !621), !dbg !1884
  %10 = tail call noalias i8* @malloc(i64 80) #13, !dbg !1892
  %11 = bitcast i8* %10 to %struct.hash_table*, !dbg !1892
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %11, i64 0, metadata !1880, metadata !621), !dbg !1893
  %12 = icmp eq i8* %10, null, !dbg !1894
  br i1 %12, label %107, label %13, !dbg !1896

; <label>:13:                                     ; preds = %5
  %14 = icmp eq %struct.hash_tuning* %1, null, !dbg !1897
  tail call void @llvm.dbg.value(metadata %struct.hash_tuning* @default_tuning, i64 0, metadata !1876, metadata !621), !dbg !1882
  %15 = select i1 %14, %struct.hash_tuning* @default_tuning, %struct.hash_tuning* %1, !dbg !1899
  tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %15, i64 0, metadata !1876, metadata !621), !dbg !1882
  %16 = getelementptr inbounds i8, i8* %10, i64 40, !dbg !1900
  %17 = bitcast i8* %16 to %struct.hash_tuning**, !dbg !1900
  store %struct.hash_tuning* %15, %struct.hash_tuning** %17, align 8, !dbg !1901, !tbaa !1902
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %11, i64 0, metadata !1903, metadata !621), !dbg !1910
  tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %15, i64 0, metadata !1908, metadata !621), !dbg !1913
  %18 = icmp eq %struct.hash_tuning* %15, @default_tuning, !dbg !1914
  br i1 %18, label %42, label %19, !dbg !1916

; <label>:19:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata float 0x3FB99999A0000000, i64 0, metadata !1909, metadata !621), !dbg !1917
  %20 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2, !dbg !1918
  %21 = load float, float* %20, align 4, !dbg !1918, !tbaa !1920
  %22 = fcmp ogt float %21, 0x3FB99999A0000000, !dbg !1922
  %23 = fcmp olt float %21, 0x3FECCCCCC0000000, !dbg !1923
  %24 = and i1 %22, %23, !dbg !1924
  br i1 %24, label %25, label %106, !dbg !1924

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 3, !dbg !1925
  %27 = load float, float* %26, align 4, !dbg !1925, !tbaa !1926
  %28 = fcmp ogt float %27, 0x3FF19999A0000000, !dbg !1927
  br i1 %28, label %29, label %106, !dbg !1928

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 0, !dbg !1929
  %31 = load float, float* %30, align 4, !dbg !1929, !tbaa !1930
  %32 = fcmp ult float %31, 0.000000e+00, !dbg !1931
  br i1 %32, label %106, label %33, !dbg !1932

; <label>:33:                                     ; preds = %29
  %34 = fadd float %31, 0x3FB99999A0000000, !dbg !1933
  %35 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 1, !dbg !1934
  %36 = load float, float* %35, align 4, !dbg !1934, !tbaa !1935
  %37 = fcmp olt float %34, %36, !dbg !1936
  %38 = fcmp ole float %36, 1.000000e+00, !dbg !1937
  %39 = and i1 %38, %37, !dbg !1938
  %40 = fcmp olt float %34, %21, !dbg !1939
  %41 = and i1 %40, %39, !dbg !1938
  br i1 %41, label %42, label %106, !dbg !1938

; <label>:42:                                     ; preds = %13, %33
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1940, metadata !621), !dbg !1949
  tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %15, i64 0, metadata !1945, metadata !621), !dbg !1951
  %43 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 4, !dbg !1952
  %44 = load i8, i8* %43, align 4, !dbg !1952, !tbaa !1953, !range !1230
  %45 = icmp eq i8 %44, 0, !dbg !1952
  br i1 %45, label %46, label %53, !dbg !1954

; <label>:46:                                     ; preds = %42
  %47 = uitofp i64 %0 to float, !dbg !1955
  %48 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2, !dbg !1956
  %49 = load float, float* %48, align 4, !dbg !1956, !tbaa !1920
  %50 = fdiv float %47, %49, !dbg !1957
  tail call void @llvm.dbg.value(metadata float %50, i64 0, metadata !1946, metadata !621), !dbg !1958
  %51 = fcmp ult float %50, 0x43F0000000000000, !dbg !1959
  %52 = fptoui float %50 to i64, !dbg !1961
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1940, metadata !621), !dbg !1949
  br i1 %51, label %53, label %106

; <label>:53:                                     ; preds = %46, %42
  %54 = phi i64 [ %0, %42 ], [ %52, %46 ]
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1940, metadata !621), !dbg !1949
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1962, metadata !621), !dbg !1967
  %55 = icmp ugt i64 %54, 10, !dbg !1969
  %56 = select i1 %55, i64 %54, i64 10, !dbg !1969
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !1962, metadata !621), !dbg !1967
  %57 = or i64 %56, 1, !dbg !1970
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !1962, metadata !621), !dbg !1967
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !1962, metadata !621), !dbg !1967
  %58 = icmp eq i64 %57, -1, !dbg !1971
  br i1 %58, label %106, label %59, !dbg !1972

; <label>:59:                                     ; preds = %53
  br label %60, !dbg !1973

; <label>:60:                                     ; preds = %59, %79
  %61 = phi i64 [ %80, %79 ], [ %57, %59 ]
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1978, metadata !621), !dbg !1982
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1979, metadata !621), !dbg !1983
  tail call void @llvm.dbg.value(metadata i64 9, i64 0, metadata !1980, metadata !621), !dbg !1984
  tail call void @llvm.dbg.value(metadata i64 9, i64 0, metadata !1980, metadata !621), !dbg !1984
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1979, metadata !621), !dbg !1983
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1962, metadata !621), !dbg !1967
  %62 = icmp ugt i64 %61, 9, !dbg !1973
  br i1 %62, label %63, label %75, !dbg !1985

; <label>:63:                                     ; preds = %60
  br label %64, !dbg !1986

; <label>:64:                                     ; preds = %63, %69
  %65 = phi i64 [ %72, %69 ], [ 9, %63 ]
  %66 = phi i64 [ %73, %69 ], [ 3, %63 ]
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !1979, metadata !621), !dbg !1983
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !1980, metadata !621), !dbg !1984
  %67 = urem i64 %61, %66, !dbg !1986
  %68 = icmp eq i64 %67, 0, !dbg !1985
  br i1 %68, label %75, label %69, !dbg !1987

; <label>:69:                                     ; preds = %64
  %70 = shl i64 %66, 2, !dbg !1988
  %71 = add i64 %65, 4, !dbg !1988
  %72 = add i64 %71, %70, !dbg !1990
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !1980, metadata !621), !dbg !1984
  %73 = add i64 %66, 2, !dbg !1991
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1979, metadata !621), !dbg !1983
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !1980, metadata !621), !dbg !1984
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1979, metadata !621), !dbg !1983
  %74 = icmp ult i64 %72, %61, !dbg !1973
  br i1 %74, label %64, label %75, !dbg !1985, !llvm.loop !1992

; <label>:75:                                     ; preds = %69, %64, %60
  %76 = phi i64 [ 3, %60 ], [ %73, %69 ], [ %66, %64 ]
  %77 = urem i64 %61, %76, !dbg !1995
  %78 = icmp eq i64 %77, 0, !dbg !1996
  br i1 %78, label %79, label %82, !dbg !1997

; <label>:79:                                     ; preds = %75
  %80 = add i64 %61, 2, !dbg !1998
  tail call void @llvm.dbg.value(metadata i64 %80, i64 0, metadata !1962, metadata !621), !dbg !1967
  tail call void @llvm.dbg.value(metadata i64 %80, i64 0, metadata !1962, metadata !621), !dbg !1967
  %81 = icmp eq i64 %80, -1, !dbg !1971
  br i1 %81, label %106, label %60, !dbg !1972, !llvm.loop !1999

; <label>:82:                                     ; preds = %75
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1940, metadata !621), !dbg !1949
  %83 = icmp ugt i64 %61, 1152921504606846975, !dbg !2002
  br i1 %83, label %106, label %84, !dbg !2004

; <label>:84:                                     ; preds = %82
  %85 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !2005
  %86 = bitcast i8* %85 to i64*, !dbg !2005
  store i64 %61, i64* %86, align 8, !dbg !2006, !tbaa !1407
  %87 = icmp eq i64 %61, 0, !dbg !2007
  br i1 %87, label %106, label %88, !dbg !2009

; <label>:88:                                     ; preds = %84
  %89 = tail call i8* @rpl_calloc(i64 %61, i64 16) #13, !dbg !2010
  %90 = bitcast i8* %10 to i8**, !dbg !2011
  store i8* %89, i8** %90, align 8, !dbg !2011, !tbaa !1439
  %91 = icmp eq i8* %89, null, !dbg !2012
  br i1 %91, label %106, label %92, !dbg !2014

; <label>:92:                                     ; preds = %88
  %93 = bitcast i8* %89 to %struct.hash_entry*, !dbg !2010
  %94 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %93, i64 %61, !dbg !2015
  %95 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !2016
  %96 = bitcast i8* %95 to %struct.hash_entry**, !dbg !2016
  store %struct.hash_entry* %94, %struct.hash_entry** %96, align 8, !dbg !2017, !tbaa !1442
  %97 = getelementptr inbounds i8, i8* %10, i64 24, !dbg !2018
  %98 = getelementptr inbounds i8, i8* %10, i64 48, !dbg !2019
  %99 = bitcast i8* %98 to i64 (i8*, i64)**, !dbg !2019
  call void @llvm.memset.p0i8.i64(i8* %97, i8 0, i64 16, i32 8, i1 false), !dbg !2020
  store i64 (i8*, i64)* %7, i64 (i8*, i64)** %99, align 8, !dbg !2021, !tbaa !1631
  %100 = getelementptr inbounds i8, i8* %10, i64 56, !dbg !2022
  %101 = bitcast i8* %100 to i1 (i8*, i8*)**, !dbg !2022
  store i1 (i8*, i8*)* %9, i1 (i8*, i8*)** %101, align 8, !dbg !2023, !tbaa !1655
  %102 = getelementptr inbounds i8, i8* %10, i64 64, !dbg !2024
  %103 = bitcast i8* %102 to void (i8*)**, !dbg !2024
  store void (i8*)* %4, void (i8*)** %103, align 8, !dbg !2025, !tbaa !2026
  %104 = getelementptr inbounds i8, i8* %10, i64 72, !dbg !2027
  %105 = bitcast i8* %104 to %struct.hash_entry**, !dbg !2027
  store %struct.hash_entry* null, %struct.hash_entry** %105, align 8, !dbg !2028, !tbaa !2029
  br label %107, !dbg !2030

; <label>:106:                                    ; preds = %79, %53, %82, %46, %33, %29, %25, %19, %84, %88
  tail call void @free(i8* nonnull %10) #13, !dbg !2031
  br label %107, !dbg !2032

; <label>:107:                                    ; preds = %5, %106, %92
  %108 = phi %struct.hash_table* [ null, %106 ], [ %11, %92 ], [ null, %5 ]
  ret %struct.hash_table* %108, !dbg !2033
}

; Function Attrs: nounwind readnone sspstrong uwtable
define internal i64 @raw_hasher(i8*, i64) #12 !dbg !2034 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2036, metadata !621), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2037, metadata !621), !dbg !2040
  %3 = ptrtoint i8* %0 to i64, !dbg !2041
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2042, metadata !621), !dbg !2049
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !2048, metadata !621), !dbg !2051
  %4 = lshr i64 %3, 3, !dbg !2052
  %5 = shl i64 %3, 61, !dbg !2053
  %6 = or i64 %5, %4, !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !2038, metadata !621), !dbg !2055
  %7 = urem i64 %6, %1, !dbg !2056
  ret i64 %7, !dbg !2057
}

; Function Attrs: nounwind readnone sspstrong uwtable
define internal zeroext i1 @raw_comparator(i8* readnone, i8* readnone) #12 !dbg !2058 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2060, metadata !621), !dbg !2062
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2061, metadata !621), !dbg !2063
  %3 = icmp eq i8* %0, %1, !dbg !2064
  ret i1 %3, !dbg !2065
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define void @hash_clear(%struct.hash_table* nocapture) local_unnamed_addr #6 !dbg !2066 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2070, metadata !621), !dbg !2079
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2080
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !dbg !2080, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %3, i64 0, metadata !2071, metadata !621), !dbg !2081
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %3, i64 0, metadata !2071, metadata !621), !dbg !2081
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !2082
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !2082, !tbaa !1442
  %6 = icmp ult %struct.hash_entry* %3, %5, !dbg !2083
  br i1 %6, label %7, label %52, !dbg !2084

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %10 = bitcast %struct.hash_entry** %9 to i64*
  br label %11, !dbg !2084

; <label>:11:                                     ; preds = %7, %48
  %12 = phi %struct.hash_entry* [ %5, %7 ], [ %49, %48 ]
  %13 = phi %struct.hash_entry* [ %3, %7 ], [ %50, %48 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %13, i64 0, metadata !2071, metadata !621), !dbg !2081
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 0, i32 0, !dbg !2085
  %15 = load i8*, i8** %14, align 8, !dbg !2085, !tbaa !1446
  %16 = icmp eq i8* %15, null, !dbg !2086
  br i1 %16, label %48, label %17, !dbg !2087

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 0, i32 1, !dbg !2088
  %19 = load %struct.hash_entry*, %struct.hash_entry** %18, align 8, !dbg !2088, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %19, i64 0, metadata !2072, metadata !621), !dbg !2090
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %19, i64 0, metadata !2072, metadata !621), !dbg !2090
  %20 = icmp eq %struct.hash_entry* %19, null, !dbg !2091
  %21 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !2026
  %22 = icmp ne void (i8*)* %21, null
  br i1 %20, label %40, label %23, !dbg !2091

; <label>:23:                                     ; preds = %17
  br label %24

; <label>:24:                                     ; preds = %23, %32
  %25 = phi i1 [ %39, %32 ], [ %22, %23 ]
  %26 = phi void (i8*)* [ %33, %32 ], [ %21, %23 ]
  %27 = phi %struct.hash_entry* [ %35, %32 ], [ %19, %23 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %27, i64 0, metadata !2072, metadata !621), !dbg !2090
  %28 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i64 0, i32 0
  br i1 %25, label %29, label %32, !dbg !2092

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %28, align 8, !dbg !2095, !tbaa !1446
  tail call void %26(i8* %30) #13, !dbg !2097
  %31 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !2026
  br label %32, !dbg !2097

; <label>:32:                                     ; preds = %24, %29
  %33 = phi void (i8*)* [ %31, %29 ], [ %26, %24 ]
  store i8* null, i8** %28, align 8, !dbg !2098, !tbaa !1446
  %34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i64 0, i32 1, !dbg !2099
  %35 = load %struct.hash_entry*, %struct.hash_entry** %34, align 8, !dbg !2099, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %35, i64 0, metadata !2078, metadata !621), !dbg !2100
  %36 = load i64, i64* %10, align 8, !dbg !2101, !tbaa !2029
  %37 = bitcast %struct.hash_entry** %34 to i64*, !dbg !2102
  store i64 %36, i64* %37, align 8, !dbg !2102, !tbaa !1453
  store %struct.hash_entry* %27, %struct.hash_entry** %9, align 8, !dbg !2103, !tbaa !2029
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %35, i64 0, metadata !2072, metadata !621), !dbg !2090
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %35, i64 0, metadata !2072, metadata !621), !dbg !2090
  %38 = icmp eq %struct.hash_entry* %35, null, !dbg !2091
  %39 = icmp ne void (i8*)* %33, null
  br i1 %38, label %40, label %24, !dbg !2091, !llvm.loop !2104

; <label>:40:                                     ; preds = %32, %17
  %41 = phi void (i8*)* [ %21, %17 ], [ %33, %32 ]
  %42 = phi i1 [ %22, %17 ], [ %39, %32 ]
  br i1 %42, label %43, label %45, !dbg !2106

; <label>:43:                                     ; preds = %40
  %44 = load i8*, i8** %14, align 8, !dbg !2107, !tbaa !1446
  tail call void %41(i8* %44) #13, !dbg !2109
  br label %45, !dbg !2109

; <label>:45:                                     ; preds = %43, %40
  %46 = bitcast %struct.hash_entry* %13 to i8*, !dbg !2082
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 16, i32 8, i1 false), !dbg !2110
  %47 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !2082, !tbaa !1442
  br label %48, !dbg !2111

; <label>:48:                                     ; preds = %11, %45
  %49 = phi %struct.hash_entry* [ %12, %11 ], [ %47, %45 ], !dbg !2082
  %50 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 1, !dbg !2112
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %50, i64 0, metadata !2071, metadata !621), !dbg !2081
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %50, i64 0, metadata !2071, metadata !621), !dbg !2081
  %51 = icmp ult %struct.hash_entry* %50, %49, !dbg !2083
  br i1 %51, label %11, label %52, !dbg !2084, !llvm.loop !2113

; <label>:52:                                     ; preds = %48, %1
  %53 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !2115
  %54 = bitcast i64* %53 to i8*, !dbg !2116
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 16, i32 8, i1 false), !dbg !2117
  ret void, !dbg !2116
}

; Function Attrs: nounwind sspstrong uwtable
define void @hash_free(%struct.hash_table* nocapture) local_unnamed_addr #6 !dbg !2118 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2120, metadata !621), !dbg !2124
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8, !dbg !2125
  %3 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !2125, !tbaa !2026
  %4 = icmp eq void (i8*)* %3, null, !dbg !2127
  br i1 %4, label %44, label %5, !dbg !2128

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !2129
  %7 = load i64, i64* %6, align 8, !dbg !2129, !tbaa !1422
  %8 = icmp eq i64 %7, 0, !dbg !2130
  br i1 %8, label %44, label %9, !dbg !2131

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2132
  %11 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8, !dbg !2132, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %11, i64 0, metadata !2121, metadata !621), !dbg !2135
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %11, i64 0, metadata !2121, metadata !621), !dbg !2135
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !2136
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2136, !tbaa !1442
  %14 = icmp ult %struct.hash_entry* %11, %13, !dbg !2138
  br i1 %14, label %15, label %44, !dbg !2139

; <label>:15:                                     ; preds = %9
  br label %16, !dbg !2140

; <label>:16:                                     ; preds = %15, %40
  %17 = phi %struct.hash_entry* [ %41, %40 ], [ %13, %15 ]
  %18 = phi %struct.hash_entry* [ %42, %40 ], [ %11, %15 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %18, i64 0, metadata !2121, metadata !621), !dbg !2135
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0, !dbg !2140
  %20 = load i8*, i8** %19, align 8, !dbg !2140, !tbaa !1446
  %21 = icmp eq i8* %20, null, !dbg !2143
  %22 = icmp eq %struct.hash_entry* %18, null, !dbg !2144
  %23 = or i1 %21, %22, !dbg !2147
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %18, i64 0, metadata !2122, metadata !621), !dbg !2148
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %18, i64 0, metadata !2122, metadata !621), !dbg !2148
  br i1 %23, label %40, label %24, !dbg !2147

; <label>:24:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %18, i64 0, metadata !2122, metadata !621), !dbg !2148
  %25 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !2149, !tbaa !2026
  tail call void %25(i8* %20) #13, !dbg !2151
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 1, !dbg !2152
  %27 = load %struct.hash_entry*, %struct.hash_entry** %26, align 8, !dbg !2152, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %27, i64 0, metadata !2122, metadata !621), !dbg !2148
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %27, i64 0, metadata !2122, metadata !621), !dbg !2148
  %28 = icmp eq %struct.hash_entry* %27, null, !dbg !2144
  br i1 %28, label %38, label %29, !dbg !2144, !llvm.loop !2153

; <label>:29:                                     ; preds = %24
  br label %30

; <label>:30:                                     ; preds = %29, %30
  %31 = phi %struct.hash_entry* [ %36, %30 ], [ %27, %29 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8, !dbg !2155, !tbaa !1446
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %31, i64 0, metadata !2122, metadata !621), !dbg !2148
  %34 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !2149, !tbaa !2026
  tail call void %34(i8* %33) #13, !dbg !2151
  %35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 1, !dbg !2152
  %36 = load %struct.hash_entry*, %struct.hash_entry** %35, align 8, !dbg !2152, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %36, i64 0, metadata !2122, metadata !621), !dbg !2148
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %36, i64 0, metadata !2122, metadata !621), !dbg !2148
  %37 = icmp eq %struct.hash_entry* %36, null, !dbg !2144
  br i1 %37, label %38, label %30, !dbg !2144, !llvm.loop !2153

; <label>:38:                                     ; preds = %30, %24
  %39 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2136, !tbaa !1442
  br label %40, !dbg !2156

; <label>:40:                                     ; preds = %38, %16
  %41 = phi %struct.hash_entry* [ %39, %38 ], [ %17, %16 ], !dbg !2136
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 1, !dbg !2156
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %42, i64 0, metadata !2121, metadata !621), !dbg !2135
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %42, i64 0, metadata !2121, metadata !621), !dbg !2135
  %43 = icmp ult %struct.hash_entry* %42, %41, !dbg !2138
  br i1 %43, label %16, label %44, !dbg !2139, !llvm.loop !2157

; <label>:44:                                     ; preds = %40, %9, %5, %1
  %45 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2159
  %46 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !dbg !2159, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %46, i64 0, metadata !2121, metadata !621), !dbg !2135
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %46, i64 0, metadata !2121, metadata !621), !dbg !2135
  %47 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !2161
  %48 = load %struct.hash_entry*, %struct.hash_entry** %47, align 8, !dbg !2161, !tbaa !1442
  %49 = icmp ult %struct.hash_entry* %46, %48, !dbg !2163
  br i1 %49, label %50, label %70, !dbg !2164

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !2165

; <label>:51:                                     ; preds = %50, %66
  %52 = phi %struct.hash_entry* [ %67, %66 ], [ %48, %50 ]
  %53 = phi %struct.hash_entry* [ %68, %66 ], [ %46, %50 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %53, i64 0, metadata !2121, metadata !621), !dbg !2135
  %54 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %53, i64 0, i32 1, !dbg !2165
  %55 = load %struct.hash_entry*, %struct.hash_entry** %54, align 8, !dbg !2165, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %55, i64 0, metadata !2122, metadata !621), !dbg !2148
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %55, i64 0, metadata !2122, metadata !621), !dbg !2148
  %56 = icmp eq %struct.hash_entry* %55, null, !dbg !2168
  br i1 %56, label %66, label %57, !dbg !2168

; <label>:57:                                     ; preds = %51
  br label %58

; <label>:58:                                     ; preds = %57, %58
  %59 = phi %struct.hash_entry* [ %62, %58 ], [ %55, %57 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %59, i64 0, metadata !2122, metadata !621), !dbg !2148
  %60 = bitcast %struct.hash_entry* %59 to i8*
  %61 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %59, i64 0, i32 1, !dbg !2169
  %62 = load %struct.hash_entry*, %struct.hash_entry** %61, align 8, !dbg !2169, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %62, i64 0, metadata !2123, metadata !621), !dbg !2172
  tail call void @free(i8* %60) #13, !dbg !2173
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %62, i64 0, metadata !2122, metadata !621), !dbg !2148
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %62, i64 0, metadata !2122, metadata !621), !dbg !2148
  %63 = icmp eq %struct.hash_entry* %62, null, !dbg !2168
  br i1 %63, label %64, label %58, !dbg !2168, !llvm.loop !2174

; <label>:64:                                     ; preds = %58
  %65 = load %struct.hash_entry*, %struct.hash_entry** %47, align 8, !dbg !2161, !tbaa !1442
  br label %66, !dbg !2176

; <label>:66:                                     ; preds = %64, %51
  %67 = phi %struct.hash_entry* [ %65, %64 ], [ %52, %51 ], !dbg !2161
  %68 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %53, i64 1, !dbg !2176
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %68, i64 0, metadata !2121, metadata !621), !dbg !2135
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %68, i64 0, metadata !2121, metadata !621), !dbg !2135
  %69 = icmp ult %struct.hash_entry* %68, %67, !dbg !2163
  br i1 %69, label %51, label %70, !dbg !2164, !llvm.loop !2177

; <label>:70:                                     ; preds = %66, %44
  %71 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2179
  %72 = load %struct.hash_entry*, %struct.hash_entry** %71, align 8, !dbg !2179, !tbaa !2029
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %72, i64 0, metadata !2122, metadata !621), !dbg !2148
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %72, i64 0, metadata !2122, metadata !621), !dbg !2148
  %73 = icmp eq %struct.hash_entry* %72, null, !dbg !2181
  br i1 %73, label %81, label %74, !dbg !2181

; <label>:74:                                     ; preds = %70
  br label %75

; <label>:75:                                     ; preds = %74, %75
  %76 = phi %struct.hash_entry* [ %79, %75 ], [ %72, %74 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %76, i64 0, metadata !2122, metadata !621), !dbg !2148
  %77 = bitcast %struct.hash_entry* %76 to i8*
  %78 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %76, i64 0, i32 1, !dbg !2182
  %79 = load %struct.hash_entry*, %struct.hash_entry** %78, align 8, !dbg !2182, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %79, i64 0, metadata !2123, metadata !621), !dbg !2172
  tail call void @free(i8* %77) #13, !dbg !2185
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %79, i64 0, metadata !2122, metadata !621), !dbg !2148
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %79, i64 0, metadata !2122, metadata !621), !dbg !2148
  %80 = icmp eq %struct.hash_entry* %79, null, !dbg !2181
  br i1 %80, label %81, label %75, !dbg !2181, !llvm.loop !2186

; <label>:81:                                     ; preds = %75, %70
  %82 = bitcast %struct.hash_table* %0 to i8**, !dbg !2188
  %83 = load i8*, i8** %82, align 8, !dbg !2188, !tbaa !1439
  tail call void @free(i8* %83) #13, !dbg !2189
  %84 = bitcast %struct.hash_table* %0 to i8*, !dbg !2190
  tail call void @free(i8* %84) #13, !dbg !2191
  ret void, !dbg !2192
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hash_rehash(%struct.hash_table* nocapture, i64) local_unnamed_addr #6 !dbg !2193 {
  %3 = alloca %struct.hash_table, align 16
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2197, metadata !621), !dbg !2202
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2198, metadata !621), !dbg !2203
  %4 = bitcast %struct.hash_table* %3 to i8*, !dbg !2204
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #13, !dbg !2204
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5, !dbg !2205
  %6 = load %struct.hash_tuning*, %struct.hash_tuning** %5, align 8, !dbg !2205, !tbaa !1902
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1940, metadata !621), !dbg !2206
  tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %6, i64 0, metadata !1945, metadata !621), !dbg !2208
  %7 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %6, i64 0, i32 4, !dbg !2209
  %8 = load i8, i8* %7, align 4, !dbg !2209, !tbaa !1953, !range !1230
  %9 = icmp eq i8 %8, 0, !dbg !2209
  br i1 %9, label %10, label %17, !dbg !2210

; <label>:10:                                     ; preds = %2
  %11 = uitofp i64 %1 to float, !dbg !2211
  %12 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %6, i64 0, i32 2, !dbg !2212
  %13 = load float, float* %12, align 4, !dbg !2212, !tbaa !1920
  %14 = fdiv float %11, %13, !dbg !2213
  tail call void @llvm.dbg.value(metadata float %14, i64 0, metadata !1946, metadata !621), !dbg !2214
  %15 = fcmp ult float %14, 0x43F0000000000000, !dbg !2215
  %16 = fptoui float %14 to i64, !dbg !2216
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1940, metadata !621), !dbg !2206
  br i1 %15, label %17, label %147

; <label>:17:                                     ; preds = %10, %2
  %18 = phi i64 [ %1, %2 ], [ %16, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !1940, metadata !621), !dbg !2206
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !1962, metadata !621), !dbg !2217
  %19 = icmp ugt i64 %18, 10, !dbg !2219
  %20 = select i1 %19, i64 %18, i64 10, !dbg !2219
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1962, metadata !621), !dbg !2217
  %21 = or i64 %20, 1, !dbg !2220
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !1962, metadata !621), !dbg !2217
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !1962, metadata !621), !dbg !2217
  %22 = icmp eq i64 %21, -1, !dbg !2221
  br i1 %22, label %147, label %23, !dbg !2222

; <label>:23:                                     ; preds = %17
  br label %24, !dbg !2223

; <label>:24:                                     ; preds = %23, %43
  %25 = phi i64 [ %44, %43 ], [ %21, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1978, metadata !621), !dbg !2225
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1979, metadata !621), !dbg !2226
  tail call void @llvm.dbg.value(metadata i64 9, i64 0, metadata !1980, metadata !621), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 9, i64 0, metadata !1980, metadata !621), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1979, metadata !621), !dbg !2226
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1962, metadata !621), !dbg !2217
  %26 = icmp ugt i64 %25, 9, !dbg !2223
  br i1 %26, label %27, label %39, !dbg !2228

; <label>:27:                                     ; preds = %24
  br label %28, !dbg !2229

; <label>:28:                                     ; preds = %27, %33
  %29 = phi i64 [ %36, %33 ], [ 9, %27 ]
  %30 = phi i64 [ %37, %33 ], [ 3, %27 ]
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !1979, metadata !621), !dbg !2226
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !1980, metadata !621), !dbg !2227
  %31 = urem i64 %25, %30, !dbg !2229
  %32 = icmp eq i64 %31, 0, !dbg !2228
  br i1 %32, label %39, label %33, !dbg !2230

; <label>:33:                                     ; preds = %28
  %34 = shl i64 %30, 2, !dbg !2231
  %35 = add i64 %29, 4, !dbg !2231
  %36 = add i64 %35, %34, !dbg !2232
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1980, metadata !621), !dbg !2227
  %37 = add i64 %30, 2, !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !1979, metadata !621), !dbg !2226
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1980, metadata !621), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !1979, metadata !621), !dbg !2226
  %38 = icmp ult i64 %36, %25, !dbg !2223
  br i1 %38, label %28, label %39, !dbg !2228, !llvm.loop !1992

; <label>:39:                                     ; preds = %33, %28, %24
  %40 = phi i64 [ 3, %24 ], [ %37, %33 ], [ %30, %28 ]
  %41 = urem i64 %25, %40, !dbg !2234
  %42 = icmp eq i64 %41, 0, !dbg !2235
  br i1 %42, label %43, label %46, !dbg !2236

; <label>:43:                                     ; preds = %39
  %44 = add i64 %25, 2, !dbg !2237
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1962, metadata !621), !dbg !2217
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1962, metadata !621), !dbg !2217
  %45 = icmp eq i64 %44, -1, !dbg !2221
  br i1 %45, label %147, label %24, !dbg !2222, !llvm.loop !1999

; <label>:46:                                     ; preds = %39
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1940, metadata !621), !dbg !2206
  %47 = add i64 %25, -1, !dbg !2238
  %48 = icmp ugt i64 %47, 1152921504606846974, !dbg !2238
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !2201, metadata !621), !dbg !2239
  br i1 %48, label %147, label %49, !dbg !2238

; <label>:49:                                     ; preds = %46
  %50 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !2240
  %51 = load i64, i64* %50, align 8, !dbg !2240, !tbaa !1407
  %52 = icmp eq i64 %25, %51, !dbg !2242
  br i1 %52, label %147, label %53, !dbg !2243

; <label>:53:                                     ; preds = %49
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %3, i64 0, metadata !2200, metadata !621), !dbg !2244
  %54 = tail call i8* @rpl_calloc(i64 %25, i64 16) #13, !dbg !2245
  %55 = bitcast %struct.hash_table* %3 to i8**, !dbg !2246
  store i8* %54, i8** %55, align 16, !dbg !2246, !tbaa !1439
  %56 = icmp eq i8* %54, null, !dbg !2247
  br i1 %56, label %147, label %57, !dbg !2249

; <label>:57:                                     ; preds = %53
  %58 = bitcast i8* %54 to %struct.hash_entry*, !dbg !2249
  %59 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 2, !dbg !2250
  store i64 %25, i64* %59, align 16, !dbg !2251, !tbaa !1407
  %60 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i64 %25, !dbg !2252
  %61 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 1, !dbg !2253
  store %struct.hash_entry* %60, %struct.hash_entry** %61, align 8, !dbg !2254, !tbaa !1442
  %62 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 3, !dbg !2255
  %63 = bitcast i64* %62 to i8*, !dbg !2256
  call void @llvm.memset.p0i8.i64(i8* %63, i8 0, i64 16, i32 8, i1 false), !dbg !2257
  %64 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 5, !dbg !2258
  %65 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !2259
  %66 = bitcast %struct.hash_tuning** %5 to <2 x i64>*, !dbg !2256
  %67 = load <2 x i64>, <2 x i64>* %66, align 8, !dbg !2256, !tbaa !628
  %68 = bitcast %struct.hash_tuning** %64 to <2 x i64>*, !dbg !2260
  store <2 x i64> %67, <2 x i64>* %68, align 8, !dbg !2260, !tbaa !628
  %69 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7, !dbg !2261
  %70 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 7, !dbg !2262
  %71 = bitcast i1 (i8*, i8*)** %69 to <2 x i64>*, !dbg !2261
  %72 = load <2 x i64>, <2 x i64>* %71, align 8, !dbg !2261, !tbaa !628
  %73 = bitcast i1 (i8*, i8*)** %70 to <2 x i64>*, !dbg !2263
  store <2 x i64> %72, <2 x i64>* %73, align 8, !dbg !2263, !tbaa !628
  %74 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2264
  %75 = bitcast %struct.hash_entry** %74 to i64*, !dbg !2264
  %76 = load i64, i64* %75, align 8, !dbg !2264, !tbaa !2029
  %77 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 9, !dbg !2265
  %78 = bitcast %struct.hash_entry** %77 to i64*, !dbg !2266
  store i64 %76, i64* %78, align 8, !dbg !2266, !tbaa !2029
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %3, i64 0, metadata !2199, metadata !621), !dbg !2267
  %79 = call fastcc zeroext i1 @transfer_entries(%struct.hash_table* nonnull %3, %struct.hash_table* nonnull %0, i1 zeroext false), !dbg !2268
  br i1 %79, label %80, label %90, !dbg !2270

; <label>:80:                                     ; preds = %57
  %81 = bitcast %struct.hash_table* %0 to i8**, !dbg !2271
  %82 = load i8*, i8** %81, align 8, !dbg !2271, !tbaa !1439
  tail call void @free(i8* %82) #13, !dbg !2273
  %83 = bitcast %struct.hash_table* %3 to <2 x i64>*, !dbg !2274
  %84 = load <2 x i64>, <2 x i64>* %83, align 16, !dbg !2274, !tbaa !628
  %85 = bitcast %struct.hash_table* %0 to <2 x i64>*, !dbg !2275
  store <2 x i64> %84, <2 x i64>* %85, align 8, !dbg !2275, !tbaa !628
  %86 = bitcast i64* %59 to <2 x i64>*, !dbg !2276
  %87 = load <2 x i64>, <2 x i64>* %86, align 16, !dbg !2276, !tbaa !2277
  %88 = bitcast i64* %50 to <2 x i64>*, !dbg !2278
  store <2 x i64> %87, <2 x i64>* %88, align 8, !dbg !2278, !tbaa !2277
  %89 = load i64, i64* %78, align 8, !dbg !2279, !tbaa !2029
  store i64 %89, i64* %75, align 8, !dbg !2280, !tbaa !2029
  br label %147, !dbg !2281

; <label>:90:                                     ; preds = %57
  %91 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 0, !dbg !2282
  %92 = load i64, i64* %78, align 8, !dbg !2283, !tbaa !2029
  store i64 %92, i64* %75, align 8, !dbg !2284, !tbaa !2029
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %3, i64 0, metadata !2199, metadata !621), !dbg !2267
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2285, metadata !621) #13, !dbg !2304
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %3, i64 0, metadata !2290, metadata !621) #13, !dbg !2307
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !2291, metadata !621) #13, !dbg !2308
  %93 = load %struct.hash_entry*, %struct.hash_entry** %91, align 16, !dbg !2309, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %93, i64 0, metadata !2292, metadata !621) #13, !dbg !2310
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %93, i64 0, metadata !2292, metadata !621) #13, !dbg !2310
  %94 = load %struct.hash_entry*, %struct.hash_entry** %61, align 8, !dbg !2311, !tbaa !1442
  %95 = icmp ult %struct.hash_entry* %93, %94, !dbg !2312
  br i1 %95, label %96, label %142, !dbg !2313

; <label>:96:                                     ; preds = %90
  %97 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %98 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  br label %99, !dbg !2313

; <label>:99:                                     ; preds = %139, %96
  %100 = phi %struct.hash_entry* [ %93, %96 ], [ %140, %139 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %100, i64 0, metadata !2292, metadata !621) #13, !dbg !2310
  %101 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %100, i64 0, i32 0, !dbg !2314
  %102 = load i8*, i8** %101, align 8, !dbg !2314, !tbaa !1446
  %103 = icmp eq i8* %102, null, !dbg !2315
  br i1 %103, label %139, label %104, !dbg !2316

; <label>:104:                                    ; preds = %99
  %105 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %100, i64 0, i32 1, !dbg !2317
  %106 = load %struct.hash_entry*, %struct.hash_entry** %105, align 8, !dbg !2317, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %106, i64 0, metadata !2293, metadata !621) #13, !dbg !2319
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %106, i64 0, metadata !2293, metadata !621) #13, !dbg !2319
  %107 = icmp eq %struct.hash_entry* %106, null, !dbg !2320
  br i1 %107, label %138, label %108, !dbg !2320

; <label>:108:                                    ; preds = %104
  %109 = load i64, i64* %50, align 8, !dbg !2321, !tbaa !1407
  br label %110, !dbg !2320

; <label>:110:                                    ; preds = %132, %108
  %111 = phi i64 [ %109, %108 ], [ %117, %132 ], !dbg !2321
  %112 = phi %struct.hash_entry* [ %106, %108 ], [ %123, %132 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %112, i64 0, metadata !2293, metadata !621) #13, !dbg !2319
  %113 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %112, i64 0, i32 0, !dbg !2325
  %114 = load i8*, i8** %113, align 8, !dbg !2325, !tbaa !1446
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !2295, metadata !621) #13, !dbg !2326
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1620, metadata !621) #13, !dbg !2327
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !1625, metadata !621) #13, !dbg !2328
  %115 = load i64 (i8*, i64)*, i64 (i8*, i64)** %65, align 8, !dbg !2329, !tbaa !1631
  %116 = tail call i64 %115(i8* %114, i64 %111) #13, !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !1626, metadata !621) #13, !dbg !2331
  %117 = load i64, i64* %50, align 8, !dbg !2332, !tbaa !1407
  %118 = icmp ult i64 %116, %117, !dbg !2333
  br i1 %118, label %120, label %119, !dbg !2334

; <label>:119:                                    ; preds = %110
  tail call void @abort() #16, !dbg !2335
  unreachable, !dbg !2335

; <label>:120:                                    ; preds = %110
  %121 = load %struct.hash_entry*, %struct.hash_entry** %97, align 8, !dbg !2336, !tbaa !1439
  %122 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %112, i64 0, i32 1, !dbg !2337
  %123 = load %struct.hash_entry*, %struct.hash_entry** %122, align 8, !dbg !2337, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %123, i64 0, metadata !2294, metadata !621) #13, !dbg !2338
  %124 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %121, i64 %116, i32 0, !dbg !2339
  %125 = load i8*, i8** %124, align 8, !dbg !2339, !tbaa !1446
  %126 = icmp eq i8* %125, null, !dbg !2341
  br i1 %126, label %129, label %127, !dbg !2342

; <label>:127:                                    ; preds = %120
  %128 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %121, i64 %116, i32 1, !dbg !2343
  br label %132, !dbg !2345

; <label>:129:                                    ; preds = %120
  store i8* %114, i8** %124, align 8, !dbg !2346, !tbaa !1446
  %130 = load i64, i64* %98, align 8, !dbg !2348, !tbaa !1415
  %131 = add i64 %130, 1, !dbg !2348
  store i64 %131, i64* %98, align 8, !dbg !2348, !tbaa !1415
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2349, metadata !621) #13, !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* undef, i64 0, metadata !2354, metadata !621) #13, !dbg !2357
  store i8* null, i8** %113, align 8, !dbg !2358, !tbaa !1446
  br label %132

; <label>:132:                                    ; preds = %129, %127
  %133 = phi %struct.hash_entry** [ %128, %127 ], [ %74, %129 ]
  %134 = bitcast %struct.hash_entry** %133 to i64*
  %135 = load i64, i64* %134, align 8, !tbaa !628
  %136 = bitcast %struct.hash_entry** %122 to i64*
  store i64 %135, i64* %136, align 8, !tbaa !1453
  store %struct.hash_entry* %112, %struct.hash_entry** %133, align 8, !tbaa !628
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %123, i64 0, metadata !2293, metadata !621) #13, !dbg !2319
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %123, i64 0, metadata !2293, metadata !621) #13, !dbg !2319
  %137 = icmp eq %struct.hash_entry* %123, null, !dbg !2320
  br i1 %137, label %138, label %110, !dbg !2320, !llvm.loop !2359

; <label>:138:                                    ; preds = %132, %104
  store %struct.hash_entry* null, %struct.hash_entry** %105, align 8, !dbg !2362, !tbaa !1453
  br label %139

; <label>:139:                                    ; preds = %138, %99
  %140 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %100, i64 1, !dbg !2363
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %140, i64 0, metadata !2292, metadata !621) #13, !dbg !2310
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %140, i64 0, metadata !2292, metadata !621) #13, !dbg !2310
  %141 = icmp ult %struct.hash_entry* %140, %94, !dbg !2312
  br i1 %141, label %99, label %142, !dbg !2313, !llvm.loop !2364

; <label>:142:                                    ; preds = %139, %90
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %3, i64 0, metadata !2199, metadata !621), !dbg !2267
  %143 = call fastcc zeroext i1 @transfer_entries(%struct.hash_table* %0, %struct.hash_table* nonnull %3, i1 zeroext false), !dbg !2367
  br i1 %143, label %145, label %144, !dbg !2368

; <label>:144:                                    ; preds = %142
  tail call void @abort() #16, !dbg !2369
  unreachable, !dbg !2369

; <label>:145:                                    ; preds = %142
  %146 = load i8*, i8** %55, align 16, !dbg !2370, !tbaa !1439
  tail call void @free(i8* %146) #13, !dbg !2371
  br label %147, !dbg !2372

; <label>:147:                                    ; preds = %43, %17, %46, %10, %53, %49, %145, %80
  %148 = phi i1 [ true, %80 ], [ false, %145 ], [ true, %49 ], [ false, %53 ], [ false, %10 ], [ false, %46 ], [ false, %17 ], [ false, %43 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #13, !dbg !2373
  ret i1 %148, !dbg !2373
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @transfer_entries(%struct.hash_table* nocapture, %struct.hash_table* nocapture, i1 zeroext) unnamed_addr #6 !dbg !2286 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2285, metadata !621), !dbg !2374
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %1, i64 0, metadata !2290, metadata !621), !dbg !2375
  tail call void @llvm.dbg.value(metadata i1 %2, i64 0, metadata !2291, metadata !621), !dbg !2376
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 0, !dbg !2377
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !2377, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %5, i64 0, metadata !2292, metadata !621), !dbg !2378
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %5, i64 0, metadata !2292, metadata !621), !dbg !2378
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 1, !dbg !2379
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !2379, !tbaa !1442
  %8 = icmp ult %struct.hash_entry* %5, %7, !dbg !2380
  br i1 %8, label %9, label %101, !dbg !2365

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 3
  %15 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %16 = bitcast %struct.hash_entry** %15 to i64*
  br label %17, !dbg !2365

; <label>:17:                                     ; preds = %9, %97
  %18 = phi %struct.hash_entry* [ %5, %9 ], [ %98, %97 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %18, i64 0, metadata !2292, metadata !621), !dbg !2378
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0, !dbg !2381
  %20 = load i8*, i8** %19, align 8, !dbg !2381, !tbaa !1446
  %21 = icmp eq i8* %20, null, !dbg !2382
  br i1 %21, label %97, label %22, !dbg !2383

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 1, !dbg !2384
  %24 = load %struct.hash_entry*, %struct.hash_entry** %23, align 8, !dbg !2384, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %24, i64 0, metadata !2293, metadata !621), !dbg !2385
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %24, i64 0, metadata !2293, metadata !621), !dbg !2385
  %25 = icmp eq %struct.hash_entry* %24, null, !dbg !2360
  br i1 %25, label %58, label %26, !dbg !2360

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %11, align 8, !dbg !2386, !tbaa !1407
  br label %28, !dbg !2360

; <label>:28:                                     ; preds = %26, %50
  %29 = phi i64 [ %27, %26 ], [ %35, %50 ], !dbg !2386
  %30 = phi %struct.hash_entry* [ %24, %26 ], [ %41, %50 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %30, i64 0, metadata !2293, metadata !621), !dbg !2385
  %31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 0, !dbg !2388
  %32 = load i8*, i8** %31, align 8, !dbg !2388, !tbaa !1446
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2295, metadata !621), !dbg !2389
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1620, metadata !621) #13, !dbg !2390
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1625, metadata !621) #13, !dbg !2391
  %33 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !dbg !2392, !tbaa !1631
  %34 = tail call i64 %33(i8* %32, i64 %29) #13, !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !1626, metadata !621) #13, !dbg !2394
  %35 = load i64, i64* %11, align 8, !dbg !2395, !tbaa !1407
  %36 = icmp ult i64 %34, %35, !dbg !2396
  br i1 %36, label %38, label %37, !dbg !2397

; <label>:37:                                     ; preds = %28
  tail call void @abort() #16, !dbg !2398
  unreachable, !dbg !2398

; <label>:38:                                     ; preds = %28
  %39 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2399, !tbaa !1439
  %40 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 1, !dbg !2400
  %41 = load %struct.hash_entry*, %struct.hash_entry** %40, align 8, !dbg !2400, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %41, i64 0, metadata !2294, metadata !621), !dbg !2401
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %34, i32 0, !dbg !2402
  %43 = load i8*, i8** %42, align 8, !dbg !2402, !tbaa !1446
  %44 = icmp eq i8* %43, null, !dbg !2403
  br i1 %44, label %47, label %45, !dbg !2404

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %34, i32 1, !dbg !2405
  br label %50, !dbg !2406

; <label>:47:                                     ; preds = %38
  store i8* %32, i8** %42, align 8, !dbg !2407, !tbaa !1446
  %48 = load i64, i64* %13, align 8, !dbg !2408, !tbaa !1415
  %49 = add i64 %48, 1, !dbg !2408
  store i64 %49, i64* %13, align 8, !dbg !2408, !tbaa !1415
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2349, metadata !621), !dbg !2409
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* undef, i64 0, metadata !2354, metadata !621), !dbg !2411
  store i8* null, i8** %31, align 8, !dbg !2412, !tbaa !1446
  br label %50

; <label>:50:                                     ; preds = %45, %47
  %51 = phi %struct.hash_entry** [ %46, %45 ], [ %15, %47 ]
  %52 = bitcast %struct.hash_entry** %51 to i64*
  %53 = load i64, i64* %52, align 8, !tbaa !628
  %54 = bitcast %struct.hash_entry** %40 to i64*
  store i64 %53, i64* %54, align 8, !tbaa !1453
  store %struct.hash_entry* %30, %struct.hash_entry** %51, align 8, !tbaa !628
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %41, i64 0, metadata !2293, metadata !621), !dbg !2385
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %41, i64 0, metadata !2293, metadata !621), !dbg !2385
  %55 = icmp eq %struct.hash_entry* %41, null, !dbg !2360
  br i1 %55, label %56, label %28, !dbg !2360, !llvm.loop !2359

; <label>:56:                                     ; preds = %50
  %57 = load i8*, i8** %19, align 8, !dbg !2413, !tbaa !1446
  br label %58, !dbg !2413

; <label>:58:                                     ; preds = %56, %22
  %59 = phi i8* [ %57, %56 ], [ %20, %22 ], !dbg !2413
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !2295, metadata !621), !dbg !2389
  store %struct.hash_entry* null, %struct.hash_entry** %23, align 8, !dbg !2414, !tbaa !1453
  br i1 %2, label %97, label %60, !dbg !2415

; <label>:60:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1620, metadata !621) #13, !dbg !2416
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1625, metadata !621) #13, !dbg !2418
  %61 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !dbg !2419, !tbaa !1631
  %62 = load i64, i64* %11, align 8, !dbg !2420, !tbaa !1407
  %63 = tail call i64 %61(i8* %59, i64 %62) #13, !dbg !2421
  tail call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1626, metadata !621) #13, !dbg !2422
  %64 = load i64, i64* %11, align 8, !dbg !2423, !tbaa !1407
  %65 = icmp ult i64 %63, %64, !dbg !2424
  br i1 %65, label %67, label %66, !dbg !2425

; <label>:66:                                     ; preds = %60
  tail call void @abort() #16, !dbg !2426
  unreachable, !dbg !2426

; <label>:67:                                     ; preds = %60
  %68 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2427, !tbaa !1439
  %69 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %68, i64 %63, i32 0, !dbg !2428
  %70 = load i8*, i8** %69, align 8, !dbg !2428, !tbaa !1446
  %71 = icmp eq i8* %70, null, !dbg !2429
  br i1 %71, label %91, label %72, !dbg !2430

; <label>:72:                                     ; preds = %67
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2431, metadata !621) #13, !dbg !2437
  %73 = load %struct.hash_entry*, %struct.hash_entry** %15, align 8, !dbg !2439, !tbaa !2029
  %74 = icmp eq %struct.hash_entry* %73, null, !dbg !2441
  br i1 %74, label %79, label %75, !dbg !2442

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %73, i64 0, metadata !2436, metadata !621) #13, !dbg !2443
  %76 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %73, i64 0, i32 1, !dbg !2444
  %77 = bitcast %struct.hash_entry** %76 to i64*, !dbg !2444
  %78 = load i64, i64* %77, align 8, !dbg !2444, !tbaa !1453
  store i64 %78, i64* %16, align 8, !dbg !2446, !tbaa !2029
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %81, i64 0, metadata !2436, metadata !621) #13, !dbg !2443
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %81, i64 0, metadata !2301, metadata !621), !dbg !2447
  br label %83, !dbg !2448

; <label>:79:                                     ; preds = %72
  %80 = tail call noalias i8* @malloc(i64 16) #13, !dbg !2449
  %81 = bitcast i8* %80 to %struct.hash_entry*, !dbg !2449
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %81, i64 0, metadata !2436, metadata !621) #13, !dbg !2443
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %81, i64 0, metadata !2436, metadata !621) #13, !dbg !2443
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %81, i64 0, metadata !2301, metadata !621), !dbg !2447
  %82 = icmp eq i8* %80, null, !dbg !2451
  br i1 %82, label %101, label %83, !dbg !2448

; <label>:83:                                     ; preds = %79, %75
  %84 = phi %struct.hash_entry* [ %73, %75 ], [ %81, %79 ]
  %85 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i64 0, i32 0, !dbg !2453
  store i8* %59, i8** %85, align 8, !dbg !2454, !tbaa !1446
  %86 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %68, i64 %63, i32 1, !dbg !2455
  %87 = bitcast %struct.hash_entry** %86 to i64*, !dbg !2455
  %88 = load i64, i64* %87, align 8, !dbg !2455, !tbaa !1453
  %89 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i64 0, i32 1, !dbg !2456
  %90 = bitcast %struct.hash_entry** %89 to i64*, !dbg !2457
  store i64 %88, i64* %90, align 8, !dbg !2457, !tbaa !1453
  store %struct.hash_entry* %84, %struct.hash_entry** %86, align 8, !dbg !2458, !tbaa !1453
  br label %94

; <label>:91:                                     ; preds = %67
  store i8* %59, i8** %69, align 8, !dbg !2459, !tbaa !1446
  %92 = load i64, i64* %13, align 8, !dbg !2461, !tbaa !1415
  %93 = add i64 %92, 1, !dbg !2461
  store i64 %93, i64* %13, align 8, !dbg !2461, !tbaa !1415
  br label %94

; <label>:94:                                     ; preds = %83, %91
  store i8* null, i8** %19, align 8, !dbg !2462, !tbaa !1446
  %95 = load i64, i64* %14, align 8, !dbg !2463, !tbaa !1415
  %96 = add i64 %95, -1, !dbg !2463
  store i64 %96, i64* %14, align 8, !dbg !2463, !tbaa !1415
  br label %97, !dbg !2464

; <label>:97:                                     ; preds = %58, %94, %17
  %98 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 1, !dbg !2465
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %98, i64 0, metadata !2292, metadata !621), !dbg !2378
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %98, i64 0, metadata !2292, metadata !621), !dbg !2378
  %99 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !2379, !tbaa !1442
  %100 = icmp ult %struct.hash_entry* %98, %99, !dbg !2380
  br i1 %100, label %17, label %101, !dbg !2365, !llvm.loop !2364

; <label>:101:                                    ; preds = %97, %79, %3
  %102 = phi i1 [ true, %3 ], [ false, %79 ], [ true, %97 ]
  ret i1 %102, !dbg !2466
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @hash_insert_if_absent(%struct.hash_table* nocapture, i8*, i8**) local_unnamed_addr #6 !dbg !2467 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2472, metadata !621), !dbg !2486
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2473, metadata !621), !dbg !2487
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !2474, metadata !621), !dbg !2488
  %4 = icmp eq i8* %1, null, !dbg !2489
  br i1 %4, label %5, label %6, !dbg !2491

; <label>:5:                                      ; preds = %3
  tail call void @abort() #16, !dbg !2492
  unreachable, !dbg !2492

; <label>:6:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2493, metadata !621) #13, !dbg !2521
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2499, metadata !621) #13, !dbg !2524
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !2501, metadata !621) #13, !dbg !2525
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1620, metadata !621) #13, !dbg !2526
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1625, metadata !621) #13, !dbg !2528
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !2529
  %8 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8, !dbg !2529, !tbaa !1631
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !2530
  %10 = load i64, i64* %9, align 8, !dbg !2530, !tbaa !1407
  %11 = tail call i64 %8(i8* nonnull %1, i64 %10) #13, !dbg !2531
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1626, metadata !621) #13, !dbg !2532
  %12 = load i64, i64* %9, align 8, !dbg !2533, !tbaa !1407
  %13 = icmp ult i64 %11, %12, !dbg !2534
  br i1 %13, label %15, label %14, !dbg !2535

; <label>:14:                                     ; preds = %6
  tail call void @abort() #16, !dbg !2536
  unreachable, !dbg !2536

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2537
  %17 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8, !dbg !2537, !tbaa !1439
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11, !dbg !2538
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %18, i64 0, metadata !2502, metadata !621) #13, !dbg !2539
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0, !dbg !2540
  %20 = load i8*, i8** %19, align 8, !dbg !2540, !tbaa !1446
  %21 = icmp eq i8* %20, null, !dbg !2542
  br i1 %21, label %59, label %22, !dbg !2543

; <label>:22:                                     ; preds = %15
  %23 = icmp eq i8* %20, %1, !dbg !2544
  br i1 %23, label %55, label %24, !dbg !2545

; <label>:24:                                     ; preds = %22
  %25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7, !dbg !2546
  %26 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8, !dbg !2546, !tbaa !1655
  %27 = tail call zeroext i1 %26(i8* nonnull %1, i8* nonnull %20) #13, !dbg !2547
  br i1 %27, label %49, label %28, !dbg !2548

; <label>:28:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %18, i64 0, metadata !2503, metadata !621) #13, !dbg !2549
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %18, i64 0, metadata !2503, metadata !621) #13, !dbg !2549
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11, i32 1, !dbg !2550
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !dbg !2550, !tbaa !1453
  %31 = icmp eq %struct.hash_entry* %30, null, !dbg !2551
  br i1 %31, label %59, label %32, !dbg !2551

; <label>:32:                                     ; preds = %28
  br label %33, !dbg !2552

; <label>:33:                                     ; preds = %32, %45
  %34 = phi %struct.hash_entry* [ %47, %45 ], [ %30, %32 ]
  %35 = phi %struct.hash_entry** [ %46, %45 ], [ %29, %32 ]
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0, !dbg !2552
  %37 = load i8*, i8** %36, align 8, !dbg !2552, !tbaa !1446
  %38 = icmp eq i8* %37, %1, !dbg !2553
  br i1 %38, label %52, label %39, !dbg !2554

; <label>:39:                                     ; preds = %33
  %40 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8, !dbg !2555, !tbaa !1655
  %41 = tail call zeroext i1 %40(i8* nonnull %1, i8* %37) #13, !dbg !2556
  %42 = load %struct.hash_entry*, %struct.hash_entry** %35, align 8, !tbaa !1453
  br i1 %41, label %43, label %45, !dbg !2557

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %42, i64 0, i32 0
  br label %49, !dbg !2557

; <label>:45:                                     ; preds = %39
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %42, i64 0, metadata !2503, metadata !621) #13, !dbg !2549
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %42, i64 0, metadata !2503, metadata !621) #13, !dbg !2549
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %42, i64 0, i32 1, !dbg !2550
  %47 = load %struct.hash_entry*, %struct.hash_entry** %46, align 8, !dbg !2550, !tbaa !1453
  %48 = icmp eq %struct.hash_entry* %47, null, !dbg !2551
  br i1 %48, label %59, label %33, !dbg !2551, !llvm.loop !2558

; <label>:49:                                     ; preds = %24, %43
  %50 = phi i8** [ %44, %43 ], [ %19, %24 ]
  %51 = load i8*, i8** %50, align 8, !tbaa !1446
  br label %52, !dbg !2561

; <label>:52:                                     ; preds = %33, %49
  %53 = phi i8* [ %51, %49 ], [ %1, %33 ]
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2475, metadata !621), !dbg !2562
  %54 = icmp eq i8* %53, null, !dbg !2561
  br i1 %54, label %59, label %55, !dbg !2563

; <label>:55:                                     ; preds = %22, %52
  %56 = phi i8* [ %53, %52 ], [ %1, %22 ]
  %57 = icmp eq i8** %2, null, !dbg !2564
  br i1 %57, label %194, label %58, !dbg !2567

; <label>:58:                                     ; preds = %55
  store i8* %56, i8** %2, align 8, !dbg !2568, !tbaa !628
  br label %194, !dbg !2569

; <label>:59:                                     ; preds = %45, %28, %15, %52
  %60 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !2570
  %61 = load i64, i64* %60, align 8, !dbg !2570, !tbaa !1415
  %62 = uitofp i64 %61 to float, !dbg !2571
  %63 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5, !dbg !2572
  %64 = load %struct.hash_tuning*, %struct.hash_tuning** %63, align 8, !dbg !2572, !tbaa !1902
  %65 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %64, i64 0, i32 2, !dbg !2573
  %66 = load float, float* %65, align 4, !dbg !2573, !tbaa !1920
  %67 = load i64, i64* %9, align 8, !dbg !2574, !tbaa !1407
  %68 = uitofp i64 %67 to float, !dbg !2575
  %69 = fmul float %66, %68, !dbg !2576
  %70 = fcmp olt float %69, %62, !dbg !2577
  br i1 %70, label %71, label %160, !dbg !2578

; <label>:71:                                     ; preds = %59
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1903, metadata !621), !dbg !2579
  tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %64, i64 0, metadata !1908, metadata !621), !dbg !2581
  %72 = icmp eq %struct.hash_tuning* %64, @default_tuning, !dbg !2582
  br i1 %72, label %95, label %73, !dbg !2583

; <label>:73:                                     ; preds = %71
  tail call void @llvm.dbg.value(metadata float 0x3FB99999A0000000, i64 0, metadata !1909, metadata !621), !dbg !2584
  %74 = fcmp ogt float %66, 0x3FB99999A0000000, !dbg !2585
  %75 = fcmp olt float %66, 0x3FECCCCCC0000000, !dbg !2586
  %76 = and i1 %74, %75, !dbg !2587
  br i1 %76, label %77, label %94, !dbg !2587

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %64, i64 0, i32 3, !dbg !2588
  %79 = load float, float* %78, align 4, !dbg !2588, !tbaa !1926
  %80 = fcmp ogt float %79, 0x3FF19999A0000000, !dbg !2589
  br i1 %80, label %81, label %94, !dbg !2590

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %64, i64 0, i32 0, !dbg !2591
  %83 = load float, float* %82, align 4, !dbg !2591, !tbaa !1930
  %84 = fcmp ult float %83, 0.000000e+00, !dbg !2592
  br i1 %84, label %94, label %85, !dbg !2593

; <label>:85:                                     ; preds = %81
  %86 = fadd float %83, 0x3FB99999A0000000, !dbg !2594
  %87 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %64, i64 0, i32 1, !dbg !2595
  %88 = load float, float* %87, align 4, !dbg !2595, !tbaa !1935
  %89 = fcmp olt float %86, %88, !dbg !2596
  %90 = fcmp ole float %88, 1.000000e+00, !dbg !2597
  %91 = and i1 %90, %89, !dbg !2598
  %92 = fcmp olt float %86, %66, !dbg !2599
  %93 = and i1 %92, %91, !dbg !2598
  br i1 %93, label %95, label %94, !dbg !2598

; <label>:94:                                     ; preds = %85, %81, %77, %73
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %63, align 8, !dbg !2600, !tbaa !1902
  br label %95, !dbg !2601

; <label>:95:                                     ; preds = %71, %85, %94
  %96 = phi float [ %66, %71 ], [ %66, %85 ], [ 0x3FE99999A0000000, %94 ], !dbg !2602
  %97 = phi %struct.hash_tuning* [ @default_tuning, %71 ], [ %64, %85 ], [ @default_tuning, %94 ], !dbg !2603
  %98 = fmul float %96, %68, !dbg !2604
  %99 = fcmp olt float %98, %62, !dbg !2605
  br i1 %99, label %100, label %160, !dbg !2606

; <label>:100:                                    ; preds = %95
  tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %97, i64 0, metadata !2477, metadata !621), !dbg !2607
  %101 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %97, i64 0, i32 4, !dbg !2608
  %102 = load i8, i8* %101, align 4, !dbg !2608, !tbaa !1953, !range !1230
  %103 = icmp eq i8 %102, 0, !dbg !2608
  %104 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %97, i64 0, i32 3
  %105 = load float, float* %104, align 4, !tbaa !1926
  %106 = fmul float %105, %68
  %107 = fmul float %96, %106, !dbg !2609
  %108 = select i1 %103, float %107, float %106, !dbg !2610
  tail call void @llvm.dbg.value(metadata float %108, i64 0, metadata !2482, metadata !621), !dbg !2611
  %109 = fcmp ult float %108, 0x43F0000000000000, !dbg !2612
  br i1 %109, label %110, label %194, !dbg !2614

; <label>:110:                                    ; preds = %100
  %111 = fptoui float %108 to i64, !dbg !2615
  %112 = tail call zeroext i1 @hash_rehash(%struct.hash_table* nonnull %0, i64 %111), !dbg !2617
  br i1 %112, label %113, label %194, !dbg !2618

; <label>:113:                                    ; preds = %110
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2493, metadata !621) #13, !dbg !2619
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2499, metadata !621) #13, !dbg !2622
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !2501, metadata !621) #13, !dbg !2623
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1620, metadata !621) #13, !dbg !2624
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1625, metadata !621) #13, !dbg !2626
  %114 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8, !dbg !2627, !tbaa !1631
  %115 = load i64, i64* %9, align 8, !dbg !2628, !tbaa !1407
  %116 = tail call i64 %114(i8* nonnull %1, i64 %115) #13, !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !1626, metadata !621) #13, !dbg !2630
  %117 = load i64, i64* %9, align 8, !dbg !2631, !tbaa !1407
  %118 = icmp ult i64 %116, %117, !dbg !2632
  br i1 %118, label %120, label %119, !dbg !2633

; <label>:119:                                    ; preds = %113
  tail call void @abort() #16, !dbg !2634
  unreachable, !dbg !2634

; <label>:120:                                    ; preds = %113
  %121 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8, !dbg !2635, !tbaa !1439
  %122 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %121, i64 %116, !dbg !2636
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %122, i64 0, metadata !2502, metadata !621) #13, !dbg !2637
  %123 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %122, i64 0, i32 0, !dbg !2638
  %124 = load i8*, i8** %123, align 8, !dbg !2638, !tbaa !1446
  %125 = icmp eq i8* %124, null, !dbg !2639
  br i1 %125, label %160, label %126, !dbg !2640

; <label>:126:                                    ; preds = %120
  %127 = icmp eq i8* %124, %1, !dbg !2641
  br i1 %127, label %156, label %128, !dbg !2642

; <label>:128:                                    ; preds = %126
  %129 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7, !dbg !2643
  %130 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %129, align 8, !dbg !2643, !tbaa !1655
  %131 = tail call zeroext i1 %130(i8* nonnull %1, i8* nonnull %124) #13, !dbg !2644
  br i1 %131, label %132, label %134, !dbg !2645

; <label>:132:                                    ; preds = %128
  %133 = load i8*, i8** %123, align 8, !dbg !2646, !tbaa !1446
  br label %156, !dbg !2645

; <label>:134:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %122, i64 0, metadata !2503, metadata !621) #13, !dbg !2647
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %122, i64 0, metadata !2503, metadata !621) #13, !dbg !2647
  %135 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %121, i64 %116, i32 1, !dbg !2648
  %136 = load %struct.hash_entry*, %struct.hash_entry** %135, align 8, !dbg !2648, !tbaa !1453
  %137 = icmp eq %struct.hash_entry* %136, null, !dbg !2649
  br i1 %137, label %160, label %138, !dbg !2649

; <label>:138:                                    ; preds = %134
  br label %139, !dbg !2650

; <label>:139:                                    ; preds = %138, %152
  %140 = phi %struct.hash_entry* [ %154, %152 ], [ %136, %138 ]
  %141 = phi %struct.hash_entry** [ %153, %152 ], [ %135, %138 ]
  %142 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %140, i64 0, i32 0, !dbg !2650
  %143 = load i8*, i8** %142, align 8, !dbg !2650, !tbaa !1446
  %144 = icmp eq i8* %143, %1, !dbg !2651
  br i1 %144, label %156, label %145, !dbg !2652

; <label>:145:                                    ; preds = %139
  %146 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %129, align 8, !dbg !2653, !tbaa !1655
  %147 = tail call zeroext i1 %146(i8* nonnull %1, i8* %143) #13, !dbg !2654
  %148 = load %struct.hash_entry*, %struct.hash_entry** %141, align 8, !tbaa !1453
  br i1 %147, label %149, label %152, !dbg !2655

; <label>:149:                                    ; preds = %145
  %150 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %148, i64 0, i32 0
  %151 = load i8*, i8** %150, align 8, !dbg !2656, !tbaa !1446
  br label %156, !dbg !2655

; <label>:152:                                    ; preds = %145
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %148, i64 0, metadata !2503, metadata !621) #13, !dbg !2647
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %148, i64 0, metadata !2503, metadata !621) #13, !dbg !2647
  %153 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %148, i64 0, i32 1, !dbg !2648
  %154 = load %struct.hash_entry*, %struct.hash_entry** %153, align 8, !dbg !2648, !tbaa !1453
  %155 = icmp eq %struct.hash_entry* %154, null, !dbg !2649
  br i1 %155, label %160, label %139, !dbg !2649, !llvm.loop !2558

; <label>:156:                                    ; preds = %139, %149, %126, %132
  %157 = phi i8* [ %133, %132 ], [ %1, %126 ], [ %151, %149 ], [ %1, %139 ]
  %158 = icmp eq i8* %157, null, !dbg !2657
  br i1 %158, label %160, label %159, !dbg !2658

; <label>:159:                                    ; preds = %156
  tail call void @abort() #16, !dbg !2659
  unreachable, !dbg !2659

; <label>:160:                                    ; preds = %152, %134, %120, %156, %95, %59
  %161 = phi %struct.hash_entry* [ %122, %156 ], [ %18, %95 ], [ %18, %59 ], [ %122, %120 ], [ %122, %134 ], [ %122, %152 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %161, i64 0, metadata !2476, metadata !621), !dbg !2660
  %162 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %161, i64 0, i32 0, !dbg !2661
  %163 = load i8*, i8** %162, align 8, !dbg !2661, !tbaa !1446
  %164 = icmp eq i8* %163, null, !dbg !2662
  br i1 %164, label %189, label %165, !dbg !2663

; <label>:165:                                    ; preds = %160
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2431, metadata !621) #13, !dbg !2664
  %166 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2666
  %167 = load %struct.hash_entry*, %struct.hash_entry** %166, align 8, !dbg !2666, !tbaa !2029
  %168 = icmp eq %struct.hash_entry* %167, null, !dbg !2667
  br i1 %168, label %174, label %169, !dbg !2668

; <label>:169:                                    ; preds = %165
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %167, i64 0, metadata !2436, metadata !621) #13, !dbg !2669
  %170 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %167, i64 0, i32 1, !dbg !2670
  %171 = bitcast %struct.hash_entry** %170 to i64*, !dbg !2670
  %172 = load i64, i64* %171, align 8, !dbg !2670, !tbaa !1453
  %173 = bitcast %struct.hash_entry** %166 to i64*, !dbg !2671
  store i64 %172, i64* %173, align 8, !dbg !2671, !tbaa !2029
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %176, i64 0, metadata !2436, metadata !621) #13, !dbg !2669
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %176, i64 0, metadata !2483, metadata !621), !dbg !2672
  br label %178, !dbg !2673

; <label>:174:                                    ; preds = %165
  %175 = tail call noalias i8* @malloc(i64 16) #13, !dbg !2674
  %176 = bitcast i8* %175 to %struct.hash_entry*, !dbg !2674
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %176, i64 0, metadata !2436, metadata !621) #13, !dbg !2669
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %176, i64 0, metadata !2436, metadata !621) #13, !dbg !2669
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %176, i64 0, metadata !2483, metadata !621), !dbg !2672
  %177 = icmp eq i8* %175, null, !dbg !2675
  br i1 %177, label %194, label %178, !dbg !2673

; <label>:178:                                    ; preds = %169, %174
  %179 = phi %struct.hash_entry* [ %167, %169 ], [ %176, %174 ]
  %180 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %179, i64 0, i32 0, !dbg !2677
  store i8* %1, i8** %180, align 8, !dbg !2678, !tbaa !1446
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %161, i64 0, metadata !2476, metadata !621), !dbg !2660
  %181 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %161, i64 0, i32 1, !dbg !2679
  %182 = bitcast %struct.hash_entry** %181 to i64*, !dbg !2679
  %183 = load i64, i64* %182, align 8, !dbg !2679, !tbaa !1453
  %184 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %179, i64 0, i32 1, !dbg !2680
  %185 = bitcast %struct.hash_entry** %184 to i64*, !dbg !2681
  store i64 %183, i64* %185, align 8, !dbg !2681, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %161, i64 0, metadata !2476, metadata !621), !dbg !2660
  store %struct.hash_entry* %179, %struct.hash_entry** %181, align 8, !dbg !2682, !tbaa !1453
  %186 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !2683
  %187 = load i64, i64* %186, align 8, !dbg !2684, !tbaa !1422
  %188 = add i64 %187, 1, !dbg !2684
  store i64 %188, i64* %186, align 8, !dbg !2684, !tbaa !1422
  br label %194, !dbg !2685

; <label>:189:                                    ; preds = %160
  store i8* %1, i8** %162, align 8, !dbg !2686, !tbaa !1446
  %190 = bitcast i64* %60 to <2 x i64>*, !dbg !2687
  %191 = load <2 x i64>, <2 x i64>* %190, align 8, !dbg !2687, !tbaa !2277
  %192 = add <2 x i64> %191, <i64 1, i64 1>, !dbg !2687
  %193 = bitcast i64* %60 to <2 x i64>*, !dbg !2687
  store <2 x i64> %192, <2 x i64>* %193, align 8, !dbg !2687, !tbaa !2277
  br label %194, !dbg !2688

; <label>:194:                                    ; preds = %110, %100, %178, %174, %58, %55, %189
  %195 = phi i32 [ 1, %189 ], [ 0, %55 ], [ 0, %58 ], [ 1, %178 ], [ -1, %174 ], [ -1, %100 ], [ -1, %110 ]
  ret i32 %195, !dbg !2689
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_insert(%struct.hash_table* nocapture, i8*) local_unnamed_addr #6 !dbg !2690 {
  %3 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2694, metadata !621), !dbg !2698
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2695, metadata !621), !dbg !2699
  %4 = bitcast i8** %3 to i8*, !dbg !2700
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13, !dbg !2700
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !2696, metadata !621), !dbg !2701
  %5 = call i32 @hash_insert_if_absent(%struct.hash_table* %0, i8* %1, i8** nonnull %3), !dbg !2702
  call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2697, metadata !621), !dbg !2703
  %6 = icmp eq i32 %5, -1, !dbg !2704
  br i1 %6, label %11, label %7, !dbg !2705

; <label>:7:                                      ; preds = %2
  %8 = icmp eq i32 %5, 0, !dbg !2706
  %9 = load i8*, i8** %3, align 8, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !2696, metadata !621), !dbg !2701
  %10 = select i1 %8, i8* %9, i8* %1, !dbg !2708
  br label %11, !dbg !2708

; <label>:11:                                     ; preds = %7, %2
  %12 = phi i8* [ null, %2 ], [ %10, %7 ], !dbg !2705
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13, !dbg !2709
  ret i8* %12, !dbg !2710
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_delete(%struct.hash_table* nocapture, i8*) local_unnamed_addr #6 !dbg !2711 {
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2713, metadata !621), !dbg !2729
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2714, metadata !621), !dbg !2730
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2493, metadata !621) #13, !dbg !2731
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2499, metadata !621) #13, !dbg !2733
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !2501, metadata !621) #13, !dbg !2734
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1620, metadata !621) #13, !dbg !2735
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1625, metadata !621) #13, !dbg !2737
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !2738
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !dbg !2738, !tbaa !1631
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !2739
  %6 = load i64, i64* %5, align 8, !dbg !2739, !tbaa !1407
  %7 = tail call i64 %4(i8* %1, i64 %6) #13, !dbg !2740
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1626, metadata !621) #13, !dbg !2741
  %8 = load i64, i64* %5, align 8, !dbg !2742, !tbaa !1407
  %9 = icmp ult i64 %7, %8, !dbg !2743
  br i1 %9, label %11, label %10, !dbg !2744

; <label>:10:                                     ; preds = %2
  tail call void @abort() #16, !dbg !2745
  unreachable, !dbg !2745

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2746
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2746, !tbaa !1439
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, !dbg !2747
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !2502, metadata !621) #13, !dbg !2748
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0, !dbg !2749
  %16 = load i8*, i8** %15, align 8, !dbg !2749, !tbaa !1446
  %17 = icmp eq i8* %16, null, !dbg !2750
  br i1 %17, label %152, label %18, !dbg !2751

; <label>:18:                                     ; preds = %11
  %19 = icmp eq i8* %16, %1, !dbg !2752
  br i1 %19, label %26, label %20, !dbg !2753

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7, !dbg !2754
  %22 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !dbg !2754, !tbaa !1655
  %23 = tail call zeroext i1 %22(i8* %1, i8* nonnull %16) #13, !dbg !2755
  br i1 %23, label %24, label %41, !dbg !2756

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %15, align 8, !dbg !2757, !tbaa !1446
  br label %26, !dbg !2756

; <label>:26:                                     ; preds = %24, %18
  %27 = phi i8* [ %25, %24 ], [ %1, %18 ], !dbg !2757
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !2504, metadata !621) #13, !dbg !2758
  %28 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1, !dbg !2759
  %29 = load %struct.hash_entry*, %struct.hash_entry** %28, align 8, !dbg !2759, !tbaa !1453
  %30 = icmp eq %struct.hash_entry* %29, null, !dbg !2760
  br i1 %30, label %40, label %31, !dbg !2761

; <label>:31:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %29, i64 0, metadata !2507, metadata !621) #13, !dbg !2762
  %32 = bitcast %struct.hash_entry* %14 to i8*, !dbg !2763
  %33 = bitcast %struct.hash_entry* %29 to i8*, !dbg !2763
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false) #13, !dbg !2763, !tbaa.struct !2764
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2349, metadata !621) #13, !dbg !2765
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %29, i64 0, metadata !2354, metadata !621) #13, !dbg !2767
  %34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %29, i64 0, i32 0, !dbg !2768
  store i8* null, i8** %34, align 8, !dbg !2769, !tbaa !1446
  %35 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2770
  %36 = bitcast %struct.hash_entry** %35 to i64*, !dbg !2770
  %37 = load i64, i64* %36, align 8, !dbg !2770, !tbaa !2029
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %29, i64 0, i32 1, !dbg !2771
  %39 = bitcast %struct.hash_entry** %38 to i64*, !dbg !2772
  store i64 %37, i64* %39, align 8, !dbg !2772, !tbaa !1453
  store %struct.hash_entry* %29, %struct.hash_entry** %35, align 8, !dbg !2773, !tbaa !2029
  br label %74, !dbg !2774

; <label>:40:                                     ; preds = %26
  store i8* null, i8** %15, align 8, !dbg !2775, !tbaa !1446
  br label %74

; <label>:41:                                     ; preds = %20
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !2503, metadata !621) #13, !dbg !2777
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !2503, metadata !621) #13, !dbg !2777
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1, !dbg !2778
  %43 = load %struct.hash_entry*, %struct.hash_entry** %42, align 8, !dbg !2778, !tbaa !1453
  %44 = icmp eq %struct.hash_entry* %43, null, !dbg !2779
  br i1 %44, label %152, label %45, !dbg !2779

; <label>:45:                                     ; preds = %41
  br label %46, !dbg !2780

; <label>:46:                                     ; preds = %45, %70
  %47 = phi %struct.hash_entry* [ %72, %70 ], [ %43, %45 ]
  %48 = phi %struct.hash_entry** [ %71, %70 ], [ %42, %45 ]
  %49 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %47, i64 0, i32 0, !dbg !2780
  %50 = load i8*, i8** %49, align 8, !dbg !2780, !tbaa !1446
  %51 = icmp eq i8* %50, %1, !dbg !2781
  br i1 %51, label %59, label %52, !dbg !2782

; <label>:52:                                     ; preds = %46
  %53 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !dbg !2783, !tbaa !1655
  %54 = tail call zeroext i1 %53(i8* %1, i8* %50) #13, !dbg !2784
  %55 = load %struct.hash_entry*, %struct.hash_entry** %48, align 8, !tbaa !1453
  br i1 %54, label %56, label %70, !dbg !2785

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 0, i32 0
  %58 = load i8*, i8** %57, align 8, !dbg !2786, !tbaa !1446
  br label %59, !dbg !2785

; <label>:59:                                     ; preds = %46, %56
  %60 = phi i8* [ %58, %56 ], [ %1, %46 ], !dbg !2786
  %61 = phi %struct.hash_entry* [ %55, %56 ], [ %47, %46 ], !dbg !2787
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !2512, metadata !621) #13, !dbg !2788
  %62 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %61, i64 0, i32 0, !dbg !2786
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %61, i64 0, metadata !2518, metadata !621) #13, !dbg !2789
  %63 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %61, i64 0, i32 1, !dbg !2790
  %64 = bitcast %struct.hash_entry** %63 to i64*, !dbg !2790
  %65 = load i64, i64* %64, align 8, !dbg !2790, !tbaa !1453
  %66 = bitcast %struct.hash_entry** %48 to i64*, !dbg !2791
  store i64 %65, i64* %66, align 8, !dbg !2791, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2349, metadata !621) #13, !dbg !2792
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %61, i64 0, metadata !2354, metadata !621) #13, !dbg !2794
  store i8* null, i8** %62, align 8, !dbg !2795, !tbaa !1446
  %67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2796
  %68 = bitcast %struct.hash_entry** %67 to i64*, !dbg !2796
  %69 = load i64, i64* %68, align 8, !dbg !2796, !tbaa !2029
  store i64 %69, i64* %64, align 8, !dbg !2797, !tbaa !1453
  store %struct.hash_entry* %61, %struct.hash_entry** %67, align 8, !dbg !2798, !tbaa !2029
  br label %74, !dbg !2799

; <label>:70:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %55, i64 0, metadata !2503, metadata !621) #13, !dbg !2777
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %55, i64 0, metadata !2503, metadata !621) #13, !dbg !2777
  %71 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 0, i32 1, !dbg !2778
  %72 = load %struct.hash_entry*, %struct.hash_entry** %71, align 8, !dbg !2778, !tbaa !1453
  %73 = icmp eq %struct.hash_entry* %72, null, !dbg !2779
  br i1 %73, label %152, label %46, !dbg !2779, !llvm.loop !2558

; <label>:74:                                     ; preds = %31, %40, %59
  %75 = phi i8* [ %27, %31 ], [ %27, %40 ], [ %60, %59 ]
  tail call void @llvm.dbg.value(metadata i8* %75, i64 0, metadata !2715, metadata !621), !dbg !2800
  %76 = icmp eq i8* %75, null, !dbg !2801
  br i1 %76, label %152, label %77, !dbg !2803

; <label>:77:                                     ; preds = %74
  %78 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !2804
  %79 = load i64, i64* %78, align 8, !dbg !2805, !tbaa !1422
  %80 = add i64 %79, -1, !dbg !2805
  store i64 %80, i64* %78, align 8, !dbg !2805, !tbaa !1422
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !2716, metadata !621), !dbg !2806
  %81 = load i8*, i8** %15, align 8, !dbg !2807, !tbaa !1446
  %82 = icmp eq i8* %81, null, !dbg !2808
  br i1 %82, label %83, label %152, !dbg !2809

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !2810
  %85 = load i64, i64* %84, align 8, !dbg !2811, !tbaa !1415
  %86 = add i64 %85, -1, !dbg !2811
  store i64 %86, i64* %84, align 8, !dbg !2811, !tbaa !1415
  %87 = uitofp i64 %86 to float, !dbg !2812
  %88 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5, !dbg !2813
  %89 = load %struct.hash_tuning*, %struct.hash_tuning** %88, align 8, !dbg !2813, !tbaa !1902
  %90 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %89, i64 0, i32 0, !dbg !2814
  %91 = load float, float* %90, align 4, !dbg !2814, !tbaa !1930
  %92 = load i64, i64* %5, align 8, !dbg !2815, !tbaa !1407
  %93 = uitofp i64 %92 to float, !dbg !2816
  %94 = fmul float %91, %93, !dbg !2817
  %95 = fcmp ogt float %94, %87, !dbg !2818
  br i1 %95, label %96, label %152, !dbg !2819

; <label>:96:                                     ; preds = %83
  tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1903, metadata !621), !dbg !2820
  tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %89, i64 0, metadata !1908, metadata !621), !dbg !2822
  %97 = icmp eq %struct.hash_tuning* %89, @default_tuning, !dbg !2823
  br i1 %97, label %120, label %98, !dbg !2824

; <label>:98:                                     ; preds = %96
  tail call void @llvm.dbg.value(metadata float 0x3FB99999A0000000, i64 0, metadata !1909, metadata !621), !dbg !2825
  %99 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %89, i64 0, i32 2, !dbg !2826
  %100 = load float, float* %99, align 4, !dbg !2826, !tbaa !1920
  %101 = fcmp ogt float %100, 0x3FB99999A0000000, !dbg !2827
  %102 = fcmp olt float %100, 0x3FECCCCCC0000000, !dbg !2828
  %103 = and i1 %101, %102, !dbg !2829
  br i1 %103, label %104, label %119, !dbg !2829

; <label>:104:                                    ; preds = %98
  %105 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %89, i64 0, i32 3, !dbg !2830
  %106 = load float, float* %105, align 4, !dbg !2830, !tbaa !1926
  %107 = fcmp ule float %106, 0x3FF19999A0000000, !dbg !2831
  %108 = fcmp ult float %91, 0.000000e+00, !dbg !2832
  %109 = or i1 %108, %107, !dbg !2833
  br i1 %109, label %119, label %110, !dbg !2833

; <label>:110:                                    ; preds = %104
  %111 = fadd float %91, 0x3FB99999A0000000, !dbg !2834
  %112 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %89, i64 0, i32 1, !dbg !2835
  %113 = load float, float* %112, align 4, !dbg !2835, !tbaa !1935
  %114 = fcmp olt float %111, %113, !dbg !2836
  %115 = fcmp ole float %113, 1.000000e+00, !dbg !2837
  %116 = and i1 %115, %114, !dbg !2838
  %117 = fcmp olt float %111, %100, !dbg !2839
  %118 = and i1 %117, %116, !dbg !2838
  br i1 %118, label %120, label %119, !dbg !2838

; <label>:119:                                    ; preds = %104, %110, %98
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %88, align 8, !dbg !2840, !tbaa !1902
  br label %120, !dbg !2841

; <label>:120:                                    ; preds = %96, %110, %119
  %121 = phi float [ %91, %96 ], [ %91, %110 ], [ 0.000000e+00, %119 ], !dbg !2842
  %122 = phi %struct.hash_tuning* [ @default_tuning, %96 ], [ %89, %110 ], [ @default_tuning, %119 ], !dbg !2843
  %123 = fmul float %121, %93, !dbg !2844
  %124 = fcmp ogt float %123, %87, !dbg !2845
  br i1 %124, label %125, label %152, !dbg !2846

; <label>:125:                                    ; preds = %120
  tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %122, i64 0, metadata !2717, metadata !621), !dbg !2847
  %126 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %122, i64 0, i32 4, !dbg !2848
  %127 = load i8, i8* %126, align 4, !dbg !2848, !tbaa !1953, !range !1230
  %128 = icmp eq i8 %127, 0, !dbg !2848
  %129 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %122, i64 0, i32 1
  %130 = load float, float* %129, align 4, !tbaa !1935
  %131 = fmul float %130, %93
  br i1 %128, label %132, label %136, !dbg !2849

; <label>:132:                                    ; preds = %125
  %133 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %122, i64 0, i32 2, !dbg !2850
  %134 = load float, float* %133, align 4, !dbg !2850, !tbaa !1920
  %135 = fmul float %131, %134, !dbg !2851
  br label %136, !dbg !2849

; <label>:136:                                    ; preds = %125, %132
  %137 = phi float [ %135, %132 ], [ %131, %125 ], !dbg !2849
  %138 = fptoui float %137 to i64, !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !2724, metadata !621), !dbg !2853
  %139 = tail call zeroext i1 @hash_rehash(%struct.hash_table* nonnull %0, i64 %138), !dbg !2854
  br i1 %139, label %152, label %140, !dbg !2855

; <label>:140:                                    ; preds = %136
  %141 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2856
  %142 = load %struct.hash_entry*, %struct.hash_entry** %141, align 8, !dbg !2856, !tbaa !2029
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %142, i64 0, metadata !2725, metadata !621), !dbg !2857
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %142, i64 0, metadata !2725, metadata !621), !dbg !2857
  %143 = icmp eq %struct.hash_entry* %142, null, !dbg !2858
  br i1 %143, label %151, label %144, !dbg !2858

; <label>:144:                                    ; preds = %140
  br label %145

; <label>:145:                                    ; preds = %144, %145
  %146 = phi %struct.hash_entry* [ %149, %145 ], [ %142, %144 ]
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %146, i64 0, metadata !2725, metadata !621), !dbg !2857
  %147 = bitcast %struct.hash_entry* %146 to i8*
  %148 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %146, i64 0, i32 1, !dbg !2859
  %149 = load %struct.hash_entry*, %struct.hash_entry** %148, align 8, !dbg !2859, !tbaa !1453
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %149, i64 0, metadata !2728, metadata !621), !dbg !2861
  tail call void @free(i8* %147) #13, !dbg !2862
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %149, i64 0, metadata !2725, metadata !621), !dbg !2857
  tail call void @llvm.dbg.value(metadata %struct.hash_entry* %149, i64 0, metadata !2725, metadata !621), !dbg !2857
  %150 = icmp eq %struct.hash_entry* %149, null, !dbg !2858
  br i1 %150, label %151, label %145, !dbg !2858, !llvm.loop !2863

; <label>:151:                                    ; preds = %145, %140
  store %struct.hash_entry* null, %struct.hash_entry** %141, align 8, !dbg !2865, !tbaa !2029
  br label %152, !dbg !2866

; <label>:152:                                    ; preds = %70, %41, %11, %120, %83, %77, %151, %136, %74
  %153 = phi i8* [ null, %74 ], [ %75, %136 ], [ %75, %151 ], [ %75, %77 ], [ %75, %83 ], [ %75, %120 ], [ null, %11 ], [ null, %41 ], [ null, %70 ]
  ret i8* %153, !dbg !2867
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @triple_hash(i8* nocapture readonly, i64) #11 !dbg !2868 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2871, metadata !621), !dbg !2882
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2872, metadata !621), !dbg !2883
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2873, metadata !621), !dbg !2884
  %3 = bitcast i8* %0 to i8**, !dbg !2885
  %4 = load i8*, i8** %3, align 8, !dbg !2885, !tbaa !1308
  %5 = tail call i64 @hash_pjw(i8* %4, i64 %1) #15, !dbg !2886
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2881, metadata !621), !dbg !2887
  %6 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2888
  %7 = bitcast i8* %6 to i64*, !dbg !2888
  %8 = load i64, i64* %7, align 8, !dbg !2888, !tbaa !1314
  %9 = xor i64 %8, %5, !dbg !2889
  %10 = urem i64 %9, %1, !dbg !2890
  ret i64 %10, !dbg !2891
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @triple_hash_no_name(i8* nocapture readonly, i64) local_unnamed_addr #11 !dbg !2892 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2894, metadata !621), !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2895, metadata !621), !dbg !2898
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2896, metadata !621), !dbg !2899
  %3 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2900
  %4 = bitcast i8* %3 to i64*, !dbg !2900
  %5 = load i64, i64* %4, align 8, !dbg !2900, !tbaa !1314
  %6 = urem i64 %5, %1, !dbg !2901
  ret i64 %6, !dbg !2902
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @triple_compare(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 !dbg !2903 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2905, metadata !621), !dbg !2909
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2906, metadata !621), !dbg !2910
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2907, metadata !621), !dbg !2911
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2908, metadata !621), !dbg !2912
  %3 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2913
  %4 = bitcast i8* %3 to i64*, !dbg !2913
  %5 = load i64, i64* %4, align 8, !dbg !2913, !tbaa !1314
  %6 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !2913
  %7 = bitcast i8* %6 to i64*, !dbg !2913
  %8 = load i64, i64* %7, align 8, !dbg !2913, !tbaa !1314
  %9 = icmp eq i64 %5, %8, !dbg !2913
  br i1 %9, label %10, label %24, !dbg !2913

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2913
  %12 = bitcast i8* %11 to i64*, !dbg !2913
  %13 = load i64, i64* %12, align 8, !dbg !2913, !tbaa !1319
  %14 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !2913
  %15 = bitcast i8* %14 to i64*, !dbg !2913
  %16 = load i64, i64* %15, align 8, !dbg !2913, !tbaa !1319
  %17 = icmp eq i64 %13, %16, !dbg !2913
  br i1 %17, label %18, label %24, !dbg !2914

; <label>:18:                                     ; preds = %10
  %19 = bitcast i8* %0 to i8**, !dbg !2915
  %20 = load i8*, i8** %19, align 8, !dbg !2915, !tbaa !1308
  %21 = bitcast i8* %1 to i8**, !dbg !2916
  %22 = load i8*, i8** %21, align 8, !dbg !2916, !tbaa !1308
  %23 = tail call zeroext i1 @same_name(i8* %20, i8* %22) #13, !dbg !2917
  br label %24

; <label>:24:                                     ; preds = %18, %10, %2
  %25 = phi i1 [ false, %10 ], [ false, %2 ], [ %23, %18 ]
  ret i1 %25, !dbg !2918
}

; Function Attrs: nounwind readonly sspstrong uwtable
define zeroext i1 @triple_compare_ino_str(i8* nocapture readonly, i8* nocapture readonly) #11 !dbg !2919 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2921, metadata !621), !dbg !2925
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2922, metadata !621), !dbg !2926
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2923, metadata !621), !dbg !2927
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2924, metadata !621), !dbg !2928
  %3 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2929
  %4 = bitcast i8* %3 to i64*, !dbg !2929
  %5 = load i64, i64* %4, align 8, !dbg !2929, !tbaa !1314
  %6 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !2929
  %7 = bitcast i8* %6 to i64*, !dbg !2929
  %8 = load i64, i64* %7, align 8, !dbg !2929, !tbaa !1314
  %9 = icmp eq i64 %5, %8, !dbg !2929
  br i1 %9, label %10, label %25, !dbg !2929

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2929
  %12 = bitcast i8* %11 to i64*, !dbg !2929
  %13 = load i64, i64* %12, align 8, !dbg !2929, !tbaa !1319
  %14 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !2929
  %15 = bitcast i8* %14 to i64*, !dbg !2929
  %16 = load i64, i64* %15, align 8, !dbg !2929, !tbaa !1319
  %17 = icmp eq i64 %13, %16, !dbg !2929
  br i1 %17, label %18, label %25, !dbg !2930

; <label>:18:                                     ; preds = %10
  %19 = bitcast i8* %0 to i8**, !dbg !2931
  %20 = load i8*, i8** %19, align 8, !dbg !2931, !tbaa !1308
  %21 = bitcast i8* %1 to i8**, !dbg !2931
  %22 = load i8*, i8** %21, align 8, !dbg !2931, !tbaa !1308
  %23 = tail call i32 @strcmp(i8* %20, i8* %22) #15, !dbg !2931
  %24 = icmp eq i32 %23, 0, !dbg !2931
  br label %25

; <label>:25:                                     ; preds = %18, %10, %2
  %26 = phi i1 [ false, %10 ], [ false, %2 ], [ %24, %18 ]
  ret i1 %26, !dbg !2932
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @triple_free(i8* nocapture) #6 !dbg !2933 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2935, metadata !621), !dbg !2938
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2936, metadata !621), !dbg !2939
  %2 = bitcast i8* %0 to i8**, !dbg !2940
  %3 = load i8*, i8** %2, align 8, !dbg !2940, !tbaa !1308
  tail call void @free(i8* %3) #13, !dbg !2941
  tail call void @free(i8* %0) #13, !dbg !2942
  ret void, !dbg !2943
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2944 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2946, metadata !621), !dbg !2949
  %2 = icmp eq i8* %0, null, !dbg !2950
  br i1 %2, label %3, label %6, !dbg !2952

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2953, !tbaa !628
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !2955
  tail call void @abort() #16, !dbg !2956
  unreachable, !dbg !2956

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !2957
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2947, metadata !621), !dbg !2958
  %8 = icmp eq i8* %7, null, !dbg !2959
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2960
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2961
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2948, metadata !621), !dbg !2962
  %11 = ptrtoint i8* %10 to i64, !dbg !2963
  %12 = ptrtoint i8* %0 to i64, !dbg !2963
  %13 = sub i64 %11, %12, !dbg !2963
  %14 = icmp sgt i64 %13, 6, !dbg !2965
  br i1 %14, label %15, label %24, !dbg !2966

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2967
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.74, i64 0, i64 0), i64 7) #15, !dbg !2968
  %18 = icmp eq i32 %17, 0, !dbg !2969
  br i1 %18, label %19, label %24, !dbg !2970

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2946, metadata !621), !dbg !2949
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i64 3) #15, !dbg !2971
  %21 = icmp eq i32 %20, 0, !dbg !2974
  br i1 %21, label %22, label %24, !dbg !2975

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2976
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2946, metadata !621), !dbg !2949
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2978, !tbaa !628
  br label %24, !dbg !2979

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2946, metadata !621), !dbg !2949
  store i8* %25, i8** @program_name, align 8, !dbg !2980, !tbaa !628
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2981, !tbaa !628
  ret void, !dbg !2982
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #13

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2983 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2988, metadata !621), !dbg !2991
  %2 = tail call i32* @__errno_location() #18, !dbg !2992
  %3 = load i32, i32* %2, align 4, !dbg !2992, !tbaa !700
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2989, metadata !621), !dbg !2993
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2994
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2994
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !2994
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #13, !dbg !2995
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2995
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2990, metadata !621), !dbg !2996
  store i32 %3, i32* %2, align 4, !dbg !2997, !tbaa !700
  ret %struct.quoting_options* %8, !dbg !2998
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !2999 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3005, metadata !621), !dbg !3006
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !3007
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3007
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3008
  %5 = load i32, i32* %4, align 8, !dbg !3008, !tbaa !3009
  ret i32 %5, !dbg !3011
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !3012 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3016, metadata !621), !dbg !3018
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3017, metadata !621), !dbg !3019
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !3020
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3020
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3021
  store i32 %1, i32* %5, align 8, !dbg !3022, !tbaa !3009
  ret void, !dbg !3023
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !3024 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3028, metadata !621), !dbg !3036
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3029, metadata !621), !dbg !3037
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3030, metadata !621), !dbg !3038
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3031, metadata !621), !dbg !3039
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3040
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3040
  %6 = lshr i8 %1, 5, !dbg !3041
  %7 = zext i8 %6 to i64, !dbg !3041
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !3042
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3032, metadata !621), !dbg !3043
  %9 = and i8 %1, 31, !dbg !3044
  %10 = zext i8 %9 to i32, !dbg !3045
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3034, metadata !621), !dbg !3046
  %11 = load i32, i32* %8, align 4, !dbg !3047, !tbaa !700
  %12 = lshr i32 %11, %10, !dbg !3048
  %13 = and i32 %12, 1, !dbg !3049
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !3035, metadata !621), !dbg !3050
  %14 = and i32 %2, 1, !dbg !3051
  %15 = xor i32 %13, %14, !dbg !3052
  %16 = shl i32 %15, %10, !dbg !3053
  %17 = xor i32 %16, %11, !dbg !3054
  store i32 %17, i32* %8, align 4, !dbg !3054, !tbaa !700
  ret i32 %13, !dbg !3055
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !3056 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3060, metadata !621), !dbg !3063
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3061, metadata !621), !dbg !3064
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !3065
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3060, metadata !621), !dbg !3063
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3067
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3060, metadata !621), !dbg !3063
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3068
  %6 = load i32, i32* %5, align 4, !dbg !3068, !tbaa !3069
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3062, metadata !621), !dbg !3070
  store i32 %1, i32* %5, align 4, !dbg !3071, !tbaa !3069
  ret i32 %6, !dbg !3072
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !3073 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3077, metadata !621), !dbg !3080
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3078, metadata !621), !dbg !3081
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3079, metadata !621), !dbg !3082
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3083
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3077, metadata !621), !dbg !3080
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3085
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3077, metadata !621), !dbg !3080
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3086
  store i32 10, i32* %6, align 8, !dbg !3087, !tbaa !3009
  %7 = icmp ne i8* %1, null, !dbg !3088
  %8 = icmp ne i8* %2, null, !dbg !3090
  %9 = and i1 %7, %8, !dbg !3091
  br i1 %9, label %11, label %10, !dbg !3091

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3092
  unreachable, !dbg !3092

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3093
  store i8* %1, i8** %12, align 8, !dbg !3094, !tbaa !3095
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3096
  store i8* %2, i8** %13, align 8, !dbg !3097, !tbaa !3098
  ret void, !dbg !3099
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !3100 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3104, metadata !621), !dbg !3112
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3105, metadata !621), !dbg !3113
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3106, metadata !621), !dbg !3114
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3107, metadata !621), !dbg !3115
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3108, metadata !621), !dbg !3116
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !3117
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !3117
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !3109, metadata !621), !dbg !3118
  %8 = tail call i32* @__errno_location() #18, !dbg !3119
  %9 = load i32, i32* %8, align 4, !dbg !3119, !tbaa !700
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3110, metadata !621), !dbg !3120
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !3121
  %11 = load i32, i32* %10, align 8, !dbg !3121, !tbaa !3009
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !3122
  %13 = load i32, i32* %12, align 4, !dbg !3122, !tbaa !3069
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !3123
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !3124
  %16 = load i8*, i8** %15, align 8, !dbg !3124, !tbaa !3095
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !3125
  %18 = load i8*, i8** %17, align 8, !dbg !3125, !tbaa !3098
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !3126
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3111, metadata !621), !dbg !3127
  store i32 %9, i32* %8, align 4, !dbg !3128, !tbaa !700
  ret i64 %19, !dbg !3129
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !3130 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3136, metadata !621), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3137, metadata !621), !dbg !3201
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3138, metadata !621), !dbg !3202
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3139, metadata !621), !dbg !3203
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3140, metadata !621), !dbg !3204
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3141, metadata !621), !dbg !3205
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !3142, metadata !621), !dbg !3206
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !3143, metadata !621), !dbg !3207
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3144, metadata !621), !dbg !3208
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3146, metadata !621), !dbg !3209
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3147, metadata !621), !dbg !3210
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3148, metadata !621), !dbg !3211
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3149, metadata !621), !dbg !3212
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3150, metadata !621), !dbg !3213
  %13 = tail call i64 @__ctype_get_mb_cur_max() #13, !dbg !3214
  %14 = icmp eq i64 %13, 1, !dbg !3215
  %15 = lshr i32 %5, 1, !dbg !3216
  %16 = trunc i32 %15 to i8, !dbg !3216
  %17 = and i8 %16, 1, !dbg !3216
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3152, metadata !621), !dbg !3216
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3153, metadata !621), !dbg !3217
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3154, metadata !621), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3155, metadata !621), !dbg !3219
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !3220

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !3137, metadata !621), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !3155, metadata !621), !dbg !3219
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !3154, metadata !621), !dbg !3218
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3152, metadata !621), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3139, metadata !621), !dbg !3203
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !3150, metadata !621), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !3149, metadata !621), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !3148, metadata !621), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !3147, metadata !621), !dbg !3210
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !3144, metadata !621), !dbg !3208
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3143, metadata !621), !dbg !3207
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !3140, metadata !621), !dbg !3204
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
  ], !dbg !3221

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3140, metadata !621), !dbg !3204
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3152, metadata !621), !dbg !3216
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3152, metadata !621), !dbg !3216
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3140, metadata !621), !dbg !3204
  br label %94, !dbg !3222

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3152, metadata !621), !dbg !3216
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3140, metadata !621), !dbg !3204
  %43 = and i8 %36, 1, !dbg !3224
  %44 = icmp eq i8 %43, 0, !dbg !3224
  br i1 %44, label %45, label %94, !dbg !3222

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3226
  br i1 %46, label %94, label %47, !dbg !3229

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !3226, !tbaa !749
  br label %94, !dbg !3226

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), i32 %28), !dbg !3230
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !3143, metadata !621), !dbg !3207
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), i32 %28), !dbg !3234
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !3144, metadata !621), !dbg !3208
  br label %51, !dbg !3235

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3144, metadata !621), !dbg !3208
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3143, metadata !621), !dbg !3207
  %54 = and i8 %36, 1, !dbg !3236
  %55 = icmp eq i8 %54, 0, !dbg !3236
  br i1 %55, label %56, label %72, !dbg !3238

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3148, metadata !621), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3148, metadata !621), !dbg !3211
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3146, metadata !621), !dbg !3209
  %57 = load i8, i8* %52, align 1, !dbg !3239, !tbaa !749
  %58 = icmp eq i8 %57, 0, !dbg !3242
  br i1 %58, label %72, label %59, !dbg !3242

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !3243

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !3148, metadata !621), !dbg !3211
  %64 = icmp ult i64 %63, %40, !dbg !3243
  br i1 %64, label %65, label %67, !dbg !3246

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !3243
  store i8 %61, i8* %66, align 1, !dbg !3243, !tbaa !749
  br label %67, !dbg !3243

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !3246
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3146, metadata !621), !dbg !3209
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3148, metadata !621), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3148, metadata !621), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3146, metadata !621), !dbg !3209
  %70 = load i8, i8* %69, align 1, !dbg !3239, !tbaa !749
  %71 = icmp eq i8 %70, 0, !dbg !3242
  br i1 %71, label %72, label %60, !dbg !3242, !llvm.loop !3248

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3150, metadata !621), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3148, metadata !621), !dbg !3211
  %74 = call i64 @strlen(i8* %53) #15, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3149, metadata !621), !dbg !3212
  br label %94, !dbg !3251

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3150, metadata !621), !dbg !3213
  br label %76, !dbg !3252

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !3150, metadata !621), !dbg !3213
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3152, metadata !621), !dbg !3216
  br label %78, !dbg !3253

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !3152, metadata !621), !dbg !3216
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !3150, metadata !621), !dbg !3213
  %81 = and i8 %80, 1, !dbg !3254
  %82 = icmp eq i8 %81, 0, !dbg !3254
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3150, metadata !621), !dbg !3213
  %83 = select i1 %82, i8 1, i8 %79, !dbg !3256
  br label %84, !dbg !3256

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !3152, metadata !621), !dbg !3216
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !3150, metadata !621), !dbg !3213
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3140, metadata !621), !dbg !3204
  %87 = and i8 %86, 1, !dbg !3257
  %88 = icmp eq i8 %87, 0, !dbg !3257
  br i1 %88, label %89, label %94, !dbg !3259

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !3260
  br i1 %90, label %94, label %91, !dbg !3263

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !3260, !tbaa !749
  br label %94, !dbg !3260

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3152, metadata !621), !dbg !3216
  br label %94, !dbg !3264

; <label>:93:                                     ; preds = %27
  call void @abort() #16, !dbg !3265
  unreachable, !dbg !3265

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !3152, metadata !621), !dbg !3216
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !3150, metadata !621), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !3149, metadata !621), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !3148, metadata !621), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3144, metadata !621), !dbg !3208
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !3143, metadata !621), !dbg !3207
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !3140, metadata !621), !dbg !3204
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3145, metadata !621), !dbg !3266
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
  br label %122, !dbg !3267

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !3137, metadata !621), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !3155, metadata !621), !dbg !3219
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !3154, metadata !621), !dbg !3218
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !3139, metadata !621), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3147, metadata !621), !dbg !3210
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !3145, metadata !621), !dbg !3266
  %131 = icmp eq i64 %126, -1, !dbg !3268
  br i1 %131, label %134, label %132, !dbg !3269

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !3270
  br i1 %133, label %590, label %138, !dbg !3271

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3272
  %136 = load i8, i8* %135, align 1, !dbg !3272, !tbaa !749
  %137 = icmp eq i8 %136, 0, !dbg !3273
  br i1 %137, label %590, label %138, !dbg !3271

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3161, metadata !621), !dbg !3274
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3162, metadata !621), !dbg !3275
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3163, metadata !621), !dbg !3276
  br i1 %108, label %139, label %154, !dbg !3277

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !3279
  %141 = and i1 %109, %131, !dbg !3280
  br i1 %141, label %142, label %144, !dbg !3280

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #15, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !3139, metadata !621), !dbg !3203
  br label %144, !dbg !3282

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !3139, metadata !621), !dbg !3203
  %146 = icmp ugt i64 %140, %145, !dbg !3283
  br i1 %146, label %154, label %147, !dbg !3284

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3285
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #15, !dbg !3286
  %150 = icmp ne i32 %149, 0, !dbg !3287
  %151 = or i1 %150, %111, !dbg !3288
  %152 = xor i1 %150, true, !dbg !3288
  %153 = zext i1 %152 to i8, !dbg !3288
  br i1 %151, label %154, label %635, !dbg !3288

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !3161, metadata !621), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !3139, metadata !621), !dbg !3203
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3289
  %158 = load i8, i8* %157, align 1, !dbg !3289, !tbaa !749
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !3156, metadata !621), !dbg !3290
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
  ], !dbg !3291

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !3292

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !3293

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3162, metadata !621), !dbg !3275
  %162 = and i8 %127, 1, !dbg !3297
  %163 = icmp eq i8 %162, 0, !dbg !3297
  %164 = and i1 %113, %163, !dbg !3297
  br i1 %164, label %165, label %181, !dbg !3297

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !3299
  br i1 %166, label %167, label %169, !dbg !3303

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3299
  store i8 39, i8* %168, align 1, !dbg !3299, !tbaa !749
  br label %169, !dbg !3299

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !3146, metadata !621), !dbg !3209
  %171 = icmp ult i64 %170, %130, !dbg !3304
  br i1 %171, label %172, label %174, !dbg !3307

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !3304
  store i8 36, i8* %173, align 1, !dbg !3304, !tbaa !749
  br label %174, !dbg !3304

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !3307
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !3146, metadata !621), !dbg !3209
  %176 = icmp ult i64 %175, %130, !dbg !3308
  br i1 %176, label %177, label %179, !dbg !3311

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !3308
  store i8 39, i8* %178, align 1, !dbg !3308, !tbaa !749
  br label %179, !dbg !3308

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3153, metadata !621), !dbg !3217
  br label %181, !dbg !3312

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !3146, metadata !621), !dbg !3209
  %184 = icmp ult i64 %182, %130, !dbg !3313
  br i1 %184, label %185, label %187, !dbg !3316

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !3313
  store i8 92, i8* %186, align 1, !dbg !3313, !tbaa !749
  br label %187, !dbg !3313

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !3146, metadata !621), !dbg !3209
  br i1 %105, label %189, label %470, !dbg !3317

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !3319
  %191 = icmp ult i64 %190, %155, !dbg !3320
  br i1 %191, label %192, label %470, !dbg !3321

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !3322
  %194 = load i8, i8* %193, align 1, !dbg !3322, !tbaa !749
  %195 = add i8 %194, -48, !dbg !3323
  %196 = icmp ult i8 %195, 10, !dbg !3323
  br i1 %196, label %197, label %470, !dbg !3323

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !3324
  br i1 %198, label %199, label %201, !dbg !3328

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !3324
  store i8 48, i8* %200, align 1, !dbg !3324, !tbaa !749
  br label %201, !dbg !3324

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !3328
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !3146, metadata !621), !dbg !3209
  %203 = icmp ult i64 %202, %130, !dbg !3329
  br i1 %203, label %204, label %206, !dbg !3332

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !3329
  store i8 48, i8* %205, align 1, !dbg !3329, !tbaa !749
  br label %206, !dbg !3329

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !3146, metadata !621), !dbg !3209
  br label %470, !dbg !3333

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !3334

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !3335

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !3336

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !3338

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !3340
  %214 = icmp ult i64 %213, %155, !dbg !3341
  br i1 %214, label %215, label %470, !dbg !3342

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !3343
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !3344
  %218 = load i8, i8* %217, align 1, !dbg !3344, !tbaa !749
  %219 = icmp eq i8 %218, 63, !dbg !3345
  br i1 %219, label %220, label %470, !dbg !3346

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !3347
  %222 = load i8, i8* %221, align 1, !dbg !3347, !tbaa !749
  %223 = sext i8 %222 to i32, !dbg !3347
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
  ], !dbg !3348

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !3349

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !3156, metadata !621), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !3145, metadata !621), !dbg !3266
  %226 = icmp ult i64 %124, %130, !dbg !3351
  br i1 %226, label %227, label %229, !dbg !3354

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3351
  store i8 63, i8* %228, align 1, !dbg !3351, !tbaa !749
  br label %229, !dbg !3351

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !3146, metadata !621), !dbg !3209
  %231 = icmp ult i64 %230, %130, !dbg !3355
  br i1 %231, label %232, label %234, !dbg !3358

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !3355
  store i8 34, i8* %233, align 1, !dbg !3355, !tbaa !749
  br label %234, !dbg !3355

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !3358
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !3146, metadata !621), !dbg !3209
  %236 = icmp ult i64 %235, %130, !dbg !3359
  br i1 %236, label %237, label %239, !dbg !3362

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !3359
  store i8 34, i8* %238, align 1, !dbg !3359, !tbaa !749
  br label %239, !dbg !3359

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !3362
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !3146, metadata !621), !dbg !3209
  %241 = icmp ult i64 %240, %130, !dbg !3363
  br i1 %241, label %242, label %244, !dbg !3366

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !3363
  store i8 63, i8* %243, align 1, !dbg !3363, !tbaa !749
  br label %244, !dbg !3363

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !3146, metadata !621), !dbg !3209
  br label %470, !dbg !3367

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !3160, metadata !621), !dbg !3368
  br label %256, !dbg !3369

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !3160, metadata !621), !dbg !3368
  br label %256, !dbg !3370

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !3160, metadata !621), !dbg !3368
  br label %254, !dbg !3371

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !3160, metadata !621), !dbg !3368
  br label %254, !dbg !3372

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !3160, metadata !621), !dbg !3368
  br label %256, !dbg !3373

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !3160, metadata !621), !dbg !3368
  br i1 %113, label %252, label %253, !dbg !3374

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !3375

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !3378

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !3160, metadata !621), !dbg !3368
  br i1 %117, label %256, label %635, !dbg !3380

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !3160, metadata !621), !dbg !3368
  br i1 %104, label %497, label %470, !dbg !3382

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !3383
  br i1 %259, label %260, label %265, !dbg !3385

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !3386, !tbaa !749
  %262 = icmp ne i8 %261, 0, !dbg !3387
  %263 = icmp ne i64 %123, 0, !dbg !3388
  %264 = or i1 %263, %262, !dbg !3390
  br i1 %264, label %470, label %271, !dbg !3390

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !3391
  %267 = icmp ne i64 %123, 0, !dbg !3388
  %268 = or i1 %267, %266, !dbg !3385
  br i1 %268, label %470, label %271, !dbg !3385

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !3388
  br i1 %270, label %271, label %470, !dbg !3392

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3163, metadata !621), !dbg !3276
  br label %272, !dbg !3393

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !3163, metadata !621), !dbg !3276
  br i1 %117, label %470, label %635, !dbg !3394

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3154, metadata !621), !dbg !3218
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3163, metadata !621), !dbg !3276
  br i1 %113, label %275, label %470, !dbg !3396

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !3397

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !3400
  %278 = icmp ne i64 %125, 0, !dbg !3402
  %279 = or i1 %278, %277, !dbg !3403
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !3147, metadata !621), !dbg !3210
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3137, metadata !621), !dbg !3201
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !3403
  %281 = select i1 %279, i64 %130, i64 0, !dbg !3403
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !3137, metadata !621), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !3147, metadata !621), !dbg !3210
  %282 = icmp ult i64 %124, %281, !dbg !3404
  br i1 %282, label %283, label %285, !dbg !3407

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3404
  store i8 39, i8* %284, align 1, !dbg !3404, !tbaa !749
  br label %285, !dbg !3404

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !3407
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !3146, metadata !621), !dbg !3209
  %287 = icmp ult i64 %286, %281, !dbg !3408
  br i1 %287, label %288, label %290, !dbg !3411

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !3408
  store i8 92, i8* %289, align 1, !dbg !3408, !tbaa !749
  br label %290, !dbg !3408

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !3411
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !3146, metadata !621), !dbg !3209
  %292 = icmp ult i64 %291, %281, !dbg !3412
  br i1 %292, label %293, label %295, !dbg !3415

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !3412
  store i8 39, i8* %294, align 1, !dbg !3412, !tbaa !749
  br label %295, !dbg !3412

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !3415
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3153, metadata !621), !dbg !3217
  br label %470, !dbg !3416

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !3417

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3164, metadata !621), !dbg !3418
  %299 = tail call i16** @__ctype_b_loc() #18, !dbg !3419
  %300 = load i16*, i16** %299, align 8, !dbg !3419, !tbaa !628
  %301 = zext i8 %158 to i64, !dbg !3419
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !3419
  %303 = load i16, i16* %302, align 2, !dbg !3419, !tbaa !3421
  %304 = lshr i16 %303, 14, !dbg !3422
  %305 = trunc i16 %304 to i8, !dbg !3422
  %306 = and i8 %305, 1, !dbg !3422
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !3167, metadata !621), !dbg !3423
  br label %362, !dbg !3424

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #13, !dbg !3425
  store i64 0, i64* %10, align 8, !dbg !3426
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3164, metadata !621), !dbg !3418
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3167, metadata !621), !dbg !3423
  %308 = icmp eq i64 %155, -1, !dbg !3427
  br i1 %308, label %309, label %311, !dbg !3429

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #15, !dbg !3430
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !3139, metadata !621), !dbg !3203
  br label %311, !dbg !3431

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !3139, metadata !621), !dbg !3203
  br label %313, !dbg !3432, !llvm.loop !3433

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !3167, metadata !621), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !3164, metadata !621), !dbg !3418
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #13, !dbg !3435
  %316 = add i64 %314, %123, !dbg !3436
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !3437
  %318 = sub i64 %312, %316, !dbg !3438
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3168, metadata !621), !dbg !3439
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !3186, metadata !621), !dbg !3440
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #13, !dbg !3441
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !3189, metadata !621), !dbg !3442
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !3443

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3167, metadata !621), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !3164, metadata !621), !dbg !3418
  %321 = icmp ugt i64 %312, %316, !dbg !3444
  br i1 %321, label %322, label %347, !dbg !3446

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !3447

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !3164, metadata !621), !dbg !3418
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !3447
  %327 = load i8, i8* %326, align 1, !dbg !3447, !tbaa !749
  %328 = icmp eq i8 %327, 0, !dbg !3446
  br i1 %328, label %347, label %329, !dbg !3448

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !3449
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !3164, metadata !621), !dbg !3418
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !3164, metadata !621), !dbg !3418
  %331 = add i64 %330, %123, !dbg !3450
  %332 = icmp ult i64 %331, %312, !dbg !3444
  br i1 %332, label %323, label %347, !dbg !3446, !llvm.loop !3451

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !3452
  %335 = and i1 %115, %334, !dbg !3455
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !621), !dbg !3456
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !621), !dbg !3456
  br i1 %335, label %336, label %350, !dbg !3455

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !3457

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !3190, metadata !621), !dbg !3456
  %339 = add i64 %338, %316, !dbg !3457
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !3458
  %341 = load i8, i8* %340, align 1, !dbg !3458, !tbaa !749
  %342 = sext i8 %341 to i32, !dbg !3458
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !3459

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !3190, metadata !621), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !3190, metadata !621), !dbg !3456
  %345 = icmp ult i64 %344, %319, !dbg !3452
  br i1 %345, label %337, label %350, !dbg !3461, !llvm.loop !3462

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !3464

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !3167, metadata !621), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !3164, metadata !621), !dbg !3418
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #13, !dbg !3464
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !3465, !tbaa !700
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !3186, metadata !621), !dbg !3440
  %352 = call i32 @iswprint(i32 %351) #13, !dbg !3467
  %353 = icmp eq i32 %352, 0, !dbg !3467
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3167, metadata !621), !dbg !3423
  %354 = select i1 %353, i8 0, i8 %315, !dbg !3468
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !3167, metadata !621), !dbg !3423
  %355 = add i64 %319, %314, !dbg !3469
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !3164, metadata !621), !dbg !3418
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !3167, metadata !621), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !3164, metadata !621), !dbg !3418
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #13, !dbg !3464
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3168, metadata !621), !dbg !3439
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !3470
  %357 = icmp eq i32 %356, 0, !dbg !3471
  br i1 %357, label %313, label %358, !dbg !3472, !llvm.loop !3433

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #13, !dbg !3473
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !3167, metadata !621), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !3164, metadata !621), !dbg !3418
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #13, !dbg !3464
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #13, !dbg !3473
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !3167, metadata !621), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !3164, metadata !621), !dbg !3418
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !3139, metadata !621), !dbg !3203
  %366 = and i8 %365, 1, !dbg !3474
  %367 = icmp ne i8 %366, 0, !dbg !3474
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !3163, metadata !621), !dbg !3276
  %368 = icmp ult i64 %364, 2, !dbg !3475
  %369 = or i1 %367, %112, !dbg !3476
  %370 = and i1 %368, %369, !dbg !3477
  br i1 %370, label %470, label %371, !dbg !3477

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !3197, metadata !621), !dbg !3479
  br label %373, !dbg !3480

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !3162, metadata !621), !dbg !3275
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !3161, metadata !621), !dbg !3274
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !3156, metadata !621), !dbg !3290
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !3145, metadata !621), !dbg !3266
  br i1 %369, label %426, label %380, !dbg !3481

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !3486

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3162, metadata !621), !dbg !3275
  %382 = and i8 %376, 1, !dbg !3489
  %383 = icmp eq i8 %382, 0, !dbg !3489
  %384 = and i1 %113, %383, !dbg !3489
  br i1 %384, label %385, label %401, !dbg !3489

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !3491
  br i1 %386, label %387, label %389, !dbg !3495

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !3491
  store i8 39, i8* %388, align 1, !dbg !3491, !tbaa !749
  br label %389, !dbg !3491

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !3495
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !3146, metadata !621), !dbg !3209
  %391 = icmp ult i64 %390, %130, !dbg !3496
  br i1 %391, label %392, label %394, !dbg !3499

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !3496
  store i8 36, i8* %393, align 1, !dbg !3496, !tbaa !749
  br label %394, !dbg !3496

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !3499
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !3146, metadata !621), !dbg !3209
  %396 = icmp ult i64 %395, %130, !dbg !3500
  br i1 %396, label %397, label %399, !dbg !3503

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !3500
  store i8 39, i8* %398, align 1, !dbg !3500, !tbaa !749
  br label %399, !dbg !3500

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !3503
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3153, metadata !621), !dbg !3217
  br label %401, !dbg !3504

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !3146, metadata !621), !dbg !3209
  %404 = icmp ult i64 %402, %130, !dbg !3505
  br i1 %404, label %405, label %407, !dbg !3508

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !3505
  store i8 92, i8* %406, align 1, !dbg !3505, !tbaa !749
  br label %407, !dbg !3505

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !3508
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !3146, metadata !621), !dbg !3209
  %409 = icmp ult i64 %408, %130, !dbg !3509
  br i1 %409, label %410, label %414, !dbg !3512

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !3509
  %412 = or i8 %411, 48, !dbg !3509
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3509
  store i8 %412, i8* %413, align 1, !dbg !3509, !tbaa !749
  br label %414, !dbg !3509

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !3512
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !3146, metadata !621), !dbg !3209
  %416 = icmp ult i64 %415, %130, !dbg !3513
  br i1 %416, label %417, label %422, !dbg !3516

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !3513
  %419 = and i8 %418, 7, !dbg !3513
  %420 = or i8 %419, 48, !dbg !3513
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !3513
  store i8 %420, i8* %421, align 1, !dbg !3513, !tbaa !749
  br label %422, !dbg !3513

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !3516
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !3146, metadata !621), !dbg !3209
  %424 = and i8 %377, 7, !dbg !3517
  %425 = or i8 %424, 48, !dbg !3518
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !3156, metadata !621), !dbg !3290
  br label %435, !dbg !3519

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !3520
  %428 = icmp eq i8 %427, 0, !dbg !3520
  br i1 %428, label %435, label %429, !dbg !3522

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !3523
  br i1 %430, label %431, label %433, !dbg !3527

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !3523
  store i8 92, i8* %432, align 1, !dbg !3523, !tbaa !749
  br label %433, !dbg !3523

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !3527
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3161, metadata !621), !dbg !3274
  br label %435, !dbg !3528

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !3162, metadata !621), !dbg !3275
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !3161, metadata !621), !dbg !3274
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !3156, metadata !621), !dbg !3290
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !3146, metadata !621), !dbg !3209
  %441 = add i64 %374, 1, !dbg !3529
  %442 = icmp ugt i64 %372, %441, !dbg !3531
  br i1 %442, label %443, label %535, !dbg !3532

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !3533
  %445 = icmp ne i8 %444, 0, !dbg !3533
  %446 = and i8 %440, 1, !dbg !3533
  %447 = icmp eq i8 %446, 0, !dbg !3533
  %448 = and i1 %445, %447, !dbg !3533
  br i1 %448, label %449, label %460, !dbg !3533

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !3536
  br i1 %450, label %451, label %453, !dbg !3540

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !3536
  store i8 39, i8* %452, align 1, !dbg !3536, !tbaa !749
  br label %453, !dbg !3536

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !3146, metadata !621), !dbg !3209
  %455 = icmp ult i64 %454, %130, !dbg !3541
  br i1 %455, label %456, label %458, !dbg !3544

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3541
  store i8 39, i8* %457, align 1, !dbg !3541, !tbaa !749
  br label %458, !dbg !3541

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3153, metadata !621), !dbg !3217
  br label %460, !dbg !3545

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !3146, metadata !621), !dbg !3209
  %463 = icmp ult i64 %461, %130, !dbg !3546
  br i1 %463, label %464, label %466, !dbg !3549

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !3546
  store i8 %438, i8* %465, align 1, !dbg !3546, !tbaa !749
  br label %466, !dbg !3546

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !3549
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !3145, metadata !621), !dbg !3266
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !3550
  %469 = load i8, i8* %468, align 1, !dbg !3550, !tbaa !749
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !3156, metadata !621), !dbg !3290
  br label %373, !dbg !3551, !llvm.loop !3552

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !3137, metadata !621), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !3163, metadata !621), !dbg !3276
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !3162, metadata !621), !dbg !3275
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !3161, metadata !621), !dbg !3274
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !3156, metadata !621), !dbg !3290
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !3154, metadata !621), !dbg !3218
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !3139, metadata !621), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !3147, metadata !621), !dbg !3210
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !3145, metadata !621), !dbg !3266
  br i1 %106, label %482, label %481, !dbg !3555

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !3557

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !3558

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !3559
  %485 = zext i8 %484 to i64, !dbg !3559
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !3560
  %487 = load i32, i32* %486, align 4, !dbg !3560, !tbaa !700
  %488 = and i8 %477, 31, !dbg !3561
  %489 = zext i8 %488 to i32, !dbg !3562
  %490 = shl i32 1, %489, !dbg !3563
  %491 = and i32 %487, %490, !dbg !3563
  %492 = icmp eq i32 %491, 0, !dbg !3563
  %493 = icmp eq i8 %156, 0, !dbg !3564
  %494 = and i1 %493, %492, !dbg !3565
  br i1 %494, label %535, label %497, !dbg !3565

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !3564
  br i1 %496, label %535, label %497, !dbg !3566

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !3137, metadata !621), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !3163, metadata !621), !dbg !3276
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !3156, metadata !621), !dbg !3290
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !3154, metadata !621), !dbg !3218
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !3139, metadata !621), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !3147, metadata !621), !dbg !3210
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !3145, metadata !621), !dbg !3266
  br i1 %111, label %507, label %635, !dbg !3567

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3162, metadata !621), !dbg !3275
  %508 = and i8 %502, 1, !dbg !3569
  %509 = icmp eq i8 %508, 0, !dbg !3569
  %510 = and i1 %113, %509, !dbg !3569
  br i1 %510, label %511, label %527, !dbg !3569

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !3571
  br i1 %512, label %513, label %515, !dbg !3575

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !3571
  store i8 39, i8* %514, align 1, !dbg !3571, !tbaa !749
  br label %515, !dbg !3571

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !3146, metadata !621), !dbg !3209
  %517 = icmp ult i64 %516, %506, !dbg !3576
  br i1 %517, label %518, label %520, !dbg !3579

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !3576
  store i8 36, i8* %519, align 1, !dbg !3576, !tbaa !749
  br label %520, !dbg !3576

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !3579
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !3146, metadata !621), !dbg !3209
  %522 = icmp ult i64 %521, %506, !dbg !3580
  br i1 %522, label %523, label %525, !dbg !3583

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !3580
  store i8 39, i8* %524, align 1, !dbg !3580, !tbaa !749
  br label %525, !dbg !3580

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3153, metadata !621), !dbg !3217
  br label %527, !dbg !3584

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !3146, metadata !621), !dbg !3209
  %530 = icmp ult i64 %528, %506, !dbg !3585
  br i1 %530, label %531, label %533, !dbg !3588

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3585
  store i8 92, i8* %532, align 1, !dbg !3585, !tbaa !749
  br label %533, !dbg !3585

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !3588
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3137, metadata !621), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !3163, metadata !621), !dbg !3276
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !3162, metadata !621), !dbg !3275
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !3156, metadata !621), !dbg !3290
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !3154, metadata !621), !dbg !3218
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !3139, metadata !621), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !3147, metadata !621), !dbg !3210
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !3145, metadata !621), !dbg !3266
  br label %562, !dbg !3589

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3137, metadata !621), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !3163, metadata !621), !dbg !3276
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !3162, metadata !621), !dbg !3275
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !3156, metadata !621), !dbg !3290
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !3154, metadata !621), !dbg !3218
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !3139, metadata !621), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !3147, metadata !621), !dbg !3210
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !3145, metadata !621), !dbg !3266
  %546 = and i8 %540, 1, !dbg !3589
  %547 = icmp ne i8 %546, 0, !dbg !3589
  %548 = and i8 %543, 1, !dbg !3589
  %549 = icmp eq i8 %548, 0, !dbg !3589
  %550 = and i1 %547, %549, !dbg !3589
  br i1 %550, label %551, label %562, !dbg !3589

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !3592
  br i1 %552, label %553, label %555, !dbg !3596

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !3592
  store i8 39, i8* %554, align 1, !dbg !3592, !tbaa !749
  br label %555, !dbg !3592

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !3146, metadata !621), !dbg !3209
  %557 = icmp ult i64 %556, %545, !dbg !3597
  br i1 %557, label %558, label %560, !dbg !3600

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !3597
  store i8 39, i8* %559, align 1, !dbg !3597, !tbaa !749
  br label %560, !dbg !3597

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !3600
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3153, metadata !621), !dbg !3217
  br label %562, !dbg !3601

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !3146, metadata !621), !dbg !3209
  %572 = icmp ult i64 %570, %563, !dbg !3602
  br i1 %572, label %573, label %575, !dbg !3605

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !3602
  store i8 %565, i8* %574, align 1, !dbg !3602, !tbaa !749
  br label %575, !dbg !3602

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !3146, metadata !621), !dbg !3209
  %577 = and i8 %564, 1, !dbg !3606
  %578 = icmp eq i8 %577, 0, !dbg !3606
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3155, metadata !621), !dbg !3219
  %579 = select i1 %578, i8 0, i8 %129, !dbg !3608
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !3155, metadata !621), !dbg !3219
  br label %580, !dbg !3609

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !3137, metadata !621), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !3155, metadata !621), !dbg !3219
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !3154, metadata !621), !dbg !3218
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !3153, metadata !621), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !3139, metadata !621), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !3147, metadata !621), !dbg !3210
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !3145, metadata !621), !dbg !3266
  %589 = add i64 %581, 1, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !3145, metadata !621), !dbg !3266
  br label %122, !dbg !3611, !llvm.loop !3612

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !3614
  %593 = and i1 %113, %592, !dbg !3616
  %594 = xor i1 %593, true, !dbg !3616
  %595 = or i1 %111, %594, !dbg !3616
  br i1 %595, label %596, label %635, !dbg !3616

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !3617
  %598 = xor i1 %597, true, !dbg !3617
  %599 = and i8 %128, 1, !dbg !3619
  %600 = icmp eq i8 %599, 0, !dbg !3619
  %601 = or i1 %600, %598, !dbg !3617
  br i1 %601, label %611, label %602, !dbg !3617

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !3620
  %604 = icmp eq i8 %603, 0, !dbg !3620
  br i1 %604, label %607, label %605, !dbg !3623

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !3624
  br label %645, !dbg !3625

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !3626
  %609 = icmp ne i64 %125, 0, !dbg !3628
  %610 = and i1 %609, %608, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3137, metadata !621), !dbg !3201
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3146, metadata !621), !dbg !3209
  br i1 %610, label %27, label %611, !dbg !3629

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !3630
  %613 = and i1 %612, %111, !dbg !3632
  br i1 %613, label %614, label %630, !dbg !3632

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !3148, metadata !621), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !3146, metadata !621), !dbg !3209
  %615 = load i8, i8* %99, align 1, !dbg !3633, !tbaa !749
  %616 = icmp eq i8 %615, 0, !dbg !3636
  br i1 %616, label %630, label %617, !dbg !3636

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !3637

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !3146, metadata !621), !dbg !3209
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !3148, metadata !621), !dbg !3211
  %622 = icmp ult i64 %621, %130, !dbg !3637
  br i1 %622, label %623, label %625, !dbg !3640

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3637
  store i8 %619, i8* %624, align 1, !dbg !3637, !tbaa !749
  br label %625, !dbg !3637

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !3146, metadata !621), !dbg !3209
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !3641
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !3148, metadata !621), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !3148, metadata !621), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !3146, metadata !621), !dbg !3209
  %628 = load i8, i8* %627, align 1, !dbg !3633, !tbaa !749
  %629 = icmp eq i8 %628, 0, !dbg !3636
  br i1 %629, label %630, label %618, !dbg !3636, !llvm.loop !3642

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !3146, metadata !621), !dbg !3209
  %632 = icmp ult i64 %631, %130, !dbg !3644
  br i1 %632, label %633, label %645, !dbg !3646

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !3647
  store i8 0, i8* %634, align 1, !dbg !3648, !tbaa !749
  br label %645, !dbg !3647

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !3137, metadata !621), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !3139, metadata !621), !dbg !3203
  %639 = icmp ne i32 %636, 2, !dbg !3649
  %640 = icmp eq i8 %103, 0, !dbg !3651
  %641 = or i1 %639, %640, !dbg !3652
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3140, metadata !621), !dbg !3204
  %642 = select i1 %641, i32 %636, i32 4, !dbg !3652
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !3140, metadata !621), !dbg !3204
  %643 = and i32 %5, -3, !dbg !3653
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !3654
  br label %645, !dbg !3655

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !3656
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3657 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3661, metadata !621), !dbg !3665
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3662, metadata !621), !dbg !3666
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #13, !dbg !3667
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3663, metadata !621), !dbg !3668
  %4 = icmp eq i8* %3, %0, !dbg !3669
  br i1 %4, label %5, label %75, !dbg !3671

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #13, !dbg !3672
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3664, metadata !621), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3674, metadata !621), !dbg !3690
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3688, metadata !621), !dbg !3693
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3689, metadata !621), !dbg !3694
  %7 = load i8, i8* %6, align 1, !dbg !3695, !tbaa !749
  %8 = sext i8 %7 to i32, !dbg !3695
  %9 = and i32 %8, -33, !dbg !3695
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3695

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3697, metadata !621), !dbg !3711
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3709, metadata !621), !dbg !3715
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3710, metadata !621), !dbg !3716
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3717
  %12 = load i8, i8* %11, align 1, !dbg !3717, !tbaa !749
  %13 = sext i8 %12 to i32, !dbg !3717
  %14 = and i32 %13, -33, !dbg !3717
  %15 = icmp eq i32 %14, 84, !dbg !3717
  br i1 %15, label %16, label %72, !dbg !3717

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3719, metadata !621), !dbg !3732
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3730, metadata !621), !dbg !3736
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3731, metadata !621), !dbg !3737
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3738
  %18 = load i8, i8* %17, align 1, !dbg !3738, !tbaa !749
  %19 = sext i8 %18 to i32, !dbg !3738
  %20 = and i32 %19, -33, !dbg !3738
  %21 = icmp eq i32 %20, 70, !dbg !3738
  br i1 %21, label %22, label %72, !dbg !3738

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3740, metadata !621), !dbg !3752
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3750, metadata !621), !dbg !3756
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3751, metadata !621), !dbg !3757
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3758
  %24 = load i8, i8* %23, align 1, !dbg !3758, !tbaa !749
  %25 = icmp eq i8 %24, 45, !dbg !3758
  br i1 %25, label %26, label %72, !dbg !3760

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3761, metadata !621), !dbg !3772
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3770, metadata !621), !dbg !3776
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3771, metadata !621), !dbg !3777
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3778
  %28 = load i8, i8* %27, align 1, !dbg !3778, !tbaa !749
  %29 = icmp eq i8 %28, 56, !dbg !3778
  br i1 %29, label %30, label %72, !dbg !3780

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3781, metadata !621), !dbg !3791
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3789, metadata !621), !dbg !3795
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3790, metadata !621), !dbg !3796
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3797
  %32 = load i8, i8* %31, align 1, !dbg !3797, !tbaa !749
  %33 = icmp eq i8 %32, 0, !dbg !3797
  br i1 %33, label %34, label %72, !dbg !3799

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3800, !tbaa !749
  %36 = icmp eq i8 %35, 96, !dbg !3801
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.89, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.90, i64 0, i64 0), !dbg !3800
  br label %75, !dbg !3802

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3697, metadata !621), !dbg !3803
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3709, metadata !621), !dbg !3807
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3710, metadata !621), !dbg !3808
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3809
  %40 = load i8, i8* %39, align 1, !dbg !3809, !tbaa !749
  %41 = sext i8 %40 to i32, !dbg !3809
  %42 = and i32 %41, -33, !dbg !3809
  %43 = icmp eq i32 %42, 66, !dbg !3809
  br i1 %43, label %44, label %72, !dbg !3809

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3719, metadata !621), !dbg !3810
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3730, metadata !621), !dbg !3812
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3731, metadata !621), !dbg !3813
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3814
  %46 = load i8, i8* %45, align 1, !dbg !3814, !tbaa !749
  %47 = icmp eq i8 %46, 49, !dbg !3814
  br i1 %47, label %48, label %72, !dbg !3815

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3740, metadata !621), !dbg !3816
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3750, metadata !621), !dbg !3818
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3751, metadata !621), !dbg !3819
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3820
  %50 = load i8, i8* %49, align 1, !dbg !3820, !tbaa !749
  %51 = icmp eq i8 %50, 56, !dbg !3820
  br i1 %51, label %52, label %72, !dbg !3821

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3761, metadata !621), !dbg !3822
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3770, metadata !621), !dbg !3824
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3771, metadata !621), !dbg !3825
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3826
  %54 = load i8, i8* %53, align 1, !dbg !3826, !tbaa !749
  %55 = icmp eq i8 %54, 48, !dbg !3826
  br i1 %55, label %56, label %72, !dbg !3827

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3781, metadata !621), !dbg !3828
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3789, metadata !621), !dbg !3830
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3790, metadata !621), !dbg !3831
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3832
  %58 = load i8, i8* %57, align 1, !dbg !3832, !tbaa !749
  %59 = icmp eq i8 %58, 51, !dbg !3832
  br i1 %59, label %60, label %72, !dbg !3833

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3834, metadata !621), !dbg !3843
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3841, metadata !621), !dbg !3847
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3842, metadata !621), !dbg !3848
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3849
  %62 = load i8, i8* %61, align 1, !dbg !3849, !tbaa !749
  %63 = icmp eq i8 %62, 48, !dbg !3849
  br i1 %63, label %64, label %72, !dbg !3851

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3852, metadata !621), !dbg !3860
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3858, metadata !621), !dbg !3864
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3859, metadata !621), !dbg !3865
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3866
  %66 = load i8, i8* %65, align 1, !dbg !3866, !tbaa !749
  %67 = icmp eq i8 %66, 0, !dbg !3866
  br i1 %67, label %68, label %72, !dbg !3868

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3869, !tbaa !749
  %70 = icmp eq i8 %69, 96, !dbg !3870
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.91, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !3869
  br label %75, !dbg !3871

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3872
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), !dbg !3873
  br label %75, !dbg !3874

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3875
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3876 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3880, metadata !621), !dbg !3883
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3881, metadata !621), !dbg !3884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3882, metadata !621), !dbg !3885
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3886, metadata !621) #13, !dbg !3899
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3891, metadata !621) #13, !dbg !3901
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3892, metadata !621) #13, !dbg !3902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3893, metadata !621) #13, !dbg !3903
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3904
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3904
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3894, metadata !621) #13, !dbg !3905
  %6 = tail call i32* @__errno_location() #18, !dbg !3906
  %7 = load i32, i32* %6, align 4, !dbg !3906, !tbaa !700
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3895, metadata !621) #13, !dbg !3907
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3908
  %9 = load i32, i32* %8, align 4, !dbg !3908, !tbaa !3069
  %10 = or i32 %9, 1, !dbg !3909
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3896, metadata !621) #13, !dbg !3910
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3911
  %12 = load i32, i32* %11, align 8, !dbg !3911, !tbaa !3009
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3912
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3913
  %15 = load i8*, i8** %14, align 8, !dbg !3913, !tbaa !3095
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3914
  %17 = load i8*, i8** %16, align 8, !dbg !3914, !tbaa !3098
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #13, !dbg !3915
  %19 = add i64 %18, 1, !dbg !3916
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3897, metadata !621) #13, !dbg !3917
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3918, metadata !621) #13, !dbg !3923
  %20 = tail call noalias i8* @xmalloc(i64 %19) #13, !dbg !3925
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3898, metadata !621) #13, !dbg !3926
  %21 = load i32, i32* %11, align 8, !dbg !3927, !tbaa !3009
  %22 = load i8*, i8** %14, align 8, !dbg !3928, !tbaa !3095
  %23 = load i8*, i8** %16, align 8, !dbg !3929, !tbaa !3098
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #13, !dbg !3930
  store i32 %7, i32* %6, align 4, !dbg !3931, !tbaa !700
  ret i8* %20, !dbg !3932
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3887 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3886, metadata !621), !dbg !3933
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3891, metadata !621), !dbg !3934
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3892, metadata !621), !dbg !3935
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3893, metadata !621), !dbg !3936
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3937
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3937
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3894, metadata !621), !dbg !3938
  %7 = tail call i32* @__errno_location() #18, !dbg !3939
  %8 = load i32, i32* %7, align 4, !dbg !3939, !tbaa !700
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3895, metadata !621), !dbg !3940
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3941
  %10 = load i32, i32* %9, align 4, !dbg !3941, !tbaa !3069
  %11 = icmp ne i64* %2, null, !dbg !3942
  %12 = xor i1 %11, true, !dbg !3942
  %13 = zext i1 %12 to i32, !dbg !3942
  %14 = or i32 %10, %13, !dbg !3943
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3896, metadata !621), !dbg !3944
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3945
  %16 = load i32, i32* %15, align 8, !dbg !3945, !tbaa !3009
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3946
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3947
  %19 = load i8*, i8** %18, align 8, !dbg !3947, !tbaa !3095
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3948
  %21 = load i8*, i8** %20, align 8, !dbg !3948, !tbaa !3098
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3949
  %23 = add i64 %22, 1, !dbg !3950
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3897, metadata !621), !dbg !3951
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3918, metadata !621) #13, !dbg !3952
  %24 = tail call noalias i8* @xmalloc(i64 %23) #13, !dbg !3954
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3898, metadata !621), !dbg !3955
  %25 = load i32, i32* %15, align 8, !dbg !3956, !tbaa !3009
  %26 = load i8*, i8** %18, align 8, !dbg !3957, !tbaa !3095
  %27 = load i8*, i8** %20, align 8, !dbg !3958, !tbaa !3098
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3959
  store i32 %8, i32* %7, align 4, !dbg !3960, !tbaa !700
  br i1 %11, label %29, label %30, !dbg !3961

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3962, !tbaa !2277
  br label %30, !dbg !3964

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3965
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3966 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3970, !tbaa !628
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3968, metadata !621), !dbg !3971
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3969, metadata !621), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3969, metadata !621), !dbg !3972
  %2 = load i32, i32* @nslots, align 4, !dbg !3973, !tbaa !700
  %3 = icmp sgt i32 %2, 1, !dbg !3976
  br i1 %3, label %4, label %13, !dbg !3977

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3978

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3969, metadata !621), !dbg !3972
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3978
  %8 = load i8*, i8** %7, align 8, !dbg !3978, !tbaa !3979
  tail call void @free(i8* %8) #13, !dbg !3981
  %9 = add nuw i64 %6, 1, !dbg !3982
  %10 = load i32, i32* @nslots, align 4, !dbg !3973, !tbaa !700
  %11 = sext i32 %10 to i64, !dbg !3976
  %12 = icmp slt i64 %9, %11, !dbg !3976
  br i1 %12, label %5, label %13, !dbg !3977, !llvm.loop !3983

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3985
  %15 = load i8*, i8** %14, align 8, !dbg !3985, !tbaa !3979
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3987
  br i1 %16, label %18, label %17, !dbg !3988

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #13, !dbg !3989
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3991, !tbaa !3992
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3993, !tbaa !3979
  br label %18, !dbg !3994

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3995
  br i1 %19, label %22, label %20, !dbg !3997

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !3998
  tail call void @free(i8* %21) #13, !dbg !4000
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !4001, !tbaa !628
  br label %22, !dbg !4002

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !4003, !tbaa !700
  ret void, !dbg !4004
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !4005 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4009, metadata !621), !dbg !4011
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4010, metadata !621), !dbg !4012
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4013
  ret i8* %3, !dbg !4014
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !4015 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4019, metadata !621), !dbg !4033
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4020, metadata !621), !dbg !4034
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4021, metadata !621), !dbg !4035
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4022, metadata !621), !dbg !4036
  %5 = tail call i32* @__errno_location() #18, !dbg !4037
  %6 = load i32, i32* %5, align 4, !dbg !4037, !tbaa !700
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4023, metadata !621), !dbg !4038
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4039, !tbaa !628
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !4024, metadata !621), !dbg !4040
  %8 = icmp slt i32 %0, 0, !dbg !4041
  br i1 %8, label %9, label %10, !dbg !4043

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !4044
  unreachable, !dbg !4044

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !4045, !tbaa !700
  %12 = icmp sgt i32 %11, %0, !dbg !4046
  br i1 %12, label %34, label %13, !dbg !4047

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !4048
  %15 = icmp ugt i32 %0, 2147483646, !dbg !4049
  br i1 %15, label %16, label %17, !dbg !4051

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !4052
  unreachable, !dbg !4052

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !4053
  %19 = select i1 %14, i8* null, i8* %18, !dbg !4053
  %20 = add nsw i32 %0, 1, !dbg !4054
  %21 = sext i32 %20 to i64, !dbg !4055
  %22 = shl nsw i64 %21, 4, !dbg !4056
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #13, !dbg !4057
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !4057
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !4024, metadata !621), !dbg !4040
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !4058, !tbaa !628
  br i1 %14, label %25, label %26, !dbg !4059

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !4060, !tbaa.struct !4062
  br label %26, !dbg !4063

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !4064, !tbaa !700
  %28 = sext i32 %27 to i64, !dbg !4065
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !4065
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !4066
  %31 = sub nsw i32 %20, %27, !dbg !4067
  %32 = sext i32 %31 to i64, !dbg !4068
  %33 = shl nsw i64 %32, 4, !dbg !4069
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !4066
  store i32 %20, i32* @nslots, align 4, !dbg !4070, !tbaa !700
  br label %34, !dbg !4071

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !4024, metadata !621), !dbg !4040
  %36 = sext i32 %0 to i64, !dbg !4072
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !4073
  %38 = load i64, i64* %37, align 8, !dbg !4073, !tbaa !3992
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !4028, metadata !621), !dbg !4074
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !4075
  %40 = load i8*, i8** %39, align 8, !dbg !4075, !tbaa !3979
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !4030, metadata !621), !dbg !4076
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4077
  %42 = load i32, i32* %41, align 4, !dbg !4077, !tbaa !3069
  %43 = or i32 %42, 1, !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !4031, metadata !621), !dbg !4079
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4080
  %45 = load i32, i32* %44, align 8, !dbg !4080, !tbaa !3009
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4081
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4082
  %48 = load i8*, i8** %47, align 8, !dbg !4082, !tbaa !3095
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4083
  %50 = load i8*, i8** %49, align 8, !dbg !4083, !tbaa !3098
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !4084
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4032, metadata !621), !dbg !4085
  %52 = icmp ugt i64 %38, %51, !dbg !4086
  br i1 %52, label %63, label %53, !dbg !4088

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !4089
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4028, metadata !621), !dbg !4074
  store i64 %54, i64* %37, align 8, !dbg !4091, !tbaa !3992
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4092
  br i1 %55, label %57, label %56, !dbg !4094

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #13, !dbg !4095
  br label %57, !dbg !4095

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3918, metadata !621) #13, !dbg !4096
  %58 = tail call noalias i8* @xmalloc(i64 %54) #13, !dbg !4098
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !4030, metadata !621), !dbg !4076
  store i8* %58, i8** %39, align 8, !dbg !4099, !tbaa !3979
  %59 = load i32, i32* %44, align 8, !dbg !4100, !tbaa !3009
  %60 = load i8*, i8** %47, align 8, !dbg !4101, !tbaa !3095
  %61 = load i8*, i8** %49, align 8, !dbg !4102, !tbaa !3098
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !4103
  br label %63, !dbg !4104

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !4030, metadata !621), !dbg !4076
  store i32 %6, i32* %5, align 4, !dbg !4105, !tbaa !700
  ret i8* %64, !dbg !4106
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4107 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4111, metadata !621), !dbg !4114
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4112, metadata !621), !dbg !4115
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4113, metadata !621), !dbg !4116
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4117
  ret i8* %4, !dbg !4118
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !4119 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4123, metadata !621), !dbg !4124
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4009, metadata !621) #13, !dbg !4125
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4010, metadata !621) #13, !dbg !4127
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !4128
  ret i8* %2, !dbg !4129
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !4130 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4132, metadata !621), !dbg !4134
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4133, metadata !621), !dbg !4135
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4111, metadata !621) #13, !dbg !4136
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4112, metadata !621) #13, !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4113, metadata !621) #13, !dbg !4139
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !4140
  ret i8* %3, !dbg !4141
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !4142 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4150, metadata !4156), !dbg !4157
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4146, metadata !621), !dbg !4159
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4147, metadata !621), !dbg !4160
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4148, metadata !621), !dbg !4161
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4162
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4149, metadata !621), !dbg !4163
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4155, metadata !621) #13, !dbg !4164
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4165
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !4165
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4150, metadata !621) #13, !dbg !4157
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4150, metadata !4166) #13, !dbg !4157
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4157
  %8 = icmp eq i32 %1, 10, !dbg !4167
  br i1 %8, label %9, label %10, !dbg !4169

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !4170, !noalias !4171
  unreachable, !dbg !4170

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4150, metadata !4166) #13, !dbg !4157
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4174
  store i32 %1, i32* %11, align 8, !dbg !4174, !alias.scope !4171
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4174
  %13 = bitcast i32* %12 to i8*, !dbg !4174
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #13, !dbg !4174
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !4175
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4149, metadata !621), !dbg !4163
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4176
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4177
  ret i8* %14, !dbg !4178
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !4179 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4150, metadata !4156), !dbg !4188
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4183, metadata !621), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4184, metadata !621), !dbg !4191
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4185, metadata !621), !dbg !4192
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4186, metadata !621), !dbg !4193
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4194
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #13, !dbg !4194
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4187, metadata !621), !dbg !4195
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4155, metadata !621) #13, !dbg !4196
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4197
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !4197
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4150, metadata !621) #13, !dbg !4188
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4150, metadata !4166) #13, !dbg !4188
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4188
  %9 = icmp eq i32 %1, 10, !dbg !4198
  br i1 %9, label %10, label %11, !dbg !4199

; <label>:10:                                     ; preds = %4
  tail call void @abort() #16, !dbg !4200, !noalias !4201
  unreachable, !dbg !4200

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4150, metadata !4166) #13, !dbg !4188
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4204
  store i32 %1, i32* %12, align 8, !dbg !4204, !alias.scope !4201
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4204
  %14 = bitcast i32* %13 to i8*, !dbg !4204
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #13, !dbg !4204
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !4205
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4187, metadata !621), !dbg !4195
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !4206
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #13, !dbg !4207
  ret i8* %15, !dbg !4208
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !4209 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !4150, metadata !4156), !dbg !4215
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4213, metadata !621), !dbg !4218
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4214, metadata !621), !dbg !4219
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4146, metadata !621) #13, !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4147, metadata !621) #13, !dbg !4221
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4148, metadata !621) #13, !dbg !4222
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4223
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4149, metadata !621) #13, !dbg !4224
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4155, metadata !621) #13, !dbg !4225
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !4226
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !4226
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4150, metadata !621) #13, !dbg !4215
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4150, metadata !4166) #13, !dbg !4215
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !4215
  %7 = icmp eq i32 %0, 10, !dbg !4227
  br i1 %7, label %8, label %9, !dbg !4228

; <label>:8:                                      ; preds = %2
  tail call void @abort() #16, !dbg !4229, !noalias !4230
  unreachable, !dbg !4229

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4150, metadata !4166) #13, !dbg !4215
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4233
  store i32 %0, i32* %10, align 8, !dbg !4233, !alias.scope !4230
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4233
  %12 = bitcast i32* %11 to i8*, !dbg !4233
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #13, !dbg !4233
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !4234
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4149, metadata !621) #13, !dbg !4224
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #13, !dbg !4235
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4236
  ret i8* %13, !dbg !4237
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4238 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4150, metadata !4156), !dbg !4245
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4242, metadata !621), !dbg !4248
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4243, metadata !621), !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4244, metadata !621), !dbg !4250
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4183, metadata !621) #13, !dbg !4251
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4184, metadata !621) #13, !dbg !4252
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4185, metadata !621) #13, !dbg !4253
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4186, metadata !621) #13, !dbg !4254
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4255
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4255
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4187, metadata !621) #13, !dbg !4256
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4155, metadata !621) #13, !dbg !4257
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4258
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !4258
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4150, metadata !621) #13, !dbg !4245
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4150, metadata !4166) #13, !dbg !4245
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4245
  %8 = icmp eq i32 %0, 10, !dbg !4259
  br i1 %8, label %9, label %10, !dbg !4260

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !4261, !noalias !4262
  unreachable, !dbg !4261

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4150, metadata !4166) #13, !dbg !4245
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4265
  store i32 %0, i32* %11, align 8, !dbg !4265, !alias.scope !4262
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4265
  %13 = bitcast i32* %12 to i8*, !dbg !4265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #13, !dbg !4265
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !4266
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4187, metadata !621) #13, !dbg !4256
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #13, !dbg !4267
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4268
  ret i8* %14, !dbg !4269
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !4270 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4274, metadata !621), !dbg !4278
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4275, metadata !621), !dbg !4279
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !4276, metadata !621), !dbg !4280
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4281
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4281
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4282, !tbaa.struct !4283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4277, metadata !621), !dbg !4284
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3028, metadata !621), !dbg !4285
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3029, metadata !621), !dbg !4287
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3030, metadata !621), !dbg !4288
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3031, metadata !621), !dbg !4289
  %6 = lshr i8 %2, 5, !dbg !4290
  %7 = zext i8 %6 to i64, !dbg !4290
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4291
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3032, metadata !621), !dbg !4292
  %9 = and i8 %2, 31, !dbg !4293
  %10 = zext i8 %9 to i32, !dbg !4294
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3034, metadata !621), !dbg !4295
  %11 = load i32, i32* %8, align 4, !dbg !4296, !tbaa !700
  %12 = lshr i32 %11, %10, !dbg !4297
  %13 = and i32 %12, 1, !dbg !4298
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !3035, metadata !621), !dbg !4299
  %14 = xor i32 %13, 1, !dbg !4300
  %15 = shl i32 %14, %10, !dbg !4301
  %16 = xor i32 %15, %11, !dbg !4302
  store i32 %16, i32* %8, align 4, !dbg !4302, !tbaa !700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4277, metadata !621), !dbg !4284
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4303
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4304
  ret i8* %17, !dbg !4305
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !4306 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4310, metadata !621), !dbg !4312
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4311, metadata !621), !dbg !4313
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4274, metadata !621) #13, !dbg !4314
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4275, metadata !621) #13, !dbg !4316
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4276, metadata !621) #13, !dbg !4317
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4318
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4318
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4319, !tbaa.struct !4283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4277, metadata !621) #13, !dbg !4320
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3028, metadata !621) #13, !dbg !4321
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3029, metadata !621) #13, !dbg !4323
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3030, metadata !621) #13, !dbg !4324
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3031, metadata !621) #13, !dbg !4325
  %5 = lshr i8 %1, 5, !dbg !4326
  %6 = zext i8 %5 to i64, !dbg !4326
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4327
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !3032, metadata !621) #13, !dbg !4328
  %8 = and i8 %1, 31, !dbg !4329
  %9 = zext i8 %8 to i32, !dbg !4330
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3034, metadata !621) #13, !dbg !4331
  %10 = load i32, i32* %7, align 4, !dbg !4332, !tbaa !700
  %11 = lshr i32 %10, %9, !dbg !4333
  %12 = and i32 %11, 1, !dbg !4334
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !3035, metadata !621) #13, !dbg !4335
  %13 = xor i32 %12, 1, !dbg !4336
  %14 = shl i32 %13, %9, !dbg !4337
  %15 = xor i32 %14, %10, !dbg !4338
  store i32 %15, i32* %7, align 4, !dbg !4338, !tbaa !700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4277, metadata !621) #13, !dbg !4320
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #13, !dbg !4339
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4340
  ret i8* %16, !dbg !4341
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !4342 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4344, metadata !621), !dbg !4345
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4310, metadata !621) #13, !dbg !4346
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4311, metadata !621) #13, !dbg !4348
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4274, metadata !621) #13, !dbg !4349
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4275, metadata !621) #13, !dbg !4351
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4276, metadata !621) #13, !dbg !4352
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4353
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #13, !dbg !4353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4354, !tbaa.struct !4283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4277, metadata !621) #13, !dbg !4355
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3028, metadata !621) #13, !dbg !4356
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3029, metadata !621) #13, !dbg !4358
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3030, metadata !621) #13, !dbg !4359
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3031, metadata !621) #13, !dbg !4360
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4361
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !3032, metadata !621) #13, !dbg !4362
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3034, metadata !621) #13, !dbg !4363
  %5 = load i32, i32* %4, align 4, !dbg !4364, !tbaa !700
  %6 = or i32 %5, 67108864, !dbg !4365
  store i32 %6, i32* %4, align 4, !dbg !4365, !tbaa !700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4277, metadata !621) #13, !dbg !4355
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #13, !dbg !4366
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #13, !dbg !4367
  ret i8* %7, !dbg !4368
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !4369 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4371, metadata !621), !dbg !4373
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4372, metadata !621), !dbg !4374
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4274, metadata !621) #13, !dbg !4375
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4275, metadata !621) #13, !dbg !4377
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4276, metadata !621) #13, !dbg !4378
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4379
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4379
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4380, !tbaa.struct !4283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4277, metadata !621) #13, !dbg !4381
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3028, metadata !621) #13, !dbg !4382
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3029, metadata !621) #13, !dbg !4384
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3030, metadata !621) #13, !dbg !4385
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3031, metadata !621) #13, !dbg !4386
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4387
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3032, metadata !621) #13, !dbg !4388
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3034, metadata !621) #13, !dbg !4389
  %6 = load i32, i32* %5, align 4, !dbg !4390, !tbaa !700
  %7 = or i32 %6, 67108864, !dbg !4391
  store i32 %7, i32* %5, align 4, !dbg !4391, !tbaa !700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4277, metadata !621) #13, !dbg !4381
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #13, !dbg !4392
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4393
  ret i8* %8, !dbg !4394
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !4395 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4150, metadata !4156), !dbg !4401
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4397, metadata !621), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4398, metadata !621), !dbg !4404
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4399, metadata !621), !dbg !4405
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4406
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #13, !dbg !4406
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4155, metadata !621) #13, !dbg !4407
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4408
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !4408
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4150, metadata !621) #13, !dbg !4401
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4150, metadata !4166) #13, !dbg !4401
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4401
  %9 = icmp eq i32 %1, 10, !dbg !4409
  br i1 %9, label %10, label %11, !dbg !4410

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !4411, !noalias !4412
  unreachable, !dbg !4411

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4150, metadata !4166) #13, !dbg !4401
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !4415
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !4415
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !4416
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4417
  store i32 %1, i32* %13, align 8, !dbg !4417
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4417
  %15 = bitcast i32* %14 to i8*, !dbg !4417
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !4417
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4400, metadata !621), !dbg !4418
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3028, metadata !621), !dbg !4419
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3029, metadata !621), !dbg !4421
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3030, metadata !621), !dbg !4422
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3031, metadata !621), !dbg !4423
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4424
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !3032, metadata !621), !dbg !4425
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3034, metadata !621), !dbg !4426
  %17 = load i32, i32* %16, align 4, !dbg !4427, !tbaa !700
  %18 = or i32 %17, 67108864, !dbg !4428
  store i32 %18, i32* %16, align 4, !dbg !4428, !tbaa !700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4400, metadata !621), !dbg !4418
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4429
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #13, !dbg !4430
  ret i8* %19, !dbg !4431
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4432 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4436, metadata !621), !dbg !4440
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4437, metadata !621), !dbg !4441
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4438, metadata !621), !dbg !4442
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4439, metadata !621), !dbg !4443
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4444, metadata !621) #13, !dbg !4454
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4449, metadata !621) #13, !dbg !4456
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4450, metadata !621) #13, !dbg !4457
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4451, metadata !621) #13, !dbg !4458
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4452, metadata !621) #13, !dbg !4459
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4460
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4460
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4461, !tbaa.struct !4283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4453, metadata !621) #13, !dbg !4462
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3077, metadata !621) #13, !dbg !4463
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3078, metadata !621) #13, !dbg !4465
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3079, metadata !621) #13, !dbg !4466
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3077, metadata !621) #13, !dbg !4463
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3077, metadata !621) #13, !dbg !4463
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4467
  store i32 10, i32* %7, align 8, !dbg !4468, !tbaa !3009
  %8 = icmp ne i8* %1, null, !dbg !4469
  %9 = icmp ne i8* %2, null, !dbg !4470
  %10 = and i1 %8, %9, !dbg !4471
  br i1 %10, label %12, label %11, !dbg !4471

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !4472
  unreachable, !dbg !4472

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4473
  store i8* %1, i8** %13, align 8, !dbg !4474, !tbaa !3095
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4475
  store i8* %2, i8** %14, align 8, !dbg !4476, !tbaa !3098
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4453, metadata !621) #13, !dbg !4462
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #13, !dbg !4477
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4478
  ret i8* %15, !dbg !4479
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4445 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4444, metadata !621), !dbg !4480
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4449, metadata !621), !dbg !4481
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4450, metadata !621), !dbg !4482
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4451, metadata !621), !dbg !4483
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4452, metadata !621), !dbg !4484
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4485
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #13, !dbg !4485
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4486, !tbaa.struct !4283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4453, metadata !621), !dbg !4487
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3077, metadata !621) #13, !dbg !4488
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3078, metadata !621) #13, !dbg !4490
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3079, metadata !621) #13, !dbg !4491
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3077, metadata !621) #13, !dbg !4488
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3077, metadata !621) #13, !dbg !4488
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4492
  store i32 10, i32* %8, align 8, !dbg !4493, !tbaa !3009
  %9 = icmp ne i8* %1, null, !dbg !4494
  %10 = icmp ne i8* %2, null, !dbg !4495
  %11 = and i1 %9, %10, !dbg !4496
  br i1 %11, label %13, label %12, !dbg !4496

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !4497
  unreachable, !dbg !4497

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4498
  store i8* %1, i8** %14, align 8, !dbg !4499, !tbaa !3095
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4500
  store i8* %2, i8** %15, align 8, !dbg !4501, !tbaa !3098
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4453, metadata !621), !dbg !4487
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4502
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #13, !dbg !4503
  ret i8* %16, !dbg !4504
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4505 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4509, metadata !621), !dbg !4512
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4510, metadata !621), !dbg !4513
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4511, metadata !621), !dbg !4514
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4436, metadata !621) #13, !dbg !4515
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4437, metadata !621) #13, !dbg !4517
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4438, metadata !621) #13, !dbg !4518
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4439, metadata !621) #13, !dbg !4519
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4444, metadata !621) #13, !dbg !4520
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4449, metadata !621) #13, !dbg !4522
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4450, metadata !621) #13, !dbg !4523
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4451, metadata !621) #13, !dbg !4524
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4452, metadata !621) #13, !dbg !4525
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4526
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4527, !tbaa.struct !4283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4453, metadata !621) #13, !dbg !4528
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3077, metadata !621) #13, !dbg !4529
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3078, metadata !621) #13, !dbg !4531
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3079, metadata !621) #13, !dbg !4532
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3077, metadata !621) #13, !dbg !4529
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3077, metadata !621) #13, !dbg !4529
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4533
  store i32 10, i32* %6, align 8, !dbg !4534, !tbaa !3009
  %7 = icmp ne i8* %0, null, !dbg !4535
  %8 = icmp ne i8* %1, null, !dbg !4536
  %9 = and i1 %7, %8, !dbg !4537
  br i1 %9, label %11, label %10, !dbg !4537

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !4538
  unreachable, !dbg !4538

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4539
  store i8* %0, i8** %12, align 8, !dbg !4540, !tbaa !3095
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4541
  store i8* %1, i8** %13, align 8, !dbg !4542, !tbaa !3098
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4453, metadata !621) #13, !dbg !4528
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #13, !dbg !4543
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4544
  ret i8* %14, !dbg !4545
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4546 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4550, metadata !621), !dbg !4554
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4551, metadata !621), !dbg !4555
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4552, metadata !621), !dbg !4556
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4553, metadata !621), !dbg !4557
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4444, metadata !621) #13, !dbg !4558
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4449, metadata !621) #13, !dbg !4560
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4450, metadata !621) #13, !dbg !4561
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4451, metadata !621) #13, !dbg !4562
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4452, metadata !621) #13, !dbg !4563
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4564
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4565, !tbaa.struct !4283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4453, metadata !621) #13, !dbg !4566
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3077, metadata !621) #13, !dbg !4567
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3078, metadata !621) #13, !dbg !4569
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3079, metadata !621) #13, !dbg !4570
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3077, metadata !621) #13, !dbg !4567
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3077, metadata !621) #13, !dbg !4567
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4571
  store i32 10, i32* %7, align 8, !dbg !4572, !tbaa !3009
  %8 = icmp ne i8* %0, null, !dbg !4573
  %9 = icmp ne i8* %1, null, !dbg !4574
  %10 = and i1 %8, %9, !dbg !4575
  br i1 %10, label %12, label %11, !dbg !4575

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !4576
  unreachable, !dbg !4576

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4577
  store i8* %0, i8** %13, align 8, !dbg !4578, !tbaa !3095
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4579
  store i8* %1, i8** %14, align 8, !dbg !4580, !tbaa !3098
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4453, metadata !621) #13, !dbg !4566
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #13, !dbg !4581
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4582
  ret i8* %15, !dbg !4583
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4584 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4588, metadata !621), !dbg !4591
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4589, metadata !621), !dbg !4592
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4590, metadata !621), !dbg !4593
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4594
  ret i8* %4, !dbg !4595
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4596 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4600, metadata !621), !dbg !4602
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4601, metadata !621), !dbg !4603
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4588, metadata !621) #13, !dbg !4604
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4589, metadata !621) #13, !dbg !4606
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4590, metadata !621) #13, !dbg !4607
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4608
  ret i8* %3, !dbg !4609
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4610 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4614, metadata !621), !dbg !4616
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4615, metadata !621), !dbg !4617
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4588, metadata !621) #13, !dbg !4618
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4589, metadata !621) #13, !dbg !4620
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4590, metadata !621) #13, !dbg !4621
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4622
  ret i8* %3, !dbg !4623
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4624 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4628, metadata !621), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4614, metadata !621) #13, !dbg !4630
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4615, metadata !621) #13, !dbg !4632
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4588, metadata !621) #13, !dbg !4633
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4589, metadata !621) #13, !dbg !4635
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4590, metadata !621) #13, !dbg !4636
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4637
  ret i8* %2, !dbg !4638
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @same_name(i8*, i8*) local_unnamed_addr #6 !dbg !4639 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4644, metadata !621), !dbg !4680
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4645, metadata !621), !dbg !4681
  %5 = tail call i8* @last_component(i8* %0) #15, !dbg !4682
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4646, metadata !621), !dbg !4683
  %6 = tail call i8* @last_component(i8* %1) #15, !dbg !4684
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4647, metadata !621), !dbg !4685
  %7 = tail call i64 @base_len(i8* %5) #15, !dbg !4686
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4648, metadata !621), !dbg !4687
  %8 = tail call i64 @base_len(i8* %6) #15, !dbg !4688
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4649, metadata !621), !dbg !4689
  %9 = icmp eq i64 %7, %8, !dbg !4690
  br i1 %9, label %10, label %43, !dbg !4691

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @memcmp(i8* %5, i8* %6, i64 %7) #15, !dbg !4692
  %12 = icmp eq i32 %11, 0, !dbg !4693
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4652, metadata !621), !dbg !4694
  br i1 %12, label %13, label %43, !dbg !4695

; <label>:13:                                     ; preds = %10
  %14 = bitcast %struct.stat* %3 to i8*, !dbg !4696
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %14) #13, !dbg !4696
  %15 = bitcast %struct.stat* %4 to i8*, !dbg !4697
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %15) #13, !dbg !4697
  %16 = tail call i8* @dir_name(i8* %0) #13, !dbg !4698
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4678, metadata !621), !dbg !4699
  %17 = tail call i8* @dir_name(i8* %1) #13, !dbg !4700
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !4679, metadata !621), !dbg !4701
  tail call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !4653, metadata !621), !dbg !4702
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4703, metadata !621) #13, !dbg !4710
  tail call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !4709, metadata !621) #13, !dbg !4710
  %18 = call i32 @__xstat(i32 1, i8* nonnull %16, %struct.stat* nonnull %3) #13, !dbg !4713
  %19 = icmp eq i32 %18, 0, !dbg !4714
  br i1 %19, label %23, label %20, !dbg !4715

; <label>:20:                                     ; preds = %13
  %21 = tail call i32* @__errno_location() #18, !dbg !4716
  %22 = load i32, i32* %21, align 4, !dbg !4716, !tbaa !700
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), i8* nonnull %16) #13, !dbg !4718
  br label %23, !dbg !4719

; <label>:23:                                     ; preds = %13, %20
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !4677, metadata !621), !dbg !4720
  call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !4703, metadata !621) #13, !dbg !4721
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !4709, metadata !621) #13, !dbg !4721
  %24 = call i32 @__xstat(i32 1, i8* nonnull %17, %struct.stat* nonnull %4) #13, !dbg !4724
  %25 = icmp eq i32 %24, 0, !dbg !4725
  br i1 %25, label %29, label %26, !dbg !4726

; <label>:26:                                     ; preds = %23
  %27 = tail call i32* @__errno_location() #18, !dbg !4727
  %28 = load i32, i32* %27, align 4, !dbg !4727, !tbaa !700
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), i8* nonnull %17) #13, !dbg !4729
  br label %29, !dbg !4730

; <label>:29:                                     ; preds = %23, %26
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 1, !dbg !4731
  %31 = load i64, i64* %30, align 8, !dbg !4731, !tbaa !1311
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1, !dbg !4731
  %33 = load i64, i64* %32, align 8, !dbg !4731, !tbaa !1311
  %34 = icmp eq i64 %31, %33, !dbg !4731
  br i1 %34, label %35, label %41, !dbg !4731

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0, !dbg !4731
  %37 = load i64, i64* %36, align 8, !dbg !4731, !tbaa !1316
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0, !dbg !4731
  %39 = load i64, i64* %38, align 8, !dbg !4731, !tbaa !1316
  %40 = icmp eq i64 %37, %39, !dbg !4731
  br label %41

; <label>:41:                                     ; preds = %35, %29
  %42 = phi i1 [ false, %29 ], [ %40, %35 ]
  call void @free(i8* %16) #13, !dbg !4732
  call void @free(i8* %17) #13, !dbg !4733
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %15) #13, !dbg !4734
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %14) #13, !dbg !4734
  br label %43, !dbg !4735

; <label>:43:                                     ; preds = %2, %41, %10
  %44 = phi i1 [ %42, %41 ], [ false, %10 ], [ false, %2 ]
  ret i1 %44, !dbg !4736
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4737 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4782, metadata !621), !dbg !4788
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4783, metadata !621), !dbg !4789
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4784, metadata !621), !dbg !4790
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4785, metadata !621), !dbg !4791
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4786, metadata !621), !dbg !4792
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4787, metadata !621), !dbg !4793
  %7 = icmp eq i8* %1, null, !dbg !4794
  br i1 %7, label %10, label %8, !dbg !4796

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #13, !dbg !4797
  br label %12, !dbg !4797

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.100, i64 0, i64 0), i8* %2, i8* %3) #13, !dbg !4798
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.101, i64 0, i64 0), i32 5) #13, !dbg !4799
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #13, !dbg !4799
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.102, i64 0, i64 0), i32 5) #13, !dbg !4800
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #13, !dbg !4800
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
  ], !dbg !4801

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !4802
  unreachable, !dbg !4802

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.103, i64 0, i64 0), i32 5) #13, !dbg !4804
  %20 = load i8*, i8** %4, align 8, !dbg !4804, !tbaa !628
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #13, !dbg !4804
  br label %146, !dbg !4805

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.104, i64 0, i64 0), i32 5) #13, !dbg !4806
  %24 = load i8*, i8** %4, align 8, !dbg !4806, !tbaa !628
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4806
  %26 = load i8*, i8** %25, align 8, !dbg !4806, !tbaa !628
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #13, !dbg !4806
  br label %146, !dbg !4807

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.105, i64 0, i64 0), i32 5) #13, !dbg !4808
  %30 = load i8*, i8** %4, align 8, !dbg !4808, !tbaa !628
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4808
  %32 = load i8*, i8** %31, align 8, !dbg !4808, !tbaa !628
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4808
  %34 = load i8*, i8** %33, align 8, !dbg !4808, !tbaa !628
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #13, !dbg !4808
  br label %146, !dbg !4809

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.106, i64 0, i64 0), i32 5) #13, !dbg !4810
  %38 = load i8*, i8** %4, align 8, !dbg !4810, !tbaa !628
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4810
  %40 = load i8*, i8** %39, align 8, !dbg !4810, !tbaa !628
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4810
  %42 = load i8*, i8** %41, align 8, !dbg !4810, !tbaa !628
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4810
  %44 = load i8*, i8** %43, align 8, !dbg !4810, !tbaa !628
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #13, !dbg !4810
  br label %146, !dbg !4811

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.107, i64 0, i64 0), i32 5) #13, !dbg !4812
  %48 = load i8*, i8** %4, align 8, !dbg !4812, !tbaa !628
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4812
  %50 = load i8*, i8** %49, align 8, !dbg !4812, !tbaa !628
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4812
  %52 = load i8*, i8** %51, align 8, !dbg !4812, !tbaa !628
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4812
  %54 = load i8*, i8** %53, align 8, !dbg !4812, !tbaa !628
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4812
  %56 = load i8*, i8** %55, align 8, !dbg !4812, !tbaa !628
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #13, !dbg !4812
  br label %146, !dbg !4813

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.108, i64 0, i64 0), i32 5) #13, !dbg !4814
  %60 = load i8*, i8** %4, align 8, !dbg !4814, !tbaa !628
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4814
  %62 = load i8*, i8** %61, align 8, !dbg !4814, !tbaa !628
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4814
  %64 = load i8*, i8** %63, align 8, !dbg !4814, !tbaa !628
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4814
  %66 = load i8*, i8** %65, align 8, !dbg !4814, !tbaa !628
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4814
  %68 = load i8*, i8** %67, align 8, !dbg !4814, !tbaa !628
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4814
  %70 = load i8*, i8** %69, align 8, !dbg !4814, !tbaa !628
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #13, !dbg !4814
  br label %146, !dbg !4815

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.109, i64 0, i64 0), i32 5) #13, !dbg !4816
  %74 = load i8*, i8** %4, align 8, !dbg !4816, !tbaa !628
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4816
  %76 = load i8*, i8** %75, align 8, !dbg !4816, !tbaa !628
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4816
  %78 = load i8*, i8** %77, align 8, !dbg !4816, !tbaa !628
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4816
  %80 = load i8*, i8** %79, align 8, !dbg !4816, !tbaa !628
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4816
  %82 = load i8*, i8** %81, align 8, !dbg !4816, !tbaa !628
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4816
  %84 = load i8*, i8** %83, align 8, !dbg !4816, !tbaa !628
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4816
  %86 = load i8*, i8** %85, align 8, !dbg !4816, !tbaa !628
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #13, !dbg !4816
  br label %146, !dbg !4817

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.110, i64 0, i64 0), i32 5) #13, !dbg !4818
  %90 = load i8*, i8** %4, align 8, !dbg !4818, !tbaa !628
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4818
  %92 = load i8*, i8** %91, align 8, !dbg !4818, !tbaa !628
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4818
  %94 = load i8*, i8** %93, align 8, !dbg !4818, !tbaa !628
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4818
  %96 = load i8*, i8** %95, align 8, !dbg !4818, !tbaa !628
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4818
  %98 = load i8*, i8** %97, align 8, !dbg !4818, !tbaa !628
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4818
  %100 = load i8*, i8** %99, align 8, !dbg !4818, !tbaa !628
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4818
  %102 = load i8*, i8** %101, align 8, !dbg !4818, !tbaa !628
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4818
  %104 = load i8*, i8** %103, align 8, !dbg !4818, !tbaa !628
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #13, !dbg !4818
  br label %146, !dbg !4819

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.111, i64 0, i64 0), i32 5) #13, !dbg !4820
  %108 = load i8*, i8** %4, align 8, !dbg !4820, !tbaa !628
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4820
  %110 = load i8*, i8** %109, align 8, !dbg !4820, !tbaa !628
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4820
  %112 = load i8*, i8** %111, align 8, !dbg !4820, !tbaa !628
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4820
  %114 = load i8*, i8** %113, align 8, !dbg !4820, !tbaa !628
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4820
  %116 = load i8*, i8** %115, align 8, !dbg !4820, !tbaa !628
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4820
  %118 = load i8*, i8** %117, align 8, !dbg !4820, !tbaa !628
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4820
  %120 = load i8*, i8** %119, align 8, !dbg !4820, !tbaa !628
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4820
  %122 = load i8*, i8** %121, align 8, !dbg !4820, !tbaa !628
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4820
  %124 = load i8*, i8** %123, align 8, !dbg !4820, !tbaa !628
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #13, !dbg !4820
  br label %146, !dbg !4821

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.112, i64 0, i64 0), i32 5) #13, !dbg !4822
  %128 = load i8*, i8** %4, align 8, !dbg !4822, !tbaa !628
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4822
  %130 = load i8*, i8** %129, align 8, !dbg !4822, !tbaa !628
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4822
  %132 = load i8*, i8** %131, align 8, !dbg !4822, !tbaa !628
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4822
  %134 = load i8*, i8** %133, align 8, !dbg !4822, !tbaa !628
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4822
  %136 = load i8*, i8** %135, align 8, !dbg !4822, !tbaa !628
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4822
  %138 = load i8*, i8** %137, align 8, !dbg !4822, !tbaa !628
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4822
  %140 = load i8*, i8** %139, align 8, !dbg !4822, !tbaa !628
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4822
  %142 = load i8*, i8** %141, align 8, !dbg !4822, !tbaa !628
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4822
  %144 = load i8*, i8** %143, align 8, !dbg !4822, !tbaa !628
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #13, !dbg !4822
  br label %146, !dbg !4823

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4824
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4825 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4829, metadata !621), !dbg !4835
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4830, metadata !621), !dbg !4836
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4831, metadata !621), !dbg !4837
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4832, metadata !621), !dbg !4838
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4833, metadata !621), !dbg !4839
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4834, metadata !621), !dbg !4840
  br label %6, !dbg !4841

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4834, metadata !621), !dbg !4840
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4843
  %9 = load i8*, i8** %8, align 8, !dbg !4843, !tbaa !628
  %10 = icmp eq i8* %9, null, !dbg !4845
  %11 = add i64 %7, 1, !dbg !4846
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4834, metadata !621), !dbg !4840
  br i1 %10, label %12, label %6, !dbg !4845, !llvm.loop !4847

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4849
  ret void, !dbg !4850
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4851 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4862, metadata !621), !dbg !4870
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4863, metadata !621), !dbg !4871
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4864, metadata !621), !dbg !4872
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4865, metadata !621), !dbg !4873
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4866, metadata !621), !dbg !4874
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4875
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #13, !dbg !4875
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4868, metadata !621), !dbg !4876
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4867, metadata !621), !dbg !4877
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4867, metadata !621), !dbg !4877
  %11 = load i32, i32* %8, align 8, !dbg !4878
  %12 = icmp ult i32 %11, 41, !dbg !4878
  br i1 %12, label %13, label %18, !dbg !4878

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4878
  %15 = sext i32 %11 to i64, !dbg !4878
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4878
  %17 = add i32 %11, 8, !dbg !4878
  store i32 %17, i32* %8, align 8, !dbg !4878
  br label %21, !dbg !4878

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4878
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4878
  store i8* %20, i8** %10, align 8, !dbg !4878
  br label %21, !dbg !4878

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4878
  %25 = load i8*, i8** %24, align 8, !dbg !4878
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4881
  store i8* %25, i8** %26, align 16, !dbg !4882, !tbaa !628
  %27 = icmp eq i8* %25, null, !dbg !4883
  br i1 %27, label %30, label %28, !dbg !4884

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4867, metadata !621), !dbg !4877
  %29 = icmp ult i32 %22, 41, !dbg !4878
  br i1 %29, label %35, label %32, !dbg !4878

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4885
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #13, !dbg !4886
  ret void, !dbg !4886

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4878
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4878
  store i8* %34, i8** %10, align 8, !dbg !4878
  br label %40, !dbg !4878

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4878
  %37 = sext i32 %22 to i64, !dbg !4878
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4878
  %39 = add i32 %22, 8, !dbg !4878
  store i32 %39, i32* %8, align 8, !dbg !4878
  br label %40, !dbg !4878

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4878
  %44 = load i8*, i8** %43, align 8, !dbg !4878
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4881
  store i8* %44, i8** %45, align 8, !dbg !4882, !tbaa !628
  %46 = icmp eq i8* %44, null, !dbg !4883
  br i1 %46, label %30, label %47, !dbg !4884

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4867, metadata !621), !dbg !4877
  %48 = icmp ult i32 %41, 41, !dbg !4878
  br i1 %48, label %52, label %49, !dbg !4878

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4878
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4878
  store i8* %51, i8** %10, align 8, !dbg !4878
  br label %57, !dbg !4878

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4878
  %54 = sext i32 %41 to i64, !dbg !4878
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4878
  %56 = add i32 %41, 8, !dbg !4878
  store i32 %56, i32* %8, align 8, !dbg !4878
  br label %57, !dbg !4878

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4878
  %61 = load i8*, i8** %60, align 8, !dbg !4878
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4881
  store i8* %61, i8** %62, align 16, !dbg !4882, !tbaa !628
  %63 = icmp eq i8* %61, null, !dbg !4883
  br i1 %63, label %30, label %64, !dbg !4884

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4867, metadata !621), !dbg !4877
  %65 = icmp ult i32 %58, 41, !dbg !4878
  br i1 %65, label %69, label %66, !dbg !4878

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4878
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4878
  store i8* %68, i8** %10, align 8, !dbg !4878
  br label %74, !dbg !4878

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4878
  %71 = sext i32 %58 to i64, !dbg !4878
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4878
  %73 = add i32 %58, 8, !dbg !4878
  store i32 %73, i32* %8, align 8, !dbg !4878
  br label %74, !dbg !4878

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4878
  %78 = load i8*, i8** %77, align 8, !dbg !4878
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4881
  store i8* %78, i8** %79, align 8, !dbg !4882, !tbaa !628
  %80 = icmp eq i8* %78, null, !dbg !4883
  br i1 %80, label %30, label %81, !dbg !4884

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4867, metadata !621), !dbg !4877
  %82 = icmp ult i32 %75, 41, !dbg !4878
  br i1 %82, label %86, label %83, !dbg !4878

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4878
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4878
  store i8* %85, i8** %10, align 8, !dbg !4878
  br label %91, !dbg !4878

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4878
  %88 = sext i32 %75 to i64, !dbg !4878
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4878
  %90 = add i32 %75, 8, !dbg !4878
  store i32 %90, i32* %8, align 8, !dbg !4878
  br label %91, !dbg !4878

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4878
  %95 = load i8*, i8** %94, align 8, !dbg !4878
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4881
  store i8* %95, i8** %96, align 16, !dbg !4882, !tbaa !628
  %97 = icmp eq i8* %95, null, !dbg !4883
  br i1 %97, label %30, label %98, !dbg !4884

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4867, metadata !621), !dbg !4877
  %99 = icmp ult i32 %92, 41, !dbg !4878
  br i1 %99, label %103, label %100, !dbg !4878

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4878
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4878
  store i8* %102, i8** %10, align 8, !dbg !4878
  br label %108, !dbg !4878

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4878
  %105 = sext i32 %92 to i64, !dbg !4878
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4878
  %107 = add i32 %92, 8, !dbg !4878
  store i32 %107, i32* %8, align 8, !dbg !4878
  br label %108, !dbg !4878

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4878
  %111 = load i8*, i8** %110, align 8, !dbg !4878
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4881
  store i8* %111, i8** %112, align 8, !dbg !4882, !tbaa !628
  %113 = icmp eq i8* %111, null, !dbg !4883
  br i1 %113, label %30, label %114, !dbg !4884

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4867, metadata !621), !dbg !4877
  %115 = load i8*, i8** %10, align 8, !dbg !4878
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4878
  store i8* %116, i8** %10, align 8, !dbg !4878
  %117 = bitcast i8* %115 to i8**, !dbg !4878
  %118 = load i8*, i8** %117, align 8, !dbg !4878
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4881
  store i8* %118, i8** %119, align 16, !dbg !4882, !tbaa !628
  %120 = icmp eq i8* %118, null, !dbg !4883
  br i1 %120, label %30, label %121, !dbg !4884

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4867, metadata !621), !dbg !4877
  %122 = load i8*, i8** %10, align 8, !dbg !4878
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4878
  store i8* %123, i8** %10, align 8, !dbg !4878
  %124 = bitcast i8* %122 to i8**, !dbg !4878
  %125 = load i8*, i8** %124, align 8, !dbg !4878
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4881
  store i8* %125, i8** %126, align 8, !dbg !4882, !tbaa !628
  %127 = icmp eq i8* %125, null, !dbg !4883
  br i1 %127, label %30, label %128, !dbg !4884

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4867, metadata !621), !dbg !4877
  %129 = load i8*, i8** %10, align 8, !dbg !4878
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4878
  store i8* %130, i8** %10, align 8, !dbg !4878
  %131 = bitcast i8* %129 to i8**, !dbg !4878
  %132 = load i8*, i8** %131, align 8, !dbg !4878
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4881
  store i8* %132, i8** %133, align 16, !dbg !4882, !tbaa !628
  %134 = icmp eq i8* %132, null, !dbg !4883
  br i1 %134, label %30, label %135, !dbg !4884

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4867, metadata !621), !dbg !4877
  %136 = load i8*, i8** %10, align 8, !dbg !4878
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4878
  store i8* %137, i8** %10, align 8, !dbg !4878
  %138 = bitcast i8* %136 to i8**, !dbg !4878
  %139 = load i8*, i8** %138, align 8, !dbg !4878
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4881
  store i8* %139, i8** %140, align 8, !dbg !4882, !tbaa !628
  %141 = icmp eq i8* %139, null, !dbg !4883
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4867, metadata !621), !dbg !4877
  %142 = select i1 %141, i64 9, i64 10, !dbg !4884
  br label %30, !dbg !4884
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4887 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4891, metadata !621), !dbg !4902
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4892, metadata !621), !dbg !4903
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4893, metadata !621), !dbg !4904
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4894, metadata !621), !dbg !4905
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4906
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #13, !dbg !4906
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4895, metadata !621), !dbg !4907
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4908
  call void @llvm.va_start(i8* nonnull %6), !dbg !4908
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4909
  call void @llvm.va_end(i8* nonnull %6), !dbg !4910
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #13, !dbg !4911
  ret void, !dbg !4911
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #13

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4912 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.115, i64 0, i64 0), i32 5) #13, !dbg !4913
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.116, i64 0, i64 0)) #13, !dbg !4913
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.117, i64 0, i64 0), i32 5) #13, !dbg !4914
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.118, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.119, i64 0, i64 0)) #13, !dbg !4914
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #13, !dbg !4915
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4915, !tbaa !628
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #13, !dbg !4915
  ret void, !dbg !4916
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !4917 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4921, metadata !621), !dbg !4923
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4922, metadata !621), !dbg !4924
  %3 = udiv i64 9223372036854775807, %1, !dbg !4925
  %4 = icmp ult i64 %3, %0, !dbg !4925
  br i1 %4, label %5, label %6, !dbg !4927

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !4928
  unreachable, !dbg !4928

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4929
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4930, metadata !621) #13, !dbg !4937
  %8 = tail call noalias i8* @malloc(i64 %7) #13, !dbg !4939
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4936, metadata !621) #13, !dbg !4940
  %9 = icmp eq i8* %8, null, !dbg !4941
  %10 = icmp ne i64 %7, 0, !dbg !4943
  %11 = and i1 %10, %9, !dbg !4944
  br i1 %11, label %12, label %13, !dbg !4944

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !4945
  unreachable, !dbg !4945

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4946
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4931 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4930, metadata !621), !dbg !4947
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !4948
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4936, metadata !621), !dbg !4949
  %3 = icmp eq i8* %2, null, !dbg !4950
  %4 = icmp ne i64 %0, 0, !dbg !4951
  %5 = and i1 %4, %3, !dbg !4952
  br i1 %5, label %6, label %7, !dbg !4952

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4953
  unreachable, !dbg !4953

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4954
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !4955 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4959, metadata !621), !dbg !4962
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4960, metadata !621), !dbg !4963
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4961, metadata !621), !dbg !4964
  %4 = udiv i64 9223372036854775807, %2, !dbg !4965
  %5 = icmp ult i64 %4, %1, !dbg !4965
  br i1 %5, label %6, label %7, !dbg !4967

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !4968
  unreachable, !dbg !4968

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4969
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4970, metadata !621) #13, !dbg !4976
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4975, metadata !621) #13, !dbg !4978
  %9 = icmp eq i64 %8, 0, !dbg !4979
  %10 = icmp ne i8* %0, null, !dbg !4981
  %11 = and i1 %10, %9, !dbg !4982
  br i1 %11, label %12, label %13, !dbg !4982

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #13, !dbg !4983
  br label %19, !dbg !4985

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #13, !dbg !4986
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4970, metadata !621) #13, !dbg !4976
  %15 = icmp eq i8* %14, null, !dbg !4987
  %16 = icmp ne i64 %8, 0, !dbg !4989
  %17 = and i1 %16, %15, !dbg !4990
  br i1 %17, label %18, label %19, !dbg !4990

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !4991
  unreachable, !dbg !4991

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4992
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4971 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4970, metadata !621), !dbg !4993
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4975, metadata !621), !dbg !4994
  %3 = icmp eq i64 %1, 0, !dbg !4995
  %4 = icmp ne i8* %0, null, !dbg !4996
  %5 = and i1 %4, %3, !dbg !4997
  br i1 %5, label %6, label %7, !dbg !4997

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #13, !dbg !4998
  br label %13, !dbg !4999

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #13, !dbg !5000
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4970, metadata !621), !dbg !4993
  %9 = icmp eq i8* %8, null, !dbg !5001
  %10 = icmp ne i64 %1, 0, !dbg !5002
  %11 = and i1 %10, %9, !dbg !5003
  br i1 %11, label %12, label %13, !dbg !5003

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !5004
  unreachable, !dbg !5004

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !5005
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !570 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !575, metadata !621), !dbg !5006
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !576, metadata !621), !dbg !5007
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !577, metadata !621), !dbg !5008
  %4 = load i64, i64* %1, align 8, !dbg !5009, !tbaa !2277
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !578, metadata !621), !dbg !5010
  %5 = icmp eq i8* %0, null, !dbg !5011
  br i1 %5, label %6, label %13, !dbg !5013

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !5014
  br i1 %7, label %8, label %17, !dbg !5017

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !5018
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !578, metadata !621), !dbg !5010
  %10 = icmp ugt i64 %2, 128, !dbg !5020
  %11 = zext i1 %10 to i64, !dbg !5020
  %12 = add nuw nsw i64 %9, %11, !dbg !5021
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !578, metadata !621), !dbg !5010
  br label %17, !dbg !5022

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !5023
  %15 = icmp ugt i64 %14, %4, !dbg !5026
  br i1 %15, label %20, label %16, !dbg !5027

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !5028
  unreachable, !dbg !5028

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !578, metadata !621), !dbg !5010
  store i64 %18, i64* %1, align 8, !dbg !5029, !tbaa !2277
  %19 = mul i64 %18, %2, !dbg !5030
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4970, metadata !621) #13, !dbg !5031
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4975, metadata !621) #13, !dbg !5033
  br label %27, !dbg !5034

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !5035
  %22 = add i64 %4, 1, !dbg !5036
  %23 = add i64 %22, %21, !dbg !5037
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !578, metadata !621), !dbg !5010
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !578, metadata !621), !dbg !5010
  store i64 %23, i64* %1, align 8, !dbg !5029, !tbaa !2277
  %24 = mul i64 %23, %2, !dbg !5030
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4970, metadata !621) #13, !dbg !5031
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4975, metadata !621) #13, !dbg !5033
  %25 = icmp eq i64 %24, 0, !dbg !5038
  br i1 %25, label %26, label %27, !dbg !5034

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #13, !dbg !5039
  br label %34, !dbg !5040

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #13, !dbg !5041
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4970, metadata !621) #13, !dbg !5031
  %30 = icmp eq i8* %29, null, !dbg !5042
  %31 = icmp ne i64 %28, 0, !dbg !5043
  %32 = and i1 %31, %30, !dbg !5044
  br i1 %32, label %33, label %34, !dbg !5044

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #16, !dbg !5045
  unreachable, !dbg !5045

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !5046
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !5047 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5049, metadata !621), !dbg !5050
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4930, metadata !621) #13, !dbg !5051
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !5053
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4936, metadata !621) #13, !dbg !5054
  %3 = icmp eq i8* %2, null, !dbg !5055
  %4 = icmp ne i64 %0, 0, !dbg !5056
  %5 = and i1 %4, %3, !dbg !5057
  br i1 %5, label %6, label %7, !dbg !5057

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !5058
  unreachable, !dbg !5058

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !5059
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !5060 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5064, metadata !621), !dbg !5066
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !5065, metadata !621), !dbg !5067
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !575, metadata !621) #13, !dbg !5068
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !576, metadata !621) #13, !dbg !5070
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !577, metadata !621) #13, !dbg !5071
  %3 = load i64, i64* %1, align 8, !dbg !5072, !tbaa !2277
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !578, metadata !621) #13, !dbg !5073
  %4 = icmp eq i8* %0, null, !dbg !5074
  br i1 %4, label %5, label %8, !dbg !5075

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !5076
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !578, metadata !621) #13, !dbg !5073
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !578, metadata !621) #13, !dbg !5073
  %7 = select i1 %6, i64 128, i64 %3, !dbg !5077
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !578, metadata !621) #13, !dbg !5073
  store i64 %7, i64* %1, align 8, !dbg !5078, !tbaa !2277
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4970, metadata !621) #13, !dbg !5079
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4975, metadata !621) #13, !dbg !5081
  br label %17, !dbg !5082

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !5083
  br i1 %9, label %11, label %10, !dbg !5084

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #16, !dbg !5085
  unreachable, !dbg !5085

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !5086
  %13 = add i64 %3, 1, !dbg !5087
  %14 = add i64 %13, %12, !dbg !5088
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !578, metadata !621) #13, !dbg !5073
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !578, metadata !621) #13, !dbg !5073
  store i64 %14, i64* %1, align 8, !dbg !5078, !tbaa !2277
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4970, metadata !621) #13, !dbg !5079
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4975, metadata !621) #13, !dbg !5081
  %15 = icmp eq i64 %14, 0, !dbg !5089
  br i1 %15, label %16, label %17, !dbg !5082

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #13, !dbg !5090
  br label %24, !dbg !5091

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #13, !dbg !5092
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4970, metadata !621) #13, !dbg !5079
  %20 = icmp eq i8* %19, null, !dbg !5093
  %21 = icmp ne i64 %18, 0, !dbg !5094
  %22 = and i1 %21, %20, !dbg !5095
  br i1 %22, label %23, label %24, !dbg !5095

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #16, !dbg !5096
  unreachable, !dbg !5096

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !5097
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !5098 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5100, metadata !621), !dbg !5101
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4930, metadata !621) #13, !dbg !5102
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !5104
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4936, metadata !621) #13, !dbg !5105
  %3 = icmp eq i8* %2, null, !dbg !5106
  %4 = icmp ne i64 %0, 0, !dbg !5107
  %5 = and i1 %4, %3, !dbg !5108
  br i1 %5, label %6, label %7, !dbg !5108

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !5109
  unreachable, !dbg !5109

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !5110
  ret i8* %2, !dbg !5111
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !5112 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5114, metadata !621), !dbg !5117
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5115, metadata !621), !dbg !5118
  %3 = udiv i64 9223372036854775807, %1, !dbg !5119
  %4 = icmp ult i64 %3, %0, !dbg !5119
  br i1 %4, label %8, label %5, !dbg !5121

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #13, !dbg !5122
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5116, metadata !621), !dbg !5123
  %7 = icmp eq i8* %6, null, !dbg !5124
  br i1 %7, label %8, label %9, !dbg !5125

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !5126
  unreachable, !dbg !5126

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !5127
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !5128 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5132, metadata !621), !dbg !5134
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5133, metadata !621), !dbg !5135
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4930, metadata !621) #13, !dbg !5136
  %3 = tail call noalias i8* @malloc(i64 %1) #13, !dbg !5138
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4936, metadata !621) #13, !dbg !5139
  %4 = icmp eq i8* %3, null, !dbg !5140
  %5 = icmp ne i64 %1, 0, !dbg !5141
  %6 = and i1 %5, %4, !dbg !5142
  br i1 %6, label %7, label %8, !dbg !5142

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !5143
  unreachable, !dbg !5143

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !5144
  ret i8* %3, !dbg !5145
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !5146 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5148, metadata !621), !dbg !5149
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !5150
  %3 = add i64 %2, 1, !dbg !5151
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5132, metadata !621) #13, !dbg !5152
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5133, metadata !621) #13, !dbg !5154
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4930, metadata !621) #13, !dbg !5155
  %4 = tail call noalias i8* @malloc(i64 %3) #13, !dbg !5157
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4936, metadata !621) #13, !dbg !5158
  %5 = icmp eq i8* %4, null, !dbg !5159
  %6 = icmp ne i64 %3, 0, !dbg !5160
  %7 = and i1 %6, %5, !dbg !5161
  br i1 %7, label %8, label %9, !dbg !5161

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !5162
  unreachable, !dbg !5162

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #13, !dbg !5163
  ret i8* %4, !dbg !5164
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !5165 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !5167, !tbaa !700
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.132, i64 0, i64 0), i32 5) #13, !dbg !5168
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), i8* %2) #13, !dbg !5169
  tail call void @abort() #16, !dbg !5170
  unreachable, !dbg !5170
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xgetcwd() local_unnamed_addr #6 !dbg !5171 {
  %1 = tail call i8* @getcwd(i8* null, i64 0) #13, !dbg !5176
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5175, metadata !621), !dbg !5177
  %2 = icmp eq i8* %1, null, !dbg !5178
  br i1 %2, label %3, label %8, !dbg !5180

; <label>:3:                                      ; preds = %0
  %4 = tail call i32* @__errno_location() #18, !dbg !5181
  %5 = load i32, i32* %4, align 4, !dbg !5181, !tbaa !700
  %6 = icmp eq i32 %5, 12, !dbg !5182
  br i1 %6, label %7, label %8, !dbg !5183

; <label>:7:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !5184
  unreachable, !dbg !5184

; <label>:8:                                      ; preds = %0, %3
  ret i8* %1, !dbg !5185
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !5186 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5189, metadata !621), !dbg !5195
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5190, metadata !621), !dbg !5196
  %3 = icmp eq i64 %0, 0, !dbg !5197
  %4 = icmp eq i64 %1, 0, !dbg !5198
  %5 = or i1 %3, %4, !dbg !5199
  br i1 %5, label %12, label %6, !dbg !5199

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5200
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5192, metadata !621), !dbg !5201
  %8 = udiv i64 %7, %1, !dbg !5202
  %9 = icmp eq i64 %8, %0, !dbg !5204
  br i1 %9, label %12, label %10, !dbg !5205

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #18, !dbg !5206
  store i32 12, i32* %11, align 4, !dbg !5208, !tbaa !700
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5189, metadata !621), !dbg !5195
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5190, metadata !621), !dbg !5196
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #13, !dbg !5209
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5191, metadata !621), !dbg !5210
  br label %16, !dbg !5211

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !5212
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5213 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5230, metadata !621), !dbg !5239
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5231, metadata !621), !dbg !5240
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5232, metadata !621), !dbg !5241
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5233, metadata !621), !dbg !5242
  %6 = bitcast i32* %5 to i8*, !dbg !5243
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !5243
  %7 = icmp eq i32* %0, null, !dbg !5244
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5230, metadata !621), !dbg !5239
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5246
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5230, metadata !621), !dbg !5239
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #13, !dbg !5247
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5234, metadata !621), !dbg !5248
  %10 = icmp ugt i64 %9, -3, !dbg !5249
  %11 = icmp ne i64 %2, 0, !dbg !5250
  %12 = and i1 %11, %10, !dbg !5251
  br i1 %12, label %13, label %18, !dbg !5251

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #13, !dbg !5252
  br i1 %14, label %18, label %15, !dbg !5253

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5254, !tbaa !749
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5236, metadata !621), !dbg !5255
  %17 = zext i8 %16 to i32, !dbg !5256
  store i32 %17, i32* %8, align 4, !dbg !5257, !tbaa !700
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !5258
  ret i64 %19, !dbg !5258
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5259 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5304, metadata !621), !dbg !5309
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #13, !dbg !5310
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5311, metadata !621), !dbg !5314
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5316
  %4 = load i32, i32* %3, align 8, !dbg !5316, !tbaa !5317
  %5 = and i32 %4, 32, !dbg !5316
  %6 = icmp eq i32 %5, 0, !dbg !5318
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #13, !dbg !5319
  %8 = icmp ne i32 %7, 0, !dbg !5320
  br i1 %6, label %9, label %19, !dbg !5321

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5323
  %11 = xor i1 %8, true, !dbg !5324
  %12 = or i1 %10, %11, !dbg !5324
  %13 = sext i1 %8 to i32, !dbg !5324
  br i1 %12, label %22, label %14, !dbg !5324

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #18, !dbg !5325
  %16 = load i32, i32* %15, align 4, !dbg !5325, !tbaa !700
  %17 = icmp ne i32 %16, 9, !dbg !5326
  %18 = sext i1 %17 to i32, !dbg !5327
  br label %22, !dbg !5327

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5328

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !5330
  store i32 0, i32* %21, align 4, !dbg !5332, !tbaa !700
  br label %22, !dbg !5330

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5333
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @dir_name(i8*) local_unnamed_addr #6 !dbg !5334 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5337, metadata !621), !dbg !5339
  %2 = tail call i8* @mdir_name(i8* %0) #13, !dbg !5340
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5338, metadata !621), !dbg !5341
  %3 = icmp eq i8* %2, null, !dbg !5342
  br i1 %3, label %4, label %5, !dbg !5344

; <label>:4:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !5345
  unreachable, !dbg !5345

; <label>:5:                                      ; preds = %1
  ret i8* %2, !dbg !5346
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @dir_len(i8*) local_unnamed_addr #11 !dbg !5347 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5352, metadata !621), !dbg !5355
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5353, metadata !621), !dbg !5356
  %2 = load i8, i8* %0, align 1, !dbg !5357, !tbaa !749
  %3 = icmp eq i8 %2, 47, !dbg !5357
  %4 = zext i1 %3 to i64, !dbg !5358
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !5353, metadata !621), !dbg !5356
  %5 = tail call i8* @last_component(i8* %0) #15, !dbg !5359
  %6 = ptrtoint i8* %5 to i64, !dbg !5361
  %7 = ptrtoint i8* %0 to i64, !dbg !5361
  %8 = sub i64 %6, %7, !dbg !5361
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5354, metadata !621), !dbg !5362
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5354, metadata !621), !dbg !5362
  %9 = icmp ugt i64 %8, %4, !dbg !5363
  br i1 %9, label %10, label %19, !dbg !5365

; <label>:10:                                     ; preds = %1
  br label %13, !dbg !5366

; <label>:11:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !5354, metadata !621), !dbg !5362
  %12 = icmp ugt i64 %15, %4, !dbg !5363
  br i1 %12, label %13, label %19, !dbg !5365, !llvm.loop !5368

; <label>:13:                                     ; preds = %10, %11
  %14 = phi i64 [ %15, %11 ], [ %8, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5354, metadata !621), !dbg !5362
  %15 = add i64 %14, -1, !dbg !5366
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !5366
  %17 = load i8, i8* %16, align 1, !dbg !5366, !tbaa !749
  %18 = icmp eq i8 %17, 47, !dbg !5366
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !5354, metadata !621), !dbg !5362
  br i1 %18, label %11, label %19, !dbg !5370

; <label>:19:                                     ; preds = %11, %13, %1
  %20 = phi i64 [ %8, %1 ], [ %14, %13 ], [ %15, %11 ]
  ret i64 %20, !dbg !5371
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @mdir_name(i8*) local_unnamed_addr #6 !dbg !5372 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5374, metadata !621), !dbg !5378
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5352, metadata !621) #13, !dbg !5379
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5353, metadata !621) #13, !dbg !5381
  %2 = load i8, i8* %0, align 1, !dbg !5382, !tbaa !749
  %3 = icmp eq i8 %2, 47, !dbg !5382
  %4 = zext i1 %3 to i64, !dbg !5383
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !5353, metadata !621) #13, !dbg !5381
  %5 = tail call i8* @last_component(i8* %0) #15, !dbg !5384
  %6 = ptrtoint i8* %5 to i64, !dbg !5385
  %7 = ptrtoint i8* %0 to i64, !dbg !5385
  %8 = sub i64 %6, %7, !dbg !5385
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5354, metadata !621) #13, !dbg !5386
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5354, metadata !621) #13, !dbg !5386
  %9 = icmp ugt i64 %8, %4, !dbg !5387
  br i1 %9, label %10, label %19, !dbg !5388

; <label>:10:                                     ; preds = %1
  br label %13, !dbg !5389

; <label>:11:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !5354, metadata !621) #13, !dbg !5386
  %12 = icmp ugt i64 %15, %4, !dbg !5387
  br i1 %12, label %13, label %19, !dbg !5388, !llvm.loop !5368

; <label>:13:                                     ; preds = %10, %11
  %14 = phi i64 [ %15, %11 ], [ %8, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5354, metadata !621) #13, !dbg !5386
  %15 = add i64 %14, -1, !dbg !5389
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !5389
  %17 = load i8, i8* %16, align 1, !dbg !5389, !tbaa !749
  %18 = icmp eq i8 %17, 47, !dbg !5389
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !5354, metadata !621) #13, !dbg !5386
  br i1 %18, label %11, label %19, !dbg !5390

; <label>:19:                                     ; preds = %11, %13, %1
  %20 = phi i64 [ %8, %1 ], [ %15, %11 ], [ %14, %13 ]
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !5375, metadata !621), !dbg !5391
  %21 = icmp eq i64 %20, 0, !dbg !5392
  %22 = zext i1 %21 to i64, !dbg !5393
  %23 = add i64 %20, 1, !dbg !5394
  %24 = add i64 %23, %22, !dbg !5395
  %25 = tail call noalias i8* @malloc(i64 %24) #13, !dbg !5396
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !5377, metadata !621), !dbg !5397
  %26 = icmp eq i8* %25, null, !dbg !5398
  br i1 %26, label %32, label %27, !dbg !5400

; <label>:27:                                     ; preds = %19
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %25, i8* nonnull %0, i64 %20, i32 1, i1 false), !dbg !5401
  br i1 %21, label %28, label %29, !dbg !5402

; <label>:28:                                     ; preds = %27
  store i8 46, i8* %25, align 1, !dbg !5403, !tbaa !749
  br label %29, !dbg !5405

; <label>:29:                                     ; preds = %28, %27
  %30 = phi i64 [ 1, %28 ], [ %20, %27 ]
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !5375, metadata !621), !dbg !5391
  %31 = getelementptr inbounds i8, i8* %25, i64 %30, !dbg !5406
  store i8 0, i8* %31, align 1, !dbg !5407, !tbaa !749
  br label %32, !dbg !5408

; <label>:32:                                     ; preds = %19, %29
  %33 = phi i8* [ %25, %29 ], [ null, %19 ]
  ret i8* %33, !dbg !5409
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #11 !dbg !5410 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5413, metadata !621), !dbg !5417
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5414, metadata !621), !dbg !5418
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5416, metadata !621), !dbg !5419
  br label %2, !dbg !5420

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5414, metadata !621), !dbg !5418
  %4 = load i8, i8* %3, align 1, !dbg !5421, !tbaa !749
  %5 = icmp eq i8 %4, 47, !dbg !5421
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !5422
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5414, metadata !621), !dbg !5418
  br i1 %5, label %2, label %7, !dbg !5420, !llvm.loop !5423

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !5424

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !5426
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !5416, metadata !621), !dbg !5419
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !5415, metadata !621), !dbg !5428
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !5414, metadata !621), !dbg !5418
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !5424

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !5429
  %15 = icmp eq i8 %14, 0, !dbg !5429
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !5414, metadata !621), !dbg !5418
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5416, metadata !621), !dbg !5419
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !5433
  %17 = select i1 %15, i8 %12, i8 0, !dbg !5433
  br label %18, !dbg !5433

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !5416, metadata !621), !dbg !5419
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !5414, metadata !621), !dbg !5418
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !5434
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !5415, metadata !621), !dbg !5428
  %22 = load i8, i8* %21, align 1, !dbg !5426, !tbaa !749
  br label %8, !dbg !5435, !llvm.loop !5436

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !5438
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #11 !dbg !5439 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5441, metadata !621), !dbg !5444
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5443, metadata !621), !dbg !5445
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !5446
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5442, metadata !621), !dbg !5448
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5442, metadata !621), !dbg !5448
  %3 = icmp ugt i64 %2, 1, !dbg !5449
  br i1 %3, label %4, label %13, !dbg !5451

; <label>:4:                                      ; preds = %1
  br label %7, !dbg !5452

; <label>:5:                                      ; preds = %7
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5442, metadata !621), !dbg !5448
  %6 = icmp ugt i64 %9, 1, !dbg !5449
  br i1 %6, label %7, label %13, !dbg !5451, !llvm.loop !5453

; <label>:7:                                      ; preds = %4, %5
  %8 = phi i64 [ %9, %5 ], [ %2, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5442, metadata !621), !dbg !5448
  %9 = add i64 %8, -1, !dbg !5452
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !5452
  %11 = load i8, i8* %10, align 1, !dbg !5452, !tbaa !749
  %12 = icmp eq i8 %11, 47, !dbg !5452
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5442, metadata !621), !dbg !5448
  br i1 %12, label %5, label %13, !dbg !5454

; <label>:13:                                     ; preds = %7, %5, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %5 ], [ %8, %7 ]
  ret i64 %14, !dbg !5456
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5457 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5462, metadata !621), !dbg !5465
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5463, metadata !621), !dbg !5466
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #13, !dbg !5467
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5464, metadata !621), !dbg !5468
  %3 = icmp eq i8* %2, null, !dbg !5469
  br i1 %3, label %11, label %4, !dbg !5471

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i64 0, i64 0)) #15, !dbg !5472
  %6 = icmp eq i32 %5, 0, !dbg !5477
  br i1 %6, label %10, label %7, !dbg !5478

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.153, i64 0, i64 0)) #15, !dbg !5479
  %9 = icmp eq i32 %8, 0, !dbg !5480
  br i1 %9, label %10, label %11, !dbg !5481

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5463, metadata !621), !dbg !5466
  br label %11, !dbg !5482

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !5483
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_pjw(i8* nocapture readonly, i64) local_unnamed_addr #11 !dbg !5484 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5487, metadata !621), !dbg !5491
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5488, metadata !621), !dbg !5492
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5490, metadata !621), !dbg !5493
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5489, metadata !621), !dbg !5494
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5490, metadata !621), !dbg !5493
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5489, metadata !621), !dbg !5494
  %3 = load i8, i8* %0, align 1, !dbg !5495, !tbaa !749
  %4 = icmp eq i8 %3, 0, !dbg !5498
  br i1 %4, label %18, label %5, !dbg !5498

; <label>:5:                                      ; preds = %2
  br label %6, !dbg !5499

; <label>:6:                                      ; preds = %5, %6
  %7 = phi i8 [ %16, %6 ], [ %3, %5 ]
  %8 = phi i64 [ %14, %6 ], [ 0, %5 ]
  %9 = phi i8* [ %15, %6 ], [ %0, %5 ]
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5489, metadata !621), !dbg !5494
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5490, metadata !621), !dbg !5493
  %10 = sext i8 %7 to i64, !dbg !5499
  %11 = shl i64 %8, 9, !dbg !5500
  %12 = lshr i64 %8, 55, !dbg !5501
  %13 = or i64 %11, %12, !dbg !5502
  %14 = add i64 %13, %10, !dbg !5503
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5490, metadata !621), !dbg !5493
  %15 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !5504
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5489, metadata !621), !dbg !5494
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5490, metadata !621), !dbg !5493
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5489, metadata !621), !dbg !5494
  %16 = load i8, i8* %15, align 1, !dbg !5495, !tbaa !749
  %17 = icmp eq i8 %16, 0, !dbg !5498
  br i1 %17, label %18, label %6, !dbg !5498, !llvm.loop !5505

; <label>:18:                                     ; preds = %6, %2
  %19 = phi i64 [ 0, %2 ], [ %14, %6 ]
  %20 = urem i64 %19, %1, !dbg !5507
  ret i64 %20, !dbg !5508
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5509 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5515, metadata !621), !dbg !5589
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5582, metadata !621), !dbg !5592
  %3 = tail call i8* @nl_langinfo(i32 14) #13, !dbg !5593
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5513, metadata !621), !dbg !5594
  %4 = icmp eq i8* %3, null, !dbg !5595
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.158, i64 0, i64 0), i8* %3, !dbg !5597
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5513, metadata !621), !dbg !5594
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5598, !tbaa !628
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5529, metadata !621) #13, !dbg !5599
  %7 = icmp eq i8* %6, null, !dbg !5600
  br i1 %7, label %8, label %123, !dbg !5601

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.159, i64 0, i64 0)) #13, !dbg !5602
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5530, metadata !621) #13, !dbg !5603
  %10 = icmp eq i8* %9, null, !dbg !5604
  br i1 %10, label %14, label %11, !dbg !5606

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5607, !tbaa !749
  %13 = icmp eq i8 %12, 0, !dbg !5608
  br i1 %13, label %14, label %15, !dbg !5609

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5610

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.160, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5530, metadata !621) #13, !dbg !5603
  %17 = tail call i64 @strlen(i8* nonnull %16) #15, !dbg !5611
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5533, metadata !621) #13, !dbg !5612
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5535, metadata !621) #13, !dbg !5613
  %18 = icmp eq i64 %17, 0, !dbg !5614
  br i1 %18, label %24, label %19, !dbg !5615

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5616
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5616
  %22 = load i8, i8* %21, align 1, !dbg !5616, !tbaa !749
  %23 = icmp ne i8 %22, 47, !dbg !5616
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5617
  %27 = add i64 %17, 14, !dbg !5618
  %28 = add i64 %27, %26, !dbg !5619
  %29 = tail call noalias i8* @malloc(i64 %28) #13, !dbg !5620
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5532, metadata !621) #13, !dbg !5621
  %30 = icmp eq i8* %29, null, !dbg !5622
  br i1 %30, label %121, label %31, !dbg !5622

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #13, !dbg !5623
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5626

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5627, !tbaa !749
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5629
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.161, i64 0, i64 0), i64 14, i32 1, i1 false) #13, !dbg !5630
  br label %37, !dbg !5631

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5629
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.161, i64 0, i64 0), i64 14, i32 1, i1 false) #13, !dbg !5630
  br label %37, !dbg !5631

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #13, !dbg !5632
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5537, metadata !621) #13, !dbg !5633
  %39 = icmp slt i32 %38, 0, !dbg !5634
  br i1 %39, label %119, label %40, !dbg !5635

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.162, i64 0, i64 0)) #13, !dbg !5636
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5538, metadata !621) #13, !dbg !5637
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5638
  br i1 %42, label %43, label %45, !dbg !5639

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #13, !dbg !5640
  br label %119, !dbg !5642

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !5579, metadata !621) #13, !dbg !5643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5580, metadata !621) #13, !dbg !5644
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5645

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !5646

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5579, metadata !621) #13, !dbg !5643
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5580, metadata !621) #13, !dbg !5644
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #13, !dbg !5646
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #13, !dbg !5647
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5648, metadata !621) #13, !dbg !5653
  %54 = load i8*, i8** %48, align 8, !dbg !5655, !tbaa !5656
  %55 = load i8*, i8** %49, align 8, !dbg !5655, !tbaa !5657
  %56 = icmp ult i8* %54, %55, !dbg !5655
  br i1 %56, label %59, label %57, !dbg !5655, !prof !748

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #13, !dbg !5655
  br label %63, !dbg !5655

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !5655
  store i8* %60, i8** %48, align 8, !dbg !5655, !tbaa !5656
  %61 = load i8, i8* %54, align 1, !dbg !5655, !tbaa !749
  %62 = zext i8 %61 to i32, !dbg !5655
  br label %63, !dbg !5655

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !5655
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !5581, metadata !621) #13, !dbg !5658
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !5659, !llvm.loop !5660

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !5665

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5648, metadata !621) #13, !dbg !5667
  %67 = load i8*, i8** %48, align 8, !dbg !5665, !tbaa !5656
  %68 = load i8*, i8** %49, align 8, !dbg !5665, !tbaa !5657
  %69 = icmp ult i8* %67, %68, !dbg !5665
  br i1 %69, label %72, label %70, !dbg !5665, !prof !748

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #13, !dbg !5665
  br label %76, !dbg !5665

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !5665
  store i8* %73, i8** %48, align 8, !dbg !5665, !tbaa !5656
  %74 = load i8, i8* %67, align 1, !dbg !5665, !tbaa !749
  %75 = zext i8 %74 to i32, !dbg !5665
  br label %76, !dbg !5665

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !5665
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !5581, metadata !621) #13, !dbg !5658
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !5668, !llvm.loop !5669

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #13, !dbg !5672
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.163, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #13, !dbg !5673
  %81 = icmp slt i32 %80, 2, !dbg !5675
  br i1 %81, label %112, label %82, !dbg !5676

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #15, !dbg !5677
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5586, metadata !621) #13, !dbg !5678
  %84 = call i64 @strlen(i8* nonnull %47) #15, !dbg !5679
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !5587, metadata !621) #13, !dbg !5680
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5588, metadata !621) #13, !dbg !5681
  %85 = icmp eq i64 %51, 0, !dbg !5682
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !5684

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !5580, metadata !621) #13, !dbg !5644
  %90 = add i64 %87, 2, !dbg !5685
  %91 = call noalias i8* @malloc(i64 %90) #13, !dbg !5687
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !5579, metadata !621) #13, !dbg !5643
  br label %96, !dbg !5688

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !5689
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !5580, metadata !621) #13, !dbg !5644
  %94 = add i64 %93, 1, !dbg !5691
  %95 = call i8* @realloc(i8* %52, i64 %94) #13, !dbg !5692
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !5579, metadata !621) #13, !dbg !5643
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5579, metadata !621) #13, !dbg !5643
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !5580, metadata !621) #13, !dbg !5644
  %99 = icmp eq i8* %98, null, !dbg !5693
  br i1 %99, label %100, label %102, !dbg !5695

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5580, metadata !621) #13, !dbg !5644
  call void @free(i8* %52) #13, !dbg !5696
  br label %112, !dbg !5698

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #13, !dbg !5699
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #13, !dbg !5699
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !5700
  %104 = xor i64 %84, -1, !dbg !5701
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5701
  %106 = xor i64 %83, -1, !dbg !5702
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !5702
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !5703, metadata !621) #13, !dbg !5712
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !5711, metadata !621) #13, !dbg !5712
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #13, !dbg !5714
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #13, !dbg !5715
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5703, metadata !621) #13, !dbg !5716
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !5711, metadata !621) #13, !dbg !5716
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #13, !dbg !5718
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #13, !dbg !5719
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5579, metadata !621) #13, !dbg !5643
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !5580, metadata !621) #13, !dbg !5644
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #13, !dbg !5699
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #13, !dbg !5699
  br label %50, !dbg !5720, !llvm.loop !5669

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #13, !dbg !5699
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #13, !dbg !5699
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #13, !dbg !5721
  %116 = icmp eq i64 %113, 0, !dbg !5722
  br i1 %116, label %119, label %117, !dbg !5724

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !5725
  store i8 0, i8* %118, align 1, !dbg !5727, !tbaa !749
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.158, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.158, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.158, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !5529, metadata !621) #13, !dbg !5599
  call void @free(i8* %29) #13, !dbg !5728
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.158, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !5529, metadata !621) #13, !dbg !5599
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !5729, !tbaa !628
  br label %123, !dbg !5730

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5529, metadata !621) #13, !dbg !5599
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5514, metadata !621), !dbg !5731
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5514, metadata !621), !dbg !5731
  %125 = load i8, i8* %124, align 1, !dbg !5732, !tbaa !749
  %126 = icmp eq i8 %125, 0, !dbg !5734
  br i1 %126, label %152, label %127, !dbg !5735

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !5736

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !5514, metadata !621), !dbg !5731
  %131 = call i32 @strcmp(i8* %5, i8* %130) #15, !dbg !5736
  %132 = icmp eq i32 %131, 0, !dbg !5738
  br i1 %132, label %139, label %133, !dbg !5739

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !5740
  br i1 %134, label %135, label %143, !dbg !5741

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !5742
  %137 = load i8, i8* %136, align 1, !dbg !5742, !tbaa !749
  %138 = icmp eq i8 %137, 0, !dbg !5743
  br i1 %138, label %139, label %143, !dbg !5744

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #15, !dbg !5745
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !5747
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !5748
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !5513, metadata !621), !dbg !5594
  br label %152, !dbg !5749

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #15, !dbg !5750
  %145 = add i64 %144, 1, !dbg !5751
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !5752
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5514, metadata !621), !dbg !5731
  %147 = call i64 @strlen(i8* %146) #15, !dbg !5753
  %148 = add i64 %147, 1, !dbg !5754
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !5755
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !5514, metadata !621), !dbg !5731
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !5514, metadata !621), !dbg !5731
  %150 = load i8, i8* %149, align 1, !dbg !5732, !tbaa !749
  %151 = icmp eq i8 %150, 0, !dbg !5734
  br i1 %151, label %152, label %128, !dbg !5735, !llvm.loop !5756

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5513, metadata !621), !dbg !5594
  %154 = load i8, i8* %153, align 1, !dbg !5758, !tbaa !749
  %155 = icmp eq i8 %154, 0, !dbg !5760
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.164, i64 0, i64 0), i8* %153, !dbg !5761
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !5513, metadata !621), !dbg !5594
  ret i8* %156, !dbg !5762
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

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5763 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5808, metadata !621), !dbg !5812
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5809, metadata !621), !dbg !5813
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5811, metadata !621), !dbg !5814
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !5815
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5810, metadata !621), !dbg !5816
  %3 = icmp slt i32 %2, 0, !dbg !5817
  br i1 %3, label %4, label %6, !dbg !5819

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5820
  br label %24, !dbg !5821

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !5822
  %8 = icmp eq i32 %7, 0, !dbg !5822
  br i1 %8, label %13, label %9, !dbg !5824

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !5825
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #13, !dbg !5826
  %12 = icmp eq i64 %11, -1, !dbg !5827
  br i1 %12, label %16, label %13, !dbg !5828

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #13, !dbg !5829
  %15 = icmp eq i32 %14, 0, !dbg !5829
  br i1 %15, label %16, label %18, !dbg !5830

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5809, metadata !621), !dbg !5813
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5831
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5811, metadata !621), !dbg !5814
  br label %24, !dbg !5832

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #18, !dbg !5833
  %20 = load i32, i32* %19, align 4, !dbg !5833, !tbaa !700
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5809, metadata !621), !dbg !5813
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5809, metadata !621), !dbg !5813
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5831
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5811, metadata !621), !dbg !5814
  %22 = icmp eq i32 %20, 0, !dbg !5834
  br i1 %22, label %24, label %23, !dbg !5832

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5836, !tbaa !700
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5811, metadata !621), !dbg !5814
  br label %24, !dbg !5838

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5839
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5840 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5885, metadata !621), !dbg !5886
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5887
  br i1 %2, label %6, label %3, !dbg !5889

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !5890
  %5 = icmp eq i32 %4, 0, !dbg !5890
  br i1 %5, label %6, label %8, !dbg !5891

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5892
  br label %17, !dbg !5893

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5894, metadata !621) #13, !dbg !5899
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5901
  %10 = load i32, i32* %9, align 8, !dbg !5901, !tbaa !5317
  %11 = and i32 %10, 256, !dbg !5903
  %12 = icmp eq i32 %11, 0, !dbg !5903
  br i1 %12, label %15, label %13, !dbg !5904

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #13, !dbg !5905
  br label %15, !dbg !5905

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5906
  br label %17, !dbg !5907

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5908
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5909 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5955, metadata !621), !dbg !5961
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5956, metadata !621), !dbg !5962
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5957, metadata !621), !dbg !5963
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5964
  %5 = load i8*, i8** %4, align 8, !dbg !5964, !tbaa !5657
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5965
  %7 = load i8*, i8** %6, align 8, !dbg !5965, !tbaa !5656
  %8 = icmp eq i8* %5, %7, !dbg !5966
  br i1 %8, label %9, label %28, !dbg !5967

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5968
  %11 = load i8*, i8** %10, align 8, !dbg !5968, !tbaa !743
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5969
  %13 = load i8*, i8** %12, align 8, !dbg !5969, !tbaa !5970
  %14 = icmp eq i8* %11, %13, !dbg !5971
  br i1 %14, label %15, label %28, !dbg !5972

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5973
  %17 = load i8*, i8** %16, align 8, !dbg !5973, !tbaa !5974
  %18 = icmp eq i8* %17, null, !dbg !5975
  br i1 %18, label %19, label %28, !dbg !5976

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !5977
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #13, !dbg !5978
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5958, metadata !621), !dbg !5979
  %22 = icmp eq i64 %21, -1, !dbg !5980
  br i1 %22, label %30, label %23, !dbg !5982

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5983
  %25 = load i32, i32* %24, align 8, !dbg !5984, !tbaa !5317
  %26 = and i32 %25, -17, !dbg !5984
  store i32 %26, i32* %24, align 8, !dbg !5984, !tbaa !5317
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5985
  store i64 %21, i64* %27, align 8, !dbg !5986, !tbaa !5987
  br label %30, !dbg !5988

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5989
  br label %30, !dbg !5990

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5991
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
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2, !74, !546, !549, !80, !88, !552, !95, !554, !116, !123, !556, !558, !191, !565, !582, !584, !586, !588, !591, !593, !595, !597, !600, !602, !200, !604, !606, !608}
!llvm.ident = !{!610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610}
!llvm.module.flags = !{!611, !612, !613, !614, !615}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 40, type: !59, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !31)
!3 = !DIFile(filename: "src/readlink.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "canonicalize_mode_t", file: !6, line: 24, size: 32, elements: !7)
!6 = !DIFile(filename: "./lib/canonicalize.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "CAN_EXISTING", value: 0)
!9 = !DIEnumerator(name: "CAN_ALL_BUT_LAST", value: 1)
!10 = !DIEnumerator(name: "CAN_MISSING", value: 2)
!11 = !DIEnumerator(name: "CAN_NOLINKS", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !13, line: 32, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!15 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!16 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!17 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!18 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!19 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!20 = !DIEnumerator(name: "c_quoting_style", value: 5)
!21 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!22 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!23 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!24 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!25 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!26 = !{!27, !29, !30}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !{!32, !35, !37, !0}
!32 = !DIGlobalVariableExpression(var: !33)
!33 = distinct !DIGlobalVariable(name: "no_newline", scope: !2, file: !3, line: 35, type: !34, isLocal: true, isDefinition: true)
!34 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!35 = !DIGlobalVariableExpression(var: !36)
!36 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 38, type: !34, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38)
!38 = distinct !DIGlobalVariable(name: "infomap", scope: !39, file: !40, line: 632, type: !56, isLocal: true, isDefinition: true)
!39 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !40, file: !40, line: 630, type: !41, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !45)
!40 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!45 = !{!46, !47, !48, !55}
!46 = !DILocalVariable(name: "program", arg: 1, scope: !39, file: !40, line: 630, type: !43)
!47 = !DILocalVariable(name: "node", scope: !39, file: !40, line: 642, type: !43)
!48 = !DILocalVariable(name: "map_prog", scope: !39, file: !40, line: 643, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !39, file: !40, line: 632, size: 128, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !51, file: !40, line: 632, baseType: !43, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !51, file: !40, line: 632, baseType: !43, size: 64, offset: 64)
!55 = !DILocalVariable(name: "lc_messages", scope: !39, file: !40, line: 655, type: !43)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 896, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 7)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2816, elements: !70)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !62, line: 50, size: 256, elements: !63)
!62 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!63 = !{!64, !65, !67, !69}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !61, file: !62, line: 52, baseType: !43, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !61, file: !62, line: 55, baseType: !66, size: 32, offset: 64)
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !61, file: !62, line: 56, baseType: !68, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !61, file: !62, line: 57, baseType: !66, size: 32, offset: 192)
!70 = !{!71}
!71 = !DISubrange(count: 11)
!72 = !DIGlobalVariableExpression(var: !73)
!73 = distinct !DIGlobalVariable(name: "Version", scope: !74, file: !75, line: 2, type: !43, isLocal: false, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, globals: !77)
!75 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!76 = !{}
!77 = !{!72}
!78 = !DIGlobalVariableExpression(var: !79)
!79 = distinct !DIGlobalVariable(name: "file_name", scope: !80, file: !85, line: 36, type: !43, isLocal: true, isDefinition: true)
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, globals: !82)
!81 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!82 = !{!78, !83}
!83 = !DIGlobalVariableExpression(var: !84)
!84 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !80, file: !85, line: 46, type: !34, isLocal: true, isDefinition: true)
!85 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!86 = !DIGlobalVariableExpression(var: !87)
!87 = distinct !DIGlobalVariable(name: "exit_failure", scope: !88, file: !91, line: 24, type: !92, isLocal: false, isDefinition: true)
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, globals: !90)
!89 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!90 = !{!86}
!91 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!92 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !66)
!93 = !DIGlobalVariableExpression(var: !94)
!94 = distinct !DIGlobalVariable(name: "default_tuning", scope: !95, file: !102, line: 130, type: !103, isLocal: true, isDefinition: true)
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !97, globals: !101)
!96 = !DIFile(filename: "./lib/hash.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!97 = !{!98, !29, !99}
!98 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 62, baseType: !98)
!100 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !{!93}
!102 = !DIFile(filename: "lib/hash.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_tuning", file: !105, line: 65, baseType: !106)
!105 = !DIFile(filename: "./lib/hash.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_tuning", file: !105, line: 53, size: 160, elements: !107)
!107 = !{!108, !110, !111, !112, !113}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "shrink_threshold", scope: !106, file: !105, line: 58, baseType: !109, size: 32)
!109 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "shrink_factor", scope: !106, file: !105, line: 59, baseType: !109, size: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "growth_threshold", scope: !106, file: !105, line: 60, baseType: !109, size: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "growth_factor", scope: !106, file: !105, line: 61, baseType: !109, size: 32, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "is_n_buckets", scope: !106, file: !105, line: 62, baseType: !34, size: 8, offset: 128)
!114 = !DIGlobalVariableExpression(var: !115)
!115 = distinct !DIGlobalVariable(name: "program_name", scope: !116, file: !120, line: 33, type: !43, isLocal: false, isDefinition: true)
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !118, globals: !119)
!117 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!118 = !{!29, !27}
!119 = !{!114}
!120 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !DIGlobalVariableExpression(var: !122)
!122 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !123, file: !151, line: 77, type: !187, isLocal: false, isDefinition: true)
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !125, retainedTypes: !146, globals: !148)
!124 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!125 = !{!12, !126, !131}
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !13, line: 242, size: 32, elements: !127)
!127 = !{!128, !129, !130}
!128 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!129 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!130 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !132, line: 46, size: 32, elements: !133)
!132 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!134 = !DIEnumerator(name: "_ISupper", value: 256)
!135 = !DIEnumerator(name: "_ISlower", value: 512)
!136 = !DIEnumerator(name: "_ISalpha", value: 1024)
!137 = !DIEnumerator(name: "_ISdigit", value: 2048)
!138 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!139 = !DIEnumerator(name: "_ISspace", value: 8192)
!140 = !DIEnumerator(name: "_ISprint", value: 16384)
!141 = !DIEnumerator(name: "_ISgraph", value: 32768)
!142 = !DIEnumerator(name: "_ISblank", value: 1)
!143 = !DIEnumerator(name: "_IScntrl", value: 2)
!144 = !DIEnumerator(name: "_ISpunct", value: 4)
!145 = !DIEnumerator(name: "_ISalnum", value: 8)
!146 = !{!66, !147, !99, !27}
!147 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!148 = !{!121, !149, !156, !169, !171, !176, !183, !185}
!149 = !DIGlobalVariableExpression(var: !150)
!150 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !123, file: !151, line: 93, type: !152, isLocal: false, isDefinition: true)
!151 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 320, elements: !154)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!154 = !{!155}
!155 = !DISubrange(count: 10)
!156 = !DIGlobalVariableExpression(var: !157)
!157 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !123, file: !151, line: 1043, type: !158, isLocal: false, isDefinition: true)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !151, line: 57, size: 448, elements: !159)
!159 = !{!160, !161, !162, !167, !168}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !158, file: !151, line: 60, baseType: !12, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !158, file: !151, line: 63, baseType: !66, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !158, file: !151, line: 67, baseType: !163, size: 256, offset: 64)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !165)
!164 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!165 = !{!166}
!166 = !DISubrange(count: 8)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !158, file: !151, line: 70, baseType: !43, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !158, file: !151, line: 73, baseType: !43, size: 64, offset: 384)
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !123, file: !151, line: 108, type: !158, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172)
!172 = distinct !DIGlobalVariable(name: "slot0", scope: !123, file: !151, line: 834, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 256)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "slotvec", scope: !123, file: !151, line: 837, type: !178, isLocal: true, isDefinition: true)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !151, line: 826, size: 128, elements: !180)
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !179, file: !151, line: 828, baseType: !99, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !179, file: !151, line: 829, baseType: !27, size: 64, offset: 64)
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "nslots", scope: !123, file: !151, line: 835, type: !66, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "slotvec0", scope: !123, file: !151, line: 836, type: !179, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 704, elements: !70)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !191, file: !194, line: 26, type: !195, isLocal: false, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, globals: !193)
!192 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!193 = !{!189}
!194 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 376, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 47)
!198 = !DIGlobalVariableExpression(var: !199)
!199 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !200, file: !544, line: 120, type: !545, isLocal: true, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !202, retainedTypes: !541, globals: !543)
!201 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!202 = !{!203}
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !204, line: 41, size: 32, elements: !205)
!204 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!206 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!207 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!208 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!209 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!210 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!211 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!212 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!213 = !DIEnumerator(name: "DAY_1", value: 131079)
!214 = !DIEnumerator(name: "DAY_2", value: 131080)
!215 = !DIEnumerator(name: "DAY_3", value: 131081)
!216 = !DIEnumerator(name: "DAY_4", value: 131082)
!217 = !DIEnumerator(name: "DAY_5", value: 131083)
!218 = !DIEnumerator(name: "DAY_6", value: 131084)
!219 = !DIEnumerator(name: "DAY_7", value: 131085)
!220 = !DIEnumerator(name: "ABMON_1", value: 131086)
!221 = !DIEnumerator(name: "ABMON_2", value: 131087)
!222 = !DIEnumerator(name: "ABMON_3", value: 131088)
!223 = !DIEnumerator(name: "ABMON_4", value: 131089)
!224 = !DIEnumerator(name: "ABMON_5", value: 131090)
!225 = !DIEnumerator(name: "ABMON_6", value: 131091)
!226 = !DIEnumerator(name: "ABMON_7", value: 131092)
!227 = !DIEnumerator(name: "ABMON_8", value: 131093)
!228 = !DIEnumerator(name: "ABMON_9", value: 131094)
!229 = !DIEnumerator(name: "ABMON_10", value: 131095)
!230 = !DIEnumerator(name: "ABMON_11", value: 131096)
!231 = !DIEnumerator(name: "ABMON_12", value: 131097)
!232 = !DIEnumerator(name: "MON_1", value: 131098)
!233 = !DIEnumerator(name: "MON_2", value: 131099)
!234 = !DIEnumerator(name: "MON_3", value: 131100)
!235 = !DIEnumerator(name: "MON_4", value: 131101)
!236 = !DIEnumerator(name: "MON_5", value: 131102)
!237 = !DIEnumerator(name: "MON_6", value: 131103)
!238 = !DIEnumerator(name: "MON_7", value: 131104)
!239 = !DIEnumerator(name: "MON_8", value: 131105)
!240 = !DIEnumerator(name: "MON_9", value: 131106)
!241 = !DIEnumerator(name: "MON_10", value: 131107)
!242 = !DIEnumerator(name: "MON_11", value: 131108)
!243 = !DIEnumerator(name: "MON_12", value: 131109)
!244 = !DIEnumerator(name: "AM_STR", value: 131110)
!245 = !DIEnumerator(name: "PM_STR", value: 131111)
!246 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!247 = !DIEnumerator(name: "D_FMT", value: 131113)
!248 = !DIEnumerator(name: "T_FMT", value: 131114)
!249 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!250 = !DIEnumerator(name: "ERA", value: 131116)
!251 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!252 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!253 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!254 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!255 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!256 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!257 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!258 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!259 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!260 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!261 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!262 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!263 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!264 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!265 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!266 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!267 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!268 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!269 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!270 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!271 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!272 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!273 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!274 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!275 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!276 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!277 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!278 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!279 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!280 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!281 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!282 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!283 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!284 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!285 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!286 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!287 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!288 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!289 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!290 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!291 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!292 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!293 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!294 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!295 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!296 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!297 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!298 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!299 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!300 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!301 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!302 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!303 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!304 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!305 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!306 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!307 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!308 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!309 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!310 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!311 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!312 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!313 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!314 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!315 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!316 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!317 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!318 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!319 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!320 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!321 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!322 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!323 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!324 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!325 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!326 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!327 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!328 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!329 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!330 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!331 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!332 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!333 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!334 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!335 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!336 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!337 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!338 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!339 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!340 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!341 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!342 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!343 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!344 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!345 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!346 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!347 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!348 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!349 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!350 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!351 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!352 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!353 = !DIEnumerator(name: "CODESET", value: 14)
!354 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!355 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!356 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!357 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!400 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!401 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!402 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!403 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!404 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!405 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!406 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!407 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!408 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!409 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!410 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!416 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!418 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!425 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!426 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!427 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!428 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!429 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!430 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!431 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!432 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!433 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!434 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!435 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!436 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!437 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!438 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!439 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!440 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!441 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!442 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!443 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!444 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!445 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!446 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!447 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!464 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!465 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!468 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!469 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!470 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!471 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!472 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!473 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!474 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!475 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!476 = !DIEnumerator(name: "THOUSEP", value: 65537)
!477 = !DIEnumerator(name: "__GROUPING", value: 65538)
!478 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!479 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!480 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!481 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!482 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!483 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!484 = !DIEnumerator(name: "__YESSTR", value: 327682)
!485 = !DIEnumerator(name: "__NOSTR", value: 327683)
!486 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!487 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!488 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!489 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!490 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!491 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!492 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!493 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!494 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!495 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!496 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!497 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!498 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!499 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!500 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!501 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!502 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!503 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!504 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!505 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!506 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!507 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!508 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!509 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!510 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!511 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!512 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!513 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!514 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!515 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!516 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!517 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!518 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!519 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!520 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!521 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!522 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!539 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!540 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!541 = !{!29, !27, !542}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!543 = !{!198}
!544 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!545 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!546 = distinct !DICompileUnit(language: DW_LANG_C99, file: !547, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !548)
!547 = !DIFile(filename: "./lib/areadlink-with-size.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!548 = !{!29}
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !551, retainedTypes: !548)
!550 = !DIFile(filename: "./lib/canonicalize.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = !{!5}
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !118)
!553 = !DIFile(filename: "./lib/file-set.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = distinct !DICompileUnit(language: DW_LANG_C99, file: !555, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76)
!555 = !DIFile(filename: "./lib/hash-triple.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !557, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76)
!557 = !DIFile(filename: "./lib/same.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !560, retainedTypes: !548)
!559 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!560 = !{!561}
!561 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !562, line: 41, size: 32, elements: !563)
!562 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!563 = !{!564}
!564 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !567, retainedTypes: !581)
!566 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = !{!568}
!568 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !570, file: !569, line: 192, size: 32, elements: !579)
!569 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = distinct !DISubprogram(name: "x2nrealloc", scope: !569, file: !569, line: 180, type: !571, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !574)
!571 = !DISubroutineType(types: !572)
!572 = !{!29, !29, !573, !99}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!574 = !{!575, !576, !577, !578}
!575 = !DILocalVariable(name: "p", arg: 1, scope: !570, file: !569, line: 180, type: !29)
!576 = !DILocalVariable(name: "pn", arg: 2, scope: !570, file: !569, line: 180, type: !573)
!577 = !DILocalVariable(name: "s", arg: 3, scope: !570, file: !569, line: 180, type: !99)
!578 = !DILocalVariable(name: "n", scope: !570, file: !569, line: 182, type: !99)
!579 = !{!580}
!580 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!581 = !{!99, !27, !29}
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76)
!583 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76)
!585 = !DIFile(filename: "./lib/xgetcwd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !548)
!587 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !590)
!589 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = !{!99}
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76)
!592 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76)
!594 = !DIFile(filename: "./lib/dirname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76)
!596 = !DIFile(filename: "./lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !599)
!598 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = !{!27}
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76)
!601 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76)
!603 = !DIFile(filename: "./lib/hash-pjw.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = distinct !DICompileUnit(language: DW_LANG_C99, file: !605, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76)
!605 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!606 = distinct !DICompileUnit(language: DW_LANG_C99, file: !607, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !548)
!607 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !548)
!609 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!611 = !{i32 2, !"Dwarf Version", i32 4}
!612 = !{i32 2, !"Debug Info Version", i32 3}
!613 = !{i32 1, !"wchar_size", i32 4}
!614 = !{i32 7, !"PIC Level", i32 2}
!615 = !{i32 7, !"PIE Level", i32 2}
!616 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 56, type: !617, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !66}
!619 = !{!620}
!620 = !DILocalVariable(name: "status", arg: 1, scope: !616, file: !3, line: 56, type: !66)
!621 = !DIExpression()
!622 = !DILocation(line: 56, column: 12, scope: !616)
!623 = !DILocation(line: 58, column: 14, scope: !624)
!624 = distinct !DILexicalBlock(scope: !616, file: !3, line: 58, column: 7)
!625 = !DILocation(line: 58, column: 7, scope: !616)
!626 = !DILocation(line: 59, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !624, file: !3, line: 59, column: 5)
!628 = !{!629, !629, i64 0}
!629 = !{!"any pointer", !630, i64 0}
!630 = !{!"omnipotent char", !631, i64 0}
!631 = !{!"Simple C/C++ TBAA"}
!632 = !DILocation(line: 62, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !624, file: !3, line: 61, column: 5)
!634 = !DILocation(line: 63, column: 7, scope: !633)
!635 = !DILocation(line: 65, column: 7, scope: !633)
!636 = !DILocation(line: 75, column: 7, scope: !633)
!637 = !DILocation(line: 86, column: 7, scope: !633)
!638 = !DILocation(line: 87, column: 7, scope: !633)
!639 = !DILocation(line: 642, column: 15, scope: !39, inlinedAt: !640)
!640 = distinct !DILocation(line: 88, column: 7, scope: !633)
!641 = !DILocation(line: 651, column: 3, scope: !39, inlinedAt: !640)
!642 = !DILocation(line: 655, column: 29, scope: !39, inlinedAt: !640)
!643 = !DILocation(line: 655, column: 15, scope: !39, inlinedAt: !640)
!644 = !DILocation(line: 656, column: 7, scope: !645, inlinedAt: !640)
!645 = distinct !DILexicalBlock(scope: !39, file: !40, line: 656, column: 7)
!646 = !DILocation(line: 656, column: 19, scope: !645, inlinedAt: !640)
!647 = !DILocation(line: 656, column: 22, scope: !645, inlinedAt: !640)
!648 = !DILocation(line: 656, column: 7, scope: !39, inlinedAt: !640)
!649 = !DILocation(line: 662, column: 7, scope: !650, inlinedAt: !640)
!650 = distinct !DILexicalBlock(scope: !645, file: !40, line: 657, column: 5)
!651 = !DILocation(line: 664, column: 5, scope: !650, inlinedAt: !640)
!652 = !DILocation(line: 665, column: 3, scope: !39, inlinedAt: !640)
!653 = !DILocation(line: 667, column: 3, scope: !39, inlinedAt: !640)
!654 = !DILocation(line: 90, column: 3, scope: !616)
!655 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 94, type: !656, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !659)
!656 = !DISubroutineType(types: !657)
!657 = !{!66, !66, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !670}
!660 = !DILocalVariable(name: "argc", arg: 1, scope: !655, file: !3, line: 94, type: !66)
!661 = !DILocalVariable(name: "argv", arg: 2, scope: !655, file: !3, line: 94, type: !658)
!662 = !DILocalVariable(name: "can_mode", scope: !655, file: !3, line: 97, type: !66)
!663 = !DILocalVariable(name: "status", scope: !655, file: !3, line: 98, type: !66)
!664 = !DILocalVariable(name: "optc", scope: !655, file: !3, line: 99, type: !66)
!665 = !DILocalVariable(name: "use_nuls", scope: !655, file: !3, line: 100, type: !34)
!666 = !DILocalVariable(name: "fname", scope: !667, file: !3, line: 158, type: !43)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 157, column: 5)
!668 = distinct !DILexicalBlock(scope: !669, file: !3, line: 156, column: 3)
!669 = distinct !DILexicalBlock(scope: !655, file: !3, line: 156, column: 3)
!670 = !DILocalVariable(name: "value", scope: !667, file: !3, line: 159, type: !27)
!671 = !DILocation(line: 94, column: 11, scope: !655)
!672 = !DILocation(line: 94, column: 24, scope: !655)
!673 = !DILocation(line: 97, column: 7, scope: !655)
!674 = !DILocation(line: 98, column: 7, scope: !655)
!675 = !DILocation(line: 100, column: 8, scope: !655)
!676 = !DILocation(line: 103, column: 21, scope: !655)
!677 = !DILocation(line: 103, column: 3, scope: !655)
!678 = !DILocation(line: 104, column: 3, scope: !655)
!679 = !DILocation(line: 105, column: 3, scope: !655)
!680 = !DILocation(line: 106, column: 3, scope: !655)
!681 = !DILocation(line: 108, column: 3, scope: !655)
!682 = !DILocation(line: 110, column: 3, scope: !655)
!683 = !DILocation(line: 110, column: 18, scope: !655)
!684 = !DILocation(line: 99, column: 7, scope: !655)
!685 = distinct !{!685, !682, !686}
!686 = !DILocation(line: 141, column: 5, scope: !655)
!687 = !DILocation(line: 119, column: 11, scope: !688)
!688 = distinct !DILexicalBlock(scope: !689, file: !3, line: 113, column: 9)
!689 = distinct !DILexicalBlock(scope: !655, file: !3, line: 111, column: 5)
!690 = !DILocation(line: 122, column: 11, scope: !688)
!691 = !DILocation(line: 125, column: 11, scope: !688)
!692 = !DILocation(line: 129, column: 11, scope: !688)
!693 = !DILocation(line: 132, column: 11, scope: !688)
!694 = !DILocation(line: 135, column: 11, scope: !688)
!695 = !DILocation(line: 136, column: 9, scope: !688)
!696 = !DILocation(line: 137, column: 9, scope: !688)
!697 = !DILocation(line: 139, column: 11, scope: !688)
!698 = !DILocation(line: 143, column: 7, scope: !699)
!699 = distinct !DILexicalBlock(scope: !655, file: !3, line: 143, column: 7)
!700 = !{!701, !701, i64 0}
!701 = !{!"int", !630, i64 0}
!702 = !DILocation(line: 143, column: 14, scope: !699)
!703 = !DILocation(line: 143, column: 7, scope: !655)
!704 = !DILocation(line: 145, column: 20, scope: !705)
!705 = distinct !DILexicalBlock(scope: !699, file: !3, line: 144, column: 5)
!706 = !DILocation(line: 145, column: 7, scope: !705)
!707 = !DILocation(line: 146, column: 7, scope: !705)
!708 = !DILocation(line: 149, column: 12, scope: !709)
!709 = distinct !DILexicalBlock(scope: !655, file: !3, line: 149, column: 7)
!710 = !DILocation(line: 149, column: 21, scope: !709)
!711 = !DILocation(line: 149, column: 7, scope: !655)
!712 = !DILocation(line: 151, column: 11, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !3, line: 150, column: 5)
!714 = !DILocation(line: 152, column: 22, scope: !715)
!715 = distinct !DILexicalBlock(scope: !713, file: !3, line: 151, column: 11)
!716 = !DILocation(line: 152, column: 9, scope: !715)
!717 = !DILocation(line: 156, column: 10, scope: !668)
!718 = !DILocation(line: 154, column: 5, scope: !713)
!719 = !DILocation(line: 156, column: 17, scope: !668)
!720 = !DILocation(line: 156, column: 3, scope: !669)
!721 = !DILocation(line: 158, column: 27, scope: !667)
!722 = !DILocation(line: 158, column: 19, scope: !667)
!723 = !DILocation(line: 159, column: 22, scope: !667)
!724 = !DILocation(line: 160, column: 24, scope: !667)
!725 = !DILocation(line: 161, column: 24, scope: !667)
!726 = !DILocation(line: 159, column: 13, scope: !667)
!727 = !DILocation(line: 162, column: 11, scope: !728)
!728 = distinct !DILexicalBlock(scope: !667, file: !3, line: 162, column: 11)
!729 = !DILocation(line: 162, column: 11, scope: !667)
!730 = !DILocation(line: 164, column: 11, scope: !731)
!731 = distinct !DILexicalBlock(scope: !728, file: !3, line: 163, column: 9)
!732 = !DILocation(line: 165, column: 15, scope: !731)
!733 = !DILocalVariable(name: "__c", arg: 1, scope: !734, file: !735, line: 105, type: !66)
!734 = distinct !DISubprogram(name: "putchar_unlocked", scope: !735, file: !735, line: 105, type: !736, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !738)
!735 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!736 = !DISubroutineType(types: !737)
!737 = !{!66, !66}
!738 = !{!733}
!739 = !DILocation(line: 105, column: 23, scope: !734, inlinedAt: !740)
!740 = distinct !DILocation(line: 166, column: 13, scope: !741)
!741 = distinct !DILexicalBlock(scope: !731, file: !3, line: 165, column: 15)
!742 = !DILocation(line: 107, column: 10, scope: !734, inlinedAt: !740)
!743 = !{!744, !629, i64 40}
!744 = !{!"_IO_FILE", !701, i64 0, !629, i64 8, !629, i64 16, !629, i64 24, !629, i64 32, !629, i64 40, !629, i64 48, !629, i64 56, !629, i64 64, !629, i64 72, !629, i64 80, !629, i64 88, !629, i64 96, !629, i64 104, !701, i64 112, !701, i64 116, !745, i64 120, !746, i64 128, !630, i64 130, !630, i64 131, !629, i64 136, !745, i64 144, !629, i64 152, !629, i64 160, !629, i64 168, !629, i64 176, !745, i64 184, !701, i64 192, !630, i64 196}
!745 = !{!"long", !630, i64 0}
!746 = !{!"short", !630, i64 0}
!747 = !{!744, !629, i64 48}
!748 = !{!"branch_weights", i32 2000, i32 1}
!749 = !{!630, !630, i64 0}
!750 = !DILocation(line: 167, column: 11, scope: !731)
!751 = !DILocation(line: 168, column: 9, scope: !731)
!752 = !DILocation(line: 172, column: 15, scope: !753)
!753 = distinct !DILexicalBlock(scope: !728, file: !3, line: 170, column: 9)
!754 = !DILocation(line: 173, column: 23, scope: !755)
!755 = distinct !DILexicalBlock(scope: !753, file: !3, line: 172, column: 15)
!756 = !DILocation(line: 173, column: 36, scope: !755)
!757 = !DILocation(line: 173, column: 13, scope: !755)
!758 = !DILocation(line: 156, column: 25, scope: !668)
!759 = distinct !{!759, !720, !760}
!760 = !DILocation(line: 175, column: 5, scope: !669)
!761 = !DILocation(line: 177, column: 3, scope: !655)
!762 = distinct !DISubprogram(name: "areadlink_with_size", scope: !763, file: !763, line: 52, type: !764, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !766)
!763 = !DIFile(filename: "lib/areadlink-with-size.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!764 = !DISubroutineType(types: !765)
!765 = !{!27, !43, !99}
!766 = !{!767, !768, !769, !770, !771, !772, !773, !780, !781, !782}
!767 = !DILocalVariable(name: "file", arg: 1, scope: !762, file: !763, line: 52, type: !43)
!768 = !DILocalVariable(name: "size", arg: 2, scope: !762, file: !763, line: 52, type: !99)
!769 = !DILocalVariable(name: "symlink_max", scope: !762, file: !763, line: 57, type: !99)
!770 = !DILocalVariable(name: "INITIAL_LIMIT_BOUND", scope: !762, file: !763, line: 58, type: !99)
!771 = !DILocalVariable(name: "initial_limit", scope: !762, file: !763, line: 59, type: !99)
!772 = !DILocalVariable(name: "buf_size", scope: !762, file: !763, line: 64, type: !99)
!773 = !DILocalVariable(name: "r", scope: !774, file: !763, line: 68, type: !775)
!774 = distinct !DILexicalBlock(scope: !762, file: !763, line: 67, column: 5)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !776, line: 109, baseType: !777)
!776 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !778, line: 181, baseType: !779)
!778 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!779 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!780 = !DILocalVariable(name: "link_length", scope: !774, file: !763, line: 69, type: !99)
!781 = !DILocalVariable(name: "buffer", scope: !774, file: !763, line: 70, type: !27)
!782 = !DILocalVariable(name: "saved_errno", scope: !783, file: !763, line: 81, type: !66)
!783 = distinct !DILexicalBlock(scope: !784, file: !763, line: 80, column: 9)
!784 = distinct !DILexicalBlock(scope: !774, file: !763, line: 79, column: 11)
!785 = !DILocation(line: 52, column: 34, scope: !762)
!786 = !DILocation(line: 52, column: 47, scope: !762)
!787 = !DILocation(line: 57, column: 10, scope: !762)
!788 = !DILocation(line: 58, column: 10, scope: !762)
!789 = !DILocation(line: 59, column: 10, scope: !762)
!790 = !DILocation(line: 64, column: 26, scope: !762)
!791 = !DILocation(line: 64, column: 49, scope: !762)
!792 = !DILocation(line: 64, column: 21, scope: !762)
!793 = !DILocation(line: 64, column: 10, scope: !762)
!794 = !DILocation(line: 70, column: 22, scope: !774)
!795 = !DILocation(line: 70, column: 13, scope: !774)
!796 = !DILocation(line: 72, column: 18, scope: !797)
!797 = distinct !DILexicalBlock(scope: !774, file: !763, line: 72, column: 11)
!798 = !DILocation(line: 72, column: 11, scope: !774)
!799 = !DILocation(line: 74, column: 11, scope: !774)
!800 = !DILocation(line: 68, column: 15, scope: !774)
!801 = !DILocation(line: 69, column: 14, scope: !774)
!802 = !DILocation(line: 79, column: 13, scope: !784)
!803 = !DILocation(line: 79, column: 17, scope: !784)
!804 = !DILocation(line: 79, column: 20, scope: !784)
!805 = !DILocation(line: 79, column: 26, scope: !784)
!806 = !DILocation(line: 79, column: 11, scope: !774)
!807 = !DILocation(line: 81, column: 15, scope: !783)
!808 = !DILocation(line: 82, column: 11, scope: !783)
!809 = !DILocation(line: 83, column: 17, scope: !783)
!810 = !DILocation(line: 87, column: 23, scope: !811)
!811 = distinct !DILexicalBlock(scope: !774, file: !763, line: 87, column: 11)
!812 = !DILocation(line: 87, column: 11, scope: !774)
!813 = !DILocation(line: 89, column: 11, scope: !814)
!814 = distinct !DILexicalBlock(scope: !811, file: !763, line: 88, column: 9)
!815 = !DILocation(line: 89, column: 31, scope: !814)
!816 = !DILocation(line: 90, column: 11, scope: !814)
!817 = !DILocation(line: 93, column: 7, scope: !774)
!818 = !DILocation(line: 94, column: 20, scope: !819)
!819 = distinct !DILexicalBlock(scope: !774, file: !763, line: 94, column: 11)
!820 = !DILocation(line: 94, column: 11, scope: !774)
!821 = !DILocation(line: 95, column: 18, scope: !819)
!822 = !DILocation(line: 95, column: 9, scope: !819)
!823 = !DILocation(line: 96, column: 25, scope: !824)
!824 = distinct !DILexicalBlock(scope: !819, file: !763, line: 96, column: 16)
!825 = !DILocation(line: 96, column: 16, scope: !819)
!826 = !DILocation(line: 100, column: 11, scope: !827)
!827 = distinct !DILexicalBlock(scope: !824, file: !763, line: 99, column: 9)
!828 = !DILocation(line: 100, column: 17, scope: !827)
!829 = !DILocation(line: 101, column: 11, scope: !827)
!830 = distinct !{!830, !831, !832}
!831 = !DILocation(line: 66, column: 3, scope: !762)
!832 = !DILocation(line: 103, column: 5, scope: !762)
!833 = !DILocation(line: 104, column: 1, scope: !762)
!834 = distinct !DISubprogram(name: "canonicalize_filename_mode", scope: !835, file: !835, line: 99, type: !836, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !839)
!835 = !DIFile(filename: "lib/canonicalize.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!836 = !DISubroutineType(types: !837)
!837 = !{!27, !43, !838}
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "canonicalize_mode_t", file: !6, line: 38, baseType: !5)
!839 = !{!840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !853, !854, !855, !856, !857, !862, !907, !911, !912, !915, !916, !917}
!840 = !DILocalVariable(name: "name", arg: 1, scope: !834, file: !835, line: 99, type: !43)
!841 = !DILocalVariable(name: "can_mode", arg: 2, scope: !834, file: !835, line: 99, type: !838)
!842 = !DILocalVariable(name: "rname", scope: !834, file: !835, line: 101, type: !27)
!843 = !DILocalVariable(name: "dest", scope: !834, file: !835, line: 101, type: !27)
!844 = !DILocalVariable(name: "extra_buf", scope: !834, file: !835, line: 101, type: !27)
!845 = !DILocalVariable(name: "start", scope: !834, file: !835, line: 102, type: !43)
!846 = !DILocalVariable(name: "end", scope: !834, file: !835, line: 103, type: !43)
!847 = !DILocalVariable(name: "rname_limit", scope: !834, file: !835, line: 104, type: !43)
!848 = !DILocalVariable(name: "extra_len", scope: !834, file: !835, line: 105, type: !99)
!849 = !DILocalVariable(name: "ht", scope: !834, file: !835, line: 106, type: !850)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_table", file: !105, line: 69, baseType: !852)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", file: !105, line: 67, flags: DIFlagFwdDecl)
!853 = !DILocalVariable(name: "saved_errno", scope: !834, file: !835, line: 107, type: !66)
!854 = !DILocalVariable(name: "can_flags", scope: !834, file: !835, line: 108, type: !66)
!855 = !DILocalVariable(name: "logical", scope: !834, file: !835, line: 109, type: !34)
!856 = !DILocalVariable(name: "prefix_len", scope: !834, file: !835, line: 110, type: !99)
!857 = !DILocalVariable(name: "p", scope: !858, file: !835, line: 144, type: !27)
!858 = distinct !DILexicalBlock(scope: !859, file: !835, line: 143, column: 9)
!859 = distinct !DILexicalBlock(scope: !860, file: !835, line: 142, column: 11)
!860 = distinct !DILexicalBlock(scope: !861, file: !835, line: 137, column: 5)
!861 = distinct !DILexicalBlock(scope: !834, file: !835, line: 136, column: 7)
!862 = !DILocalVariable(name: "st", scope: !863, file: !835, line: 202, type: !870)
!863 = distinct !DILexicalBlock(scope: !864, file: !835, line: 201, column: 9)
!864 = distinct !DILexicalBlock(scope: !865, file: !835, line: 190, column: 16)
!865 = distinct !DILexicalBlock(scope: !866, file: !835, line: 188, column: 16)
!866 = distinct !DILexicalBlock(scope: !867, file: !835, line: 186, column: 11)
!867 = distinct !DILexicalBlock(scope: !868, file: !835, line: 177, column: 5)
!868 = distinct !DILexicalBlock(scope: !869, file: !835, line: 176, column: 3)
!869 = distinct !DILexicalBlock(scope: !834, file: !835, line: 176, column: 3)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !871, line: 46, size: 1152, elements: !872)
!871 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!872 = !{!873, !875, !877, !879, !881, !883, !885, !886, !887, !889, !891, !893, !901, !902, !903}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !870, file: !871, line: 48, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !778, line: 133, baseType: !98)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !870, file: !871, line: 53, baseType: !876, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !778, line: 136, baseType: !98)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !870, file: !871, line: 61, baseType: !878, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !778, line: 139, baseType: !98)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !870, file: !871, line: 62, baseType: !880, size: 32, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !778, line: 138, baseType: !164)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !870, file: !871, line: 64, baseType: !882, size: 32, offset: 224)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !778, line: 134, baseType: !164)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !870, file: !871, line: 65, baseType: !884, size: 32, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !778, line: 135, baseType: !164)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !870, file: !871, line: 67, baseType: !66, size: 32, offset: 288)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !870, file: !871, line: 69, baseType: !874, size: 64, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !870, file: !871, line: 74, baseType: !888, size: 64, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !778, line: 140, baseType: !779)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !870, file: !871, line: 78, baseType: !890, size: 64, offset: 448)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !778, line: 162, baseType: !779)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !870, file: !871, line: 80, baseType: !892, size: 64, offset: 512)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !778, line: 167, baseType: !779)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !870, file: !871, line: 91, baseType: !894, size: 128, offset: 576)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !895, line: 8, size: 128, elements: !896)
!895 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!896 = !{!897, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !894, file: !895, line: 10, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !778, line: 148, baseType: !779)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !894, file: !895, line: 11, baseType: !900, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !778, line: 184, baseType: !779)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !870, file: !871, line: 92, baseType: !894, size: 128, offset: 704)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !870, file: !871, line: 93, baseType: !894, size: 128, offset: 832)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !870, file: !871, line: 106, baseType: !904, size: 192, offset: 960)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 192, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 3)
!907 = !DILocalVariable(name: "dest_offset", scope: !908, file: !835, line: 209, type: !910)
!908 = distinct !DILexicalBlock(scope: !909, file: !835, line: 208, column: 13)
!909 = distinct !DILexicalBlock(scope: !863, file: !835, line: 207, column: 15)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !100, line: 51, baseType: !779)
!911 = !DILocalVariable(name: "new_size", scope: !908, file: !835, line: 210, type: !99)
!912 = !DILocalVariable(name: "buf", scope: !913, file: !835, line: 249, type: !27)
!913 = distinct !DILexicalBlock(scope: !914, file: !835, line: 248, column: 13)
!914 = distinct !DILexicalBlock(scope: !863, file: !835, line: 247, column: 15)
!915 = !DILocalVariable(name: "n", scope: !913, file: !835, line: 250, type: !99)
!916 = !DILocalVariable(name: "len", scope: !913, file: !835, line: 250, type: !99)
!917 = !DILocalVariable(name: "pfxlen", scope: !918, file: !835, line: 294, type: !99)
!918 = distinct !DILexicalBlock(scope: !919, file: !835, line: 293, column: 17)
!919 = distinct !DILexicalBlock(scope: !913, file: !835, line: 292, column: 19)
!920 = !DILocation(line: 99, column: 41, scope: !834)
!921 = !DILocation(line: 99, column: 67, scope: !834)
!922 = !DILocation(line: 101, column: 24, scope: !834)
!923 = !DILocation(line: 105, column: 10, scope: !834)
!924 = !DILocation(line: 106, column: 15, scope: !834)
!925 = !DILocation(line: 109, column: 28, scope: !834)
!926 = !DILocation(line: 109, column: 18, scope: !834)
!927 = !DILocation(line: 112, column: 12, scope: !834)
!928 = !DILocation(line: 114, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !834, file: !835, line: 114, column: 7)
!930 = !DILocation(line: 114, column: 7, scope: !834)
!931 = !DILocation(line: 116, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !835, line: 115, column: 5)
!933 = !DILocation(line: 116, column: 13, scope: !932)
!934 = !DILocation(line: 117, column: 7, scope: !932)
!935 = !DILocation(line: 120, column: 12, scope: !936)
!936 = distinct !DILexicalBlock(scope: !834, file: !835, line: 120, column: 7)
!937 = !DILocation(line: 120, column: 7, scope: !834)
!938 = !DILocation(line: 122, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !936, file: !835, line: 121, column: 5)
!940 = !DILocation(line: 122, column: 13, scope: !939)
!941 = !DILocation(line: 123, column: 7, scope: !939)
!942 = !DILocation(line: 126, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !834, file: !835, line: 126, column: 7)
!944 = !DILocation(line: 126, column: 7, scope: !834)
!945 = !DILocation(line: 128, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !835, line: 127, column: 5)
!947 = !DILocation(line: 128, column: 13, scope: !946)
!948 = !DILocation(line: 129, column: 7, scope: !946)
!949 = !DILocation(line: 138, column: 15, scope: !860)
!950 = !DILocation(line: 101, column: 9, scope: !834)
!951 = !DILocation(line: 139, column: 12, scope: !952)
!952 = distinct !DILexicalBlock(scope: !860, file: !835, line: 139, column: 11)
!953 = !DILocation(line: 139, column: 11, scope: !860)
!954 = !DILocation(line: 141, column: 14, scope: !860)
!955 = !DILocation(line: 101, column: 17, scope: !834)
!956 = !DILocation(line: 142, column: 24, scope: !859)
!957 = !DILocation(line: 142, column: 11, scope: !860)
!958 = !DILocation(line: 144, column: 21, scope: !858)
!959 = !DILocation(line: 144, column: 17, scope: !858)
!960 = !DILocation(line: 145, column: 20, scope: !858)
!961 = !DILocation(line: 147, column: 31, scope: !858)
!962 = !DILocation(line: 104, column: 15, scope: !834)
!963 = !DILocation(line: 148, column: 9, scope: !858)
!964 = !DILocation(line: 158, column: 15, scope: !965)
!965 = distinct !DILexicalBlock(scope: !861, file: !835, line: 157, column: 5)
!966 = !DILocation(line: 159, column: 27, scope: !965)
!967 = !DILocation(line: 166, column: 12, scope: !965)
!968 = !DILocation(line: 166, column: 15, scope: !965)
!969 = !DILocation(line: 102, column: 15, scope: !834)
!970 = !DILocation(line: 110, column: 10, scope: !834)
!971 = !DILocation(line: 107, column: 7, scope: !834)
!972 = !DILocation(line: 176, column: 11, scope: !868)
!973 = !DILocation(line: 176, column: 3, scope: !869)
!974 = !DILocation(line: 179, column: 14, scope: !867)
!975 = !DILocation(line: 179, column: 7, scope: !867)
!976 = !DILocation(line: 180, column: 9, scope: !867)
!977 = distinct !{!977, !975, !978}
!978 = !DILocation(line: 180, column: 11, scope: !867)
!979 = !DILocation(line: 103, column: 15, scope: !834)
!980 = !DILocation(line: 183, column: 12, scope: !981)
!981 = distinct !DILexicalBlock(scope: !867, file: !835, line: 183, column: 7)
!982 = !DILocation(line: 183, column: 25, scope: !983)
!983 = distinct !DILexicalBlock(scope: !981, file: !835, line: 183, column: 7)
!984 = !DILocation(line: 183, column: 30, scope: !983)
!985 = !DILocation(line: 183, column: 50, scope: !983)
!986 = !DILocation(line: 183, column: 7, scope: !983)
!987 = distinct !{!987, !988, !989}
!988 = !DILocation(line: 183, column: 7, scope: !981)
!989 = !DILocation(line: 184, column: 24, scope: !981)
!990 = !DILocation(line: 186, column: 15, scope: !866)
!991 = !DILocation(line: 186, column: 11, scope: !867)
!992 = !DILocation(line: 188, column: 45, scope: !865)
!993 = !DILocation(line: 188, column: 16, scope: !866)
!994 = !DILocation(line: 190, column: 45, scope: !864)
!995 = !DILocation(line: 190, column: 52, scope: !864)
!996 = !DILocation(line: 190, column: 55, scope: !864)
!997 = !DILocation(line: 190, column: 64, scope: !864)
!998 = !DILocation(line: 190, column: 16, scope: !865)
!999 = !DILocation(line: 193, column: 41, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !835, line: 193, column: 15)
!1001 = distinct !DILexicalBlock(scope: !864, file: !835, line: 191, column: 9)
!1002 = !DILocation(line: 193, column: 20, scope: !1000)
!1003 = !DILocation(line: 193, column: 15, scope: !1001)
!1004 = !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)
!1005 = !DILocation(line: 194, column: 31, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !835, line: 194, column: 13)
!1007 = distinct !DILexicalBlock(scope: !1000, file: !835, line: 194, column: 13)
!1008 = !DILocation(line: 194, column: 39, scope: !1006)
!1009 = !DILocation(line: 194, column: 43, scope: !1006)
!1010 = distinct !{!1010, !1011, !1012}
!1011 = !DILocation(line: 194, column: 13, scope: !1007)
!1012 = !DILocation(line: 195, column: 15, scope: !1007)
!1013 = !DILocation(line: 202, column: 11, scope: !863)
!1014 = !DILocation(line: 204, column: 16, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !863, file: !835, line: 204, column: 15)
!1016 = !DILocation(line: 204, column: 15, scope: !863)
!1017 = !DILocation(line: 205, column: 18, scope: !1015)
!1018 = !DILocation(line: 205, column: 21, scope: !1015)
!1019 = !DILocation(line: 205, column: 13, scope: !1015)
!1020 = !DILocation(line: 207, column: 20, scope: !909)
!1021 = !DILocation(line: 207, column: 36, scope: !909)
!1022 = !DILocation(line: 207, column: 15, scope: !863)
!1023 = !DILocation(line: 209, column: 44, scope: !908)
!1024 = !DILocation(line: 209, column: 25, scope: !908)
!1025 = !DILocation(line: 210, column: 45, scope: !908)
!1026 = !DILocation(line: 210, column: 22, scope: !908)
!1027 = !DILocation(line: 212, column: 35, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !908, file: !835, line: 212, column: 19)
!1029 = !DILocation(line: 212, column: 31, scope: !1028)
!1030 = !DILocation(line: 212, column: 19, scope: !908)
!1031 = !DILocation(line: 216, column: 23, scope: !908)
!1032 = !DILocation(line: 217, column: 35, scope: !908)
!1033 = !DILocation(line: 219, column: 28, scope: !908)
!1034 = !DILocation(line: 220, column: 13, scope: !908)
!1035 = !DILocation(line: 222, column: 18, scope: !863)
!1036 = !DILocation(line: 223, column: 16, scope: !863)
!1037 = !DILocation(line: 224, column: 17, scope: !863)
!1038 = !DILocation(line: 226, column: 23, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !863, file: !835, line: 226, column: 15)
!1040 = !DILocation(line: 202, column: 23, scope: !863)
!1041 = !DILocation(line: 233, column: 21, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !835, line: 233, column: 20)
!1043 = !DILocalVariable(name: "__path", arg: 1, scope: !1044, file: !1045, line: 449, type: !43)
!1044 = distinct !DISubprogram(name: "stat", scope: !1045, file: !1045, line: 449, type: !1046, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !1049)
!1045 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!66, !43, !1048}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!1049 = !{!1043, !1050}
!1050 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1044, file: !1045, line: 449, type: !1048)
!1051 = !DILocation(line: 449, column: 1, scope: !1044, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 233, column: 31, scope: !1042)
!1053 = !DILocation(line: 451, column: 10, scope: !1044, inlinedAt: !1052)
!1054 = !DILocalVariable(name: "__path", arg: 1, scope: !1055, file: !1045, line: 456, type: !43)
!1055 = distinct !DISubprogram(name: "lstat", scope: !1045, file: !1045, line: 456, type: !1046, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !1056)
!1056 = !{!1054, !1057}
!1057 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1055, file: !1045, line: 456, type: !1048)
!1058 = !DILocation(line: 456, column: 1, scope: !1055, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 233, column: 51, scope: !1042)
!1060 = !DILocation(line: 458, column: 10, scope: !1055, inlinedAt: !1059)
!1061 = !DILocation(line: 233, column: 71, scope: !1042)
!1062 = !DILocation(line: 233, column: 20, scope: !1039)
!1063 = !DILocation(line: 247, column: 15, scope: !914)
!1064 = !{!1065, !701, i64 24}
!1065 = !{!"stat", !745, i64 0, !745, i64 8, !745, i64 16, !701, i64 24, !701, i64 28, !701, i64 32, !701, i64 36, !745, i64 40, !745, i64 48, !745, i64 56, !745, i64 64, !1066, i64 72, !1066, i64 88, !1066, i64 104, !630, i64 120}
!1066 = !{!"timespec", !745, i64 0, !745, i64 8}
!1067 = !DILocation(line: 235, column: 29, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1042, file: !835, line: 234, column: 13)
!1069 = !DILocation(line: 236, column: 19, scope: !1068)
!1070 = !DILocation(line: 240, column: 27, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !835, line: 240, column: 23)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !835, line: 239, column: 17)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !835, line: 238, column: 19)
!1074 = !DILocation(line: 240, column: 23, scope: !1071)
!1075 = !DILocation(line: 240, column: 65, scope: !1071)
!1076 = !DILocation(line: 240, column: 50, scope: !1071)
!1077 = !DILocation(line: 241, column: 21, scope: !1071)
!1078 = !DILocation(line: 247, column: 15, scope: !863)
!1079 = !DILocalVariable(name: "filename", arg: 2, scope: !1080, file: !835, line: 70, type: !43)
!1080 = distinct !DISubprogram(name: "seen_triple", scope: !835, file: !835, line: 70, type: !1081, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !1086)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!34, !1083, !43, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!1086 = !{!1087, !1079, !1088, !1089}
!1087 = !DILocalVariable(name: "ht", arg: 1, scope: !1080, file: !835, line: 70, type: !1083)
!1088 = !DILocalVariable(name: "st", arg: 3, scope: !1080, file: !835, line: 70, type: !1084)
!1089 = !DILocalVariable(name: "initial_capacity", scope: !1090, file: !835, line: 74, type: !99)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !835, line: 73, column: 5)
!1091 = distinct !DILexicalBlock(scope: !1080, file: !835, line: 72, column: 7)
!1092 = !DILocation(line: 70, column: 43, scope: !1080, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 256, column: 19, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !913, file: !835, line: 256, column: 19)
!1095 = !DILocation(line: 70, column: 72, scope: !1080, inlinedAt: !1093)
!1096 = !DILocation(line: 72, column: 11, scope: !1091, inlinedAt: !1093)
!1097 = !DILocation(line: 72, column: 7, scope: !1080, inlinedAt: !1093)
!1098 = !DILocation(line: 74, column: 14, scope: !1090, inlinedAt: !1093)
!1099 = !DILocation(line: 75, column: 13, scope: !1090, inlinedAt: !1093)
!1100 = !DILocation(line: 80, column: 15, scope: !1101, inlinedAt: !1093)
!1101 = distinct !DILexicalBlock(scope: !1090, file: !835, line: 80, column: 11)
!1102 = !DILocation(line: 80, column: 11, scope: !1090, inlinedAt: !1093)
!1103 = !DILocation(line: 81, column: 9, scope: !1101, inlinedAt: !1093)
!1104 = !DILocation(line: 84, column: 7, scope: !1105, inlinedAt: !1093)
!1105 = distinct !DILexicalBlock(scope: !1080, file: !835, line: 84, column: 7)
!1106 = !DILocation(line: 84, column: 7, scope: !1080, inlinedAt: !1093)
!1107 = !DILocation(line: 259, column: 21, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !835, line: 258, column: 23)
!1109 = distinct !DILexicalBlock(scope: !1094, file: !835, line: 257, column: 17)
!1110 = !DILocation(line: 87, column: 3, scope: !1080, inlinedAt: !1093)
!1111 = !DILocation(line: 264, column: 52, scope: !913)
!1112 = !{!1065, !745, i64 48}
!1113 = !DILocation(line: 264, column: 21, scope: !913)
!1114 = !DILocation(line: 249, column: 21, scope: !913)
!1115 = !DILocation(line: 265, column: 20, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !913, file: !835, line: 265, column: 19)
!1117 = !DILocation(line: 265, column: 19, scope: !913)
!1118 = !DILocation(line: 267, column: 50, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !835, line: 267, column: 23)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !835, line: 266, column: 17)
!1121 = !DILocation(line: 267, column: 47, scope: !1119)
!1122 = !DILocation(line: 267, column: 56, scope: !1119)
!1123 = !DILocation(line: 267, column: 23, scope: !1120)
!1124 = !DILocation(line: 331, column: 9, scope: !864)
!1125 = !DILocation(line: 269, column: 33, scope: !1120)
!1126 = !DILocation(line: 273, column: 19, scope: !913)
!1127 = !DILocation(line: 250, column: 22, scope: !913)
!1128 = !DILocation(line: 274, column: 21, scope: !913)
!1129 = !DILocation(line: 250, column: 25, scope: !913)
!1130 = !DILocation(line: 276, column: 20, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !913, file: !835, line: 276, column: 19)
!1132 = !DILocation(line: 276, column: 19, scope: !913)
!1133 = !DILocation(line: 279, column: 36, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !835, line: 277, column: 17)
!1135 = !DILocation(line: 279, column: 21, scope: !1134)
!1136 = !DILocation(line: 280, column: 31, scope: !1134)
!1137 = !DILocation(line: 281, column: 17, scope: !1134)
!1138 = !DILocation(line: 282, column: 38, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1131, file: !835, line: 282, column: 24)
!1140 = !DILocation(line: 282, column: 24, scope: !1131)
!1141 = !DILocation(line: 285, column: 31, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !835, line: 283, column: 17)
!1143 = !DILocation(line: 286, column: 17, scope: !1142)
!1144 = !DILocation(line: 289, column: 25, scope: !913)
!1145 = !DILocation(line: 289, column: 48, scope: !913)
!1146 = !DILocation(line: 289, column: 15, scope: !913)
!1147 = !DILocation(line: 290, column: 28, scope: !913)
!1148 = !DILocation(line: 292, column: 19, scope: !919)
!1149 = !DILocation(line: 292, column: 19, scope: !913)
!1150 = !DILocation(line: 294, column: 26, scope: !918)
!1151 = !DILocation(line: 299, column: 27, scope: !918)
!1152 = !DILocation(line: 308, column: 17, scope: !918)
!1153 = !DILocation(line: 313, column: 28, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !835, line: 313, column: 23)
!1155 = distinct !DILexicalBlock(scope: !919, file: !835, line: 310, column: 17)
!1156 = !DILocation(line: 313, column: 23, scope: !1155)
!1157 = !DILocation(line: 314, column: 39, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !835, line: 314, column: 21)
!1159 = distinct !DILexicalBlock(scope: !1154, file: !835, line: 314, column: 21)
!1160 = !DILocation(line: 314, column: 47, scope: !1158)
!1161 = !DILocation(line: 314, column: 51, scope: !1158)
!1162 = distinct !{!1162, !1163, !1164}
!1163 = !DILocation(line: 314, column: 21, scope: !1159)
!1164 = !DILocation(line: 315, column: 23, scope: !1159)
!1165 = !DILocation(line: 321, column: 15, scope: !913)
!1166 = !DILocation(line: 325, column: 44, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !835, line: 325, column: 19)
!1168 = distinct !DILexicalBlock(scope: !914, file: !835, line: 324, column: 13)
!1169 = !DILocation(line: 325, column: 49, scope: !1167)
!1170 = distinct !{!1170, !973, !1171}
!1171 = !DILocation(line: 332, column: 5, scope: !869)
!1172 = !DILocation(line: 333, column: 33, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !834, file: !835, line: 333, column: 7)
!1174 = !DILocation(line: 333, column: 12, scope: !1173)
!1175 = !DILocation(line: 333, column: 37, scope: !1173)
!1176 = !DILocation(line: 333, column: 40, scope: !1173)
!1177 = !DILocation(line: 333, column: 7, scope: !834)
!1178 = !DILocation(line: 338, column: 9, scope: !834)
!1179 = !DILocation(line: 339, column: 27, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !834, file: !835, line: 339, column: 7)
!1181 = !DILocation(line: 339, column: 19, scope: !1180)
!1182 = !DILocation(line: 339, column: 7, scope: !834)
!1183 = !DILocation(line: 340, column: 35, scope: !1180)
!1184 = !DILocation(line: 340, column: 43, scope: !1180)
!1185 = !DILocation(line: 340, column: 13, scope: !1180)
!1186 = !DILocation(line: 340, column: 5, scope: !1180)
!1187 = !DILocation(line: 342, column: 3, scope: !834)
!1188 = !DILocation(line: 343, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !834, file: !835, line: 343, column: 7)
!1190 = !DILocation(line: 343, column: 7, scope: !834)
!1191 = !DILocation(line: 344, column: 5, scope: !1189)
!1192 = !DILocation(line: 348, column: 3, scope: !834)
!1193 = !DILocation(line: 349, column: 3, scope: !834)
!1194 = !DILocation(line: 350, column: 7, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !834, file: !835, line: 350, column: 7)
!1196 = !DILocation(line: 350, column: 7, scope: !834)
!1197 = !DILocation(line: 351, column: 5, scope: !1195)
!1198 = !DILocation(line: 352, column: 3, scope: !834)
!1199 = !DILocation(line: 352, column: 9, scope: !834)
!1200 = !DILocation(line: 353, column: 3, scope: !834)
!1201 = !DILocation(line: 354, column: 1, scope: !834)
!1202 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !85, file: !85, line: 41, type: !41, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !80, variables: !1203)
!1203 = !{!1204}
!1204 = !DILocalVariable(name: "file", arg: 1, scope: !1202, file: !85, line: 41, type: !43)
!1205 = !DILocation(line: 41, column: 41, scope: !1202)
!1206 = !DILocation(line: 43, column: 13, scope: !1202)
!1207 = !DILocation(line: 44, column: 1, scope: !1202)
!1208 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !85, file: !85, line: 78, type: !1209, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !80, variables: !1211)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !34}
!1211 = !{!1212}
!1212 = !DILocalVariable(name: "ignore", arg: 1, scope: !1208, file: !85, line: 78, type: !34)
!1213 = !DILocation(line: 78, column: 37, scope: !1208)
!1214 = !DILocation(line: 80, column: 16, scope: !1208)
!1215 = !{!1216, !1216, i64 0}
!1216 = !{!"_Bool", !630, i64 0}
!1217 = !DILocation(line: 81, column: 1, scope: !1208)
!1218 = distinct !DISubprogram(name: "close_stdout", scope: !85, file: !85, line: 107, type: !1219, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !80, variables: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null}
!1221 = !{!1222}
!1222 = !DILocalVariable(name: "write_error", scope: !1223, file: !85, line: 112, type: !43)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !85, line: 111, column: 5)
!1224 = distinct !DILexicalBlock(scope: !1218, file: !85, line: 109, column: 7)
!1225 = !DILocation(line: 109, column: 21, scope: !1224)
!1226 = !DILocation(line: 109, column: 7, scope: !1224)
!1227 = !DILocation(line: 109, column: 29, scope: !1224)
!1228 = !DILocation(line: 110, column: 7, scope: !1224)
!1229 = !DILocation(line: 110, column: 12, scope: !1224)
!1230 = !{i8 0, i8 2}
!1231 = !DILocation(line: 114, column: 19, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1223, file: !85, line: 113, column: 11)
!1233 = !DILocation(line: 110, column: 25, scope: !1224)
!1234 = !DILocation(line: 110, column: 28, scope: !1224)
!1235 = !DILocation(line: 110, column: 34, scope: !1224)
!1236 = !DILocation(line: 109, column: 7, scope: !1218)
!1237 = !DILocation(line: 112, column: 33, scope: !1223)
!1238 = !DILocation(line: 112, column: 19, scope: !1223)
!1239 = !DILocation(line: 113, column: 11, scope: !1232)
!1240 = !DILocation(line: 113, column: 11, scope: !1223)
!1241 = !DILocation(line: 114, column: 36, scope: !1232)
!1242 = !DILocation(line: 114, column: 9, scope: !1232)
!1243 = !DILocation(line: 117, column: 9, scope: !1232)
!1244 = !DILocation(line: 119, column: 14, scope: !1223)
!1245 = !DILocation(line: 119, column: 7, scope: !1223)
!1246 = !DILocation(line: 122, column: 22, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1218, file: !85, line: 122, column: 8)
!1248 = !DILocation(line: 122, column: 8, scope: !1247)
!1249 = !DILocation(line: 122, column: 30, scope: !1247)
!1250 = !DILocation(line: 122, column: 8, scope: !1218)
!1251 = !DILocation(line: 123, column: 13, scope: !1247)
!1252 = !DILocation(line: 123, column: 6, scope: !1247)
!1253 = !DILocation(line: 124, column: 1, scope: !1218)
!1254 = distinct !DISubprogram(name: "record_file", scope: !1255, file: !1255, line: 29, type: !1256, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !1281)
!1255 = !DIFile(filename: "lib/file-set.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !850, !43, !1258}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !871, line: 46, size: 1152, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1278, !1279, !1280}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1260, file: !871, line: 48, baseType: !874, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1260, file: !871, line: 53, baseType: !876, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1260, file: !871, line: 61, baseType: !878, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1260, file: !871, line: 62, baseType: !880, size: 32, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1260, file: !871, line: 64, baseType: !882, size: 32, offset: 224)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1260, file: !871, line: 65, baseType: !884, size: 32, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1260, file: !871, line: 67, baseType: !66, size: 32, offset: 288)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1260, file: !871, line: 69, baseType: !874, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1260, file: !871, line: 74, baseType: !888, size: 64, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1260, file: !871, line: 78, baseType: !890, size: 64, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1260, file: !871, line: 80, baseType: !892, size: 64, offset: 512)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1260, file: !871, line: 91, baseType: !1274, size: 128, offset: 576)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !895, line: 8, size: 128, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1274, file: !895, line: 10, baseType: !898, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1274, file: !895, line: 11, baseType: !900, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1260, file: !871, line: 92, baseType: !1274, size: 128, offset: 704)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1260, file: !871, line: 93, baseType: !1274, size: 128, offset: 832)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1260, file: !871, line: 106, baseType: !904, size: 192, offset: 960)
!1281 = !{!1282, !1283, !1284, !1285, !1295}
!1282 = !DILocalVariable(name: "ht", arg: 1, scope: !1254, file: !1255, line: 29, type: !850)
!1283 = !DILocalVariable(name: "file", arg: 2, scope: !1254, file: !1255, line: 29, type: !43)
!1284 = !DILocalVariable(name: "stats", arg: 3, scope: !1254, file: !1255, line: 29, type: !1258)
!1285 = !DILocalVariable(name: "ent", scope: !1254, file: !1255, line: 31, type: !1286)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "F_triple", file: !1288, line: 9, size: 192, elements: !1289)
!1288 = !DIFile(filename: "./lib/hash-triple.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1289 = !{!1290, !1291, !1293}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1287, file: !1288, line: 11, baseType: !27, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1287, file: !1288, line: 12, baseType: !1292, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !776, line: 48, baseType: !876)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1287, file: !1288, line: 13, baseType: !1294, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !776, line: 60, baseType: !874)
!1295 = !DILocalVariable(name: "ent_from_table", scope: !1296, file: !1255, line: 42, type: !1286)
!1296 = distinct !DILexicalBlock(scope: !1254, file: !1255, line: 41, column: 3)
!1297 = !DILocation(line: 29, column: 26, scope: !1254)
!1298 = !DILocation(line: 29, column: 42, scope: !1254)
!1299 = !DILocation(line: 29, column: 67, scope: !1254)
!1300 = !DILocation(line: 33, column: 10, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1254, file: !1255, line: 33, column: 7)
!1302 = !DILocation(line: 33, column: 7, scope: !1254)
!1303 = !DILocation(line: 36, column: 9, scope: !1254)
!1304 = !DILocation(line: 31, column: 20, scope: !1254)
!1305 = !DILocation(line: 37, column: 15, scope: !1254)
!1306 = !DILocation(line: 37, column: 8, scope: !1254)
!1307 = !DILocation(line: 37, column: 13, scope: !1254)
!1308 = !{!1309, !629, i64 0}
!1309 = !{!"F_triple", !629, i64 0, !745, i64 8, !745, i64 16}
!1310 = !DILocation(line: 38, column: 24, scope: !1254)
!1311 = !{!1065, !745, i64 8}
!1312 = !DILocation(line: 38, column: 8, scope: !1254)
!1313 = !DILocation(line: 38, column: 15, scope: !1254)
!1314 = !{!1309, !745, i64 8}
!1315 = !DILocation(line: 39, column: 24, scope: !1254)
!1316 = !{!1065, !745, i64 0}
!1317 = !DILocation(line: 39, column: 8, scope: !1254)
!1318 = !DILocation(line: 39, column: 15, scope: !1254)
!1319 = !{!1309, !745, i64 16}
!1320 = !DILocation(line: 42, column: 39, scope: !1296)
!1321 = !DILocation(line: 42, column: 22, scope: !1296)
!1322 = !DILocation(line: 43, column: 24, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1296, file: !1255, line: 43, column: 9)
!1324 = !DILocation(line: 43, column: 9, scope: !1296)
!1325 = !DILocation(line: 46, column: 9, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !1255, line: 44, column: 7)
!1327 = !DILocation(line: 49, column: 24, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1296, file: !1255, line: 49, column: 9)
!1329 = !DILocation(line: 49, column: 9, scope: !1296)
!1330 = !DILocation(line: 53, column: 9, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !1255, line: 50, column: 7)
!1332 = !DILocation(line: 54, column: 7, scope: !1331)
!1333 = !DILocation(line: 56, column: 1, scope: !1254)
!1334 = distinct !DISubprogram(name: "seen_file", scope: !1255, file: !1255, line: 61, type: !1335, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !1339)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!34, !1337, !43, !1258}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!1339 = !{!1340, !1341, !1342, !1343}
!1340 = !DILocalVariable(name: "ht", arg: 1, scope: !1334, file: !1255, line: 61, type: !1337)
!1341 = !DILocalVariable(name: "file", arg: 2, scope: !1334, file: !1255, line: 61, type: !43)
!1342 = !DILocalVariable(name: "stats", arg: 3, scope: !1334, file: !1255, line: 62, type: !1258)
!1343 = !DILocalVariable(name: "new_ent", scope: !1334, file: !1255, line: 64, type: !1287)
!1344 = !DILocation(line: 61, column: 30, scope: !1334)
!1345 = !DILocation(line: 61, column: 46, scope: !1334)
!1346 = !DILocation(line: 62, column: 31, scope: !1334)
!1347 = !DILocation(line: 64, column: 3, scope: !1334)
!1348 = !DILocation(line: 66, column: 10, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1334, file: !1255, line: 66, column: 7)
!1350 = !DILocation(line: 66, column: 7, scope: !1334)
!1351 = !DILocation(line: 69, column: 11, scope: !1334)
!1352 = !DILocation(line: 69, column: 16, scope: !1334)
!1353 = !DILocation(line: 70, column: 27, scope: !1334)
!1354 = !DILocation(line: 70, column: 11, scope: !1334)
!1355 = !DILocation(line: 70, column: 18, scope: !1334)
!1356 = !DILocation(line: 71, column: 27, scope: !1334)
!1357 = !DILocation(line: 71, column: 11, scope: !1334)
!1358 = !DILocation(line: 71, column: 18, scope: !1334)
!1359 = !DILocation(line: 73, column: 12, scope: !1334)
!1360 = !DILocation(line: 73, column: 11, scope: !1334)
!1361 = !DILocation(line: 73, column: 3, scope: !1334)
!1362 = !DILocation(line: 74, column: 1, scope: !1334)
!1363 = distinct !DISubprogram(name: "hash_get_n_buckets", scope: !102, file: !102, line: 150, type: !1364, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1403)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!99, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1368)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_table", file: !105, line: 69, baseType: !1369)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", file: !102, line: 52, size: 640, elements: !1370)
!1370 = !{!1371, !1377, !1380, !1381, !1382, !1383, !1385, !1392, !1397, !1402}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !1369, file: !102, line: 57, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_entry", file: !102, line: 46, size: 128, elements: !1374)
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1373, file: !102, line: 48, baseType: !29, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1373, file: !102, line: 49, baseType: !1372, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_limit", scope: !1369, file: !102, line: 58, baseType: !1378, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !1369, file: !102, line: 59, baseType: !99, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets_used", scope: !1369, file: !102, line: 60, baseType: !99, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "n_entries", scope: !1369, file: !102, line: 61, baseType: !99, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "tuning", scope: !1369, file: !102, line: 64, baseType: !1384, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "hasher", scope: !1369, file: !102, line: 71, baseType: !1386, size: 64, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_hasher", file: !105, line: 48, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!99, !1390, !99}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "comparator", scope: !1369, file: !102, line: 72, baseType: !1393, size: 64, offset: 448)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_comparator", file: !105, line: 49, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!34, !1390, !1390}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "data_freer", scope: !1369, file: !102, line: 73, baseType: !1398, size: 64, offset: 512)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_data_freer", file: !105, line: 50, baseType: !1399)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !29}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "free_entry_list", scope: !1369, file: !102, line: 76, baseType: !1372, size: 64, offset: 576)
!1403 = !{!1404}
!1404 = !DILocalVariable(name: "table", arg: 1, scope: !1363, file: !102, line: 150, type: !1366)
!1405 = !DILocation(line: 150, column: 39, scope: !1363)
!1406 = !DILocation(line: 152, column: 17, scope: !1363)
!1407 = !{!1408, !745, i64 16}
!1408 = !{!"hash_table", !629, i64 0, !629, i64 8, !745, i64 16, !745, i64 24, !745, i64 32, !629, i64 40, !629, i64 48, !629, i64 56, !629, i64 64, !629, i64 72}
!1409 = !DILocation(line: 152, column: 3, scope: !1363)
!1410 = distinct !DISubprogram(name: "hash_get_n_buckets_used", scope: !102, file: !102, line: 158, type: !1364, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1411)
!1411 = !{!1412}
!1412 = !DILocalVariable(name: "table", arg: 1, scope: !1410, file: !102, line: 158, type: !1366)
!1413 = !DILocation(line: 158, column: 44, scope: !1410)
!1414 = !DILocation(line: 160, column: 17, scope: !1410)
!1415 = !{!1408, !745, i64 24}
!1416 = !DILocation(line: 160, column: 3, scope: !1410)
!1417 = distinct !DISubprogram(name: "hash_get_n_entries", scope: !102, file: !102, line: 166, type: !1364, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1418)
!1418 = !{!1419}
!1419 = !DILocalVariable(name: "table", arg: 1, scope: !1417, file: !102, line: 166, type: !1366)
!1420 = !DILocation(line: 166, column: 39, scope: !1417)
!1421 = !DILocation(line: 168, column: 17, scope: !1417)
!1422 = !{!1408, !745, i64 32}
!1423 = !DILocation(line: 168, column: 3, scope: !1417)
!1424 = distinct !DISubprogram(name: "hash_get_max_bucket_length", scope: !102, file: !102, line: 174, type: !1364, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1425)
!1425 = !{!1426, !1427, !1428, !1429, !1435}
!1426 = !DILocalVariable(name: "table", arg: 1, scope: !1424, file: !102, line: 174, type: !1366)
!1427 = !DILocalVariable(name: "bucket", scope: !1424, file: !102, line: 176, type: !1378)
!1428 = !DILocalVariable(name: "max_bucket_length", scope: !1424, file: !102, line: 177, type: !99)
!1429 = !DILocalVariable(name: "cursor", scope: !1430, file: !102, line: 183, type: !1378)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !102, line: 182, column: 9)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !102, line: 181, column: 11)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !102, line: 180, column: 5)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !102, line: 179, column: 3)
!1434 = distinct !DILexicalBlock(scope: !1424, file: !102, line: 179, column: 3)
!1435 = !DILocalVariable(name: "bucket_length", scope: !1430, file: !102, line: 184, type: !99)
!1436 = !DILocation(line: 174, column: 47, scope: !1424)
!1437 = !DILocation(line: 177, column: 10, scope: !1424)
!1438 = !DILocation(line: 179, column: 24, scope: !1434)
!1439 = !{!1408, !629, i64 0}
!1440 = !DILocation(line: 176, column: 28, scope: !1424)
!1441 = !DILocation(line: 179, column: 48, scope: !1433)
!1442 = !{!1408, !629, i64 8}
!1443 = !DILocation(line: 179, column: 39, scope: !1433)
!1444 = !DILocation(line: 179, column: 3, scope: !1434)
!1445 = !DILocation(line: 181, column: 19, scope: !1431)
!1446 = !{!1447, !629, i64 0}
!1447 = !{!"hash_entry", !629, i64 0, !629, i64 8}
!1448 = !DILocation(line: 181, column: 11, scope: !1431)
!1449 = !DILocation(line: 181, column: 11, scope: !1432)
!1450 = !DILocation(line: 186, column: 35, scope: !1430)
!1451 = !DILocation(line: 184, column: 18, scope: !1430)
!1452 = !DILocation(line: 183, column: 36, scope: !1430)
!1453 = !{!1447, !629, i64 8}
!1454 = !DILocation(line: 186, column: 11, scope: !1430)
!1455 = !DILocation(line: 187, column: 26, scope: !1430)
!1456 = distinct !{!1456, !1454, !1455}
!1457 = !DILocation(line: 189, column: 29, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1430, file: !102, line: 189, column: 15)
!1459 = !DILocation(line: 189, column: 15, scope: !1430)
!1460 = !DILocation(line: 191, column: 9, scope: !1430)
!1461 = !DILocation(line: 179, column: 68, scope: !1433)
!1462 = !DILocation(line: 194, column: 3, scope: !1424)
!1463 = distinct !{!1463, !1444, !1464}
!1464 = !DILocation(line: 192, column: 5, scope: !1434)
!1465 = distinct !DISubprogram(name: "hash_table_ok", scope: !102, file: !102, line: 201, type: !1466, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!34, !1366}
!1468 = !{!1469, !1470, !1471, !1472, !1473}
!1469 = !DILocalVariable(name: "table", arg: 1, scope: !1465, file: !102, line: 201, type: !1366)
!1470 = !DILocalVariable(name: "bucket", scope: !1465, file: !102, line: 203, type: !1378)
!1471 = !DILocalVariable(name: "n_buckets_used", scope: !1465, file: !102, line: 204, type: !99)
!1472 = !DILocalVariable(name: "n_entries", scope: !1465, file: !102, line: 205, type: !99)
!1473 = !DILocalVariable(name: "cursor", scope: !1474, file: !102, line: 211, type: !1378)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !102, line: 210, column: 9)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !102, line: 209, column: 11)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !102, line: 208, column: 5)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !102, line: 207, column: 3)
!1478 = distinct !DILexicalBlock(scope: !1465, file: !102, line: 207, column: 3)
!1479 = !DILocation(line: 201, column: 34, scope: !1465)
!1480 = !DILocation(line: 204, column: 10, scope: !1465)
!1481 = !DILocation(line: 205, column: 10, scope: !1465)
!1482 = !DILocation(line: 207, column: 24, scope: !1478)
!1483 = !DILocation(line: 203, column: 28, scope: !1465)
!1484 = !DILocation(line: 207, column: 48, scope: !1477)
!1485 = !DILocation(line: 207, column: 39, scope: !1477)
!1486 = !DILocation(line: 207, column: 3, scope: !1478)
!1487 = !DILocation(line: 209, column: 19, scope: !1475)
!1488 = !DILocation(line: 209, column: 11, scope: !1475)
!1489 = !DILocation(line: 209, column: 11, scope: !1476)
!1490 = !DILocation(line: 211, column: 36, scope: !1474)
!1491 = !DILocation(line: 218, column: 35, scope: !1474)
!1492 = !DILocation(line: 218, column: 11, scope: !1474)
!1493 = distinct !{!1493, !1492, !1494}
!1494 = !DILocation(line: 219, column: 22, scope: !1474)
!1495 = !DILocation(line: 214, column: 25, scope: !1474)
!1496 = !DILocation(line: 207, column: 68, scope: !1477)
!1497 = !DILocation(line: 223, column: 32, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1465, file: !102, line: 223, column: 7)
!1499 = !DILocation(line: 223, column: 22, scope: !1498)
!1500 = !DILocation(line: 223, column: 47, scope: !1498)
!1501 = !DILocation(line: 223, column: 70, scope: !1498)
!1502 = !DILocation(line: 223, column: 60, scope: !1498)
!1503 = !DILocation(line: 223, column: 7, scope: !1465)
!1504 = !DILocation(line: 226, column: 3, scope: !1465)
!1505 = !DILocation(line: 227, column: 1, scope: !1465)
!1506 = distinct !{!1506, !1486, !1507}
!1507 = !DILocation(line: 221, column: 5, scope: !1478)
!1508 = distinct !DISubprogram(name: "hash_print_statistics", scope: !102, file: !102, line: 230, type: !1509, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1563)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !1366, !1511}
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1513, line: 7, baseType: !1514)
!1513 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1515, line: 241, size: 1728, elements: !1516)
!1515 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1537, !1538, !1539, !1540, !1541, !1542, !1544, !1548, !1551, !1553, !1554, !1555, !1556, !1557, !1558, !1559}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1514, file: !1515, line: 242, baseType: !66, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1514, file: !1515, line: 247, baseType: !27, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1514, file: !1515, line: 248, baseType: !27, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1514, file: !1515, line: 249, baseType: !27, size: 64, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1514, file: !1515, line: 250, baseType: !27, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1514, file: !1515, line: 251, baseType: !27, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1514, file: !1515, line: 252, baseType: !27, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1514, file: !1515, line: 253, baseType: !27, size: 64, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1514, file: !1515, line: 254, baseType: !27, size: 64, offset: 512)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1514, file: !1515, line: 256, baseType: !27, size: 64, offset: 576)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1514, file: !1515, line: 257, baseType: !27, size: 64, offset: 640)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1514, file: !1515, line: 258, baseType: !27, size: 64, offset: 704)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1514, file: !1515, line: 260, baseType: !1530, size: 64, offset: 768)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1515, line: 156, size: 192, elements: !1532)
!1532 = !{!1533, !1534, !1536}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1531, file: !1515, line: 157, baseType: !1530, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1531, file: !1515, line: 158, baseType: !1535, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1531, file: !1515, line: 162, baseType: !66, size: 32, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1514, file: !1515, line: 262, baseType: !1535, size: 64, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1514, file: !1515, line: 264, baseType: !66, size: 32, offset: 896)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1514, file: !1515, line: 268, baseType: !66, size: 32, offset: 928)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1514, file: !1515, line: 270, baseType: !888, size: 64, offset: 960)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1514, file: !1515, line: 274, baseType: !147, size: 16, offset: 1024)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1514, file: !1515, line: 275, baseType: !1543, size: 8, offset: 1040)
!1543 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1514, file: !1515, line: 276, baseType: !1545, size: 8, offset: 1048)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !1546)
!1546 = !{!1547}
!1547 = !DISubrange(count: 1)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1514, file: !1515, line: 280, baseType: !1549, size: 64, offset: 1088)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1515, line: 150, baseType: null)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1514, file: !1515, line: 289, baseType: !1552, size: 64, offset: 1152)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !778, line: 141, baseType: !779)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1514, file: !1515, line: 297, baseType: !29, size: 64, offset: 1216)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1514, file: !1515, line: 298, baseType: !29, size: 64, offset: 1280)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1514, file: !1515, line: 299, baseType: !29, size: 64, offset: 1344)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1514, file: !1515, line: 300, baseType: !29, size: 64, offset: 1408)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1514, file: !1515, line: 302, baseType: !99, size: 64, offset: 1472)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1514, file: !1515, line: 303, baseType: !66, size: 32, offset: 1536)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1514, file: !1515, line: 305, baseType: !1560, size: 160, offset: 1568)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !1561)
!1561 = !{!1562}
!1562 = !DISubrange(count: 20)
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1569}
!1564 = !DILocalVariable(name: "table", arg: 1, scope: !1508, file: !102, line: 230, type: !1366)
!1565 = !DILocalVariable(name: "stream", arg: 2, scope: !1508, file: !102, line: 230, type: !1511)
!1566 = !DILocalVariable(name: "n_entries", scope: !1508, file: !102, line: 232, type: !99)
!1567 = !DILocalVariable(name: "n_buckets", scope: !1508, file: !102, line: 233, type: !99)
!1568 = !DILocalVariable(name: "n_buckets_used", scope: !1508, file: !102, line: 234, type: !99)
!1569 = !DILocalVariable(name: "max_bucket_length", scope: !1508, file: !102, line: 235, type: !99)
!1570 = !DILocation(line: 230, column: 42, scope: !1508)
!1571 = !DILocation(line: 230, column: 55, scope: !1508)
!1572 = !DILocation(line: 166, column: 39, scope: !1417, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 232, column: 22, scope: !1508)
!1574 = !DILocation(line: 168, column: 17, scope: !1417, inlinedAt: !1573)
!1575 = !DILocation(line: 232, column: 10, scope: !1508)
!1576 = !DILocation(line: 150, column: 39, scope: !1363, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 233, column: 22, scope: !1508)
!1578 = !DILocation(line: 152, column: 17, scope: !1363, inlinedAt: !1577)
!1579 = !DILocation(line: 233, column: 10, scope: !1508)
!1580 = !DILocation(line: 158, column: 44, scope: !1410, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 234, column: 27, scope: !1508)
!1582 = !DILocation(line: 160, column: 17, scope: !1410, inlinedAt: !1581)
!1583 = !DILocation(line: 234, column: 10, scope: !1508)
!1584 = !DILocation(line: 174, column: 47, scope: !1424, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 235, column: 30, scope: !1508)
!1586 = !DILocation(line: 177, column: 10, scope: !1424, inlinedAt: !1585)
!1587 = !DILocation(line: 179, column: 24, scope: !1434, inlinedAt: !1585)
!1588 = !DILocation(line: 176, column: 28, scope: !1424, inlinedAt: !1585)
!1589 = !DILocation(line: 179, column: 48, scope: !1433, inlinedAt: !1585)
!1590 = !DILocation(line: 179, column: 39, scope: !1433, inlinedAt: !1585)
!1591 = !DILocation(line: 179, column: 3, scope: !1434, inlinedAt: !1585)
!1592 = !DILocation(line: 181, column: 19, scope: !1431, inlinedAt: !1585)
!1593 = !DILocation(line: 181, column: 11, scope: !1431, inlinedAt: !1585)
!1594 = !DILocation(line: 181, column: 11, scope: !1432, inlinedAt: !1585)
!1595 = !DILocation(line: 186, column: 35, scope: !1430, inlinedAt: !1585)
!1596 = !DILocation(line: 184, column: 18, scope: !1430, inlinedAt: !1585)
!1597 = !DILocation(line: 183, column: 36, scope: !1430, inlinedAt: !1585)
!1598 = !DILocation(line: 186, column: 11, scope: !1430, inlinedAt: !1585)
!1599 = !DILocation(line: 187, column: 26, scope: !1430, inlinedAt: !1585)
!1600 = !DILocation(line: 189, column: 29, scope: !1458, inlinedAt: !1585)
!1601 = !DILocation(line: 189, column: 15, scope: !1430, inlinedAt: !1585)
!1602 = !DILocation(line: 191, column: 9, scope: !1430, inlinedAt: !1585)
!1603 = !DILocation(line: 179, column: 68, scope: !1433, inlinedAt: !1585)
!1604 = !DILocation(line: 237, column: 3, scope: !1508)
!1605 = !DILocation(line: 235, column: 10, scope: !1508)
!1606 = !DILocation(line: 238, column: 3, scope: !1508)
!1607 = !DILocation(line: 239, column: 3, scope: !1508)
!1608 = !DILocation(line: 242, column: 3, scope: !1508)
!1609 = !DILocation(line: 244, column: 1, scope: !1508)
!1610 = distinct !DISubprogram(name: "hash_lookup", scope: !102, file: !102, line: 261, type: !1611, isLocal: false, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1613)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!29, !1366, !1390}
!1613 = !{!1614, !1615, !1616, !1617}
!1614 = !DILocalVariable(name: "table", arg: 1, scope: !1610, file: !102, line: 261, type: !1366)
!1615 = !DILocalVariable(name: "entry", arg: 2, scope: !1610, file: !102, line: 261, type: !1390)
!1616 = !DILocalVariable(name: "bucket", scope: !1610, file: !102, line: 263, type: !1378)
!1617 = !DILocalVariable(name: "cursor", scope: !1610, file: !102, line: 264, type: !1378)
!1618 = !DILocation(line: 261, column: 32, scope: !1610)
!1619 = !DILocation(line: 261, column: 51, scope: !1610)
!1620 = !DILocalVariable(name: "table", arg: 1, scope: !1621, file: !102, line: 249, type: !1366)
!1621 = distinct !DISubprogram(name: "safe_hasher", scope: !102, file: !102, line: 249, type: !1622, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1624)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!1372, !1366, !1390}
!1624 = !{!1620, !1625, !1626}
!1625 = !DILocalVariable(name: "key", arg: 2, scope: !1621, file: !102, line: 249, type: !1390)
!1626 = !DILocalVariable(name: "n", scope: !1621, file: !102, line: 251, type: !99)
!1627 = !DILocation(line: 249, column: 32, scope: !1621, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 263, column: 37, scope: !1610)
!1629 = !DILocation(line: 249, column: 51, scope: !1621, inlinedAt: !1628)
!1630 = !DILocation(line: 251, column: 21, scope: !1621, inlinedAt: !1628)
!1631 = !{!1408, !629, i64 48}
!1632 = !DILocation(line: 251, column: 41, scope: !1621, inlinedAt: !1628)
!1633 = !DILocation(line: 251, column: 14, scope: !1621, inlinedAt: !1628)
!1634 = !DILocation(line: 251, column: 10, scope: !1621, inlinedAt: !1628)
!1635 = !DILocation(line: 252, column: 21, scope: !1636, inlinedAt: !1628)
!1636 = distinct !DILexicalBlock(scope: !1621, file: !102, line: 252, column: 7)
!1637 = !DILocation(line: 252, column: 12, scope: !1636, inlinedAt: !1628)
!1638 = !DILocation(line: 252, column: 7, scope: !1621, inlinedAt: !1628)
!1639 = !DILocation(line: 253, column: 5, scope: !1636, inlinedAt: !1628)
!1640 = !DILocation(line: 254, column: 17, scope: !1621, inlinedAt: !1628)
!1641 = !DILocation(line: 254, column: 24, scope: !1621, inlinedAt: !1628)
!1642 = !DILocation(line: 263, column: 28, scope: !1610)
!1643 = !DILocation(line: 266, column: 15, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1610, file: !102, line: 266, column: 7)
!1645 = !DILocation(line: 266, column: 20, scope: !1644)
!1646 = !DILocation(line: 269, column: 3, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1610, file: !102, line: 269, column: 3)
!1648 = !DILocation(line: 266, column: 7, scope: !1610)
!1649 = !DILocation(line: 264, column: 28, scope: !1610)
!1650 = !DILocation(line: 270, column: 15, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !102, line: 270, column: 9)
!1652 = distinct !DILexicalBlock(scope: !1647, file: !102, line: 269, column: 3)
!1653 = !DILocation(line: 270, column: 31, scope: !1651)
!1654 = !DILocation(line: 270, column: 41, scope: !1651)
!1655 = !{!1408, !629, i64 56}
!1656 = !DILocation(line: 270, column: 34, scope: !1651)
!1657 = !DILocation(line: 270, column: 9, scope: !1652)
!1658 = !DILocation(line: 270, column: 26, scope: !1651)
!1659 = !DILocation(line: 271, column: 22, scope: !1651)
!1660 = !DILocation(line: 269, column: 50, scope: !1652)
!1661 = distinct !{!1661, !1646, !1662}
!1662 = !DILocation(line: 271, column: 22, scope: !1647)
!1663 = !DILocation(line: 274, column: 1, scope: !1610)
!1664 = distinct !DISubprogram(name: "hash_get_first", scope: !102, file: !102, line: 288, type: !1665, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!29, !1366}
!1667 = !{!1668, !1669}
!1668 = !DILocalVariable(name: "table", arg: 1, scope: !1664, file: !102, line: 288, type: !1366)
!1669 = !DILocalVariable(name: "bucket", scope: !1664, file: !102, line: 290, type: !1378)
!1670 = !DILocation(line: 288, column: 35, scope: !1664)
!1671 = !DILocation(line: 292, column: 14, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1664, file: !102, line: 292, column: 7)
!1673 = !DILocation(line: 292, column: 24, scope: !1672)
!1674 = !DILocation(line: 292, column: 7, scope: !1664)
!1675 = !DILocation(line: 295, column: 24, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1664, file: !102, line: 295, column: 3)
!1677 = !DILocation(line: 290, column: 28, scope: !1664)
!1678 = !DILocation(line: 296, column: 28, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !102, line: 296, column: 9)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !102, line: 295, column: 3)
!1681 = !DILocation(line: 296, column: 19, scope: !1679)
!1682 = !DILocation(line: 296, column: 9, scope: !1680)
!1683 = !DILocation(line: 298, column: 22, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1679, file: !102, line: 298, column: 14)
!1685 = distinct !{!1685, !1686, !1687}
!1686 = !DILocation(line: 295, column: 3, scope: !1676)
!1687 = !DILocation(line: 299, column: 22, scope: !1676)
!1688 = !DILocation(line: 297, column: 7, scope: !1679)
!1689 = !DILocation(line: 298, column: 14, scope: !1684)
!1690 = !DILocation(line: 295, column: 40, scope: !1680)
!1691 = !DILocation(line: 298, column: 14, scope: !1679)
!1692 = !DILocation(line: 300, column: 1, scope: !1664)
!1693 = distinct !DISubprogram(name: "hash_get_next", scope: !102, file: !102, line: 307, type: !1611, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1694)
!1694 = !{!1695, !1696, !1697, !1698}
!1695 = !DILocalVariable(name: "table", arg: 1, scope: !1693, file: !102, line: 307, type: !1366)
!1696 = !DILocalVariable(name: "entry", arg: 2, scope: !1693, file: !102, line: 307, type: !1390)
!1697 = !DILocalVariable(name: "bucket", scope: !1693, file: !102, line: 309, type: !1378)
!1698 = !DILocalVariable(name: "cursor", scope: !1693, file: !102, line: 310, type: !1378)
!1699 = !DILocation(line: 307, column: 34, scope: !1693)
!1700 = !DILocation(line: 307, column: 53, scope: !1693)
!1701 = !DILocation(line: 249, column: 32, scope: !1621, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 309, column: 37, scope: !1693)
!1703 = !DILocation(line: 249, column: 51, scope: !1621, inlinedAt: !1702)
!1704 = !DILocation(line: 251, column: 21, scope: !1621, inlinedAt: !1702)
!1705 = !DILocation(line: 251, column: 41, scope: !1621, inlinedAt: !1702)
!1706 = !DILocation(line: 251, column: 14, scope: !1621, inlinedAt: !1702)
!1707 = !DILocation(line: 251, column: 10, scope: !1621, inlinedAt: !1702)
!1708 = !DILocation(line: 252, column: 21, scope: !1636, inlinedAt: !1702)
!1709 = !DILocation(line: 252, column: 12, scope: !1636, inlinedAt: !1702)
!1710 = !DILocation(line: 252, column: 7, scope: !1621, inlinedAt: !1702)
!1711 = !DILocation(line: 253, column: 5, scope: !1636, inlinedAt: !1702)
!1712 = !DILocation(line: 254, column: 17, scope: !1621, inlinedAt: !1702)
!1713 = !DILocation(line: 254, column: 24, scope: !1621, inlinedAt: !1702)
!1714 = !DILocation(line: 309, column: 28, scope: !1693)
!1715 = !DILocation(line: 310, column: 28, scope: !1693)
!1716 = !DILocation(line: 314, column: 3, scope: !1693)
!1717 = distinct !{!1717, !1716, !1718}
!1718 = !DILocation(line: 320, column: 24, scope: !1693)
!1719 = !DILocation(line: 316, column: 19, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !102, line: 316, column: 11)
!1721 = distinct !DILexicalBlock(scope: !1693, file: !102, line: 315, column: 5)
!1722 = !DILocation(line: 316, column: 24, scope: !1720)
!1723 = !DILocation(line: 316, column: 33, scope: !1720)
!1724 = !DILocation(line: 316, column: 11, scope: !1721)
!1725 = !DILocation(line: 317, column: 30, scope: !1720)
!1726 = !DILocation(line: 317, column: 9, scope: !1720)
!1727 = !DILocation(line: 319, column: 5, scope: !1721)
!1728 = !DILocation(line: 323, column: 10, scope: !1693)
!1729 = !DILocation(line: 323, column: 28, scope: !1693)
!1730 = !DILocation(line: 323, column: 19, scope: !1693)
!1731 = !DILocation(line: 323, column: 3, scope: !1693)
!1732 = !DILocation(line: 324, column: 17, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1693, file: !102, line: 324, column: 9)
!1734 = distinct !{!1734, !1731, !1735}
!1735 = !DILocation(line: 325, column: 22, scope: !1693)
!1736 = !DILocation(line: 324, column: 9, scope: !1733)
!1737 = !DILocation(line: 324, column: 9, scope: !1693)
!1738 = !DILocation(line: 329, column: 1, scope: !1693)
!1739 = distinct !DISubprogram(name: "hash_get_entries", scope: !102, file: !102, line: 336, type: !1740, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1743)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!99, !1366, !1742, !99}
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749}
!1744 = !DILocalVariable(name: "table", arg: 1, scope: !1739, file: !102, line: 336, type: !1366)
!1745 = !DILocalVariable(name: "buffer", arg: 2, scope: !1739, file: !102, line: 336, type: !1742)
!1746 = !DILocalVariable(name: "buffer_size", arg: 3, scope: !1739, file: !102, line: 337, type: !99)
!1747 = !DILocalVariable(name: "counter", scope: !1739, file: !102, line: 339, type: !99)
!1748 = !DILocalVariable(name: "bucket", scope: !1739, file: !102, line: 340, type: !1378)
!1749 = !DILocalVariable(name: "cursor", scope: !1739, file: !102, line: 341, type: !1378)
!1750 = !DILocation(line: 336, column: 37, scope: !1739)
!1751 = !DILocation(line: 336, column: 51, scope: !1739)
!1752 = !DILocation(line: 337, column: 26, scope: !1739)
!1753 = !DILocation(line: 339, column: 10, scope: !1739)
!1754 = !DILocation(line: 343, column: 24, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1739, file: !102, line: 343, column: 3)
!1756 = !DILocation(line: 340, column: 28, scope: !1739)
!1757 = !DILocation(line: 343, column: 48, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1755, file: !102, line: 343, column: 3)
!1759 = !DILocation(line: 343, column: 39, scope: !1758)
!1760 = !DILocation(line: 343, column: 3, scope: !1755)
!1761 = !DILocation(line: 345, column: 19, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !102, line: 345, column: 11)
!1763 = distinct !DILexicalBlock(scope: !1758, file: !102, line: 344, column: 5)
!1764 = !DILocation(line: 345, column: 11, scope: !1762)
!1765 = !DILocation(line: 347, column: 11, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !102, line: 347, column: 11)
!1767 = distinct !DILexicalBlock(scope: !1762, file: !102, line: 346, column: 9)
!1768 = !DILocation(line: 345, column: 11, scope: !1763)
!1769 = !DILocation(line: 341, column: 28, scope: !1739)
!1770 = !DILocation(line: 349, column: 27, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !102, line: 349, column: 19)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !102, line: 348, column: 13)
!1773 = distinct !DILexicalBlock(scope: !1766, file: !102, line: 347, column: 11)
!1774 = !DILocation(line: 349, column: 19, scope: !1772)
!1775 = !DILocation(line: 351, column: 43, scope: !1772)
!1776 = !DILocation(line: 351, column: 29, scope: !1772)
!1777 = !DILocation(line: 351, column: 15, scope: !1772)
!1778 = !DILocation(line: 351, column: 33, scope: !1772)
!1779 = !DILocation(line: 347, column: 58, scope: !1773)
!1780 = distinct !{!1780, !1765, !1781}
!1781 = !DILocation(line: 352, column: 13, scope: !1766)
!1782 = !DILocation(line: 343, column: 68, scope: !1758)
!1783 = distinct !{!1783, !1760, !1784}
!1784 = !DILocation(line: 354, column: 5, scope: !1755)
!1785 = !DILocation(line: 357, column: 1, scope: !1739)
!1786 = distinct !DISubprogram(name: "hash_do_for_each", scope: !102, file: !102, line: 368, type: !1787, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1793)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!99, !1366, !1789, !29}
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_processor", file: !105, line: 51, baseType: !1790)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!34, !29, !29}
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799}
!1794 = !DILocalVariable(name: "table", arg: 1, scope: !1786, file: !102, line: 368, type: !1366)
!1795 = !DILocalVariable(name: "processor", arg: 2, scope: !1786, file: !102, line: 368, type: !1789)
!1796 = !DILocalVariable(name: "processor_data", arg: 3, scope: !1786, file: !102, line: 369, type: !29)
!1797 = !DILocalVariable(name: "counter", scope: !1786, file: !102, line: 371, type: !99)
!1798 = !DILocalVariable(name: "bucket", scope: !1786, file: !102, line: 372, type: !1378)
!1799 = !DILocalVariable(name: "cursor", scope: !1786, file: !102, line: 373, type: !1378)
!1800 = !DILocation(line: 368, column: 37, scope: !1786)
!1801 = !DILocation(line: 368, column: 59, scope: !1786)
!1802 = !DILocation(line: 369, column: 25, scope: !1786)
!1803 = !DILocation(line: 371, column: 10, scope: !1786)
!1804 = !DILocation(line: 375, column: 24, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1786, file: !102, line: 375, column: 3)
!1806 = !DILocation(line: 372, column: 28, scope: !1786)
!1807 = !DILocation(line: 375, column: 48, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1805, file: !102, line: 375, column: 3)
!1809 = !DILocation(line: 375, column: 39, scope: !1808)
!1810 = !DILocation(line: 375, column: 3, scope: !1805)
!1811 = !DILocation(line: 377, column: 19, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !102, line: 377, column: 11)
!1813 = distinct !DILexicalBlock(scope: !1808, file: !102, line: 376, column: 5)
!1814 = !DILocation(line: 377, column: 11, scope: !1812)
!1815 = !DILocation(line: 379, column: 11, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !102, line: 379, column: 11)
!1817 = distinct !DILexicalBlock(scope: !1812, file: !102, line: 378, column: 9)
!1818 = !DILocation(line: 377, column: 11, scope: !1813)
!1819 = !DILocation(line: 373, column: 28, scope: !1786)
!1820 = !DILocation(line: 381, column: 21, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !102, line: 381, column: 19)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !102, line: 380, column: 13)
!1823 = distinct !DILexicalBlock(scope: !1816, file: !102, line: 379, column: 11)
!1824 = !DILocation(line: 381, column: 19, scope: !1822)
!1825 = !DILocation(line: 383, column: 22, scope: !1822)
!1826 = !DILocation(line: 379, column: 58, scope: !1823)
!1827 = distinct !{!1827, !1815, !1828}
!1828 = !DILocation(line: 384, column: 13, scope: !1816)
!1829 = !DILocation(line: 381, column: 40, scope: !1821)
!1830 = !DILocation(line: 375, column: 68, scope: !1808)
!1831 = distinct !{!1831, !1810, !1832}
!1832 = !DILocation(line: 386, column: 5, scope: !1805)
!1833 = !DILocation(line: 389, column: 1, scope: !1786)
!1834 = distinct !DISubprogram(name: "hash_string", scope: !102, file: !102, line: 428, type: !1835, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1837)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!99, !43, !99}
!1837 = !{!1838, !1839, !1840, !1841}
!1838 = !DILocalVariable(name: "string", arg: 1, scope: !1834, file: !102, line: 428, type: !43)
!1839 = !DILocalVariable(name: "n_buckets", arg: 2, scope: !1834, file: !102, line: 428, type: !99)
!1840 = !DILocalVariable(name: "value", scope: !1834, file: !102, line: 430, type: !99)
!1841 = !DILocalVariable(name: "ch", scope: !1834, file: !102, line: 431, type: !30)
!1842 = !DILocation(line: 428, column: 26, scope: !1834)
!1843 = !DILocation(line: 428, column: 41, scope: !1834)
!1844 = !DILocation(line: 430, column: 10, scope: !1834)
!1845 = !DILocation(line: 433, column: 16, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !102, line: 433, column: 3)
!1847 = distinct !DILexicalBlock(scope: !1834, file: !102, line: 433, column: 3)
!1848 = !DILocation(line: 431, column: 17, scope: !1834)
!1849 = !DILocation(line: 433, column: 3, scope: !1847)
!1850 = !DILocation(line: 434, column: 20, scope: !1846)
!1851 = !DILocation(line: 434, column: 27, scope: !1846)
!1852 = !DILocation(line: 434, column: 25, scope: !1846)
!1853 = !DILocation(line: 434, column: 31, scope: !1846)
!1854 = !DILocation(line: 433, column: 32, scope: !1846)
!1855 = distinct !{!1855, !1849, !1856}
!1856 = !DILocation(line: 434, column: 33, scope: !1847)
!1857 = !DILocation(line: 435, column: 3, scope: !1834)
!1858 = distinct !DISubprogram(name: "hash_reset_tuning", scope: !102, file: !102, line: 479, type: !1859, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1862)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!1862 = !{!1863}
!1863 = !DILocalVariable(name: "tuning", arg: 1, scope: !1858, file: !102, line: 479, type: !1861)
!1864 = !DILocation(line: 479, column: 33, scope: !1858)
!1865 = !DILocation(line: 481, column: 13, scope: !1858)
!1866 = !{i64 0, i64 4, !1867, i64 4, i64 4, !1867, i64 8, i64 4, !1867, i64 12, i64 4, !1867, i64 16, i64 1, !1215}
!1867 = !{!1868, !1868, i64 0}
!1868 = !{!"float", !630, i64 0}
!1869 = !DILocation(line: 482, column: 1, scope: !1858)
!1870 = distinct !DISubprogram(name: "hash_initialize", scope: !102, file: !102, line: 594, type: !1871, isLocal: false, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1874)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!1873, !99, !1384, !1386, !1393, !1398}
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1880}
!1875 = !DILocalVariable(name: "candidate", arg: 1, scope: !1870, file: !102, line: 594, type: !99)
!1876 = !DILocalVariable(name: "tuning", arg: 2, scope: !1870, file: !102, line: 594, type: !1384)
!1877 = !DILocalVariable(name: "hasher", arg: 3, scope: !1870, file: !102, line: 595, type: !1386)
!1878 = !DILocalVariable(name: "comparator", arg: 4, scope: !1870, file: !102, line: 595, type: !1393)
!1879 = !DILocalVariable(name: "data_freer", arg: 5, scope: !1870, file: !102, line: 596, type: !1398)
!1880 = !DILocalVariable(name: "table", scope: !1870, file: !102, line: 598, type: !1873)
!1881 = !DILocation(line: 594, column: 25, scope: !1870)
!1882 = !DILocation(line: 594, column: 55, scope: !1870)
!1883 = !DILocation(line: 595, column: 30, scope: !1870)
!1884 = !DILocation(line: 595, column: 54, scope: !1870)
!1885 = !DILocation(line: 596, column: 34, scope: !1870)
!1886 = !DILocation(line: 600, column: 14, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1870, file: !102, line: 600, column: 7)
!1888 = !DILocation(line: 600, column: 7, scope: !1870)
!1889 = !DILocation(line: 602, column: 18, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1870, file: !102, line: 602, column: 7)
!1891 = !DILocation(line: 602, column: 7, scope: !1870)
!1892 = !DILocation(line: 605, column: 11, scope: !1870)
!1893 = !DILocation(line: 598, column: 15, scope: !1870)
!1894 = !DILocation(line: 606, column: 13, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1870, file: !102, line: 606, column: 7)
!1896 = !DILocation(line: 606, column: 7, scope: !1870)
!1897 = !DILocation(line: 609, column: 8, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1870, file: !102, line: 609, column: 7)
!1899 = !DILocation(line: 609, column: 7, scope: !1870)
!1900 = !DILocation(line: 611, column: 10, scope: !1870)
!1901 = !DILocation(line: 611, column: 17, scope: !1870)
!1902 = !{!1408, !629, i64 40}
!1903 = !DILocalVariable(name: "table", arg: 1, scope: !1904, file: !102, line: 512, type: !1873)
!1904 = distinct !DISubprogram(name: "check_tuning", scope: !102, file: !102, line: 512, type: !1905, isLocal: true, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!34, !1873}
!1907 = !{!1903, !1908, !1909}
!1908 = !DILocalVariable(name: "tuning", scope: !1904, file: !102, line: 514, type: !1384)
!1909 = !DILocalVariable(name: "epsilon", scope: !1904, file: !102, line: 515, type: !109)
!1910 = !DILocation(line: 512, column: 27, scope: !1904, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 612, column: 8, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1870, file: !102, line: 612, column: 7)
!1913 = !DILocation(line: 514, column: 22, scope: !1904, inlinedAt: !1911)
!1914 = !DILocation(line: 516, column: 14, scope: !1915, inlinedAt: !1911)
!1915 = distinct !DILexicalBlock(scope: !1904, file: !102, line: 516, column: 7)
!1916 = !DILocation(line: 516, column: 7, scope: !1904, inlinedAt: !1911)
!1917 = !DILocation(line: 515, column: 9, scope: !1904, inlinedAt: !1911)
!1918 = !DILocation(line: 526, column: 25, scope: !1919, inlinedAt: !1911)
!1919 = distinct !DILexicalBlock(scope: !1904, file: !102, line: 526, column: 7)
!1920 = !{!1921, !1868, i64 8}
!1921 = !{!"hash_tuning", !1868, i64 0, !1868, i64 4, !1868, i64 8, !1868, i64 12, !1216, i64 16}
!1922 = !DILocation(line: 526, column: 15, scope: !1919, inlinedAt: !1911)
!1923 = !DILocation(line: 527, column: 35, scope: !1919, inlinedAt: !1911)
!1924 = !DILocation(line: 527, column: 7, scope: !1919, inlinedAt: !1911)
!1925 = !DILocation(line: 528, column: 32, scope: !1919, inlinedAt: !1911)
!1926 = !{!1921, !1868, i64 12}
!1927 = !DILocation(line: 528, column: 22, scope: !1919, inlinedAt: !1911)
!1928 = !DILocation(line: 529, column: 7, scope: !1919, inlinedAt: !1911)
!1929 = !DILocation(line: 529, column: 23, scope: !1919, inlinedAt: !1911)
!1930 = !{!1921, !1868, i64 0}
!1931 = !DILocation(line: 529, column: 12, scope: !1919, inlinedAt: !1911)
!1932 = !DILocation(line: 530, column: 7, scope: !1919, inlinedAt: !1911)
!1933 = !DILocation(line: 530, column: 35, scope: !1919, inlinedAt: !1911)
!1934 = !DILocation(line: 530, column: 55, scope: !1919, inlinedAt: !1911)
!1935 = !{!1921, !1868, i64 4}
!1936 = !DILocation(line: 530, column: 45, scope: !1919, inlinedAt: !1911)
!1937 = !DILocation(line: 531, column: 32, scope: !1919, inlinedAt: !1911)
!1938 = !DILocation(line: 531, column: 7, scope: !1919, inlinedAt: !1911)
!1939 = !DILocation(line: 532, column: 45, scope: !1919, inlinedAt: !1911)
!1940 = !DILocalVariable(name: "candidate", arg: 1, scope: !1941, file: !102, line: 544, type: !99)
!1941 = distinct !DISubprogram(name: "compute_bucket_size", scope: !102, file: !102, line: 544, type: !1942, isLocal: true, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1944)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!99, !99, !1384}
!1944 = !{!1940, !1945, !1946}
!1945 = !DILocalVariable(name: "tuning", arg: 2, scope: !1941, file: !102, line: 544, type: !1384)
!1946 = !DILocalVariable(name: "new_candidate", scope: !1947, file: !102, line: 548, type: !109)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !102, line: 547, column: 5)
!1948 = distinct !DILexicalBlock(scope: !1941, file: !102, line: 546, column: 7)
!1949 = !DILocation(line: 544, column: 29, scope: !1941, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 622, column: 22, scope: !1870)
!1951 = !DILocation(line: 544, column: 59, scope: !1941, inlinedAt: !1950)
!1952 = !DILocation(line: 546, column: 16, scope: !1948, inlinedAt: !1950)
!1953 = !{!1921, !1216, i64 16}
!1954 = !DILocation(line: 546, column: 7, scope: !1941, inlinedAt: !1950)
!1955 = !DILocation(line: 548, column: 29, scope: !1947, inlinedAt: !1950)
!1956 = !DILocation(line: 548, column: 49, scope: !1947, inlinedAt: !1950)
!1957 = !DILocation(line: 548, column: 39, scope: !1947, inlinedAt: !1950)
!1958 = !DILocation(line: 548, column: 13, scope: !1947, inlinedAt: !1950)
!1959 = !DILocation(line: 549, column: 20, scope: !1960, inlinedAt: !1950)
!1960 = distinct !DILexicalBlock(scope: !1947, file: !102, line: 549, column: 11)
!1961 = !DILocation(line: 551, column: 19, scope: !1947, inlinedAt: !1950)
!1962 = !DILocalVariable(name: "candidate", arg: 1, scope: !1963, file: !102, line: 463, type: !99)
!1963 = distinct !DISubprogram(name: "next_prime", scope: !102, file: !102, line: 463, type: !1964, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!99, !99}
!1966 = !{!1962}
!1967 = !DILocation(line: 463, column: 20, scope: !1963, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 553, column: 15, scope: !1941, inlinedAt: !1950)
!1969 = !DILocation(line: 466, column: 7, scope: !1963, inlinedAt: !1968)
!1970 = !DILocation(line: 470, column: 13, scope: !1963, inlinedAt: !1968)
!1971 = !DILocation(line: 472, column: 19, scope: !1963, inlinedAt: !1968)
!1972 = !DILocation(line: 472, column: 32, scope: !1963, inlinedAt: !1968)
!1973 = !DILocation(line: 449, column: 17, scope: !1974, inlinedAt: !1981)
!1974 = distinct !DISubprogram(name: "is_prime", scope: !102, file: !102, line: 444, type: !1975, isLocal: true, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!34, !99}
!1977 = !{!1978, !1979, !1980}
!1978 = !DILocalVariable(name: "candidate", arg: 1, scope: !1974, file: !102, line: 444, type: !99)
!1979 = !DILocalVariable(name: "divisor", scope: !1974, file: !102, line: 446, type: !99)
!1980 = !DILocalVariable(name: "square", scope: !1974, file: !102, line: 447, type: !99)
!1981 = distinct !DILocation(line: 472, column: 36, scope: !1963, inlinedAt: !1968)
!1982 = !DILocation(line: 444, column: 18, scope: !1974, inlinedAt: !1981)
!1983 = !DILocation(line: 446, column: 10, scope: !1974, inlinedAt: !1981)
!1984 = !DILocation(line: 447, column: 10, scope: !1974, inlinedAt: !1981)
!1985 = !DILocation(line: 449, column: 29, scope: !1974, inlinedAt: !1981)
!1986 = !DILocation(line: 449, column: 43, scope: !1974, inlinedAt: !1981)
!1987 = !DILocation(line: 449, column: 3, scope: !1974, inlinedAt: !1981)
!1988 = !DILocation(line: 452, column: 19, scope: !1989, inlinedAt: !1981)
!1989 = distinct !DILexicalBlock(scope: !1974, file: !102, line: 450, column: 5)
!1990 = !DILocation(line: 452, column: 14, scope: !1989, inlinedAt: !1981)
!1991 = !DILocation(line: 453, column: 14, scope: !1989, inlinedAt: !1981)
!1992 = distinct !{!1992, !1993, !1994}
!1993 = !DILocation(line: 449, column: 3, scope: !1974)
!1994 = !DILocation(line: 454, column: 5, scope: !1974)
!1995 = !DILocation(line: 456, column: 21, scope: !1974, inlinedAt: !1981)
!1996 = !DILocation(line: 456, column: 11, scope: !1974, inlinedAt: !1981)
!1997 = !DILocation(line: 472, column: 3, scope: !1963, inlinedAt: !1968)
!1998 = !DILocation(line: 473, column: 15, scope: !1963, inlinedAt: !1968)
!1999 = distinct !{!1999, !2000, !2001}
!2000 = !DILocation(line: 472, column: 3, scope: !1963)
!2001 = !DILocation(line: 473, column: 18, scope: !1963)
!2002 = !DILocation(line: 554, column: 7, scope: !2003, inlinedAt: !1950)
!2003 = distinct !DILexicalBlock(scope: !1941, file: !102, line: 554, column: 7)
!2004 = !DILocation(line: 555, column: 5, scope: !2003, inlinedAt: !1950)
!2005 = !DILocation(line: 622, column: 10, scope: !1870)
!2006 = !DILocation(line: 622, column: 20, scope: !1870)
!2007 = !DILocation(line: 623, column: 8, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1870, file: !102, line: 623, column: 7)
!2009 = !DILocation(line: 623, column: 7, scope: !1870)
!2010 = !DILocation(line: 626, column: 19, scope: !1870)
!2011 = !DILocation(line: 626, column: 17, scope: !1870)
!2012 = !DILocation(line: 627, column: 21, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1870, file: !102, line: 627, column: 7)
!2014 = !DILocation(line: 627, column: 7, scope: !1870)
!2015 = !DILocation(line: 629, column: 39, scope: !1870)
!2016 = !DILocation(line: 629, column: 10, scope: !1870)
!2017 = !DILocation(line: 629, column: 23, scope: !1870)
!2018 = !DILocation(line: 630, column: 10, scope: !1870)
!2019 = !DILocation(line: 633, column: 10, scope: !1870)
!2020 = !DILocation(line: 631, column: 20, scope: !1870)
!2021 = !DILocation(line: 633, column: 17, scope: !1870)
!2022 = !DILocation(line: 634, column: 10, scope: !1870)
!2023 = !DILocation(line: 634, column: 21, scope: !1870)
!2024 = !DILocation(line: 635, column: 10, scope: !1870)
!2025 = !DILocation(line: 635, column: 21, scope: !1870)
!2026 = !{!1408, !629, i64 64}
!2027 = !DILocation(line: 637, column: 10, scope: !1870)
!2028 = !DILocation(line: 637, column: 26, scope: !1870)
!2029 = !{!1408, !629, i64 72}
!2030 = !DILocation(line: 641, column: 3, scope: !1870)
!2031 = !DILocation(line: 644, column: 3, scope: !1870)
!2032 = !DILocation(line: 645, column: 3, scope: !1870)
!2033 = !DILocation(line: 646, column: 1, scope: !1870)
!2034 = distinct !DISubprogram(name: "raw_hasher", scope: !102, file: !102, line: 486, type: !1388, isLocal: true, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !2035)
!2035 = !{!2036, !2037, !2038}
!2036 = !DILocalVariable(name: "data", arg: 1, scope: !2034, file: !102, line: 486, type: !1390)
!2037 = !DILocalVariable(name: "n", arg: 2, scope: !2034, file: !102, line: 486, type: !99)
!2038 = !DILocalVariable(name: "val", scope: !2034, file: !102, line: 493, type: !99)
!2039 = !DILocation(line: 486, column: 25, scope: !2034)
!2040 = !DILocation(line: 486, column: 38, scope: !2034)
!2041 = !DILocation(line: 493, column: 25, scope: !2034)
!2042 = !DILocalVariable(name: "x", arg: 1, scope: !2043, file: !2044, line: 85, type: !99)
!2043 = distinct !DISubprogram(name: "rotr_sz", scope: !2044, file: !2044, line: 85, type: !2045, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !2047)
!2044 = !DIFile(filename: "./lib/bitrotate.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!99, !99, !66}
!2047 = !{!2042, !2048}
!2048 = !DILocalVariable(name: "n", arg: 2, scope: !2043, file: !2044, line: 85, type: !66)
!2049 = !DILocation(line: 85, column: 17, scope: !2043, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 493, column: 16, scope: !2034)
!2051 = !DILocation(line: 85, column: 24, scope: !2043, inlinedAt: !2050)
!2052 = !DILocation(line: 87, column: 14, scope: !2043, inlinedAt: !2050)
!2053 = !DILocation(line: 87, column: 25, scope: !2043, inlinedAt: !2050)
!2054 = !DILocation(line: 87, column: 20, scope: !2043, inlinedAt: !2050)
!2055 = !DILocation(line: 493, column: 10, scope: !2034)
!2056 = !DILocation(line: 494, column: 14, scope: !2034)
!2057 = !DILocation(line: 494, column: 3, scope: !2034)
!2058 = distinct !DISubprogram(name: "raw_comparator", scope: !102, file: !102, line: 499, type: !1395, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !2059)
!2059 = !{!2060, !2061}
!2060 = !DILocalVariable(name: "a", arg: 1, scope: !2058, file: !102, line: 499, type: !1390)
!2061 = !DILocalVariable(name: "b", arg: 2, scope: !2058, file: !102, line: 499, type: !1390)
!2062 = !DILocation(line: 499, column: 29, scope: !2058)
!2063 = !DILocation(line: 499, column: 44, scope: !2058)
!2064 = !DILocation(line: 501, column: 12, scope: !2058)
!2065 = !DILocation(line: 501, column: 3, scope: !2058)
!2066 = distinct !DISubprogram(name: "hash_clear", scope: !102, file: !102, line: 653, type: !2067, isLocal: false, isDefinition: true, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !1873}
!2069 = !{!2070, !2071, !2072, !2078}
!2070 = !DILocalVariable(name: "table", arg: 1, scope: !2066, file: !102, line: 653, type: !1873)
!2071 = !DILocalVariable(name: "bucket", scope: !2066, file: !102, line: 655, type: !1372)
!2072 = !DILocalVariable(name: "cursor", scope: !2073, file: !102, line: 661, type: !1372)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !102, line: 660, column: 9)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !102, line: 659, column: 11)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !102, line: 658, column: 5)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !102, line: 657, column: 3)
!2077 = distinct !DILexicalBlock(scope: !2066, file: !102, line: 657, column: 3)
!2078 = !DILocalVariable(name: "next", scope: !2073, file: !102, line: 662, type: !1372)
!2079 = !DILocation(line: 653, column: 25, scope: !2066)
!2080 = !DILocation(line: 657, column: 24, scope: !2077)
!2081 = !DILocation(line: 655, column: 22, scope: !2066)
!2082 = !DILocation(line: 657, column: 48, scope: !2076)
!2083 = !DILocation(line: 657, column: 39, scope: !2076)
!2084 = !DILocation(line: 657, column: 3, scope: !2077)
!2085 = !DILocation(line: 659, column: 19, scope: !2074)
!2086 = !DILocation(line: 659, column: 11, scope: !2074)
!2087 = !DILocation(line: 659, column: 11, scope: !2075)
!2088 = !DILocation(line: 665, column: 33, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2073, file: !102, line: 665, column: 11)
!2090 = !DILocation(line: 661, column: 30, scope: !2073)
!2091 = !DILocation(line: 665, column: 11, scope: !2089)
!2092 = !DILocation(line: 667, column: 19, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !102, line: 666, column: 13)
!2094 = distinct !DILexicalBlock(scope: !2089, file: !102, line: 665, column: 11)
!2095 = !DILocation(line: 668, column: 44, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !102, line: 667, column: 19)
!2097 = !DILocation(line: 668, column: 17, scope: !2096)
!2098 = !DILocation(line: 669, column: 28, scope: !2093)
!2099 = !DILocation(line: 671, column: 30, scope: !2093)
!2100 = !DILocation(line: 662, column: 30, scope: !2073)
!2101 = !DILocation(line: 674, column: 37, scope: !2093)
!2102 = !DILocation(line: 674, column: 28, scope: !2093)
!2103 = !DILocation(line: 675, column: 38, scope: !2093)
!2104 = distinct !{!2104, !2091, !2105}
!2105 = !DILocation(line: 676, column: 13, scope: !2089)
!2106 = !DILocation(line: 679, column: 15, scope: !2073)
!2107 = !DILocation(line: 680, column: 40, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2073, file: !102, line: 679, column: 15)
!2109 = !DILocation(line: 680, column: 13, scope: !2108)
!2110 = !DILocation(line: 682, column: 24, scope: !2073)
!2111 = !DILocation(line: 683, column: 9, scope: !2073)
!2112 = !DILocation(line: 657, column: 68, scope: !2076)
!2113 = distinct !{!2113, !2084, !2114}
!2114 = !DILocation(line: 684, column: 5, scope: !2077)
!2115 = !DILocation(line: 686, column: 10, scope: !2066)
!2116 = !DILocation(line: 688, column: 1, scope: !2066)
!2117 = !DILocation(line: 687, column: 20, scope: !2066)
!2118 = distinct !DISubprogram(name: "hash_free", scope: !102, file: !102, line: 696, type: !2067, isLocal: false, isDefinition: true, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !2119)
!2119 = !{!2120, !2121, !2122, !2123}
!2120 = !DILocalVariable(name: "table", arg: 1, scope: !2118, file: !102, line: 696, type: !1873)
!2121 = !DILocalVariable(name: "bucket", scope: !2118, file: !102, line: 698, type: !1372)
!2122 = !DILocalVariable(name: "cursor", scope: !2118, file: !102, line: 699, type: !1372)
!2123 = !DILocalVariable(name: "next", scope: !2118, file: !102, line: 700, type: !1372)
!2124 = !DILocation(line: 696, column: 24, scope: !2118)
!2125 = !DILocation(line: 703, column: 14, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2118, file: !102, line: 703, column: 7)
!2127 = !DILocation(line: 703, column: 7, scope: !2126)
!2128 = !DILocation(line: 703, column: 25, scope: !2126)
!2129 = !DILocation(line: 703, column: 35, scope: !2126)
!2130 = !DILocation(line: 703, column: 28, scope: !2126)
!2131 = !DILocation(line: 703, column: 7, scope: !2118)
!2132 = !DILocation(line: 705, column: 28, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !102, line: 705, column: 7)
!2134 = distinct !DILexicalBlock(scope: !2126, file: !102, line: 704, column: 5)
!2135 = !DILocation(line: 698, column: 22, scope: !2118)
!2136 = !DILocation(line: 705, column: 52, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2133, file: !102, line: 705, column: 7)
!2138 = !DILocation(line: 705, column: 43, scope: !2137)
!2139 = !DILocation(line: 705, column: 7, scope: !2133)
!2140 = !DILocation(line: 707, column: 23, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !102, line: 707, column: 15)
!2142 = distinct !DILexicalBlock(scope: !2137, file: !102, line: 706, column: 9)
!2143 = !DILocation(line: 707, column: 15, scope: !2141)
!2144 = !DILocation(line: 709, column: 15, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !102, line: 709, column: 15)
!2146 = distinct !DILexicalBlock(scope: !2141, file: !102, line: 708, column: 13)
!2147 = !DILocation(line: 707, column: 15, scope: !2142)
!2148 = !DILocation(line: 699, column: 22, scope: !2118)
!2149 = !DILocation(line: 710, column: 24, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2145, file: !102, line: 709, column: 15)
!2151 = !DILocation(line: 710, column: 17, scope: !2150)
!2152 = !DILocation(line: 709, column: 62, scope: !2150)
!2153 = distinct !{!2153, !2144, !2154}
!2154 = !DILocation(line: 710, column: 48, scope: !2145)
!2155 = !DILocation(line: 710, column: 44, scope: !2150)
!2156 = !DILocation(line: 705, column: 72, scope: !2137)
!2157 = distinct !{!2157, !2139, !2158}
!2158 = !DILocation(line: 712, column: 9, scope: !2133)
!2159 = !DILocation(line: 722, column: 24, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2118, file: !102, line: 722, column: 3)
!2161 = !DILocation(line: 722, column: 48, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2160, file: !102, line: 722, column: 3)
!2163 = !DILocation(line: 722, column: 39, scope: !2162)
!2164 = !DILocation(line: 722, column: 3, scope: !2160)
!2165 = !DILocation(line: 724, column: 29, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !102, line: 724, column: 7)
!2167 = distinct !DILexicalBlock(scope: !2162, file: !102, line: 723, column: 5)
!2168 = !DILocation(line: 724, column: 7, scope: !2166)
!2169 = !DILocation(line: 726, column: 26, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !102, line: 725, column: 9)
!2171 = distinct !DILexicalBlock(scope: !2166, file: !102, line: 724, column: 7)
!2172 = !DILocation(line: 700, column: 22, scope: !2118)
!2173 = !DILocation(line: 727, column: 11, scope: !2170)
!2174 = distinct !{!2174, !2168, !2175}
!2175 = !DILocation(line: 728, column: 9, scope: !2166)
!2176 = !DILocation(line: 722, column: 68, scope: !2162)
!2177 = distinct !{!2177, !2164, !2178}
!2178 = !DILocation(line: 729, column: 5, scope: !2160)
!2179 = !DILocation(line: 732, column: 24, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2118, file: !102, line: 732, column: 3)
!2181 = !DILocation(line: 732, column: 3, scope: !2180)
!2182 = !DILocation(line: 734, column: 22, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !102, line: 733, column: 5)
!2184 = distinct !DILexicalBlock(scope: !2180, file: !102, line: 732, column: 3)
!2185 = !DILocation(line: 735, column: 7, scope: !2183)
!2186 = distinct !{!2186, !2181, !2187}
!2187 = !DILocation(line: 736, column: 5, scope: !2180)
!2188 = !DILocation(line: 741, column: 16, scope: !2118)
!2189 = !DILocation(line: 741, column: 3, scope: !2118)
!2190 = !DILocation(line: 742, column: 9, scope: !2118)
!2191 = !DILocation(line: 742, column: 3, scope: !2118)
!2192 = !DILocation(line: 743, column: 1, scope: !2118)
!2193 = distinct !DISubprogram(name: "hash_rehash", scope: !102, file: !102, line: 943, type: !2194, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !2196)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!34, !1873, !99}
!2196 = !{!2197, !2198, !2199, !2200, !2201}
!2197 = !DILocalVariable(name: "table", arg: 1, scope: !2193, file: !102, line: 943, type: !1873)
!2198 = !DILocalVariable(name: "candidate", arg: 2, scope: !2193, file: !102, line: 943, type: !99)
!2199 = !DILocalVariable(name: "storage", scope: !2193, file: !102, line: 945, type: !1368)
!2200 = !DILocalVariable(name: "new_table", scope: !2193, file: !102, line: 946, type: !1873)
!2201 = !DILocalVariable(name: "new_size", scope: !2193, file: !102, line: 947, type: !99)
!2202 = !DILocation(line: 943, column: 26, scope: !2193)
!2203 = !DILocation(line: 943, column: 40, scope: !2193)
!2204 = !DILocation(line: 945, column: 3, scope: !2193)
!2205 = !DILocation(line: 947, column: 60, scope: !2193)
!2206 = !DILocation(line: 544, column: 29, scope: !1941, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 947, column: 21, scope: !2193)
!2208 = !DILocation(line: 544, column: 59, scope: !1941, inlinedAt: !2207)
!2209 = !DILocation(line: 546, column: 16, scope: !1948, inlinedAt: !2207)
!2210 = !DILocation(line: 546, column: 7, scope: !1941, inlinedAt: !2207)
!2211 = !DILocation(line: 548, column: 29, scope: !1947, inlinedAt: !2207)
!2212 = !DILocation(line: 548, column: 49, scope: !1947, inlinedAt: !2207)
!2213 = !DILocation(line: 548, column: 39, scope: !1947, inlinedAt: !2207)
!2214 = !DILocation(line: 548, column: 13, scope: !1947, inlinedAt: !2207)
!2215 = !DILocation(line: 549, column: 20, scope: !1960, inlinedAt: !2207)
!2216 = !DILocation(line: 551, column: 19, scope: !1947, inlinedAt: !2207)
!2217 = !DILocation(line: 463, column: 20, scope: !1963, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 553, column: 15, scope: !1941, inlinedAt: !2207)
!2219 = !DILocation(line: 466, column: 7, scope: !1963, inlinedAt: !2218)
!2220 = !DILocation(line: 470, column: 13, scope: !1963, inlinedAt: !2218)
!2221 = !DILocation(line: 472, column: 19, scope: !1963, inlinedAt: !2218)
!2222 = !DILocation(line: 472, column: 32, scope: !1963, inlinedAt: !2218)
!2223 = !DILocation(line: 449, column: 17, scope: !1974, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 472, column: 36, scope: !1963, inlinedAt: !2218)
!2225 = !DILocation(line: 444, column: 18, scope: !1974, inlinedAt: !2224)
!2226 = !DILocation(line: 446, column: 10, scope: !1974, inlinedAt: !2224)
!2227 = !DILocation(line: 447, column: 10, scope: !1974, inlinedAt: !2224)
!2228 = !DILocation(line: 449, column: 29, scope: !1974, inlinedAt: !2224)
!2229 = !DILocation(line: 449, column: 43, scope: !1974, inlinedAt: !2224)
!2230 = !DILocation(line: 449, column: 3, scope: !1974, inlinedAt: !2224)
!2231 = !DILocation(line: 452, column: 19, scope: !1989, inlinedAt: !2224)
!2232 = !DILocation(line: 452, column: 14, scope: !1989, inlinedAt: !2224)
!2233 = !DILocation(line: 453, column: 14, scope: !1989, inlinedAt: !2224)
!2234 = !DILocation(line: 456, column: 21, scope: !1974, inlinedAt: !2224)
!2235 = !DILocation(line: 456, column: 11, scope: !1974, inlinedAt: !2224)
!2236 = !DILocation(line: 472, column: 3, scope: !1963, inlinedAt: !2218)
!2237 = !DILocation(line: 473, column: 15, scope: !1963, inlinedAt: !2218)
!2238 = !DILocation(line: 555, column: 5, scope: !2003, inlinedAt: !2207)
!2239 = !DILocation(line: 947, column: 10, scope: !2193)
!2240 = !DILocation(line: 951, column: 26, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2193, file: !102, line: 951, column: 7)
!2242 = !DILocation(line: 951, column: 16, scope: !2241)
!2243 = !DILocation(line: 951, column: 7, scope: !2193)
!2244 = !DILocation(line: 946, column: 15, scope: !2193)
!2245 = !DILocation(line: 954, column: 23, scope: !2193)
!2246 = !DILocation(line: 954, column: 21, scope: !2193)
!2247 = !DILocation(line: 955, column: 25, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2193, file: !102, line: 955, column: 7)
!2249 = !DILocation(line: 955, column: 7, scope: !2193)
!2250 = !DILocation(line: 957, column: 14, scope: !2193)
!2251 = !DILocation(line: 957, column: 24, scope: !2193)
!2252 = !DILocation(line: 958, column: 47, scope: !2193)
!2253 = !DILocation(line: 958, column: 14, scope: !2193)
!2254 = !DILocation(line: 958, column: 27, scope: !2193)
!2255 = !DILocation(line: 959, column: 14, scope: !2193)
!2256 = !DILocation(line: 961, column: 30, scope: !2193)
!2257 = !DILocation(line: 960, column: 24, scope: !2193)
!2258 = !DILocation(line: 961, column: 14, scope: !2193)
!2259 = !DILocation(line: 962, column: 30, scope: !2193)
!2260 = !DILocation(line: 961, column: 21, scope: !2193)
!2261 = !DILocation(line: 963, column: 34, scope: !2193)
!2262 = !DILocation(line: 963, column: 14, scope: !2193)
!2263 = !DILocation(line: 963, column: 25, scope: !2193)
!2264 = !DILocation(line: 984, column: 39, scope: !2193)
!2265 = !DILocation(line: 984, column: 14, scope: !2193)
!2266 = !DILocation(line: 984, column: 30, scope: !2193)
!2267 = !DILocation(line: 945, column: 14, scope: !2193)
!2268 = !DILocation(line: 986, column: 7, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2193, file: !102, line: 986, column: 7)
!2270 = !DILocation(line: 986, column: 7, scope: !2193)
!2271 = !DILocation(line: 989, column: 20, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2269, file: !102, line: 987, column: 5)
!2273 = !DILocation(line: 989, column: 7, scope: !2272)
!2274 = !DILocation(line: 990, column: 34, scope: !2272)
!2275 = !DILocation(line: 990, column: 21, scope: !2272)
!2276 = !DILocation(line: 992, column: 37, scope: !2272)
!2277 = !{!745, !745, i64 0}
!2278 = !DILocation(line: 992, column: 24, scope: !2272)
!2279 = !DILocation(line: 994, column: 43, scope: !2272)
!2280 = !DILocation(line: 994, column: 30, scope: !2272)
!2281 = !DILocation(line: 996, column: 7, scope: !2272)
!2282 = !DILocation(line: 954, column: 14, scope: !2193)
!2283 = !DILocation(line: 1012, column: 39, scope: !2193)
!2284 = !DILocation(line: 1012, column: 26, scope: !2193)
!2285 = !DILocalVariable(name: "dst", arg: 1, scope: !2286, file: !102, line: 860, type: !1873)
!2286 = distinct !DISubprogram(name: "transfer_entries", scope: !102, file: !102, line: 860, type: !2287, isLocal: true, isDefinition: true, scopeLine: 861, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!34, !1873, !1873, !34}
!2289 = !{!2285, !2290, !2291, !2292, !2293, !2294, !2295, !2300, !2301}
!2290 = !DILocalVariable(name: "src", arg: 2, scope: !2286, file: !102, line: 860, type: !1873)
!2291 = !DILocalVariable(name: "safe", arg: 3, scope: !2286, file: !102, line: 860, type: !34)
!2292 = !DILocalVariable(name: "bucket", scope: !2286, file: !102, line: 862, type: !1372)
!2293 = !DILocalVariable(name: "cursor", scope: !2286, file: !102, line: 863, type: !1372)
!2294 = !DILocalVariable(name: "next", scope: !2286, file: !102, line: 864, type: !1372)
!2295 = !DILocalVariable(name: "data", scope: !2296, file: !102, line: 868, type: !29)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !102, line: 867, column: 7)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !102, line: 866, column: 9)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !102, line: 865, column: 3)
!2299 = distinct !DILexicalBlock(scope: !2286, file: !102, line: 865, column: 3)
!2300 = !DILocalVariable(name: "new_bucket", scope: !2296, file: !102, line: 869, type: !1372)
!2301 = !DILocalVariable(name: "new_entry", scope: !2302, file: !102, line: 913, type: !1372)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !102, line: 910, column: 11)
!2303 = distinct !DILexicalBlock(scope: !2296, file: !102, line: 909, column: 13)
!2304 = !DILocation(line: 860, column: 31, scope: !2286, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 1013, column: 10, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2193, file: !102, line: 1013, column: 7)
!2307 = !DILocation(line: 860, column: 48, scope: !2286, inlinedAt: !2305)
!2308 = !DILocation(line: 860, column: 58, scope: !2286, inlinedAt: !2305)
!2309 = !DILocation(line: 865, column: 22, scope: !2299, inlinedAt: !2305)
!2310 = !DILocation(line: 862, column: 22, scope: !2286, inlinedAt: !2305)
!2311 = !DILocation(line: 865, column: 44, scope: !2298, inlinedAt: !2305)
!2312 = !DILocation(line: 865, column: 37, scope: !2298, inlinedAt: !2305)
!2313 = !DILocation(line: 865, column: 3, scope: !2299, inlinedAt: !2305)
!2314 = !DILocation(line: 866, column: 17, scope: !2297, inlinedAt: !2305)
!2315 = !DILocation(line: 866, column: 9, scope: !2297, inlinedAt: !2305)
!2316 = !DILocation(line: 866, column: 9, scope: !2298, inlinedAt: !2305)
!2317 = !DILocation(line: 877, column: 31, scope: !2318, inlinedAt: !2305)
!2318 = distinct !DILexicalBlock(scope: !2296, file: !102, line: 877, column: 9)
!2319 = !DILocation(line: 863, column: 22, scope: !2286, inlinedAt: !2305)
!2320 = !DILocation(line: 877, column: 9, scope: !2318, inlinedAt: !2305)
!2321 = !DILocation(line: 251, column: 41, scope: !1621, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 880, column: 26, scope: !2323, inlinedAt: !2305)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !102, line: 878, column: 11)
!2324 = distinct !DILexicalBlock(scope: !2318, file: !102, line: 877, column: 9)
!2325 = !DILocation(line: 879, column: 28, scope: !2323, inlinedAt: !2305)
!2326 = !DILocation(line: 868, column: 15, scope: !2296, inlinedAt: !2305)
!2327 = !DILocation(line: 249, column: 32, scope: !1621, inlinedAt: !2322)
!2328 = !DILocation(line: 249, column: 51, scope: !1621, inlinedAt: !2322)
!2329 = !DILocation(line: 251, column: 21, scope: !1621, inlinedAt: !2322)
!2330 = !DILocation(line: 251, column: 14, scope: !1621, inlinedAt: !2322)
!2331 = !DILocation(line: 251, column: 10, scope: !1621, inlinedAt: !2322)
!2332 = !DILocation(line: 252, column: 21, scope: !1636, inlinedAt: !2322)
!2333 = !DILocation(line: 252, column: 12, scope: !1636, inlinedAt: !2322)
!2334 = !DILocation(line: 252, column: 7, scope: !1621, inlinedAt: !2322)
!2335 = !DILocation(line: 253, column: 5, scope: !1636, inlinedAt: !2322)
!2336 = !DILocation(line: 254, column: 17, scope: !1621, inlinedAt: !2322)
!2337 = !DILocation(line: 882, column: 28, scope: !2323, inlinedAt: !2305)
!2338 = !DILocation(line: 864, column: 22, scope: !2286, inlinedAt: !2305)
!2339 = !DILocation(line: 884, column: 29, scope: !2340, inlinedAt: !2305)
!2340 = distinct !DILexicalBlock(scope: !2323, file: !102, line: 884, column: 17)
!2341 = !DILocation(line: 884, column: 17, scope: !2340, inlinedAt: !2305)
!2342 = !DILocation(line: 884, column: 17, scope: !2323, inlinedAt: !2305)
!2343 = !DILocation(line: 888, column: 44, scope: !2344, inlinedAt: !2305)
!2344 = distinct !DILexicalBlock(scope: !2340, file: !102, line: 885, column: 15)
!2345 = !DILocation(line: 890, column: 15, scope: !2344, inlinedAt: !2305)
!2346 = !DILocation(line: 895, column: 34, scope: !2347, inlinedAt: !2305)
!2347 = distinct !DILexicalBlock(scope: !2340, file: !102, line: 892, column: 15)
!2348 = !DILocation(line: 896, column: 36, scope: !2347, inlinedAt: !2305)
!2349 = !DILocalVariable(name: "table", arg: 1, scope: !2350, file: !102, line: 776, type: !1873)
!2350 = distinct !DISubprogram(name: "free_entry", scope: !102, file: !102, line: 776, type: !2351, isLocal: true, isDefinition: true, scopeLine: 777, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !1873, !1372}
!2353 = !{!2349, !2354}
!2354 = !DILocalVariable(name: "entry", arg: 2, scope: !2350, file: !102, line: 776, type: !1372)
!2355 = !DILocation(line: 776, column: 25, scope: !2350, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 897, column: 17, scope: !2347, inlinedAt: !2305)
!2357 = !DILocation(line: 776, column: 51, scope: !2350, inlinedAt: !2356)
!2358 = !DILocation(line: 778, column: 15, scope: !2350, inlinedAt: !2356)
!2359 = distinct !{!2359, !2360, !2361}
!2360 = !DILocation(line: 877, column: 9, scope: !2318)
!2361 = !DILocation(line: 899, column: 11, scope: !2318)
!2362 = !DILocation(line: 904, column: 22, scope: !2296, inlinedAt: !2305)
!2363 = !DILocation(line: 865, column: 64, scope: !2298, inlinedAt: !2305)
!2364 = distinct !{!2364, !2365, !2366}
!2365 = !DILocation(line: 865, column: 3, scope: !2299)
!2366 = !DILocation(line: 930, column: 7, scope: !2299)
!2367 = !DILocation(line: 1014, column: 13, scope: !2306)
!2368 = !DILocation(line: 1013, column: 7, scope: !2193)
!2369 = !DILocation(line: 1015, column: 5, scope: !2306)
!2370 = !DILocation(line: 1017, column: 20, scope: !2193)
!2371 = !DILocation(line: 1017, column: 3, scope: !2193)
!2372 = !DILocation(line: 1018, column: 3, scope: !2193)
!2373 = !DILocation(line: 1019, column: 1, scope: !2193)
!2374 = !DILocation(line: 860, column: 31, scope: !2286)
!2375 = !DILocation(line: 860, column: 48, scope: !2286)
!2376 = !DILocation(line: 860, column: 58, scope: !2286)
!2377 = !DILocation(line: 865, column: 22, scope: !2299)
!2378 = !DILocation(line: 862, column: 22, scope: !2286)
!2379 = !DILocation(line: 865, column: 44, scope: !2298)
!2380 = !DILocation(line: 865, column: 37, scope: !2298)
!2381 = !DILocation(line: 866, column: 17, scope: !2297)
!2382 = !DILocation(line: 866, column: 9, scope: !2297)
!2383 = !DILocation(line: 866, column: 9, scope: !2298)
!2384 = !DILocation(line: 877, column: 31, scope: !2318)
!2385 = !DILocation(line: 863, column: 22, scope: !2286)
!2386 = !DILocation(line: 251, column: 41, scope: !1621, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 880, column: 26, scope: !2323)
!2388 = !DILocation(line: 879, column: 28, scope: !2323)
!2389 = !DILocation(line: 868, column: 15, scope: !2296)
!2390 = !DILocation(line: 249, column: 32, scope: !1621, inlinedAt: !2387)
!2391 = !DILocation(line: 249, column: 51, scope: !1621, inlinedAt: !2387)
!2392 = !DILocation(line: 251, column: 21, scope: !1621, inlinedAt: !2387)
!2393 = !DILocation(line: 251, column: 14, scope: !1621, inlinedAt: !2387)
!2394 = !DILocation(line: 251, column: 10, scope: !1621, inlinedAt: !2387)
!2395 = !DILocation(line: 252, column: 21, scope: !1636, inlinedAt: !2387)
!2396 = !DILocation(line: 252, column: 12, scope: !1636, inlinedAt: !2387)
!2397 = !DILocation(line: 252, column: 7, scope: !1621, inlinedAt: !2387)
!2398 = !DILocation(line: 253, column: 5, scope: !1636, inlinedAt: !2387)
!2399 = !DILocation(line: 254, column: 17, scope: !1621, inlinedAt: !2387)
!2400 = !DILocation(line: 882, column: 28, scope: !2323)
!2401 = !DILocation(line: 864, column: 22, scope: !2286)
!2402 = !DILocation(line: 884, column: 29, scope: !2340)
!2403 = !DILocation(line: 884, column: 17, scope: !2340)
!2404 = !DILocation(line: 884, column: 17, scope: !2323)
!2405 = !DILocation(line: 888, column: 44, scope: !2344)
!2406 = !DILocation(line: 890, column: 15, scope: !2344)
!2407 = !DILocation(line: 895, column: 34, scope: !2347)
!2408 = !DILocation(line: 896, column: 36, scope: !2347)
!2409 = !DILocation(line: 776, column: 25, scope: !2350, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 897, column: 17, scope: !2347)
!2411 = !DILocation(line: 776, column: 51, scope: !2350, inlinedAt: !2410)
!2412 = !DILocation(line: 778, column: 15, scope: !2350, inlinedAt: !2410)
!2413 = !DILocation(line: 903, column: 24, scope: !2296)
!2414 = !DILocation(line: 904, column: 22, scope: !2296)
!2415 = !DILocation(line: 905, column: 13, scope: !2296)
!2416 = !DILocation(line: 249, column: 32, scope: !1621, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 907, column: 22, scope: !2296)
!2418 = !DILocation(line: 249, column: 51, scope: !1621, inlinedAt: !2417)
!2419 = !DILocation(line: 251, column: 21, scope: !1621, inlinedAt: !2417)
!2420 = !DILocation(line: 251, column: 41, scope: !1621, inlinedAt: !2417)
!2421 = !DILocation(line: 251, column: 14, scope: !1621, inlinedAt: !2417)
!2422 = !DILocation(line: 251, column: 10, scope: !1621, inlinedAt: !2417)
!2423 = !DILocation(line: 252, column: 21, scope: !1636, inlinedAt: !2417)
!2424 = !DILocation(line: 252, column: 12, scope: !1636, inlinedAt: !2417)
!2425 = !DILocation(line: 252, column: 7, scope: !1621, inlinedAt: !2417)
!2426 = !DILocation(line: 253, column: 5, scope: !1636, inlinedAt: !2417)
!2427 = !DILocation(line: 254, column: 17, scope: !1621, inlinedAt: !2417)
!2428 = !DILocation(line: 909, column: 25, scope: !2303)
!2429 = !DILocation(line: 909, column: 13, scope: !2303)
!2430 = !DILocation(line: 909, column: 13, scope: !2296)
!2431 = !DILocalVariable(name: "table", arg: 1, scope: !2432, file: !102, line: 751, type: !1873)
!2432 = distinct !DISubprogram(name: "allocate_entry", scope: !102, file: !102, line: 751, type: !2433, isLocal: true, isDefinition: true, scopeLine: 752, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!1372, !1873}
!2435 = !{!2431, !2436}
!2436 = !DILocalVariable(name: "new", scope: !2432, file: !102, line: 753, type: !1372)
!2437 = !DILocation(line: 751, column: 29, scope: !2432, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 913, column: 44, scope: !2302)
!2439 = !DILocation(line: 755, column: 14, scope: !2440, inlinedAt: !2438)
!2440 = distinct !DILexicalBlock(scope: !2432, file: !102, line: 755, column: 7)
!2441 = !DILocation(line: 755, column: 7, scope: !2440, inlinedAt: !2438)
!2442 = !DILocation(line: 755, column: 7, scope: !2432, inlinedAt: !2438)
!2443 = !DILocation(line: 753, column: 22, scope: !2432, inlinedAt: !2438)
!2444 = !DILocation(line: 758, column: 37, scope: !2445, inlinedAt: !2438)
!2445 = distinct !DILexicalBlock(scope: !2440, file: !102, line: 756, column: 5)
!2446 = !DILocation(line: 758, column: 30, scope: !2445, inlinedAt: !2438)
!2447 = !DILocation(line: 913, column: 32, scope: !2302)
!2448 = !DILocation(line: 915, column: 17, scope: !2302)
!2449 = !DILocation(line: 765, column: 13, scope: !2450, inlinedAt: !2438)
!2450 = distinct !DILexicalBlock(scope: !2440, file: !102, line: 761, column: 5)
!2451 = !DILocation(line: 915, column: 27, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2302, file: !102, line: 915, column: 17)
!2453 = !DILocation(line: 918, column: 24, scope: !2302)
!2454 = !DILocation(line: 918, column: 29, scope: !2302)
!2455 = !DILocation(line: 919, column: 43, scope: !2302)
!2456 = !DILocation(line: 919, column: 24, scope: !2302)
!2457 = !DILocation(line: 919, column: 29, scope: !2302)
!2458 = !DILocation(line: 920, column: 30, scope: !2302)
!2459 = !DILocation(line: 925, column: 30, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2303, file: !102, line: 923, column: 11)
!2461 = !DILocation(line: 926, column: 32, scope: !2460)
!2462 = !DILocation(line: 928, column: 22, scope: !2296)
!2463 = !DILocation(line: 929, column: 28, scope: !2296)
!2464 = !DILocation(line: 930, column: 7, scope: !2297)
!2465 = !DILocation(line: 865, column: 64, scope: !2298)
!2466 = !DILocation(line: 932, column: 1, scope: !2286)
!2467 = distinct !DISubprogram(name: "hash_insert_if_absent", scope: !102, file: !102, line: 1038, type: !2468, isLocal: false, isDefinition: true, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !2471)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!66, !1873, !1390, !2470}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!2471 = !{!2472, !2473, !2474, !2475, !2476, !2477, !2482, !2483}
!2472 = !DILocalVariable(name: "table", arg: 1, scope: !2467, file: !102, line: 1038, type: !1873)
!2473 = !DILocalVariable(name: "entry", arg: 2, scope: !2467, file: !102, line: 1038, type: !1390)
!2474 = !DILocalVariable(name: "matched_ent", arg: 3, scope: !2467, file: !102, line: 1039, type: !2470)
!2475 = !DILocalVariable(name: "data", scope: !2467, file: !102, line: 1041, type: !29)
!2476 = !DILocalVariable(name: "bucket", scope: !2467, file: !102, line: 1042, type: !1372)
!2477 = !DILocalVariable(name: "tuning", scope: !2478, file: !102, line: 1072, type: !1384)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !102, line: 1071, column: 9)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !102, line: 1069, column: 11)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !102, line: 1065, column: 5)
!2481 = distinct !DILexicalBlock(scope: !2467, file: !102, line: 1063, column: 7)
!2482 = !DILocalVariable(name: "candidate", scope: !2478, file: !102, line: 1073, type: !109)
!2483 = !DILocalVariable(name: "new_entry", scope: !2484, file: !102, line: 1096, type: !1372)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !102, line: 1095, column: 5)
!2485 = distinct !DILexicalBlock(scope: !2467, file: !102, line: 1094, column: 7)
!2486 = !DILocation(line: 1038, column: 36, scope: !2467)
!2487 = !DILocation(line: 1038, column: 55, scope: !2467)
!2488 = !DILocation(line: 1039, column: 37, scope: !2467)
!2489 = !DILocation(line: 1047, column: 9, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2467, file: !102, line: 1047, column: 7)
!2491 = !DILocation(line: 1047, column: 7, scope: !2467)
!2492 = !DILocation(line: 1048, column: 5, scope: !2490)
!2493 = !DILocalVariable(name: "table", arg: 1, scope: !2494, file: !102, line: 790, type: !1873)
!2494 = distinct !DISubprogram(name: "hash_find_entry", scope: !102, file: !102, line: 790, type: !2495, isLocal: true, isDefinition: true, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !2498)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!29, !1873, !1390, !2497, !34}
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!2498 = !{!2493, !2499, !2500, !2501, !2502, !2503, !2504, !2507, !2512, !2518}
!2499 = !DILocalVariable(name: "entry", arg: 2, scope: !2494, file: !102, line: 790, type: !1390)
!2500 = !DILocalVariable(name: "bucket_head", arg: 3, scope: !2494, file: !102, line: 791, type: !2497)
!2501 = !DILocalVariable(name: "delete", arg: 4, scope: !2494, file: !102, line: 791, type: !34)
!2502 = !DILocalVariable(name: "bucket", scope: !2494, file: !102, line: 793, type: !1372)
!2503 = !DILocalVariable(name: "cursor", scope: !2494, file: !102, line: 794, type: !1372)
!2504 = !DILocalVariable(name: "data", scope: !2505, file: !102, line: 805, type: !29)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !102, line: 804, column: 5)
!2506 = distinct !DILexicalBlock(scope: !2494, file: !102, line: 803, column: 7)
!2507 = !DILocalVariable(name: "next", scope: !2508, file: !102, line: 811, type: !1372)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !102, line: 810, column: 13)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !102, line: 809, column: 15)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !102, line: 808, column: 9)
!2511 = distinct !DILexicalBlock(scope: !2505, file: !102, line: 807, column: 11)
!2512 = !DILocalVariable(name: "data", scope: !2513, file: !102, line: 833, type: !29)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !102, line: 832, column: 9)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !102, line: 830, column: 11)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !102, line: 829, column: 5)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !102, line: 828, column: 3)
!2517 = distinct !DILexicalBlock(scope: !2494, file: !102, line: 828, column: 3)
!2518 = !DILocalVariable(name: "next", scope: !2519, file: !102, line: 837, type: !1372)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !102, line: 836, column: 13)
!2520 = distinct !DILexicalBlock(scope: !2513, file: !102, line: 835, column: 15)
!2521 = !DILocation(line: 790, column: 30, scope: !2494, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 1051, column: 15, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2467, file: !102, line: 1051, column: 7)
!2524 = !DILocation(line: 790, column: 49, scope: !2494, inlinedAt: !2522)
!2525 = !DILocation(line: 791, column: 56, scope: !2494, inlinedAt: !2522)
!2526 = !DILocation(line: 249, column: 32, scope: !1621, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 793, column: 31, scope: !2494, inlinedAt: !2522)
!2528 = !DILocation(line: 249, column: 51, scope: !1621, inlinedAt: !2527)
!2529 = !DILocation(line: 251, column: 21, scope: !1621, inlinedAt: !2527)
!2530 = !DILocation(line: 251, column: 41, scope: !1621, inlinedAt: !2527)
!2531 = !DILocation(line: 251, column: 14, scope: !1621, inlinedAt: !2527)
!2532 = !DILocation(line: 251, column: 10, scope: !1621, inlinedAt: !2527)
!2533 = !DILocation(line: 252, column: 21, scope: !1636, inlinedAt: !2527)
!2534 = !DILocation(line: 252, column: 12, scope: !1636, inlinedAt: !2527)
!2535 = !DILocation(line: 252, column: 7, scope: !1621, inlinedAt: !2527)
!2536 = !DILocation(line: 253, column: 5, scope: !1636, inlinedAt: !2527)
!2537 = !DILocation(line: 254, column: 17, scope: !1621, inlinedAt: !2527)
!2538 = !DILocation(line: 254, column: 24, scope: !1621, inlinedAt: !2527)
!2539 = !DILocation(line: 793, column: 22, scope: !2494, inlinedAt: !2522)
!2540 = !DILocation(line: 799, column: 15, scope: !2541, inlinedAt: !2522)
!2541 = distinct !DILexicalBlock(scope: !2494, file: !102, line: 799, column: 7)
!2542 = !DILocation(line: 799, column: 20, scope: !2541, inlinedAt: !2522)
!2543 = !DILocation(line: 799, column: 7, scope: !2494, inlinedAt: !2522)
!2544 = !DILocation(line: 803, column: 13, scope: !2506, inlinedAt: !2522)
!2545 = !DILocation(line: 803, column: 29, scope: !2506, inlinedAt: !2522)
!2546 = !DILocation(line: 803, column: 39, scope: !2506, inlinedAt: !2522)
!2547 = !DILocation(line: 803, column: 32, scope: !2506, inlinedAt: !2522)
!2548 = !DILocation(line: 803, column: 7, scope: !2494, inlinedAt: !2522)
!2549 = !DILocation(line: 794, column: 22, scope: !2494, inlinedAt: !2522)
!2550 = !DILocation(line: 828, column: 33, scope: !2516, inlinedAt: !2522)
!2551 = !DILocation(line: 828, column: 3, scope: !2517, inlinedAt: !2522)
!2552 = !DILocation(line: 830, column: 34, scope: !2514, inlinedAt: !2522)
!2553 = !DILocation(line: 830, column: 17, scope: !2514, inlinedAt: !2522)
!2554 = !DILocation(line: 831, column: 11, scope: !2514, inlinedAt: !2522)
!2555 = !DILocation(line: 831, column: 21, scope: !2514, inlinedAt: !2522)
!2556 = !DILocation(line: 831, column: 14, scope: !2514, inlinedAt: !2522)
!2557 = !DILocation(line: 830, column: 11, scope: !2515, inlinedAt: !2522)
!2558 = distinct !{!2558, !2559, !2560}
!2559 = !DILocation(line: 828, column: 3, scope: !2517)
!2560 = !DILocation(line: 847, column: 5, scope: !2517)
!2561 = !DILocation(line: 1051, column: 63, scope: !2523)
!2562 = !DILocation(line: 1041, column: 9, scope: !2467)
!2563 = !DILocation(line: 1051, column: 7, scope: !2467)
!2564 = !DILocation(line: 1053, column: 11, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !102, line: 1053, column: 11)
!2566 = distinct !DILexicalBlock(scope: !2523, file: !102, line: 1052, column: 5)
!2567 = !DILocation(line: 1053, column: 11, scope: !2566)
!2568 = !DILocation(line: 1054, column: 22, scope: !2565)
!2569 = !DILocation(line: 1054, column: 9, scope: !2565)
!2570 = !DILocation(line: 1063, column: 14, scope: !2481)
!2571 = !DILocation(line: 1063, column: 7, scope: !2481)
!2572 = !DILocation(line: 1064, column: 16, scope: !2481)
!2573 = !DILocation(line: 1064, column: 24, scope: !2481)
!2574 = !DILocation(line: 1064, column: 50, scope: !2481)
!2575 = !DILocation(line: 1064, column: 43, scope: !2481)
!2576 = !DILocation(line: 1064, column: 41, scope: !2481)
!2577 = !DILocation(line: 1064, column: 7, scope: !2481)
!2578 = !DILocation(line: 1063, column: 7, scope: !2467)
!2579 = !DILocation(line: 512, column: 27, scope: !1904, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 1068, column: 7, scope: !2480)
!2581 = !DILocation(line: 514, column: 22, scope: !1904, inlinedAt: !2580)
!2582 = !DILocation(line: 516, column: 14, scope: !1915, inlinedAt: !2580)
!2583 = !DILocation(line: 516, column: 7, scope: !1904, inlinedAt: !2580)
!2584 = !DILocation(line: 515, column: 9, scope: !1904, inlinedAt: !2580)
!2585 = !DILocation(line: 526, column: 15, scope: !1919, inlinedAt: !2580)
!2586 = !DILocation(line: 527, column: 35, scope: !1919, inlinedAt: !2580)
!2587 = !DILocation(line: 527, column: 7, scope: !1919, inlinedAt: !2580)
!2588 = !DILocation(line: 528, column: 32, scope: !1919, inlinedAt: !2580)
!2589 = !DILocation(line: 528, column: 22, scope: !1919, inlinedAt: !2580)
!2590 = !DILocation(line: 529, column: 7, scope: !1919, inlinedAt: !2580)
!2591 = !DILocation(line: 529, column: 23, scope: !1919, inlinedAt: !2580)
!2592 = !DILocation(line: 529, column: 12, scope: !1919, inlinedAt: !2580)
!2593 = !DILocation(line: 530, column: 7, scope: !1919, inlinedAt: !2580)
!2594 = !DILocation(line: 530, column: 35, scope: !1919, inlinedAt: !2580)
!2595 = !DILocation(line: 530, column: 55, scope: !1919, inlinedAt: !2580)
!2596 = !DILocation(line: 530, column: 45, scope: !1919, inlinedAt: !2580)
!2597 = !DILocation(line: 531, column: 32, scope: !1919, inlinedAt: !2580)
!2598 = !DILocation(line: 531, column: 7, scope: !1919, inlinedAt: !2580)
!2599 = !DILocation(line: 532, column: 45, scope: !1919, inlinedAt: !2580)
!2600 = !DILocation(line: 535, column: 17, scope: !1904, inlinedAt: !2580)
!2601 = !DILocation(line: 536, column: 3, scope: !1904, inlinedAt: !2580)
!2602 = !DILocation(line: 1070, column: 28, scope: !2479)
!2603 = !DILocation(line: 1070, column: 20, scope: !2479)
!2604 = !DILocation(line: 1070, column: 45, scope: !2479)
!2605 = !DILocation(line: 1070, column: 11, scope: !2479)
!2606 = !DILocation(line: 1069, column: 11, scope: !2480)
!2607 = !DILocation(line: 1072, column: 30, scope: !2478)
!2608 = !DILocation(line: 1074, column: 22, scope: !2478)
!2609 = !DILocation(line: 1077, column: 17, scope: !2478)
!2610 = !DILocation(line: 1074, column: 14, scope: !2478)
!2611 = !DILocation(line: 1073, column: 17, scope: !2478)
!2612 = !DILocation(line: 1079, column: 24, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2478, file: !102, line: 1079, column: 15)
!2614 = !DILocation(line: 1079, column: 15, scope: !2478)
!2615 = !DILocation(line: 1083, column: 36, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2478, file: !102, line: 1083, column: 15)
!2617 = !DILocation(line: 1083, column: 16, scope: !2616)
!2618 = !DILocation(line: 1083, column: 15, scope: !2478)
!2619 = !DILocation(line: 790, column: 30, scope: !2494, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 1087, column: 15, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2478, file: !102, line: 1087, column: 15)
!2622 = !DILocation(line: 790, column: 49, scope: !2494, inlinedAt: !2620)
!2623 = !DILocation(line: 791, column: 56, scope: !2494, inlinedAt: !2620)
!2624 = !DILocation(line: 249, column: 32, scope: !1621, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 793, column: 31, scope: !2494, inlinedAt: !2620)
!2626 = !DILocation(line: 249, column: 51, scope: !1621, inlinedAt: !2625)
!2627 = !DILocation(line: 251, column: 21, scope: !1621, inlinedAt: !2625)
!2628 = !DILocation(line: 251, column: 41, scope: !1621, inlinedAt: !2625)
!2629 = !DILocation(line: 251, column: 14, scope: !1621, inlinedAt: !2625)
!2630 = !DILocation(line: 251, column: 10, scope: !1621, inlinedAt: !2625)
!2631 = !DILocation(line: 252, column: 21, scope: !1636, inlinedAt: !2625)
!2632 = !DILocation(line: 252, column: 12, scope: !1636, inlinedAt: !2625)
!2633 = !DILocation(line: 252, column: 7, scope: !1621, inlinedAt: !2625)
!2634 = !DILocation(line: 253, column: 5, scope: !1636, inlinedAt: !2625)
!2635 = !DILocation(line: 254, column: 17, scope: !1621, inlinedAt: !2625)
!2636 = !DILocation(line: 254, column: 24, scope: !1621, inlinedAt: !2625)
!2637 = !DILocation(line: 793, column: 22, scope: !2494, inlinedAt: !2620)
!2638 = !DILocation(line: 799, column: 15, scope: !2541, inlinedAt: !2620)
!2639 = !DILocation(line: 799, column: 20, scope: !2541, inlinedAt: !2620)
!2640 = !DILocation(line: 799, column: 7, scope: !2494, inlinedAt: !2620)
!2641 = !DILocation(line: 803, column: 13, scope: !2506, inlinedAt: !2620)
!2642 = !DILocation(line: 803, column: 29, scope: !2506, inlinedAt: !2620)
!2643 = !DILocation(line: 803, column: 39, scope: !2506, inlinedAt: !2620)
!2644 = !DILocation(line: 803, column: 32, scope: !2506, inlinedAt: !2620)
!2645 = !DILocation(line: 803, column: 7, scope: !2494, inlinedAt: !2620)
!2646 = !DILocation(line: 805, column: 28, scope: !2505, inlinedAt: !2620)
!2647 = !DILocation(line: 794, column: 22, scope: !2494, inlinedAt: !2620)
!2648 = !DILocation(line: 828, column: 33, scope: !2516, inlinedAt: !2620)
!2649 = !DILocation(line: 828, column: 3, scope: !2517, inlinedAt: !2620)
!2650 = !DILocation(line: 830, column: 34, scope: !2514, inlinedAt: !2620)
!2651 = !DILocation(line: 830, column: 17, scope: !2514, inlinedAt: !2620)
!2652 = !DILocation(line: 831, column: 11, scope: !2514, inlinedAt: !2620)
!2653 = !DILocation(line: 831, column: 21, scope: !2514, inlinedAt: !2620)
!2654 = !DILocation(line: 831, column: 14, scope: !2514, inlinedAt: !2620)
!2655 = !DILocation(line: 830, column: 11, scope: !2515, inlinedAt: !2620)
!2656 = !DILocation(line: 833, column: 38, scope: !2513, inlinedAt: !2620)
!2657 = !DILocation(line: 1087, column: 62, scope: !2621)
!2658 = !DILocation(line: 1087, column: 15, scope: !2478)
!2659 = !DILocation(line: 1088, column: 13, scope: !2621)
!2660 = !DILocation(line: 1042, column: 22, scope: !2467)
!2661 = !DILocation(line: 1094, column: 15, scope: !2485)
!2662 = !DILocation(line: 1094, column: 7, scope: !2485)
!2663 = !DILocation(line: 1094, column: 7, scope: !2467)
!2664 = !DILocation(line: 751, column: 29, scope: !2432, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 1096, column: 38, scope: !2484)
!2666 = !DILocation(line: 755, column: 14, scope: !2440, inlinedAt: !2665)
!2667 = !DILocation(line: 755, column: 7, scope: !2440, inlinedAt: !2665)
!2668 = !DILocation(line: 755, column: 7, scope: !2432, inlinedAt: !2665)
!2669 = !DILocation(line: 753, column: 22, scope: !2432, inlinedAt: !2665)
!2670 = !DILocation(line: 758, column: 37, scope: !2445, inlinedAt: !2665)
!2671 = !DILocation(line: 758, column: 30, scope: !2445, inlinedAt: !2665)
!2672 = !DILocation(line: 1096, column: 26, scope: !2484)
!2673 = !DILocation(line: 1098, column: 11, scope: !2484)
!2674 = !DILocation(line: 765, column: 13, scope: !2450, inlinedAt: !2665)
!2675 = !DILocation(line: 1098, column: 21, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2484, file: !102, line: 1098, column: 11)
!2677 = !DILocation(line: 1103, column: 18, scope: !2484)
!2678 = !DILocation(line: 1103, column: 23, scope: !2484)
!2679 = !DILocation(line: 1104, column: 33, scope: !2484)
!2680 = !DILocation(line: 1104, column: 18, scope: !2484)
!2681 = !DILocation(line: 1104, column: 23, scope: !2484)
!2682 = !DILocation(line: 1105, column: 20, scope: !2484)
!2683 = !DILocation(line: 1106, column: 14, scope: !2484)
!2684 = !DILocation(line: 1106, column: 23, scope: !2484)
!2685 = !DILocation(line: 1107, column: 7, scope: !2484)
!2686 = !DILocation(line: 1112, column: 16, scope: !2467)
!2687 = !DILocation(line: 1114, column: 24, scope: !2467)
!2688 = !DILocation(line: 1116, column: 3, scope: !2467)
!2689 = !DILocation(line: 1117, column: 1, scope: !2467)
!2690 = distinct !DISubprogram(name: "hash_insert", scope: !102, file: !102, line: 1126, type: !2691, isLocal: false, isDefinition: true, scopeLine: 1127, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!29, !1873, !1390}
!2693 = !{!2694, !2695, !2696, !2697}
!2694 = !DILocalVariable(name: "table", arg: 1, scope: !2690, file: !102, line: 1126, type: !1873)
!2695 = !DILocalVariable(name: "entry", arg: 2, scope: !2690, file: !102, line: 1126, type: !1390)
!2696 = !DILocalVariable(name: "matched_ent", scope: !2690, file: !102, line: 1128, type: !1390)
!2697 = !DILocalVariable(name: "err", scope: !2690, file: !102, line: 1129, type: !66)
!2698 = !DILocation(line: 1126, column: 26, scope: !2690)
!2699 = !DILocation(line: 1126, column: 45, scope: !2690)
!2700 = !DILocation(line: 1128, column: 3, scope: !2690)
!2701 = !DILocation(line: 1128, column: 15, scope: !2690)
!2702 = !DILocation(line: 1129, column: 13, scope: !2690)
!2703 = !DILocation(line: 1129, column: 7, scope: !2690)
!2704 = !DILocation(line: 1130, column: 15, scope: !2690)
!2705 = !DILocation(line: 1130, column: 11, scope: !2690)
!2706 = !DILocation(line: 1132, column: 27, scope: !2690)
!2707 = !DILocation(line: 1132, column: 34, scope: !2690)
!2708 = !DILocation(line: 1132, column: 23, scope: !2690)
!2709 = !DILocation(line: 1133, column: 1, scope: !2690)
!2710 = !DILocation(line: 1130, column: 3, scope: !2690)
!2711 = distinct !DISubprogram(name: "hash_delete", scope: !102, file: !102, line: 1140, type: !2691, isLocal: false, isDefinition: true, scopeLine: 1141, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !2712)
!2712 = !{!2713, !2714, !2715, !2716, !2717, !2724, !2725, !2728}
!2713 = !DILocalVariable(name: "table", arg: 1, scope: !2711, file: !102, line: 1140, type: !1873)
!2714 = !DILocalVariable(name: "entry", arg: 2, scope: !2711, file: !102, line: 1140, type: !1390)
!2715 = !DILocalVariable(name: "data", scope: !2711, file: !102, line: 1142, type: !29)
!2716 = !DILocalVariable(name: "bucket", scope: !2711, file: !102, line: 1143, type: !1372)
!2717 = !DILocalVariable(name: "tuning", scope: !2718, file: !102, line: 1166, type: !1384)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !102, line: 1165, column: 13)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !102, line: 1163, column: 15)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !102, line: 1159, column: 9)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !102, line: 1157, column: 11)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !102, line: 1151, column: 5)
!2723 = distinct !DILexicalBlock(scope: !2711, file: !102, line: 1150, column: 7)
!2724 = !DILocalVariable(name: "candidate", scope: !2718, file: !102, line: 1167, type: !99)
!2725 = !DILocalVariable(name: "cursor", scope: !2726, file: !102, line: 1181, type: !1372)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !102, line: 1174, column: 17)
!2727 = distinct !DILexicalBlock(scope: !2718, file: !102, line: 1173, column: 19)
!2728 = !DILocalVariable(name: "next", scope: !2726, file: !102, line: 1182, type: !1372)
!2729 = !DILocation(line: 1140, column: 26, scope: !2711)
!2730 = !DILocation(line: 1140, column: 45, scope: !2711)
!2731 = !DILocation(line: 790, column: 30, scope: !2494, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 1145, column: 10, scope: !2711)
!2733 = !DILocation(line: 790, column: 49, scope: !2494, inlinedAt: !2732)
!2734 = !DILocation(line: 791, column: 56, scope: !2494, inlinedAt: !2732)
!2735 = !DILocation(line: 249, column: 32, scope: !1621, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 793, column: 31, scope: !2494, inlinedAt: !2732)
!2737 = !DILocation(line: 249, column: 51, scope: !1621, inlinedAt: !2736)
!2738 = !DILocation(line: 251, column: 21, scope: !1621, inlinedAt: !2736)
!2739 = !DILocation(line: 251, column: 41, scope: !1621, inlinedAt: !2736)
!2740 = !DILocation(line: 251, column: 14, scope: !1621, inlinedAt: !2736)
!2741 = !DILocation(line: 251, column: 10, scope: !1621, inlinedAt: !2736)
!2742 = !DILocation(line: 252, column: 21, scope: !1636, inlinedAt: !2736)
!2743 = !DILocation(line: 252, column: 12, scope: !1636, inlinedAt: !2736)
!2744 = !DILocation(line: 252, column: 7, scope: !1621, inlinedAt: !2736)
!2745 = !DILocation(line: 253, column: 5, scope: !1636, inlinedAt: !2736)
!2746 = !DILocation(line: 254, column: 17, scope: !1621, inlinedAt: !2736)
!2747 = !DILocation(line: 254, column: 24, scope: !1621, inlinedAt: !2736)
!2748 = !DILocation(line: 793, column: 22, scope: !2494, inlinedAt: !2732)
!2749 = !DILocation(line: 799, column: 15, scope: !2541, inlinedAt: !2732)
!2750 = !DILocation(line: 799, column: 20, scope: !2541, inlinedAt: !2732)
!2751 = !DILocation(line: 799, column: 7, scope: !2494, inlinedAt: !2732)
!2752 = !DILocation(line: 803, column: 13, scope: !2506, inlinedAt: !2732)
!2753 = !DILocation(line: 803, column: 29, scope: !2506, inlinedAt: !2732)
!2754 = !DILocation(line: 803, column: 39, scope: !2506, inlinedAt: !2732)
!2755 = !DILocation(line: 803, column: 32, scope: !2506, inlinedAt: !2732)
!2756 = !DILocation(line: 803, column: 7, scope: !2494, inlinedAt: !2732)
!2757 = !DILocation(line: 805, column: 28, scope: !2505, inlinedAt: !2732)
!2758 = !DILocation(line: 805, column: 13, scope: !2505, inlinedAt: !2732)
!2759 = !DILocation(line: 809, column: 23, scope: !2509, inlinedAt: !2732)
!2760 = !DILocation(line: 809, column: 15, scope: !2509, inlinedAt: !2732)
!2761 = !DILocation(line: 809, column: 15, scope: !2510, inlinedAt: !2732)
!2762 = !DILocation(line: 811, column: 34, scope: !2508, inlinedAt: !2732)
!2763 = !DILocation(line: 815, column: 25, scope: !2508, inlinedAt: !2732)
!2764 = !{i64 0, i64 8, !628, i64 8, i64 8, !628}
!2765 = !DILocation(line: 776, column: 25, scope: !2350, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 816, column: 15, scope: !2508, inlinedAt: !2732)
!2767 = !DILocation(line: 776, column: 51, scope: !2350, inlinedAt: !2766)
!2768 = !DILocation(line: 778, column: 10, scope: !2350, inlinedAt: !2766)
!2769 = !DILocation(line: 778, column: 15, scope: !2350, inlinedAt: !2766)
!2770 = !DILocation(line: 779, column: 24, scope: !2350, inlinedAt: !2766)
!2771 = !DILocation(line: 779, column: 10, scope: !2350, inlinedAt: !2766)
!2772 = !DILocation(line: 779, column: 15, scope: !2350, inlinedAt: !2766)
!2773 = !DILocation(line: 780, column: 26, scope: !2350, inlinedAt: !2766)
!2774 = !DILocation(line: 817, column: 13, scope: !2508, inlinedAt: !2732)
!2775 = !DILocation(line: 820, column: 28, scope: !2776, inlinedAt: !2732)
!2776 = distinct !DILexicalBlock(scope: !2509, file: !102, line: 819, column: 13)
!2777 = !DILocation(line: 794, column: 22, scope: !2494, inlinedAt: !2732)
!2778 = !DILocation(line: 828, column: 33, scope: !2516, inlinedAt: !2732)
!2779 = !DILocation(line: 828, column: 3, scope: !2517, inlinedAt: !2732)
!2780 = !DILocation(line: 830, column: 34, scope: !2514, inlinedAt: !2732)
!2781 = !DILocation(line: 830, column: 17, scope: !2514, inlinedAt: !2732)
!2782 = !DILocation(line: 831, column: 11, scope: !2514, inlinedAt: !2732)
!2783 = !DILocation(line: 831, column: 21, scope: !2514, inlinedAt: !2732)
!2784 = !DILocation(line: 831, column: 14, scope: !2514, inlinedAt: !2732)
!2785 = !DILocation(line: 830, column: 11, scope: !2515, inlinedAt: !2732)
!2786 = !DILocation(line: 833, column: 38, scope: !2513, inlinedAt: !2732)
!2787 = !DILocation(line: 833, column: 32, scope: !2513, inlinedAt: !2732)
!2788 = !DILocation(line: 833, column: 17, scope: !2513, inlinedAt: !2732)
!2789 = !DILocation(line: 837, column: 34, scope: !2519, inlinedAt: !2732)
!2790 = !DILocation(line: 841, column: 36, scope: !2519, inlinedAt: !2732)
!2791 = !DILocation(line: 841, column: 28, scope: !2519, inlinedAt: !2732)
!2792 = !DILocation(line: 776, column: 25, scope: !2350, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 842, column: 15, scope: !2519, inlinedAt: !2732)
!2794 = !DILocation(line: 776, column: 51, scope: !2350, inlinedAt: !2793)
!2795 = !DILocation(line: 778, column: 15, scope: !2350, inlinedAt: !2793)
!2796 = !DILocation(line: 779, column: 24, scope: !2350, inlinedAt: !2793)
!2797 = !DILocation(line: 779, column: 15, scope: !2350, inlinedAt: !2793)
!2798 = !DILocation(line: 780, column: 26, scope: !2350, inlinedAt: !2793)
!2799 = !DILocation(line: 843, column: 13, scope: !2519, inlinedAt: !2732)
!2800 = !DILocation(line: 1142, column: 9, scope: !2711)
!2801 = !DILocation(line: 1146, column: 8, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2711, file: !102, line: 1146, column: 7)
!2803 = !DILocation(line: 1146, column: 7, scope: !2711)
!2804 = !DILocation(line: 1149, column: 10, scope: !2711)
!2805 = !DILocation(line: 1149, column: 19, scope: !2711)
!2806 = !DILocation(line: 1143, column: 22, scope: !2711)
!2807 = !DILocation(line: 1150, column: 16, scope: !2723)
!2808 = !DILocation(line: 1150, column: 8, scope: !2723)
!2809 = !DILocation(line: 1150, column: 7, scope: !2711)
!2810 = !DILocation(line: 1152, column: 14, scope: !2722)
!2811 = !DILocation(line: 1152, column: 28, scope: !2722)
!2812 = !DILocation(line: 1157, column: 11, scope: !2721)
!2813 = !DILocation(line: 1158, column: 20, scope: !2721)
!2814 = !DILocation(line: 1158, column: 28, scope: !2721)
!2815 = !DILocation(line: 1158, column: 54, scope: !2721)
!2816 = !DILocation(line: 1158, column: 47, scope: !2721)
!2817 = !DILocation(line: 1158, column: 45, scope: !2721)
!2818 = !DILocation(line: 1158, column: 11, scope: !2721)
!2819 = !DILocation(line: 1157, column: 11, scope: !2722)
!2820 = !DILocation(line: 512, column: 27, scope: !1904, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 1162, column: 11, scope: !2720)
!2822 = !DILocation(line: 514, column: 22, scope: !1904, inlinedAt: !2821)
!2823 = !DILocation(line: 516, column: 14, scope: !1915, inlinedAt: !2821)
!2824 = !DILocation(line: 516, column: 7, scope: !1904, inlinedAt: !2821)
!2825 = !DILocation(line: 515, column: 9, scope: !1904, inlinedAt: !2821)
!2826 = !DILocation(line: 526, column: 25, scope: !1919, inlinedAt: !2821)
!2827 = !DILocation(line: 526, column: 15, scope: !1919, inlinedAt: !2821)
!2828 = !DILocation(line: 527, column: 35, scope: !1919, inlinedAt: !2821)
!2829 = !DILocation(line: 527, column: 7, scope: !1919, inlinedAt: !2821)
!2830 = !DILocation(line: 528, column: 32, scope: !1919, inlinedAt: !2821)
!2831 = !DILocation(line: 528, column: 22, scope: !1919, inlinedAt: !2821)
!2832 = !DILocation(line: 529, column: 12, scope: !1919, inlinedAt: !2821)
!2833 = !DILocation(line: 529, column: 7, scope: !1919, inlinedAt: !2821)
!2834 = !DILocation(line: 530, column: 35, scope: !1919, inlinedAt: !2821)
!2835 = !DILocation(line: 530, column: 55, scope: !1919, inlinedAt: !2821)
!2836 = !DILocation(line: 530, column: 45, scope: !1919, inlinedAt: !2821)
!2837 = !DILocation(line: 531, column: 32, scope: !1919, inlinedAt: !2821)
!2838 = !DILocation(line: 531, column: 7, scope: !1919, inlinedAt: !2821)
!2839 = !DILocation(line: 532, column: 45, scope: !1919, inlinedAt: !2821)
!2840 = !DILocation(line: 535, column: 17, scope: !1904, inlinedAt: !2821)
!2841 = !DILocation(line: 536, column: 3, scope: !1904, inlinedAt: !2821)
!2842 = !DILocation(line: 1164, column: 32, scope: !2719)
!2843 = !DILocation(line: 1164, column: 24, scope: !2719)
!2844 = !DILocation(line: 1164, column: 49, scope: !2719)
!2845 = !DILocation(line: 1164, column: 15, scope: !2719)
!2846 = !DILocation(line: 1163, column: 15, scope: !2720)
!2847 = !DILocation(line: 1166, column: 34, scope: !2718)
!2848 = !DILocation(line: 1168, column: 26, scope: !2718)
!2849 = !DILocation(line: 1168, column: 18, scope: !2718)
!2850 = !DILocation(line: 1171, column: 31, scope: !2718)
!2851 = !DILocation(line: 1171, column: 21, scope: !2718)
!2852 = !DILocation(line: 1168, column: 17, scope: !2718)
!2853 = !DILocation(line: 1167, column: 22, scope: !2718)
!2854 = !DILocation(line: 1173, column: 20, scope: !2727)
!2855 = !DILocation(line: 1173, column: 19, scope: !2718)
!2856 = !DILocation(line: 1181, column: 54, scope: !2726)
!2857 = !DILocation(line: 1181, column: 38, scope: !2726)
!2858 = !DILocation(line: 1183, column: 19, scope: !2726)
!2859 = !DILocation(line: 1185, column: 38, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2726, file: !102, line: 1184, column: 21)
!2861 = !DILocation(line: 1182, column: 38, scope: !2726)
!2862 = !DILocation(line: 1186, column: 23, scope: !2860)
!2863 = distinct !{!2863, !2858, !2864}
!2864 = !DILocation(line: 1188, column: 21, scope: !2726)
!2865 = !DILocation(line: 1189, column: 42, scope: !2726)
!2866 = !DILocation(line: 1191, column: 17, scope: !2726)
!2867 = !DILocation(line: 1197, column: 1, scope: !2711)
!2868 = distinct !DISubprogram(name: "triple_hash", scope: !2869, file: !2869, line: 34, type: !1388, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !2870)
!2869 = !DIFile(filename: "lib/hash-triple.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2870 = !{!2871, !2872, !2873, !2881}
!2871 = !DILocalVariable(name: "x", arg: 1, scope: !2868, file: !2869, line: 34, type: !1390)
!2872 = !DILocalVariable(name: "table_size", arg: 2, scope: !2868, file: !2869, line: 34, type: !99)
!2873 = !DILocalVariable(name: "p", scope: !2868, file: !2869, line: 36, type: !2874)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2876)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "F_triple", file: !1288, line: 9, size: 192, elements: !2877)
!2877 = !{!2878, !2879, !2880}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2876, file: !1288, line: 11, baseType: !27, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2876, file: !1288, line: 12, baseType: !1292, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2876, file: !1288, line: 13, baseType: !1294, size: 64, offset: 128)
!2881 = !DILocalVariable(name: "tmp", scope: !2868, file: !2869, line: 37, type: !99)
!2882 = !DILocation(line: 34, column: 26, scope: !2868)
!2883 = !DILocation(line: 34, column: 36, scope: !2868)
!2884 = !DILocation(line: 36, column: 26, scope: !2868)
!2885 = !DILocation(line: 37, column: 29, scope: !2868)
!2886 = !DILocation(line: 37, column: 16, scope: !2868)
!2887 = !DILocation(line: 37, column: 10, scope: !2868)
!2888 = !DILocation(line: 40, column: 20, scope: !2868)
!2889 = !DILocation(line: 40, column: 15, scope: !2868)
!2890 = !DILocation(line: 40, column: 28, scope: !2868)
!2891 = !DILocation(line: 40, column: 3, scope: !2868)
!2892 = distinct !DISubprogram(name: "triple_hash_no_name", scope: !2869, file: !2869, line: 45, type: !1388, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !2893)
!2893 = !{!2894, !2895, !2896}
!2894 = !DILocalVariable(name: "x", arg: 1, scope: !2892, file: !2869, line: 45, type: !1390)
!2895 = !DILocalVariable(name: "table_size", arg: 2, scope: !2892, file: !2869, line: 45, type: !99)
!2896 = !DILocalVariable(name: "p", scope: !2892, file: !2869, line: 47, type: !2874)
!2897 = !DILocation(line: 45, column: 34, scope: !2892)
!2898 = !DILocation(line: 45, column: 44, scope: !2892)
!2899 = !DILocation(line: 47, column: 26, scope: !2892)
!2900 = !DILocation(line: 50, column: 13, scope: !2892)
!2901 = !DILocation(line: 50, column: 20, scope: !2892)
!2902 = !DILocation(line: 50, column: 3, scope: !2892)
!2903 = distinct !DISubprogram(name: "triple_compare", scope: !2869, file: !2869, line: 55, type: !1395, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !2904)
!2904 = !{!2905, !2906, !2907, !2908}
!2905 = !DILocalVariable(name: "x", arg: 1, scope: !2903, file: !2869, line: 55, type: !1390)
!2906 = !DILocalVariable(name: "y", arg: 2, scope: !2903, file: !2869, line: 55, type: !1390)
!2907 = !DILocalVariable(name: "a", scope: !2903, file: !2869, line: 57, type: !2874)
!2908 = !DILocalVariable(name: "b", scope: !2903, file: !2869, line: 58, type: !2874)
!2909 = !DILocation(line: 55, column: 29, scope: !2903)
!2910 = !DILocation(line: 55, column: 44, scope: !2903)
!2911 = !DILocation(line: 57, column: 26, scope: !2903)
!2912 = !DILocation(line: 58, column: 26, scope: !2903)
!2913 = !DILocation(line: 59, column: 11, scope: !2903)
!2914 = !DILocation(line: 59, column: 31, scope: !2903)
!2915 = !DILocation(line: 59, column: 48, scope: !2903)
!2916 = !DILocation(line: 59, column: 57, scope: !2903)
!2917 = !DILocation(line: 59, column: 34, scope: !2903)
!2918 = !DILocation(line: 59, column: 3, scope: !2903)
!2919 = distinct !DISubprogram(name: "triple_compare_ino_str", scope: !2869, file: !2869, line: 63, type: !1395, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !2920)
!2920 = !{!2921, !2922, !2923, !2924}
!2921 = !DILocalVariable(name: "x", arg: 1, scope: !2919, file: !2869, line: 63, type: !1390)
!2922 = !DILocalVariable(name: "y", arg: 2, scope: !2919, file: !2869, line: 63, type: !1390)
!2923 = !DILocalVariable(name: "a", scope: !2919, file: !2869, line: 65, type: !2874)
!2924 = !DILocalVariable(name: "b", scope: !2919, file: !2869, line: 66, type: !2874)
!2925 = !DILocation(line: 63, column: 37, scope: !2919)
!2926 = !DILocation(line: 63, column: 52, scope: !2919)
!2927 = !DILocation(line: 65, column: 26, scope: !2919)
!2928 = !DILocation(line: 66, column: 26, scope: !2919)
!2929 = !DILocation(line: 67, column: 11, scope: !2919)
!2930 = !DILocation(line: 67, column: 31, scope: !2919)
!2931 = !DILocation(line: 67, column: 34, scope: !2919)
!2932 = !DILocation(line: 67, column: 3, scope: !2919)
!2933 = distinct !DISubprogram(name: "triple_free", scope: !2869, file: !2869, line: 72, type: !1400, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !2934)
!2934 = !{!2935, !2936}
!2935 = !DILocalVariable(name: "x", arg: 1, scope: !2933, file: !2869, line: 72, type: !29)
!2936 = !DILocalVariable(name: "a", scope: !2933, file: !2869, line: 74, type: !2937)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2938 = !DILocation(line: 72, column: 20, scope: !2933)
!2939 = !DILocation(line: 74, column: 20, scope: !2933)
!2940 = !DILocation(line: 75, column: 12, scope: !2933)
!2941 = !DILocation(line: 75, column: 3, scope: !2933)
!2942 = !DILocation(line: 76, column: 3, scope: !2933)
!2943 = !DILocation(line: 77, column: 1, scope: !2933)
!2944 = distinct !DISubprogram(name: "set_program_name", scope: !120, file: !120, line: 39, type: !41, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2945)
!2945 = !{!2946, !2947, !2948}
!2946 = !DILocalVariable(name: "argv0", arg: 1, scope: !2944, file: !120, line: 39, type: !43)
!2947 = !DILocalVariable(name: "slash", scope: !2944, file: !120, line: 46, type: !43)
!2948 = !DILocalVariable(name: "base", scope: !2944, file: !120, line: 47, type: !43)
!2949 = !DILocation(line: 39, column: 31, scope: !2944)
!2950 = !DILocation(line: 51, column: 13, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2944, file: !120, line: 51, column: 7)
!2952 = !DILocation(line: 51, column: 7, scope: !2944)
!2953 = !DILocation(line: 55, column: 14, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2951, file: !120, line: 52, column: 5)
!2955 = !DILocation(line: 54, column: 7, scope: !2954)
!2956 = !DILocation(line: 56, column: 7, scope: !2954)
!2957 = !DILocation(line: 59, column: 11, scope: !2944)
!2958 = !DILocation(line: 46, column: 15, scope: !2944)
!2959 = !DILocation(line: 60, column: 17, scope: !2944)
!2960 = !DILocation(line: 60, column: 33, scope: !2944)
!2961 = !DILocation(line: 60, column: 11, scope: !2944)
!2962 = !DILocation(line: 47, column: 15, scope: !2944)
!2963 = !DILocation(line: 61, column: 12, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2944, file: !120, line: 61, column: 7)
!2965 = !DILocation(line: 61, column: 20, scope: !2964)
!2966 = !DILocation(line: 61, column: 25, scope: !2964)
!2967 = !DILocation(line: 61, column: 42, scope: !2964)
!2968 = !DILocation(line: 61, column: 28, scope: !2964)
!2969 = !DILocation(line: 61, column: 61, scope: !2964)
!2970 = !DILocation(line: 61, column: 7, scope: !2944)
!2971 = !DILocation(line: 64, column: 11, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !120, line: 64, column: 11)
!2973 = distinct !DILexicalBlock(scope: !2964, file: !120, line: 62, column: 5)
!2974 = !DILocation(line: 64, column: 36, scope: !2972)
!2975 = !DILocation(line: 64, column: 11, scope: !2973)
!2976 = !DILocation(line: 66, column: 24, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2972, file: !120, line: 65, column: 9)
!2978 = !DILocation(line: 70, column: 41, scope: !2977)
!2979 = !DILocation(line: 72, column: 9, scope: !2977)
!2980 = !DILocation(line: 84, column: 16, scope: !2944)
!2981 = !DILocation(line: 90, column: 27, scope: !2944)
!2982 = !DILocation(line: 92, column: 1, scope: !2944)
!2983 = distinct !DISubprogram(name: "clone_quoting_options", scope: !151, file: !151, line: 114, type: !2984, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !2987)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!2986, !2986}
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!2987 = !{!2988, !2989, !2990}
!2988 = !DILocalVariable(name: "o", arg: 1, scope: !2983, file: !151, line: 114, type: !2986)
!2989 = !DILocalVariable(name: "e", scope: !2983, file: !151, line: 116, type: !66)
!2990 = !DILocalVariable(name: "p", scope: !2983, file: !151, line: 117, type: !2986)
!2991 = !DILocation(line: 114, column: 48, scope: !2983)
!2992 = !DILocation(line: 116, column: 11, scope: !2983)
!2993 = !DILocation(line: 116, column: 7, scope: !2983)
!2994 = !DILocation(line: 117, column: 40, scope: !2983)
!2995 = !DILocation(line: 117, column: 31, scope: !2983)
!2996 = !DILocation(line: 117, column: 27, scope: !2983)
!2997 = !DILocation(line: 119, column: 9, scope: !2983)
!2998 = !DILocation(line: 120, column: 3, scope: !2983)
!2999 = distinct !DISubprogram(name: "get_quoting_style", scope: !151, file: !151, line: 125, type: !3000, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3004)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!12, !3002}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!3004 = !{!3005}
!3005 = !DILocalVariable(name: "o", arg: 1, scope: !2999, file: !151, line: 125, type: !3002)
!3006 = !DILocation(line: 125, column: 50, scope: !2999)
!3007 = !DILocation(line: 127, column: 11, scope: !2999)
!3008 = !DILocation(line: 127, column: 46, scope: !2999)
!3009 = !{!3010, !630, i64 0}
!3010 = !{!"quoting_options", !630, i64 0, !701, i64 4, !630, i64 8, !629, i64 40, !629, i64 48}
!3011 = !DILocation(line: 127, column: 3, scope: !2999)
!3012 = distinct !DISubprogram(name: "set_quoting_style", scope: !151, file: !151, line: 133, type: !3013, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !2986, !12}
!3015 = !{!3016, !3017}
!3016 = !DILocalVariable(name: "o", arg: 1, scope: !3012, file: !151, line: 133, type: !2986)
!3017 = !DILocalVariable(name: "s", arg: 2, scope: !3012, file: !151, line: 133, type: !12)
!3018 = !DILocation(line: 133, column: 44, scope: !3012)
!3019 = !DILocation(line: 133, column: 66, scope: !3012)
!3020 = !DILocation(line: 135, column: 4, scope: !3012)
!3021 = !DILocation(line: 135, column: 39, scope: !3012)
!3022 = !DILocation(line: 135, column: 45, scope: !3012)
!3023 = !DILocation(line: 136, column: 1, scope: !3012)
!3024 = distinct !DISubprogram(name: "set_char_quoting", scope: !151, file: !151, line: 144, type: !3025, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!66, !2986, !28, !66}
!3027 = !{!3028, !3029, !3030, !3031, !3032, !3034, !3035}
!3028 = !DILocalVariable(name: "o", arg: 1, scope: !3024, file: !151, line: 144, type: !2986)
!3029 = !DILocalVariable(name: "c", arg: 2, scope: !3024, file: !151, line: 144, type: !28)
!3030 = !DILocalVariable(name: "i", arg: 3, scope: !3024, file: !151, line: 144, type: !66)
!3031 = !DILocalVariable(name: "uc", scope: !3024, file: !151, line: 146, type: !30)
!3032 = !DILocalVariable(name: "p", scope: !3024, file: !151, line: 147, type: !3033)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!3034 = !DILocalVariable(name: "shift", scope: !3024, file: !151, line: 149, type: !66)
!3035 = !DILocalVariable(name: "r", scope: !3024, file: !151, line: 150, type: !66)
!3036 = !DILocation(line: 144, column: 43, scope: !3024)
!3037 = !DILocation(line: 144, column: 51, scope: !3024)
!3038 = !DILocation(line: 144, column: 58, scope: !3024)
!3039 = !DILocation(line: 146, column: 17, scope: !3024)
!3040 = !DILocation(line: 148, column: 6, scope: !3024)
!3041 = !DILocation(line: 148, column: 62, scope: !3024)
!3042 = !DILocation(line: 148, column: 57, scope: !3024)
!3043 = !DILocation(line: 147, column: 17, scope: !3024)
!3044 = !DILocation(line: 149, column: 18, scope: !3024)
!3045 = !DILocation(line: 149, column: 15, scope: !3024)
!3046 = !DILocation(line: 149, column: 7, scope: !3024)
!3047 = !DILocation(line: 150, column: 12, scope: !3024)
!3048 = !DILocation(line: 150, column: 15, scope: !3024)
!3049 = !DILocation(line: 150, column: 25, scope: !3024)
!3050 = !DILocation(line: 150, column: 7, scope: !3024)
!3051 = !DILocation(line: 151, column: 13, scope: !3024)
!3052 = !DILocation(line: 151, column: 18, scope: !3024)
!3053 = !DILocation(line: 151, column: 23, scope: !3024)
!3054 = !DILocation(line: 151, column: 6, scope: !3024)
!3055 = !DILocation(line: 152, column: 3, scope: !3024)
!3056 = distinct !DISubprogram(name: "set_quoting_flags", scope: !151, file: !151, line: 160, type: !3057, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!66, !2986, !66}
!3059 = !{!3060, !3061, !3062}
!3060 = !DILocalVariable(name: "o", arg: 1, scope: !3056, file: !151, line: 160, type: !2986)
!3061 = !DILocalVariable(name: "i", arg: 2, scope: !3056, file: !151, line: 160, type: !66)
!3062 = !DILocalVariable(name: "r", scope: !3056, file: !151, line: 162, type: !66)
!3063 = !DILocation(line: 160, column: 44, scope: !3056)
!3064 = !DILocation(line: 160, column: 51, scope: !3056)
!3065 = !DILocation(line: 163, column: 8, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3056, file: !151, line: 163, column: 7)
!3067 = !DILocation(line: 163, column: 7, scope: !3056)
!3068 = !DILocation(line: 165, column: 10, scope: !3056)
!3069 = !{!3010, !701, i64 4}
!3070 = !DILocation(line: 162, column: 7, scope: !3056)
!3071 = !DILocation(line: 166, column: 12, scope: !3056)
!3072 = !DILocation(line: 167, column: 3, scope: !3056)
!3073 = distinct !DISubprogram(name: "set_custom_quoting", scope: !151, file: !151, line: 171, type: !3074, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3076)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{null, !2986, !43, !43}
!3076 = !{!3077, !3078, !3079}
!3077 = !DILocalVariable(name: "o", arg: 1, scope: !3073, file: !151, line: 171, type: !2986)
!3078 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3073, file: !151, line: 172, type: !43)
!3079 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3073, file: !151, line: 172, type: !43)
!3080 = !DILocation(line: 171, column: 45, scope: !3073)
!3081 = !DILocation(line: 172, column: 33, scope: !3073)
!3082 = !DILocation(line: 172, column: 57, scope: !3073)
!3083 = !DILocation(line: 174, column: 8, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3073, file: !151, line: 174, column: 7)
!3085 = !DILocation(line: 174, column: 7, scope: !3073)
!3086 = !DILocation(line: 176, column: 6, scope: !3073)
!3087 = !DILocation(line: 176, column: 12, scope: !3073)
!3088 = !DILocation(line: 177, column: 8, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3073, file: !151, line: 177, column: 7)
!3090 = !DILocation(line: 177, column: 23, scope: !3089)
!3091 = !DILocation(line: 177, column: 19, scope: !3089)
!3092 = !DILocation(line: 178, column: 5, scope: !3089)
!3093 = !DILocation(line: 179, column: 6, scope: !3073)
!3094 = !DILocation(line: 179, column: 17, scope: !3073)
!3095 = !{!3010, !629, i64 40}
!3096 = !DILocation(line: 180, column: 6, scope: !3073)
!3097 = !DILocation(line: 180, column: 18, scope: !3073)
!3098 = !{!3010, !629, i64 48}
!3099 = !DILocation(line: 181, column: 1, scope: !3073)
!3100 = distinct !DISubprogram(name: "quotearg_buffer", scope: !151, file: !151, line: 776, type: !3101, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!99, !27, !99, !43, !99, !3002}
!3103 = !{!3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111}
!3104 = !DILocalVariable(name: "buffer", arg: 1, scope: !3100, file: !151, line: 776, type: !27)
!3105 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3100, file: !151, line: 776, type: !99)
!3106 = !DILocalVariable(name: "arg", arg: 3, scope: !3100, file: !151, line: 777, type: !43)
!3107 = !DILocalVariable(name: "argsize", arg: 4, scope: !3100, file: !151, line: 777, type: !99)
!3108 = !DILocalVariable(name: "o", arg: 5, scope: !3100, file: !151, line: 778, type: !3002)
!3109 = !DILocalVariable(name: "p", scope: !3100, file: !151, line: 780, type: !3002)
!3110 = !DILocalVariable(name: "e", scope: !3100, file: !151, line: 781, type: !66)
!3111 = !DILocalVariable(name: "r", scope: !3100, file: !151, line: 782, type: !99)
!3112 = !DILocation(line: 776, column: 24, scope: !3100)
!3113 = !DILocation(line: 776, column: 39, scope: !3100)
!3114 = !DILocation(line: 777, column: 30, scope: !3100)
!3115 = !DILocation(line: 777, column: 42, scope: !3100)
!3116 = !DILocation(line: 778, column: 48, scope: !3100)
!3117 = !DILocation(line: 780, column: 37, scope: !3100)
!3118 = !DILocation(line: 780, column: 33, scope: !3100)
!3119 = !DILocation(line: 781, column: 11, scope: !3100)
!3120 = !DILocation(line: 781, column: 7, scope: !3100)
!3121 = !DILocation(line: 783, column: 43, scope: !3100)
!3122 = !DILocation(line: 783, column: 53, scope: !3100)
!3123 = !DILocation(line: 783, column: 60, scope: !3100)
!3124 = !DILocation(line: 784, column: 43, scope: !3100)
!3125 = !DILocation(line: 784, column: 58, scope: !3100)
!3126 = !DILocation(line: 782, column: 14, scope: !3100)
!3127 = !DILocation(line: 782, column: 10, scope: !3100)
!3128 = !DILocation(line: 785, column: 9, scope: !3100)
!3129 = !DILocation(line: 786, column: 3, scope: !3100)
!3130 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !151, file: !151, line: 248, type: !3131, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3135)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!99, !27, !99, !43, !99, !12, !66, !3133, !43, !43}
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!3135 = !{!3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3160, !3161, !3162, !3163, !3164, !3167, !3168, !3186, !3189, !3190, !3197}
!3136 = !DILocalVariable(name: "buffer", arg: 1, scope: !3130, file: !151, line: 248, type: !27)
!3137 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3130, file: !151, line: 248, type: !99)
!3138 = !DILocalVariable(name: "arg", arg: 3, scope: !3130, file: !151, line: 249, type: !43)
!3139 = !DILocalVariable(name: "argsize", arg: 4, scope: !3130, file: !151, line: 249, type: !99)
!3140 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3130, file: !151, line: 250, type: !12)
!3141 = !DILocalVariable(name: "flags", arg: 6, scope: !3130, file: !151, line: 250, type: !66)
!3142 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3130, file: !151, line: 251, type: !3133)
!3143 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3130, file: !151, line: 252, type: !43)
!3144 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3130, file: !151, line: 253, type: !43)
!3145 = !DILocalVariable(name: "i", scope: !3130, file: !151, line: 255, type: !99)
!3146 = !DILocalVariable(name: "len", scope: !3130, file: !151, line: 256, type: !99)
!3147 = !DILocalVariable(name: "orig_buffersize", scope: !3130, file: !151, line: 257, type: !99)
!3148 = !DILocalVariable(name: "quote_string", scope: !3130, file: !151, line: 258, type: !43)
!3149 = !DILocalVariable(name: "quote_string_len", scope: !3130, file: !151, line: 259, type: !99)
!3150 = !DILocalVariable(name: "backslash_escapes", scope: !3130, file: !151, line: 260, type: !34)
!3151 = !DILocalVariable(name: "unibyte_locale", scope: !3130, file: !151, line: 261, type: !34)
!3152 = !DILocalVariable(name: "elide_outer_quotes", scope: !3130, file: !151, line: 262, type: !34)
!3153 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3130, file: !151, line: 263, type: !34)
!3154 = !DILocalVariable(name: "encountered_single_quote", scope: !3130, file: !151, line: 264, type: !34)
!3155 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3130, file: !151, line: 265, type: !34)
!3156 = !DILocalVariable(name: "c", scope: !3157, file: !151, line: 394, type: !30)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !151, line: 393, column: 5)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !151, line: 392, column: 3)
!3159 = distinct !DILexicalBlock(scope: !3130, file: !151, line: 392, column: 3)
!3160 = !DILocalVariable(name: "esc", scope: !3157, file: !151, line: 395, type: !30)
!3161 = !DILocalVariable(name: "is_right_quote", scope: !3157, file: !151, line: 396, type: !34)
!3162 = !DILocalVariable(name: "escaping", scope: !3157, file: !151, line: 397, type: !34)
!3163 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3157, file: !151, line: 398, type: !34)
!3164 = !DILocalVariable(name: "m", scope: !3165, file: !151, line: 602, type: !99)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !151, line: 600, column: 11)
!3166 = distinct !DILexicalBlock(scope: !3157, file: !151, line: 418, column: 9)
!3167 = !DILocalVariable(name: "printable", scope: !3165, file: !151, line: 604, type: !34)
!3168 = !DILocalVariable(name: "mbstate", scope: !3169, file: !151, line: 613, type: !3171)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !151, line: 612, column: 15)
!3170 = distinct !DILexicalBlock(scope: !3165, file: !151, line: 606, column: 17)
!3171 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3172, line: 6, baseType: !3173)
!3172 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3174, line: 21, baseType: !3175)
!3174 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3174, line: 13, size: 64, elements: !3176)
!3176 = !{!3177, !3178}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3175, file: !3174, line: 15, baseType: !66, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3175, file: !3174, line: 20, baseType: !3179, size: 32, offset: 32)
!3179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3175, file: !3174, line: 16, size: 32, elements: !3180)
!3180 = !{!3181, !3182}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3179, file: !3174, line: 18, baseType: !164, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3179, file: !3174, line: 19, baseType: !3183, size: 32)
!3183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !3184)
!3184 = !{!3185}
!3185 = !DISubrange(count: 4)
!3186 = !DILocalVariable(name: "w", scope: !3187, file: !151, line: 623, type: !3188)
!3187 = distinct !DILexicalBlock(scope: !3169, file: !151, line: 622, column: 19)
!3188 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !100, line: 90, baseType: !66)
!3189 = !DILocalVariable(name: "bytes", scope: !3187, file: !151, line: 624, type: !99)
!3190 = !DILocalVariable(name: "j", scope: !3191, file: !151, line: 649, type: !99)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !151, line: 648, column: 27)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !151, line: 646, column: 29)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !151, line: 641, column: 23)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !151, line: 633, column: 30)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !151, line: 628, column: 30)
!3196 = distinct !DILexicalBlock(scope: !3187, file: !151, line: 626, column: 25)
!3197 = !DILocalVariable(name: "ilim", scope: !3198, file: !151, line: 676, type: !99)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !151, line: 673, column: 15)
!3199 = distinct !DILexicalBlock(scope: !3165, file: !151, line: 672, column: 17)
!3200 = !DILocation(line: 248, column: 33, scope: !3130)
!3201 = !DILocation(line: 248, column: 48, scope: !3130)
!3202 = !DILocation(line: 249, column: 39, scope: !3130)
!3203 = !DILocation(line: 249, column: 51, scope: !3130)
!3204 = !DILocation(line: 250, column: 46, scope: !3130)
!3205 = !DILocation(line: 250, column: 65, scope: !3130)
!3206 = !DILocation(line: 251, column: 47, scope: !3130)
!3207 = !DILocation(line: 252, column: 39, scope: !3130)
!3208 = !DILocation(line: 253, column: 39, scope: !3130)
!3209 = !DILocation(line: 256, column: 10, scope: !3130)
!3210 = !DILocation(line: 257, column: 10, scope: !3130)
!3211 = !DILocation(line: 258, column: 15, scope: !3130)
!3212 = !DILocation(line: 259, column: 10, scope: !3130)
!3213 = !DILocation(line: 260, column: 8, scope: !3130)
!3214 = !DILocation(line: 261, column: 25, scope: !3130)
!3215 = !DILocation(line: 261, column: 36, scope: !3130)
!3216 = !DILocation(line: 262, column: 8, scope: !3130)
!3217 = !DILocation(line: 263, column: 8, scope: !3130)
!3218 = !DILocation(line: 264, column: 8, scope: !3130)
!3219 = !DILocation(line: 265, column: 8, scope: !3130)
!3220 = !DILocation(line: 265, column: 3, scope: !3130)
!3221 = !DILocation(line: 308, column: 3, scope: !3130)
!3222 = !DILocation(line: 315, column: 11, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3130, file: !151, line: 309, column: 5)
!3224 = !DILocation(line: 315, column: 12, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3223, file: !151, line: 315, column: 11)
!3226 = !DILocation(line: 316, column: 9, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !151, line: 316, column: 9)
!3228 = distinct !DILexicalBlock(scope: !3225, file: !151, line: 316, column: 9)
!3229 = !DILocation(line: 316, column: 9, scope: !3228)
!3230 = !DILocation(line: 354, column: 26, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !151, line: 332, column: 11)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !151, line: 331, column: 13)
!3233 = distinct !DILexicalBlock(scope: !3223, file: !151, line: 330, column: 7)
!3234 = !DILocation(line: 355, column: 27, scope: !3231)
!3235 = !DILocation(line: 356, column: 11, scope: !3231)
!3236 = !DILocation(line: 357, column: 14, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3233, file: !151, line: 357, column: 13)
!3238 = !DILocation(line: 357, column: 13, scope: !3233)
!3239 = !DILocation(line: 358, column: 43, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !151, line: 358, column: 11)
!3241 = distinct !DILexicalBlock(scope: !3237, file: !151, line: 358, column: 11)
!3242 = !DILocation(line: 358, column: 11, scope: !3241)
!3243 = !DILocation(line: 359, column: 13, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !151, line: 359, column: 13)
!3245 = distinct !DILexicalBlock(scope: !3240, file: !151, line: 359, column: 13)
!3246 = !DILocation(line: 359, column: 13, scope: !3245)
!3247 = !DILocation(line: 358, column: 70, scope: !3240)
!3248 = distinct !{!3248, !3242, !3249}
!3249 = !DILocation(line: 359, column: 13, scope: !3241)
!3250 = !DILocation(line: 362, column: 28, scope: !3233)
!3251 = !DILocation(line: 364, column: 7, scope: !3223)
!3252 = !DILocation(line: 367, column: 7, scope: !3223)
!3253 = !DILocation(line: 370, column: 7, scope: !3223)
!3254 = !DILocation(line: 373, column: 12, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3223, file: !151, line: 373, column: 11)
!3256 = !DILocation(line: 373, column: 11, scope: !3223)
!3257 = !DILocation(line: 378, column: 12, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3223, file: !151, line: 378, column: 11)
!3259 = !DILocation(line: 378, column: 11, scope: !3223)
!3260 = !DILocation(line: 379, column: 9, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !151, line: 379, column: 9)
!3262 = distinct !DILexicalBlock(scope: !3258, file: !151, line: 379, column: 9)
!3263 = !DILocation(line: 379, column: 9, scope: !3262)
!3264 = !DILocation(line: 386, column: 7, scope: !3223)
!3265 = !DILocation(line: 389, column: 7, scope: !3223)
!3266 = !DILocation(line: 255, column: 10, scope: !3130)
!3267 = !DILocation(line: 392, column: 8, scope: !3159)
!3268 = !DILocation(line: 392, column: 27, scope: !3158)
!3269 = !DILocation(line: 392, column: 19, scope: !3158)
!3270 = !DILocation(line: 392, column: 60, scope: !3158)
!3271 = !DILocation(line: 392, column: 3, scope: !3159)
!3272 = !DILocation(line: 392, column: 41, scope: !3158)
!3273 = !DILocation(line: 392, column: 48, scope: !3158)
!3274 = !DILocation(line: 396, column: 12, scope: !3157)
!3275 = !DILocation(line: 397, column: 12, scope: !3157)
!3276 = !DILocation(line: 398, column: 12, scope: !3157)
!3277 = !DILocation(line: 401, column: 11, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3157, file: !151, line: 400, column: 11)
!3279 = !DILocation(line: 403, column: 17, scope: !3278)
!3280 = !DILocation(line: 404, column: 39, scope: !3278)
!3281 = !DILocation(line: 408, column: 32, scope: !3278)
!3282 = !DILocation(line: 404, column: 19, scope: !3278)
!3283 = !DILocation(line: 404, column: 15, scope: !3278)
!3284 = !DILocation(line: 409, column: 11, scope: !3278)
!3285 = !DILocation(line: 409, column: 26, scope: !3278)
!3286 = !DILocation(line: 409, column: 14, scope: !3278)
!3287 = !DILocation(line: 409, column: 63, scope: !3278)
!3288 = !DILocation(line: 400, column: 11, scope: !3157)
!3289 = !DILocation(line: 416, column: 11, scope: !3157)
!3290 = !DILocation(line: 394, column: 21, scope: !3157)
!3291 = !DILocation(line: 417, column: 7, scope: !3157)
!3292 = !DILocation(line: 420, column: 15, scope: !3166)
!3293 = !DILocation(line: 422, column: 15, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !151, line: 422, column: 15)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !151, line: 421, column: 13)
!3296 = distinct !DILexicalBlock(scope: !3166, file: !151, line: 420, column: 15)
!3297 = !DILocation(line: 422, column: 15, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3294, file: !151, line: 422, column: 15)
!3299 = !DILocation(line: 422, column: 15, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !151, line: 422, column: 15)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !151, line: 422, column: 15)
!3302 = distinct !DILexicalBlock(scope: !3298, file: !151, line: 422, column: 15)
!3303 = !DILocation(line: 422, column: 15, scope: !3301)
!3304 = !DILocation(line: 422, column: 15, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !151, line: 422, column: 15)
!3306 = distinct !DILexicalBlock(scope: !3302, file: !151, line: 422, column: 15)
!3307 = !DILocation(line: 422, column: 15, scope: !3306)
!3308 = !DILocation(line: 422, column: 15, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !151, line: 422, column: 15)
!3310 = distinct !DILexicalBlock(scope: !3302, file: !151, line: 422, column: 15)
!3311 = !DILocation(line: 422, column: 15, scope: !3310)
!3312 = !DILocation(line: 422, column: 15, scope: !3302)
!3313 = !DILocation(line: 422, column: 15, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !151, line: 422, column: 15)
!3315 = distinct !DILexicalBlock(scope: !3294, file: !151, line: 422, column: 15)
!3316 = !DILocation(line: 422, column: 15, scope: !3315)
!3317 = !DILocation(line: 430, column: 19, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3295, file: !151, line: 429, column: 19)
!3319 = !DILocation(line: 430, column: 24, scope: !3318)
!3320 = !DILocation(line: 430, column: 28, scope: !3318)
!3321 = !DILocation(line: 430, column: 38, scope: !3318)
!3322 = !DILocation(line: 430, column: 48, scope: !3318)
!3323 = !DILocation(line: 430, column: 59, scope: !3318)
!3324 = !DILocation(line: 432, column: 19, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !151, line: 432, column: 19)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !151, line: 432, column: 19)
!3327 = distinct !DILexicalBlock(scope: !3318, file: !151, line: 431, column: 17)
!3328 = !DILocation(line: 432, column: 19, scope: !3326)
!3329 = !DILocation(line: 433, column: 19, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !151, line: 433, column: 19)
!3331 = distinct !DILexicalBlock(scope: !3327, file: !151, line: 433, column: 19)
!3332 = !DILocation(line: 433, column: 19, scope: !3331)
!3333 = !DILocation(line: 434, column: 17, scope: !3327)
!3334 = !DILocation(line: 441, column: 20, scope: !3296)
!3335 = !DILocation(line: 446, column: 11, scope: !3166)
!3336 = !DILocation(line: 449, column: 19, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3166, file: !151, line: 447, column: 13)
!3338 = !DILocation(line: 455, column: 19, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3337, file: !151, line: 454, column: 19)
!3340 = !DILocation(line: 455, column: 24, scope: !3339)
!3341 = !DILocation(line: 455, column: 28, scope: !3339)
!3342 = !DILocation(line: 455, column: 38, scope: !3339)
!3343 = !DILocation(line: 455, column: 47, scope: !3339)
!3344 = !DILocation(line: 455, column: 41, scope: !3339)
!3345 = !DILocation(line: 455, column: 52, scope: !3339)
!3346 = !DILocation(line: 454, column: 19, scope: !3337)
!3347 = !DILocation(line: 456, column: 25, scope: !3339)
!3348 = !DILocation(line: 456, column: 17, scope: !3339)
!3349 = !DILocation(line: 463, column: 25, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3339, file: !151, line: 457, column: 19)
!3351 = !DILocation(line: 467, column: 21, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !151, line: 467, column: 21)
!3353 = distinct !DILexicalBlock(scope: !3350, file: !151, line: 467, column: 21)
!3354 = !DILocation(line: 467, column: 21, scope: !3353)
!3355 = !DILocation(line: 468, column: 21, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !151, line: 468, column: 21)
!3357 = distinct !DILexicalBlock(scope: !3350, file: !151, line: 468, column: 21)
!3358 = !DILocation(line: 468, column: 21, scope: !3357)
!3359 = !DILocation(line: 469, column: 21, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !151, line: 469, column: 21)
!3361 = distinct !DILexicalBlock(scope: !3350, file: !151, line: 469, column: 21)
!3362 = !DILocation(line: 469, column: 21, scope: !3361)
!3363 = !DILocation(line: 470, column: 21, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !151, line: 470, column: 21)
!3365 = distinct !DILexicalBlock(scope: !3350, file: !151, line: 470, column: 21)
!3366 = !DILocation(line: 470, column: 21, scope: !3365)
!3367 = !DILocation(line: 471, column: 21, scope: !3350)
!3368 = !DILocation(line: 395, column: 21, scope: !3157)
!3369 = !DILocation(line: 484, column: 31, scope: !3166)
!3370 = !DILocation(line: 485, column: 31, scope: !3166)
!3371 = !DILocation(line: 487, column: 31, scope: !3166)
!3372 = !DILocation(line: 488, column: 31, scope: !3166)
!3373 = !DILocation(line: 489, column: 31, scope: !3166)
!3374 = !DILocation(line: 492, column: 15, scope: !3166)
!3375 = !DILocation(line: 494, column: 19, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !151, line: 493, column: 13)
!3377 = distinct !DILexicalBlock(scope: !3166, file: !151, line: 492, column: 15)
!3378 = !DILocation(line: 501, column: 33, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3166, file: !151, line: 501, column: 15)
!3380 = !DILocation(line: 506, column: 15, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3166, file: !151, line: 505, column: 15)
!3382 = !DILocation(line: 510, column: 15, scope: !3166)
!3383 = !DILocation(line: 518, column: 26, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3166, file: !151, line: 518, column: 15)
!3385 = !DILocation(line: 518, column: 15, scope: !3166)
!3386 = !DILocation(line: 518, column: 40, scope: !3384)
!3387 = !DILocation(line: 518, column: 47, scope: !3384)
!3388 = !DILocation(line: 522, column: 17, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3166, file: !151, line: 522, column: 15)
!3390 = !DILocation(line: 518, column: 18, scope: !3384)
!3391 = !DILocation(line: 518, column: 65, scope: !3384)
!3392 = !DILocation(line: 522, column: 15, scope: !3166)
!3393 = !DILocation(line: 526, column: 11, scope: !3166)
!3394 = !DILocation(line: 541, column: 15, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3166, file: !151, line: 540, column: 15)
!3396 = !DILocation(line: 548, column: 15, scope: !3166)
!3397 = !DILocation(line: 550, column: 19, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !151, line: 549, column: 13)
!3399 = distinct !DILexicalBlock(scope: !3166, file: !151, line: 548, column: 15)
!3400 = !DILocation(line: 553, column: 19, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3398, file: !151, line: 553, column: 19)
!3402 = !DILocation(line: 553, column: 35, scope: !3401)
!3403 = !DILocation(line: 553, column: 30, scope: !3401)
!3404 = !DILocation(line: 562, column: 15, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !151, line: 562, column: 15)
!3406 = distinct !DILexicalBlock(scope: !3398, file: !151, line: 562, column: 15)
!3407 = !DILocation(line: 562, column: 15, scope: !3406)
!3408 = !DILocation(line: 563, column: 15, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !151, line: 563, column: 15)
!3410 = distinct !DILexicalBlock(scope: !3398, file: !151, line: 563, column: 15)
!3411 = !DILocation(line: 563, column: 15, scope: !3410)
!3412 = !DILocation(line: 564, column: 15, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !151, line: 564, column: 15)
!3414 = distinct !DILexicalBlock(scope: !3398, file: !151, line: 564, column: 15)
!3415 = !DILocation(line: 564, column: 15, scope: !3414)
!3416 = !DILocation(line: 566, column: 13, scope: !3398)
!3417 = !DILocation(line: 606, column: 17, scope: !3165)
!3418 = !DILocation(line: 602, column: 20, scope: !3165)
!3419 = !DILocation(line: 609, column: 29, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3170, file: !151, line: 607, column: 15)
!3421 = !{!746, !746, i64 0}
!3422 = !DILocation(line: 609, column: 27, scope: !3420)
!3423 = !DILocation(line: 604, column: 18, scope: !3165)
!3424 = !DILocation(line: 610, column: 15, scope: !3420)
!3425 = !DILocation(line: 613, column: 17, scope: !3169)
!3426 = !DILocation(line: 614, column: 17, scope: !3169)
!3427 = !DILocation(line: 618, column: 29, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3169, file: !151, line: 618, column: 21)
!3429 = !DILocation(line: 618, column: 21, scope: !3169)
!3430 = !DILocation(line: 619, column: 29, scope: !3428)
!3431 = !DILocation(line: 619, column: 19, scope: !3428)
!3432 = !DILocation(line: 621, column: 17, scope: !3169)
!3433 = distinct !{!3433, !3432, !3434}
!3434 = !DILocation(line: 667, column: 44, scope: !3169)
!3435 = !DILocation(line: 623, column: 21, scope: !3187)
!3436 = !DILocation(line: 624, column: 56, scope: !3187)
!3437 = !DILocation(line: 624, column: 50, scope: !3187)
!3438 = !DILocation(line: 625, column: 53, scope: !3187)
!3439 = !DILocation(line: 613, column: 27, scope: !3169)
!3440 = !DILocation(line: 623, column: 29, scope: !3187)
!3441 = !DILocation(line: 624, column: 36, scope: !3187)
!3442 = !DILocation(line: 624, column: 28, scope: !3187)
!3443 = !DILocation(line: 626, column: 25, scope: !3187)
!3444 = !DILocation(line: 636, column: 38, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3194, file: !151, line: 634, column: 23)
!3446 = !DILocation(line: 636, column: 48, scope: !3445)
!3447 = !DILocation(line: 636, column: 51, scope: !3445)
!3448 = !DILocation(line: 636, column: 25, scope: !3445)
!3449 = !DILocation(line: 637, column: 28, scope: !3445)
!3450 = !DILocation(line: 636, column: 34, scope: !3445)
!3451 = distinct !{!3451, !3448, !3449}
!3452 = !DILocation(line: 650, column: 43, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !151, line: 650, column: 29)
!3454 = distinct !DILexicalBlock(scope: !3191, file: !151, line: 650, column: 29)
!3455 = !DILocation(line: 647, column: 29, scope: !3192)
!3456 = !DILocation(line: 649, column: 36, scope: !3191)
!3457 = !DILocation(line: 651, column: 49, scope: !3453)
!3458 = !DILocation(line: 651, column: 39, scope: !3453)
!3459 = !DILocation(line: 651, column: 31, scope: !3453)
!3460 = !DILocation(line: 650, column: 53, scope: !3453)
!3461 = !DILocation(line: 650, column: 29, scope: !3454)
!3462 = distinct !{!3462, !3461, !3463}
!3463 = !DILocation(line: 659, column: 33, scope: !3454)
!3464 = !DILocation(line: 666, column: 19, scope: !3169)
!3465 = !DILocation(line: 662, column: 41, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3193, file: !151, line: 662, column: 29)
!3467 = !DILocation(line: 662, column: 31, scope: !3466)
!3468 = !DILocation(line: 662, column: 29, scope: !3193)
!3469 = !DILocation(line: 664, column: 27, scope: !3193)
!3470 = !DILocation(line: 667, column: 26, scope: !3169)
!3471 = !DILocation(line: 667, column: 24, scope: !3169)
!3472 = !DILocation(line: 666, column: 19, scope: !3187)
!3473 = !DILocation(line: 668, column: 15, scope: !3170)
!3474 = !DILocation(line: 670, column: 40, scope: !3165)
!3475 = !DILocation(line: 672, column: 19, scope: !3199)
!3476 = !DILocation(line: 672, column: 45, scope: !3199)
!3477 = !DILocation(line: 672, column: 23, scope: !3199)
!3478 = !DILocation(line: 676, column: 33, scope: !3198)
!3479 = !DILocation(line: 676, column: 24, scope: !3198)
!3480 = !DILocation(line: 678, column: 17, scope: !3198)
!3481 = !DILocation(line: 680, column: 43, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !151, line: 680, column: 25)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !151, line: 679, column: 19)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !151, line: 678, column: 17)
!3485 = distinct !DILexicalBlock(scope: !3198, file: !151, line: 678, column: 17)
!3486 = !DILocation(line: 682, column: 25, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !151, line: 682, column: 25)
!3488 = distinct !DILexicalBlock(scope: !3482, file: !151, line: 681, column: 23)
!3489 = !DILocation(line: 682, column: 25, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3487, file: !151, line: 682, column: 25)
!3491 = !DILocation(line: 682, column: 25, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !151, line: 682, column: 25)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !151, line: 682, column: 25)
!3494 = distinct !DILexicalBlock(scope: !3490, file: !151, line: 682, column: 25)
!3495 = !DILocation(line: 682, column: 25, scope: !3493)
!3496 = !DILocation(line: 682, column: 25, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !151, line: 682, column: 25)
!3498 = distinct !DILexicalBlock(scope: !3494, file: !151, line: 682, column: 25)
!3499 = !DILocation(line: 682, column: 25, scope: !3498)
!3500 = !DILocation(line: 682, column: 25, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !151, line: 682, column: 25)
!3502 = distinct !DILexicalBlock(scope: !3494, file: !151, line: 682, column: 25)
!3503 = !DILocation(line: 682, column: 25, scope: !3502)
!3504 = !DILocation(line: 682, column: 25, scope: !3494)
!3505 = !DILocation(line: 682, column: 25, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !151, line: 682, column: 25)
!3507 = distinct !DILexicalBlock(scope: !3487, file: !151, line: 682, column: 25)
!3508 = !DILocation(line: 682, column: 25, scope: !3507)
!3509 = !DILocation(line: 683, column: 25, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !151, line: 683, column: 25)
!3511 = distinct !DILexicalBlock(scope: !3488, file: !151, line: 683, column: 25)
!3512 = !DILocation(line: 683, column: 25, scope: !3511)
!3513 = !DILocation(line: 684, column: 25, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !151, line: 684, column: 25)
!3515 = distinct !DILexicalBlock(scope: !3488, file: !151, line: 684, column: 25)
!3516 = !DILocation(line: 684, column: 25, scope: !3515)
!3517 = !DILocation(line: 685, column: 38, scope: !3488)
!3518 = !DILocation(line: 685, column: 33, scope: !3488)
!3519 = !DILocation(line: 686, column: 23, scope: !3488)
!3520 = !DILocation(line: 687, column: 30, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3482, file: !151, line: 687, column: 30)
!3522 = !DILocation(line: 687, column: 30, scope: !3482)
!3523 = !DILocation(line: 689, column: 25, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !151, line: 689, column: 25)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !151, line: 689, column: 25)
!3526 = distinct !DILexicalBlock(scope: !3521, file: !151, line: 688, column: 23)
!3527 = !DILocation(line: 689, column: 25, scope: !3525)
!3528 = !DILocation(line: 691, column: 23, scope: !3526)
!3529 = !DILocation(line: 692, column: 35, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3483, file: !151, line: 692, column: 25)
!3531 = !DILocation(line: 692, column: 30, scope: !3530)
!3532 = !DILocation(line: 692, column: 25, scope: !3483)
!3533 = !DILocation(line: 694, column: 21, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !151, line: 694, column: 21)
!3535 = distinct !DILexicalBlock(scope: !3483, file: !151, line: 694, column: 21)
!3536 = !DILocation(line: 694, column: 21, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !151, line: 694, column: 21)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !151, line: 694, column: 21)
!3539 = distinct !DILexicalBlock(scope: !3534, file: !151, line: 694, column: 21)
!3540 = !DILocation(line: 694, column: 21, scope: !3538)
!3541 = !DILocation(line: 694, column: 21, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !151, line: 694, column: 21)
!3543 = distinct !DILexicalBlock(scope: !3539, file: !151, line: 694, column: 21)
!3544 = !DILocation(line: 694, column: 21, scope: !3543)
!3545 = !DILocation(line: 694, column: 21, scope: !3539)
!3546 = !DILocation(line: 695, column: 21, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !151, line: 695, column: 21)
!3548 = distinct !DILexicalBlock(scope: !3483, file: !151, line: 695, column: 21)
!3549 = !DILocation(line: 695, column: 21, scope: !3548)
!3550 = !DILocation(line: 696, column: 25, scope: !3483)
!3551 = !DILocation(line: 678, column: 17, scope: !3484)
!3552 = distinct !{!3552, !3553, !3554}
!3553 = !DILocation(line: 678, column: 17, scope: !3485)
!3554 = !DILocation(line: 697, column: 19, scope: !3485)
!3555 = !DILocation(line: 704, column: 34, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3157, file: !151, line: 704, column: 11)
!3557 = !DILocation(line: 706, column: 14, scope: !3556)
!3558 = !DILocation(line: 707, column: 14, scope: !3556)
!3559 = !DILocation(line: 707, column: 35, scope: !3556)
!3560 = !DILocation(line: 707, column: 17, scope: !3556)
!3561 = !DILocation(line: 707, column: 53, scope: !3556)
!3562 = !DILocation(line: 707, column: 47, scope: !3556)
!3563 = !DILocation(line: 707, column: 65, scope: !3556)
!3564 = !DILocation(line: 708, column: 15, scope: !3556)
!3565 = !DILocation(line: 708, column: 11, scope: !3556)
!3566 = !DILocation(line: 704, column: 11, scope: !3157)
!3567 = !DILocation(line: 712, column: 7, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3157, file: !151, line: 712, column: 7)
!3569 = !DILocation(line: 712, column: 7, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3568, file: !151, line: 712, column: 7)
!3571 = !DILocation(line: 712, column: 7, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !151, line: 712, column: 7)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !151, line: 712, column: 7)
!3574 = distinct !DILexicalBlock(scope: !3570, file: !151, line: 712, column: 7)
!3575 = !DILocation(line: 712, column: 7, scope: !3573)
!3576 = !DILocation(line: 712, column: 7, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !151, line: 712, column: 7)
!3578 = distinct !DILexicalBlock(scope: !3574, file: !151, line: 712, column: 7)
!3579 = !DILocation(line: 712, column: 7, scope: !3578)
!3580 = !DILocation(line: 712, column: 7, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !151, line: 712, column: 7)
!3582 = distinct !DILexicalBlock(scope: !3574, file: !151, line: 712, column: 7)
!3583 = !DILocation(line: 712, column: 7, scope: !3582)
!3584 = !DILocation(line: 712, column: 7, scope: !3574)
!3585 = !DILocation(line: 712, column: 7, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !151, line: 712, column: 7)
!3587 = distinct !DILexicalBlock(scope: !3568, file: !151, line: 712, column: 7)
!3588 = !DILocation(line: 712, column: 7, scope: !3587)
!3589 = !DILocation(line: 715, column: 7, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !151, line: 715, column: 7)
!3591 = distinct !DILexicalBlock(scope: !3157, file: !151, line: 715, column: 7)
!3592 = !DILocation(line: 715, column: 7, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !151, line: 715, column: 7)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !151, line: 715, column: 7)
!3595 = distinct !DILexicalBlock(scope: !3590, file: !151, line: 715, column: 7)
!3596 = !DILocation(line: 715, column: 7, scope: !3594)
!3597 = !DILocation(line: 715, column: 7, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !151, line: 715, column: 7)
!3599 = distinct !DILexicalBlock(scope: !3595, file: !151, line: 715, column: 7)
!3600 = !DILocation(line: 715, column: 7, scope: !3599)
!3601 = !DILocation(line: 715, column: 7, scope: !3595)
!3602 = !DILocation(line: 716, column: 7, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !151, line: 716, column: 7)
!3604 = distinct !DILexicalBlock(scope: !3157, file: !151, line: 716, column: 7)
!3605 = !DILocation(line: 716, column: 7, scope: !3604)
!3606 = !DILocation(line: 718, column: 13, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3157, file: !151, line: 718, column: 11)
!3608 = !DILocation(line: 718, column: 11, scope: !3157)
!3609 = !DILocation(line: 720, column: 5, scope: !3158)
!3610 = !DILocation(line: 392, column: 75, scope: !3158)
!3611 = !DILocation(line: 392, column: 3, scope: !3158)
!3612 = distinct !{!3612, !3271, !3613}
!3613 = !DILocation(line: 720, column: 5, scope: !3159)
!3614 = !DILocation(line: 722, column: 11, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3130, file: !151, line: 722, column: 7)
!3616 = !DILocation(line: 722, column: 16, scope: !3615)
!3617 = !DILocation(line: 730, column: 51, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3130, file: !151, line: 730, column: 7)
!3619 = !DILocation(line: 731, column: 10, scope: !3618)
!3620 = !DILocation(line: 733, column: 11, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !151, line: 733, column: 11)
!3622 = distinct !DILexicalBlock(scope: !3618, file: !151, line: 732, column: 5)
!3623 = !DILocation(line: 733, column: 11, scope: !3622)
!3624 = !DILocation(line: 734, column: 16, scope: !3621)
!3625 = !DILocation(line: 734, column: 9, scope: !3621)
!3626 = !DILocation(line: 738, column: 18, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3621, file: !151, line: 738, column: 16)
!3628 = !DILocation(line: 738, column: 32, scope: !3627)
!3629 = !DILocation(line: 738, column: 29, scope: !3627)
!3630 = !DILocation(line: 747, column: 7, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3130, file: !151, line: 747, column: 7)
!3632 = !DILocation(line: 747, column: 20, scope: !3631)
!3633 = !DILocation(line: 748, column: 12, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !151, line: 748, column: 5)
!3635 = distinct !DILexicalBlock(scope: !3631, file: !151, line: 748, column: 5)
!3636 = !DILocation(line: 748, column: 5, scope: !3635)
!3637 = !DILocation(line: 749, column: 7, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !151, line: 749, column: 7)
!3639 = distinct !DILexicalBlock(scope: !3634, file: !151, line: 749, column: 7)
!3640 = !DILocation(line: 749, column: 7, scope: !3639)
!3641 = !DILocation(line: 748, column: 39, scope: !3634)
!3642 = distinct !{!3642, !3636, !3643}
!3643 = !DILocation(line: 749, column: 7, scope: !3635)
!3644 = !DILocation(line: 751, column: 11, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3130, file: !151, line: 751, column: 7)
!3646 = !DILocation(line: 751, column: 7, scope: !3130)
!3647 = !DILocation(line: 752, column: 5, scope: !3645)
!3648 = !DILocation(line: 752, column: 17, scope: !3645)
!3649 = !DILocation(line: 758, column: 21, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3130, file: !151, line: 758, column: 7)
!3651 = !DILocation(line: 758, column: 54, scope: !3650)
!3652 = !DILocation(line: 758, column: 51, scope: !3650)
!3653 = !DILocation(line: 762, column: 42, scope: !3130)
!3654 = !DILocation(line: 760, column: 10, scope: !3130)
!3655 = !DILocation(line: 760, column: 3, scope: !3130)
!3656 = !DILocation(line: 764, column: 1, scope: !3130)
!3657 = distinct !DISubprogram(name: "gettext_quote", scope: !151, file: !151, line: 199, type: !3658, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3660)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!43, !43, !12}
!3660 = !{!3661, !3662, !3663, !3664}
!3661 = !DILocalVariable(name: "msgid", arg: 1, scope: !3657, file: !151, line: 199, type: !43)
!3662 = !DILocalVariable(name: "s", arg: 2, scope: !3657, file: !151, line: 199, type: !12)
!3663 = !DILocalVariable(name: "translation", scope: !3657, file: !151, line: 201, type: !43)
!3664 = !DILocalVariable(name: "locale_code", scope: !3657, file: !151, line: 202, type: !43)
!3665 = !DILocation(line: 199, column: 28, scope: !3657)
!3666 = !DILocation(line: 199, column: 54, scope: !3657)
!3667 = !DILocation(line: 201, column: 29, scope: !3657)
!3668 = !DILocation(line: 201, column: 15, scope: !3657)
!3669 = !DILocation(line: 204, column: 19, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3657, file: !151, line: 204, column: 7)
!3671 = !DILocation(line: 204, column: 7, scope: !3657)
!3672 = !DILocation(line: 225, column: 17, scope: !3657)
!3673 = !DILocation(line: 202, column: 15, scope: !3657)
!3674 = !DILocalVariable(name: "s2", arg: 2, scope: !3675, file: !3676, line: 160, type: !43)
!3675 = distinct !DISubprogram(name: "strcaseeq0", scope: !3676, file: !3676, line: 160, type: !3677, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3679)
!3676 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!66, !43, !43, !28, !28, !28, !28, !28, !28, !28, !28, !28}
!3679 = !{!3680, !3674, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689}
!3680 = !DILocalVariable(name: "s1", arg: 1, scope: !3675, file: !3676, line: 160, type: !43)
!3681 = !DILocalVariable(name: "s20", arg: 3, scope: !3675, file: !3676, line: 160, type: !28)
!3682 = !DILocalVariable(name: "s21", arg: 4, scope: !3675, file: !3676, line: 160, type: !28)
!3683 = !DILocalVariable(name: "s22", arg: 5, scope: !3675, file: !3676, line: 160, type: !28)
!3684 = !DILocalVariable(name: "s23", arg: 6, scope: !3675, file: !3676, line: 160, type: !28)
!3685 = !DILocalVariable(name: "s24", arg: 7, scope: !3675, file: !3676, line: 160, type: !28)
!3686 = !DILocalVariable(name: "s25", arg: 8, scope: !3675, file: !3676, line: 160, type: !28)
!3687 = !DILocalVariable(name: "s26", arg: 9, scope: !3675, file: !3676, line: 160, type: !28)
!3688 = !DILocalVariable(name: "s27", arg: 10, scope: !3675, file: !3676, line: 160, type: !28)
!3689 = !DILocalVariable(name: "s28", arg: 11, scope: !3675, file: !3676, line: 160, type: !28)
!3690 = !DILocation(line: 160, column: 41, scope: !3675, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 226, column: 7, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3657, file: !151, line: 226, column: 7)
!3693 = !DILocation(line: 160, column: 120, scope: !3675, inlinedAt: !3691)
!3694 = !DILocation(line: 160, column: 130, scope: !3675, inlinedAt: !3691)
!3695 = !DILocation(line: 162, column: 7, scope: !3696, inlinedAt: !3691)
!3696 = distinct !DILexicalBlock(scope: !3675, file: !3676, line: 162, column: 7)
!3697 = !DILocalVariable(name: "s2", arg: 2, scope: !3698, file: !3676, line: 146, type: !43)
!3698 = distinct !DISubprogram(name: "strcaseeq1", scope: !3676, file: !3676, line: 146, type: !3699, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3701)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!66, !43, !43, !28, !28, !28, !28, !28, !28, !28, !28}
!3701 = !{!3702, !3697, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710}
!3702 = !DILocalVariable(name: "s1", arg: 1, scope: !3698, file: !3676, line: 146, type: !43)
!3703 = !DILocalVariable(name: "s21", arg: 3, scope: !3698, file: !3676, line: 146, type: !28)
!3704 = !DILocalVariable(name: "s22", arg: 4, scope: !3698, file: !3676, line: 146, type: !28)
!3705 = !DILocalVariable(name: "s23", arg: 5, scope: !3698, file: !3676, line: 146, type: !28)
!3706 = !DILocalVariable(name: "s24", arg: 6, scope: !3698, file: !3676, line: 146, type: !28)
!3707 = !DILocalVariable(name: "s25", arg: 7, scope: !3698, file: !3676, line: 146, type: !28)
!3708 = !DILocalVariable(name: "s26", arg: 8, scope: !3698, file: !3676, line: 146, type: !28)
!3709 = !DILocalVariable(name: "s27", arg: 9, scope: !3698, file: !3676, line: 146, type: !28)
!3710 = !DILocalVariable(name: "s28", arg: 10, scope: !3698, file: !3676, line: 146, type: !28)
!3711 = !DILocation(line: 146, column: 41, scope: !3698, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 167, column: 16, scope: !3713, inlinedAt: !3691)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !3676, line: 164, column: 11)
!3714 = distinct !DILexicalBlock(scope: !3696, file: !3676, line: 163, column: 5)
!3715 = !DILocation(line: 146, column: 110, scope: !3698, inlinedAt: !3712)
!3716 = !DILocation(line: 146, column: 120, scope: !3698, inlinedAt: !3712)
!3717 = !DILocation(line: 148, column: 7, scope: !3718, inlinedAt: !3712)
!3718 = distinct !DILexicalBlock(scope: !3698, file: !3676, line: 148, column: 7)
!3719 = !DILocalVariable(name: "s2", arg: 2, scope: !3720, file: !3676, line: 132, type: !43)
!3720 = distinct !DISubprogram(name: "strcaseeq2", scope: !3676, file: !3676, line: 132, type: !3721, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!66, !43, !43, !28, !28, !28, !28, !28, !28, !28}
!3723 = !{!3724, !3719, !3725, !3726, !3727, !3728, !3729, !3730, !3731}
!3724 = !DILocalVariable(name: "s1", arg: 1, scope: !3720, file: !3676, line: 132, type: !43)
!3725 = !DILocalVariable(name: "s22", arg: 3, scope: !3720, file: !3676, line: 132, type: !28)
!3726 = !DILocalVariable(name: "s23", arg: 4, scope: !3720, file: !3676, line: 132, type: !28)
!3727 = !DILocalVariable(name: "s24", arg: 5, scope: !3720, file: !3676, line: 132, type: !28)
!3728 = !DILocalVariable(name: "s25", arg: 6, scope: !3720, file: !3676, line: 132, type: !28)
!3729 = !DILocalVariable(name: "s26", arg: 7, scope: !3720, file: !3676, line: 132, type: !28)
!3730 = !DILocalVariable(name: "s27", arg: 8, scope: !3720, file: !3676, line: 132, type: !28)
!3731 = !DILocalVariable(name: "s28", arg: 9, scope: !3720, file: !3676, line: 132, type: !28)
!3732 = !DILocation(line: 132, column: 41, scope: !3720, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 153, column: 16, scope: !3734, inlinedAt: !3712)
!3734 = distinct !DILexicalBlock(scope: !3735, file: !3676, line: 150, column: 11)
!3735 = distinct !DILexicalBlock(scope: !3718, file: !3676, line: 149, column: 5)
!3736 = !DILocation(line: 132, column: 100, scope: !3720, inlinedAt: !3733)
!3737 = !DILocation(line: 132, column: 110, scope: !3720, inlinedAt: !3733)
!3738 = !DILocation(line: 134, column: 7, scope: !3739, inlinedAt: !3733)
!3739 = distinct !DILexicalBlock(scope: !3720, file: !3676, line: 134, column: 7)
!3740 = !DILocalVariable(name: "s2", arg: 2, scope: !3741, file: !3676, line: 118, type: !43)
!3741 = distinct !DISubprogram(name: "strcaseeq3", scope: !3676, file: !3676, line: 118, type: !3742, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!66, !43, !43, !28, !28, !28, !28, !28, !28}
!3744 = !{!3745, !3740, !3746, !3747, !3748, !3749, !3750, !3751}
!3745 = !DILocalVariable(name: "s1", arg: 1, scope: !3741, file: !3676, line: 118, type: !43)
!3746 = !DILocalVariable(name: "s23", arg: 3, scope: !3741, file: !3676, line: 118, type: !28)
!3747 = !DILocalVariable(name: "s24", arg: 4, scope: !3741, file: !3676, line: 118, type: !28)
!3748 = !DILocalVariable(name: "s25", arg: 5, scope: !3741, file: !3676, line: 118, type: !28)
!3749 = !DILocalVariable(name: "s26", arg: 6, scope: !3741, file: !3676, line: 118, type: !28)
!3750 = !DILocalVariable(name: "s27", arg: 7, scope: !3741, file: !3676, line: 118, type: !28)
!3751 = !DILocalVariable(name: "s28", arg: 8, scope: !3741, file: !3676, line: 118, type: !28)
!3752 = !DILocation(line: 118, column: 41, scope: !3741, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 139, column: 16, scope: !3754, inlinedAt: !3733)
!3754 = distinct !DILexicalBlock(scope: !3755, file: !3676, line: 136, column: 11)
!3755 = distinct !DILexicalBlock(scope: !3739, file: !3676, line: 135, column: 5)
!3756 = !DILocation(line: 118, column: 90, scope: !3741, inlinedAt: !3753)
!3757 = !DILocation(line: 118, column: 100, scope: !3741, inlinedAt: !3753)
!3758 = !DILocation(line: 120, column: 7, scope: !3759, inlinedAt: !3753)
!3759 = distinct !DILexicalBlock(scope: !3741, file: !3676, line: 120, column: 7)
!3760 = !DILocation(line: 120, column: 7, scope: !3741, inlinedAt: !3753)
!3761 = !DILocalVariable(name: "s2", arg: 2, scope: !3762, file: !3676, line: 104, type: !43)
!3762 = distinct !DISubprogram(name: "strcaseeq4", scope: !3676, file: !3676, line: 104, type: !3763, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3765)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!66, !43, !43, !28, !28, !28, !28, !28}
!3765 = !{!3766, !3761, !3767, !3768, !3769, !3770, !3771}
!3766 = !DILocalVariable(name: "s1", arg: 1, scope: !3762, file: !3676, line: 104, type: !43)
!3767 = !DILocalVariable(name: "s24", arg: 3, scope: !3762, file: !3676, line: 104, type: !28)
!3768 = !DILocalVariable(name: "s25", arg: 4, scope: !3762, file: !3676, line: 104, type: !28)
!3769 = !DILocalVariable(name: "s26", arg: 5, scope: !3762, file: !3676, line: 104, type: !28)
!3770 = !DILocalVariable(name: "s27", arg: 6, scope: !3762, file: !3676, line: 104, type: !28)
!3771 = !DILocalVariable(name: "s28", arg: 7, scope: !3762, file: !3676, line: 104, type: !28)
!3772 = !DILocation(line: 104, column: 41, scope: !3762, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 125, column: 16, scope: !3774, inlinedAt: !3753)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !3676, line: 122, column: 11)
!3775 = distinct !DILexicalBlock(scope: !3759, file: !3676, line: 121, column: 5)
!3776 = !DILocation(line: 104, column: 80, scope: !3762, inlinedAt: !3773)
!3777 = !DILocation(line: 104, column: 90, scope: !3762, inlinedAt: !3773)
!3778 = !DILocation(line: 106, column: 7, scope: !3779, inlinedAt: !3773)
!3779 = distinct !DILexicalBlock(scope: !3762, file: !3676, line: 106, column: 7)
!3780 = !DILocation(line: 106, column: 7, scope: !3762, inlinedAt: !3773)
!3781 = !DILocalVariable(name: "s2", arg: 2, scope: !3782, file: !3676, line: 90, type: !43)
!3782 = distinct !DISubprogram(name: "strcaseeq5", scope: !3676, file: !3676, line: 90, type: !3783, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3785)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!66, !43, !43, !28, !28, !28, !28}
!3785 = !{!3786, !3781, !3787, !3788, !3789, !3790}
!3786 = !DILocalVariable(name: "s1", arg: 1, scope: !3782, file: !3676, line: 90, type: !43)
!3787 = !DILocalVariable(name: "s25", arg: 3, scope: !3782, file: !3676, line: 90, type: !28)
!3788 = !DILocalVariable(name: "s26", arg: 4, scope: !3782, file: !3676, line: 90, type: !28)
!3789 = !DILocalVariable(name: "s27", arg: 5, scope: !3782, file: !3676, line: 90, type: !28)
!3790 = !DILocalVariable(name: "s28", arg: 6, scope: !3782, file: !3676, line: 90, type: !28)
!3791 = !DILocation(line: 90, column: 41, scope: !3782, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 111, column: 16, scope: !3793, inlinedAt: !3773)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !3676, line: 108, column: 11)
!3794 = distinct !DILexicalBlock(scope: !3779, file: !3676, line: 107, column: 5)
!3795 = !DILocation(line: 90, column: 70, scope: !3782, inlinedAt: !3792)
!3796 = !DILocation(line: 90, column: 80, scope: !3782, inlinedAt: !3792)
!3797 = !DILocation(line: 92, column: 7, scope: !3798, inlinedAt: !3792)
!3798 = distinct !DILexicalBlock(scope: !3782, file: !3676, line: 92, column: 7)
!3799 = !DILocation(line: 92, column: 7, scope: !3782, inlinedAt: !3792)
!3800 = !DILocation(line: 227, column: 12, scope: !3692)
!3801 = !DILocation(line: 227, column: 21, scope: !3692)
!3802 = !DILocation(line: 227, column: 5, scope: !3692)
!3803 = !DILocation(line: 146, column: 41, scope: !3698, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 167, column: 16, scope: !3713, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 228, column: 7, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3657, file: !151, line: 228, column: 7)
!3807 = !DILocation(line: 146, column: 110, scope: !3698, inlinedAt: !3804)
!3808 = !DILocation(line: 146, column: 120, scope: !3698, inlinedAt: !3804)
!3809 = !DILocation(line: 148, column: 7, scope: !3718, inlinedAt: !3804)
!3810 = !DILocation(line: 132, column: 41, scope: !3720, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 153, column: 16, scope: !3734, inlinedAt: !3804)
!3812 = !DILocation(line: 132, column: 100, scope: !3720, inlinedAt: !3811)
!3813 = !DILocation(line: 132, column: 110, scope: !3720, inlinedAt: !3811)
!3814 = !DILocation(line: 134, column: 7, scope: !3739, inlinedAt: !3811)
!3815 = !DILocation(line: 134, column: 7, scope: !3720, inlinedAt: !3811)
!3816 = !DILocation(line: 118, column: 41, scope: !3741, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 139, column: 16, scope: !3754, inlinedAt: !3811)
!3818 = !DILocation(line: 118, column: 90, scope: !3741, inlinedAt: !3817)
!3819 = !DILocation(line: 118, column: 100, scope: !3741, inlinedAt: !3817)
!3820 = !DILocation(line: 120, column: 7, scope: !3759, inlinedAt: !3817)
!3821 = !DILocation(line: 120, column: 7, scope: !3741, inlinedAt: !3817)
!3822 = !DILocation(line: 104, column: 41, scope: !3762, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 125, column: 16, scope: !3774, inlinedAt: !3817)
!3824 = !DILocation(line: 104, column: 80, scope: !3762, inlinedAt: !3823)
!3825 = !DILocation(line: 104, column: 90, scope: !3762, inlinedAt: !3823)
!3826 = !DILocation(line: 106, column: 7, scope: !3779, inlinedAt: !3823)
!3827 = !DILocation(line: 106, column: 7, scope: !3762, inlinedAt: !3823)
!3828 = !DILocation(line: 90, column: 41, scope: !3782, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 111, column: 16, scope: !3793, inlinedAt: !3823)
!3830 = !DILocation(line: 90, column: 70, scope: !3782, inlinedAt: !3829)
!3831 = !DILocation(line: 90, column: 80, scope: !3782, inlinedAt: !3829)
!3832 = !DILocation(line: 92, column: 7, scope: !3798, inlinedAt: !3829)
!3833 = !DILocation(line: 92, column: 7, scope: !3782, inlinedAt: !3829)
!3834 = !DILocalVariable(name: "s2", arg: 2, scope: !3835, file: !3676, line: 76, type: !43)
!3835 = distinct !DISubprogram(name: "strcaseeq6", scope: !3676, file: !3676, line: 76, type: !3836, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3838)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!66, !43, !43, !28, !28, !28}
!3838 = !{!3839, !3834, !3840, !3841, !3842}
!3839 = !DILocalVariable(name: "s1", arg: 1, scope: !3835, file: !3676, line: 76, type: !43)
!3840 = !DILocalVariable(name: "s26", arg: 3, scope: !3835, file: !3676, line: 76, type: !28)
!3841 = !DILocalVariable(name: "s27", arg: 4, scope: !3835, file: !3676, line: 76, type: !28)
!3842 = !DILocalVariable(name: "s28", arg: 5, scope: !3835, file: !3676, line: 76, type: !28)
!3843 = !DILocation(line: 76, column: 41, scope: !3835, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 97, column: 16, scope: !3845, inlinedAt: !3829)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !3676, line: 94, column: 11)
!3846 = distinct !DILexicalBlock(scope: !3798, file: !3676, line: 93, column: 5)
!3847 = !DILocation(line: 76, column: 60, scope: !3835, inlinedAt: !3844)
!3848 = !DILocation(line: 76, column: 70, scope: !3835, inlinedAt: !3844)
!3849 = !DILocation(line: 78, column: 7, scope: !3850, inlinedAt: !3844)
!3850 = distinct !DILexicalBlock(scope: !3835, file: !3676, line: 78, column: 7)
!3851 = !DILocation(line: 78, column: 7, scope: !3835, inlinedAt: !3844)
!3852 = !DILocalVariable(name: "s2", arg: 2, scope: !3853, file: !3676, line: 62, type: !43)
!3853 = distinct !DISubprogram(name: "strcaseeq7", scope: !3676, file: !3676, line: 62, type: !3854, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3856)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!66, !43, !43, !28, !28}
!3856 = !{!3857, !3852, !3858, !3859}
!3857 = !DILocalVariable(name: "s1", arg: 1, scope: !3853, file: !3676, line: 62, type: !43)
!3858 = !DILocalVariable(name: "s27", arg: 3, scope: !3853, file: !3676, line: 62, type: !28)
!3859 = !DILocalVariable(name: "s28", arg: 4, scope: !3853, file: !3676, line: 62, type: !28)
!3860 = !DILocation(line: 62, column: 41, scope: !3853, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 83, column: 16, scope: !3862, inlinedAt: !3844)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !3676, line: 80, column: 11)
!3863 = distinct !DILexicalBlock(scope: !3850, file: !3676, line: 79, column: 5)
!3864 = !DILocation(line: 62, column: 50, scope: !3853, inlinedAt: !3861)
!3865 = !DILocation(line: 62, column: 60, scope: !3853, inlinedAt: !3861)
!3866 = !DILocation(line: 64, column: 7, scope: !3867, inlinedAt: !3861)
!3867 = distinct !DILexicalBlock(scope: !3853, file: !3676, line: 64, column: 7)
!3868 = !DILocation(line: 228, column: 7, scope: !3657)
!3869 = !DILocation(line: 229, column: 12, scope: !3806)
!3870 = !DILocation(line: 229, column: 21, scope: !3806)
!3871 = !DILocation(line: 229, column: 5, scope: !3806)
!3872 = !DILocation(line: 231, column: 13, scope: !3657)
!3873 = !DILocation(line: 231, column: 11, scope: !3657)
!3874 = !DILocation(line: 231, column: 3, scope: !3657)
!3875 = !DILocation(line: 232, column: 1, scope: !3657)
!3876 = distinct !DISubprogram(name: "quotearg_alloc", scope: !151, file: !151, line: 791, type: !3877, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3879)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!27, !43, !99, !3002}
!3879 = !{!3880, !3881, !3882}
!3880 = !DILocalVariable(name: "arg", arg: 1, scope: !3876, file: !151, line: 791, type: !43)
!3881 = !DILocalVariable(name: "argsize", arg: 2, scope: !3876, file: !151, line: 791, type: !99)
!3882 = !DILocalVariable(name: "o", arg: 3, scope: !3876, file: !151, line: 792, type: !3002)
!3883 = !DILocation(line: 791, column: 29, scope: !3876)
!3884 = !DILocation(line: 791, column: 41, scope: !3876)
!3885 = !DILocation(line: 792, column: 47, scope: !3876)
!3886 = !DILocalVariable(name: "arg", arg: 1, scope: !3887, file: !151, line: 804, type: !43)
!3887 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !151, file: !151, line: 804, type: !3888, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3890)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!27, !43, !99, !573, !3002}
!3890 = !{!3886, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898}
!3891 = !DILocalVariable(name: "argsize", arg: 2, scope: !3887, file: !151, line: 804, type: !99)
!3892 = !DILocalVariable(name: "size", arg: 3, scope: !3887, file: !151, line: 804, type: !573)
!3893 = !DILocalVariable(name: "o", arg: 4, scope: !3887, file: !151, line: 805, type: !3002)
!3894 = !DILocalVariable(name: "p", scope: !3887, file: !151, line: 807, type: !3002)
!3895 = !DILocalVariable(name: "e", scope: !3887, file: !151, line: 808, type: !66)
!3896 = !DILocalVariable(name: "flags", scope: !3887, file: !151, line: 810, type: !66)
!3897 = !DILocalVariable(name: "bufsize", scope: !3887, file: !151, line: 811, type: !99)
!3898 = !DILocalVariable(name: "buf", scope: !3887, file: !151, line: 815, type: !27)
!3899 = !DILocation(line: 804, column: 33, scope: !3887, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 794, column: 10, scope: !3876)
!3901 = !DILocation(line: 804, column: 45, scope: !3887, inlinedAt: !3900)
!3902 = !DILocation(line: 804, column: 62, scope: !3887, inlinedAt: !3900)
!3903 = !DILocation(line: 805, column: 51, scope: !3887, inlinedAt: !3900)
!3904 = !DILocation(line: 807, column: 37, scope: !3887, inlinedAt: !3900)
!3905 = !DILocation(line: 807, column: 33, scope: !3887, inlinedAt: !3900)
!3906 = !DILocation(line: 808, column: 11, scope: !3887, inlinedAt: !3900)
!3907 = !DILocation(line: 808, column: 7, scope: !3887, inlinedAt: !3900)
!3908 = !DILocation(line: 810, column: 18, scope: !3887, inlinedAt: !3900)
!3909 = !DILocation(line: 810, column: 24, scope: !3887, inlinedAt: !3900)
!3910 = !DILocation(line: 810, column: 7, scope: !3887, inlinedAt: !3900)
!3911 = !DILocation(line: 811, column: 69, scope: !3887, inlinedAt: !3900)
!3912 = !DILocation(line: 812, column: 53, scope: !3887, inlinedAt: !3900)
!3913 = !DILocation(line: 813, column: 49, scope: !3887, inlinedAt: !3900)
!3914 = !DILocation(line: 814, column: 49, scope: !3887, inlinedAt: !3900)
!3915 = !DILocation(line: 811, column: 20, scope: !3887, inlinedAt: !3900)
!3916 = !DILocation(line: 814, column: 62, scope: !3887, inlinedAt: !3900)
!3917 = !DILocation(line: 811, column: 10, scope: !3887, inlinedAt: !3900)
!3918 = !DILocalVariable(name: "n", arg: 1, scope: !3919, file: !569, line: 220, type: !99)
!3919 = distinct !DISubprogram(name: "xcharalloc", scope: !569, file: !569, line: 220, type: !3920, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3922)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!27, !99}
!3922 = !{!3918}
!3923 = !DILocation(line: 220, column: 20, scope: !3919, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 815, column: 15, scope: !3887, inlinedAt: !3900)
!3925 = !DILocation(line: 222, column: 10, scope: !3919, inlinedAt: !3924)
!3926 = !DILocation(line: 815, column: 9, scope: !3887, inlinedAt: !3900)
!3927 = !DILocation(line: 816, column: 60, scope: !3887, inlinedAt: !3900)
!3928 = !DILocation(line: 818, column: 32, scope: !3887, inlinedAt: !3900)
!3929 = !DILocation(line: 818, column: 47, scope: !3887, inlinedAt: !3900)
!3930 = !DILocation(line: 816, column: 3, scope: !3887, inlinedAt: !3900)
!3931 = !DILocation(line: 819, column: 9, scope: !3887, inlinedAt: !3900)
!3932 = !DILocation(line: 794, column: 3, scope: !3876)
!3933 = !DILocation(line: 804, column: 33, scope: !3887)
!3934 = !DILocation(line: 804, column: 45, scope: !3887)
!3935 = !DILocation(line: 804, column: 62, scope: !3887)
!3936 = !DILocation(line: 805, column: 51, scope: !3887)
!3937 = !DILocation(line: 807, column: 37, scope: !3887)
!3938 = !DILocation(line: 807, column: 33, scope: !3887)
!3939 = !DILocation(line: 808, column: 11, scope: !3887)
!3940 = !DILocation(line: 808, column: 7, scope: !3887)
!3941 = !DILocation(line: 810, column: 18, scope: !3887)
!3942 = !DILocation(line: 810, column: 27, scope: !3887)
!3943 = !DILocation(line: 810, column: 24, scope: !3887)
!3944 = !DILocation(line: 810, column: 7, scope: !3887)
!3945 = !DILocation(line: 811, column: 69, scope: !3887)
!3946 = !DILocation(line: 812, column: 53, scope: !3887)
!3947 = !DILocation(line: 813, column: 49, scope: !3887)
!3948 = !DILocation(line: 814, column: 49, scope: !3887)
!3949 = !DILocation(line: 811, column: 20, scope: !3887)
!3950 = !DILocation(line: 814, column: 62, scope: !3887)
!3951 = !DILocation(line: 811, column: 10, scope: !3887)
!3952 = !DILocation(line: 220, column: 20, scope: !3919, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 815, column: 15, scope: !3887)
!3954 = !DILocation(line: 222, column: 10, scope: !3919, inlinedAt: !3953)
!3955 = !DILocation(line: 815, column: 9, scope: !3887)
!3956 = !DILocation(line: 816, column: 60, scope: !3887)
!3957 = !DILocation(line: 818, column: 32, scope: !3887)
!3958 = !DILocation(line: 818, column: 47, scope: !3887)
!3959 = !DILocation(line: 816, column: 3, scope: !3887)
!3960 = !DILocation(line: 819, column: 9, scope: !3887)
!3961 = !DILocation(line: 820, column: 7, scope: !3887)
!3962 = !DILocation(line: 821, column: 11, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3887, file: !151, line: 820, column: 7)
!3964 = !DILocation(line: 821, column: 5, scope: !3963)
!3965 = !DILocation(line: 822, column: 3, scope: !3887)
!3966 = distinct !DISubprogram(name: "quotearg_free", scope: !151, file: !151, line: 840, type: !1219, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !3967)
!3967 = !{!3968, !3969}
!3968 = !DILocalVariable(name: "sv", scope: !3966, file: !151, line: 842, type: !178)
!3969 = !DILocalVariable(name: "i", scope: !3966, file: !151, line: 843, type: !66)
!3970 = !DILocation(line: 842, column: 24, scope: !3966)
!3971 = !DILocation(line: 842, column: 19, scope: !3966)
!3972 = !DILocation(line: 843, column: 7, scope: !3966)
!3973 = !DILocation(line: 844, column: 19, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !151, line: 844, column: 3)
!3975 = distinct !DILexicalBlock(scope: !3966, file: !151, line: 844, column: 3)
!3976 = !DILocation(line: 844, column: 17, scope: !3974)
!3977 = !DILocation(line: 844, column: 3, scope: !3975)
!3978 = !DILocation(line: 845, column: 17, scope: !3974)
!3979 = !{!3980, !629, i64 8}
!3980 = !{!"slotvec", !745, i64 0, !629, i64 8}
!3981 = !DILocation(line: 845, column: 5, scope: !3974)
!3982 = !DILocation(line: 844, column: 28, scope: !3974)
!3983 = distinct !{!3983, !3977, !3984}
!3984 = !DILocation(line: 845, column: 20, scope: !3975)
!3985 = !DILocation(line: 846, column: 13, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3966, file: !151, line: 846, column: 7)
!3987 = !DILocation(line: 846, column: 17, scope: !3986)
!3988 = !DILocation(line: 846, column: 7, scope: !3966)
!3989 = !DILocation(line: 848, column: 7, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3986, file: !151, line: 847, column: 5)
!3991 = !DILocation(line: 849, column: 21, scope: !3990)
!3992 = !{!3980, !745, i64 0}
!3993 = !DILocation(line: 850, column: 20, scope: !3990)
!3994 = !DILocation(line: 851, column: 5, scope: !3990)
!3995 = !DILocation(line: 852, column: 10, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3966, file: !151, line: 852, column: 7)
!3997 = !DILocation(line: 852, column: 7, scope: !3966)
!3998 = !DILocation(line: 854, column: 13, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3996, file: !151, line: 853, column: 5)
!4000 = !DILocation(line: 854, column: 7, scope: !3999)
!4001 = !DILocation(line: 855, column: 15, scope: !3999)
!4002 = !DILocation(line: 856, column: 5, scope: !3999)
!4003 = !DILocation(line: 857, column: 10, scope: !3966)
!4004 = !DILocation(line: 858, column: 1, scope: !3966)
!4005 = distinct !DISubprogram(name: "quotearg_n", scope: !151, file: !151, line: 922, type: !4006, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!27, !66, !43}
!4008 = !{!4009, !4010}
!4009 = !DILocalVariable(name: "n", arg: 1, scope: !4005, file: !151, line: 922, type: !66)
!4010 = !DILocalVariable(name: "arg", arg: 2, scope: !4005, file: !151, line: 922, type: !43)
!4011 = !DILocation(line: 922, column: 17, scope: !4005)
!4012 = !DILocation(line: 922, column: 32, scope: !4005)
!4013 = !DILocation(line: 924, column: 10, scope: !4005)
!4014 = !DILocation(line: 924, column: 3, scope: !4005)
!4015 = distinct !DISubprogram(name: "quotearg_n_options", scope: !151, file: !151, line: 869, type: !4016, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4018)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!27, !66, !43, !99, !3002}
!4018 = !{!4019, !4020, !4021, !4022, !4023, !4024, !4025, !4028, !4030, !4031, !4032}
!4019 = !DILocalVariable(name: "n", arg: 1, scope: !4015, file: !151, line: 869, type: !66)
!4020 = !DILocalVariable(name: "arg", arg: 2, scope: !4015, file: !151, line: 869, type: !43)
!4021 = !DILocalVariable(name: "argsize", arg: 3, scope: !4015, file: !151, line: 869, type: !99)
!4022 = !DILocalVariable(name: "options", arg: 4, scope: !4015, file: !151, line: 870, type: !3002)
!4023 = !DILocalVariable(name: "e", scope: !4015, file: !151, line: 872, type: !66)
!4024 = !DILocalVariable(name: "sv", scope: !4015, file: !151, line: 874, type: !178)
!4025 = !DILocalVariable(name: "preallocated", scope: !4026, file: !151, line: 881, type: !34)
!4026 = distinct !DILexicalBlock(scope: !4027, file: !151, line: 880, column: 5)
!4027 = distinct !DILexicalBlock(scope: !4015, file: !151, line: 879, column: 7)
!4028 = !DILocalVariable(name: "size", scope: !4029, file: !151, line: 894, type: !99)
!4029 = distinct !DILexicalBlock(scope: !4015, file: !151, line: 893, column: 3)
!4030 = !DILocalVariable(name: "val", scope: !4029, file: !151, line: 895, type: !27)
!4031 = !DILocalVariable(name: "flags", scope: !4029, file: !151, line: 897, type: !66)
!4032 = !DILocalVariable(name: "qsize", scope: !4029, file: !151, line: 898, type: !99)
!4033 = !DILocation(line: 869, column: 25, scope: !4015)
!4034 = !DILocation(line: 869, column: 40, scope: !4015)
!4035 = !DILocation(line: 869, column: 52, scope: !4015)
!4036 = !DILocation(line: 870, column: 51, scope: !4015)
!4037 = !DILocation(line: 872, column: 11, scope: !4015)
!4038 = !DILocation(line: 872, column: 7, scope: !4015)
!4039 = !DILocation(line: 874, column: 24, scope: !4015)
!4040 = !DILocation(line: 874, column: 19, scope: !4015)
!4041 = !DILocation(line: 876, column: 9, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4015, file: !151, line: 876, column: 7)
!4043 = !DILocation(line: 876, column: 7, scope: !4015)
!4044 = !DILocation(line: 877, column: 5, scope: !4042)
!4045 = !DILocation(line: 879, column: 7, scope: !4027)
!4046 = !DILocation(line: 879, column: 14, scope: !4027)
!4047 = !DILocation(line: 879, column: 7, scope: !4015)
!4048 = !DILocation(line: 881, column: 31, scope: !4026)
!4049 = !DILocation(line: 883, column: 67, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4026, file: !151, line: 883, column: 11)
!4051 = !DILocation(line: 883, column: 11, scope: !4026)
!4052 = !DILocation(line: 884, column: 9, scope: !4050)
!4053 = !DILocation(line: 886, column: 32, scope: !4026)
!4054 = !DILocation(line: 886, column: 61, scope: !4026)
!4055 = !DILocation(line: 886, column: 58, scope: !4026)
!4056 = !DILocation(line: 886, column: 66, scope: !4026)
!4057 = !DILocation(line: 886, column: 22, scope: !4026)
!4058 = !DILocation(line: 886, column: 15, scope: !4026)
!4059 = !DILocation(line: 887, column: 11, scope: !4026)
!4060 = !DILocation(line: 888, column: 15, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4026, file: !151, line: 887, column: 11)
!4062 = !{i64 0, i64 8, !2277, i64 8, i64 8, !628}
!4063 = !DILocation(line: 888, column: 9, scope: !4061)
!4064 = !DILocation(line: 889, column: 20, scope: !4026)
!4065 = !DILocation(line: 889, column: 18, scope: !4026)
!4066 = !DILocation(line: 889, column: 7, scope: !4026)
!4067 = !DILocation(line: 889, column: 38, scope: !4026)
!4068 = !DILocation(line: 889, column: 31, scope: !4026)
!4069 = !DILocation(line: 889, column: 48, scope: !4026)
!4070 = !DILocation(line: 890, column: 14, scope: !4026)
!4071 = !DILocation(line: 891, column: 5, scope: !4026)
!4072 = !DILocation(line: 894, column: 19, scope: !4029)
!4073 = !DILocation(line: 894, column: 25, scope: !4029)
!4074 = !DILocation(line: 894, column: 12, scope: !4029)
!4075 = !DILocation(line: 895, column: 23, scope: !4029)
!4076 = !DILocation(line: 895, column: 11, scope: !4029)
!4077 = !DILocation(line: 897, column: 26, scope: !4029)
!4078 = !DILocation(line: 897, column: 32, scope: !4029)
!4079 = !DILocation(line: 897, column: 9, scope: !4029)
!4080 = !DILocation(line: 899, column: 55, scope: !4029)
!4081 = !DILocation(line: 900, column: 46, scope: !4029)
!4082 = !DILocation(line: 901, column: 55, scope: !4029)
!4083 = !DILocation(line: 902, column: 55, scope: !4029)
!4084 = !DILocation(line: 898, column: 20, scope: !4029)
!4085 = !DILocation(line: 898, column: 12, scope: !4029)
!4086 = !DILocation(line: 904, column: 14, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4029, file: !151, line: 904, column: 9)
!4088 = !DILocation(line: 904, column: 9, scope: !4029)
!4089 = !DILocation(line: 906, column: 35, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4087, file: !151, line: 905, column: 7)
!4091 = !DILocation(line: 906, column: 20, scope: !4090)
!4092 = !DILocation(line: 907, column: 17, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4090, file: !151, line: 907, column: 13)
!4094 = !DILocation(line: 907, column: 13, scope: !4090)
!4095 = !DILocation(line: 908, column: 11, scope: !4093)
!4096 = !DILocation(line: 220, column: 20, scope: !3919, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 909, column: 27, scope: !4090)
!4098 = !DILocation(line: 222, column: 10, scope: !3919, inlinedAt: !4097)
!4099 = !DILocation(line: 909, column: 19, scope: !4090)
!4100 = !DILocation(line: 910, column: 69, scope: !4090)
!4101 = !DILocation(line: 912, column: 44, scope: !4090)
!4102 = !DILocation(line: 913, column: 44, scope: !4090)
!4103 = !DILocation(line: 910, column: 9, scope: !4090)
!4104 = !DILocation(line: 914, column: 7, scope: !4090)
!4105 = !DILocation(line: 916, column: 11, scope: !4029)
!4106 = !DILocation(line: 917, column: 5, scope: !4029)
!4107 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !151, file: !151, line: 928, type: !4108, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4110)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!27, !66, !43, !99}
!4110 = !{!4111, !4112, !4113}
!4111 = !DILocalVariable(name: "n", arg: 1, scope: !4107, file: !151, line: 928, type: !66)
!4112 = !DILocalVariable(name: "arg", arg: 2, scope: !4107, file: !151, line: 928, type: !43)
!4113 = !DILocalVariable(name: "argsize", arg: 3, scope: !4107, file: !151, line: 928, type: !99)
!4114 = !DILocation(line: 928, column: 21, scope: !4107)
!4115 = !DILocation(line: 928, column: 36, scope: !4107)
!4116 = !DILocation(line: 928, column: 48, scope: !4107)
!4117 = !DILocation(line: 930, column: 10, scope: !4107)
!4118 = !DILocation(line: 930, column: 3, scope: !4107)
!4119 = distinct !DISubprogram(name: "quotearg", scope: !151, file: !151, line: 934, type: !4120, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!27, !43}
!4122 = !{!4123}
!4123 = !DILocalVariable(name: "arg", arg: 1, scope: !4119, file: !151, line: 934, type: !43)
!4124 = !DILocation(line: 934, column: 23, scope: !4119)
!4125 = !DILocation(line: 922, column: 17, scope: !4005, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 936, column: 10, scope: !4119)
!4127 = !DILocation(line: 922, column: 32, scope: !4005, inlinedAt: !4126)
!4128 = !DILocation(line: 924, column: 10, scope: !4005, inlinedAt: !4126)
!4129 = !DILocation(line: 936, column: 3, scope: !4119)
!4130 = distinct !DISubprogram(name: "quotearg_mem", scope: !151, file: !151, line: 940, type: !764, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4131)
!4131 = !{!4132, !4133}
!4132 = !DILocalVariable(name: "arg", arg: 1, scope: !4130, file: !151, line: 940, type: !43)
!4133 = !DILocalVariable(name: "argsize", arg: 2, scope: !4130, file: !151, line: 940, type: !99)
!4134 = !DILocation(line: 940, column: 27, scope: !4130)
!4135 = !DILocation(line: 940, column: 39, scope: !4130)
!4136 = !DILocation(line: 928, column: 21, scope: !4107, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 942, column: 10, scope: !4130)
!4138 = !DILocation(line: 928, column: 36, scope: !4107, inlinedAt: !4137)
!4139 = !DILocation(line: 928, column: 48, scope: !4107, inlinedAt: !4137)
!4140 = !DILocation(line: 930, column: 10, scope: !4107, inlinedAt: !4137)
!4141 = !DILocation(line: 942, column: 3, scope: !4130)
!4142 = distinct !DISubprogram(name: "quotearg_n_style", scope: !151, file: !151, line: 946, type: !4143, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4145)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!27, !66, !12, !43}
!4145 = !{!4146, !4147, !4148, !4149}
!4146 = !DILocalVariable(name: "n", arg: 1, scope: !4142, file: !151, line: 946, type: !66)
!4147 = !DILocalVariable(name: "s", arg: 2, scope: !4142, file: !151, line: 946, type: !12)
!4148 = !DILocalVariable(name: "arg", arg: 3, scope: !4142, file: !151, line: 946, type: !43)
!4149 = !DILocalVariable(name: "o", scope: !4142, file: !151, line: 948, type: !3003)
!4150 = !DILocalVariable(name: "o", scope: !4151, file: !151, line: 187, type: !158)
!4151 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !151, file: !151, line: 185, type: !4152, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4154)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!158, !12}
!4154 = !{!4155, !4150}
!4155 = !DILocalVariable(name: "style", arg: 1, scope: !4151, file: !151, line: 185, type: !12)
!4156 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!4157 = !DILocation(line: 187, column: 26, scope: !4151, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 948, column: 36, scope: !4142)
!4159 = !DILocation(line: 946, column: 23, scope: !4142)
!4160 = !DILocation(line: 946, column: 45, scope: !4142)
!4161 = !DILocation(line: 946, column: 60, scope: !4142)
!4162 = !DILocation(line: 948, column: 3, scope: !4142)
!4163 = !DILocation(line: 948, column: 32, scope: !4142)
!4164 = !DILocation(line: 185, column: 48, scope: !4151, inlinedAt: !4158)
!4165 = !DILocation(line: 187, column: 3, scope: !4151, inlinedAt: !4158)
!4166 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!4167 = !DILocation(line: 188, column: 13, scope: !4168, inlinedAt: !4158)
!4168 = distinct !DILexicalBlock(scope: !4151, file: !151, line: 188, column: 7)
!4169 = !DILocation(line: 188, column: 7, scope: !4151, inlinedAt: !4158)
!4170 = !DILocation(line: 189, column: 5, scope: !4168, inlinedAt: !4158)
!4171 = !{!4172}
!4172 = distinct !{!4172, !4173, !"quoting_options_from_style: argument 0"}
!4173 = distinct !{!4173, !"quoting_options_from_style"}
!4174 = !DILocation(line: 191, column: 10, scope: !4151, inlinedAt: !4158)
!4175 = !DILocation(line: 192, column: 1, scope: !4151, inlinedAt: !4158)
!4176 = !DILocation(line: 949, column: 10, scope: !4142)
!4177 = !DILocation(line: 950, column: 1, scope: !4142)
!4178 = !DILocation(line: 949, column: 3, scope: !4142)
!4179 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !151, file: !151, line: 953, type: !4180, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4182)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!27, !66, !12, !43, !99}
!4182 = !{!4183, !4184, !4185, !4186, !4187}
!4183 = !DILocalVariable(name: "n", arg: 1, scope: !4179, file: !151, line: 953, type: !66)
!4184 = !DILocalVariable(name: "s", arg: 2, scope: !4179, file: !151, line: 953, type: !12)
!4185 = !DILocalVariable(name: "arg", arg: 3, scope: !4179, file: !151, line: 954, type: !43)
!4186 = !DILocalVariable(name: "argsize", arg: 4, scope: !4179, file: !151, line: 954, type: !99)
!4187 = !DILocalVariable(name: "o", scope: !4179, file: !151, line: 956, type: !3003)
!4188 = !DILocation(line: 187, column: 26, scope: !4151, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 956, column: 36, scope: !4179)
!4190 = !DILocation(line: 953, column: 27, scope: !4179)
!4191 = !DILocation(line: 953, column: 49, scope: !4179)
!4192 = !DILocation(line: 954, column: 35, scope: !4179)
!4193 = !DILocation(line: 954, column: 47, scope: !4179)
!4194 = !DILocation(line: 956, column: 3, scope: !4179)
!4195 = !DILocation(line: 956, column: 32, scope: !4179)
!4196 = !DILocation(line: 185, column: 48, scope: !4151, inlinedAt: !4189)
!4197 = !DILocation(line: 187, column: 3, scope: !4151, inlinedAt: !4189)
!4198 = !DILocation(line: 188, column: 13, scope: !4168, inlinedAt: !4189)
!4199 = !DILocation(line: 188, column: 7, scope: !4151, inlinedAt: !4189)
!4200 = !DILocation(line: 189, column: 5, scope: !4168, inlinedAt: !4189)
!4201 = !{!4202}
!4202 = distinct !{!4202, !4203, !"quoting_options_from_style: argument 0"}
!4203 = distinct !{!4203, !"quoting_options_from_style"}
!4204 = !DILocation(line: 191, column: 10, scope: !4151, inlinedAt: !4189)
!4205 = !DILocation(line: 192, column: 1, scope: !4151, inlinedAt: !4189)
!4206 = !DILocation(line: 957, column: 10, scope: !4179)
!4207 = !DILocation(line: 958, column: 1, scope: !4179)
!4208 = !DILocation(line: 957, column: 3, scope: !4179)
!4209 = distinct !DISubprogram(name: "quotearg_style", scope: !151, file: !151, line: 961, type: !4210, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4212)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!27, !12, !43}
!4212 = !{!4213, !4214}
!4213 = !DILocalVariable(name: "s", arg: 1, scope: !4209, file: !151, line: 961, type: !12)
!4214 = !DILocalVariable(name: "arg", arg: 2, scope: !4209, file: !151, line: 961, type: !43)
!4215 = !DILocation(line: 187, column: 26, scope: !4151, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 948, column: 36, scope: !4142, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 963, column: 10, scope: !4209)
!4218 = !DILocation(line: 961, column: 36, scope: !4209)
!4219 = !DILocation(line: 961, column: 51, scope: !4209)
!4220 = !DILocation(line: 946, column: 23, scope: !4142, inlinedAt: !4217)
!4221 = !DILocation(line: 946, column: 45, scope: !4142, inlinedAt: !4217)
!4222 = !DILocation(line: 946, column: 60, scope: !4142, inlinedAt: !4217)
!4223 = !DILocation(line: 948, column: 3, scope: !4142, inlinedAt: !4217)
!4224 = !DILocation(line: 948, column: 32, scope: !4142, inlinedAt: !4217)
!4225 = !DILocation(line: 185, column: 48, scope: !4151, inlinedAt: !4216)
!4226 = !DILocation(line: 187, column: 3, scope: !4151, inlinedAt: !4216)
!4227 = !DILocation(line: 188, column: 13, scope: !4168, inlinedAt: !4216)
!4228 = !DILocation(line: 188, column: 7, scope: !4151, inlinedAt: !4216)
!4229 = !DILocation(line: 189, column: 5, scope: !4168, inlinedAt: !4216)
!4230 = !{!4231}
!4231 = distinct !{!4231, !4232, !"quoting_options_from_style: argument 0"}
!4232 = distinct !{!4232, !"quoting_options_from_style"}
!4233 = !DILocation(line: 191, column: 10, scope: !4151, inlinedAt: !4216)
!4234 = !DILocation(line: 192, column: 1, scope: !4151, inlinedAt: !4216)
!4235 = !DILocation(line: 949, column: 10, scope: !4142, inlinedAt: !4217)
!4236 = !DILocation(line: 950, column: 1, scope: !4142, inlinedAt: !4217)
!4237 = !DILocation(line: 963, column: 3, scope: !4209)
!4238 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !151, file: !151, line: 967, type: !4239, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4241)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!27, !12, !43, !99}
!4241 = !{!4242, !4243, !4244}
!4242 = !DILocalVariable(name: "s", arg: 1, scope: !4238, file: !151, line: 967, type: !12)
!4243 = !DILocalVariable(name: "arg", arg: 2, scope: !4238, file: !151, line: 967, type: !43)
!4244 = !DILocalVariable(name: "argsize", arg: 3, scope: !4238, file: !151, line: 967, type: !99)
!4245 = !DILocation(line: 187, column: 26, scope: !4151, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 956, column: 36, scope: !4179, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 969, column: 10, scope: !4238)
!4248 = !DILocation(line: 967, column: 40, scope: !4238)
!4249 = !DILocation(line: 967, column: 55, scope: !4238)
!4250 = !DILocation(line: 967, column: 67, scope: !4238)
!4251 = !DILocation(line: 953, column: 27, scope: !4179, inlinedAt: !4247)
!4252 = !DILocation(line: 953, column: 49, scope: !4179, inlinedAt: !4247)
!4253 = !DILocation(line: 954, column: 35, scope: !4179, inlinedAt: !4247)
!4254 = !DILocation(line: 954, column: 47, scope: !4179, inlinedAt: !4247)
!4255 = !DILocation(line: 956, column: 3, scope: !4179, inlinedAt: !4247)
!4256 = !DILocation(line: 956, column: 32, scope: !4179, inlinedAt: !4247)
!4257 = !DILocation(line: 185, column: 48, scope: !4151, inlinedAt: !4246)
!4258 = !DILocation(line: 187, column: 3, scope: !4151, inlinedAt: !4246)
!4259 = !DILocation(line: 188, column: 13, scope: !4168, inlinedAt: !4246)
!4260 = !DILocation(line: 188, column: 7, scope: !4151, inlinedAt: !4246)
!4261 = !DILocation(line: 189, column: 5, scope: !4168, inlinedAt: !4246)
!4262 = !{!4263}
!4263 = distinct !{!4263, !4264, !"quoting_options_from_style: argument 0"}
!4264 = distinct !{!4264, !"quoting_options_from_style"}
!4265 = !DILocation(line: 191, column: 10, scope: !4151, inlinedAt: !4246)
!4266 = !DILocation(line: 192, column: 1, scope: !4151, inlinedAt: !4246)
!4267 = !DILocation(line: 957, column: 10, scope: !4179, inlinedAt: !4247)
!4268 = !DILocation(line: 958, column: 1, scope: !4179, inlinedAt: !4247)
!4269 = !DILocation(line: 969, column: 3, scope: !4238)
!4270 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !151, file: !151, line: 973, type: !4271, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4273)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!27, !43, !99, !28}
!4273 = !{!4274, !4275, !4276, !4277}
!4274 = !DILocalVariable(name: "arg", arg: 1, scope: !4270, file: !151, line: 973, type: !43)
!4275 = !DILocalVariable(name: "argsize", arg: 2, scope: !4270, file: !151, line: 973, type: !99)
!4276 = !DILocalVariable(name: "ch", arg: 3, scope: !4270, file: !151, line: 973, type: !28)
!4277 = !DILocalVariable(name: "options", scope: !4270, file: !151, line: 975, type: !158)
!4278 = !DILocation(line: 973, column: 32, scope: !4270)
!4279 = !DILocation(line: 973, column: 44, scope: !4270)
!4280 = !DILocation(line: 973, column: 58, scope: !4270)
!4281 = !DILocation(line: 975, column: 3, scope: !4270)
!4282 = !DILocation(line: 976, column: 13, scope: !4270)
!4283 = !{i64 0, i64 4, !749, i64 4, i64 4, !700, i64 8, i64 32, !749, i64 40, i64 8, !628, i64 48, i64 8, !628}
!4284 = !DILocation(line: 975, column: 26, scope: !4270)
!4285 = !DILocation(line: 144, column: 43, scope: !3024, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 977, column: 3, scope: !4270)
!4287 = !DILocation(line: 144, column: 51, scope: !3024, inlinedAt: !4286)
!4288 = !DILocation(line: 144, column: 58, scope: !3024, inlinedAt: !4286)
!4289 = !DILocation(line: 146, column: 17, scope: !3024, inlinedAt: !4286)
!4290 = !DILocation(line: 148, column: 62, scope: !3024, inlinedAt: !4286)
!4291 = !DILocation(line: 148, column: 57, scope: !3024, inlinedAt: !4286)
!4292 = !DILocation(line: 147, column: 17, scope: !3024, inlinedAt: !4286)
!4293 = !DILocation(line: 149, column: 18, scope: !3024, inlinedAt: !4286)
!4294 = !DILocation(line: 149, column: 15, scope: !3024, inlinedAt: !4286)
!4295 = !DILocation(line: 149, column: 7, scope: !3024, inlinedAt: !4286)
!4296 = !DILocation(line: 150, column: 12, scope: !3024, inlinedAt: !4286)
!4297 = !DILocation(line: 150, column: 15, scope: !3024, inlinedAt: !4286)
!4298 = !DILocation(line: 150, column: 25, scope: !3024, inlinedAt: !4286)
!4299 = !DILocation(line: 150, column: 7, scope: !3024, inlinedAt: !4286)
!4300 = !DILocation(line: 151, column: 18, scope: !3024, inlinedAt: !4286)
!4301 = !DILocation(line: 151, column: 23, scope: !3024, inlinedAt: !4286)
!4302 = !DILocation(line: 151, column: 6, scope: !3024, inlinedAt: !4286)
!4303 = !DILocation(line: 978, column: 10, scope: !4270)
!4304 = !DILocation(line: 979, column: 1, scope: !4270)
!4305 = !DILocation(line: 978, column: 3, scope: !4270)
!4306 = distinct !DISubprogram(name: "quotearg_char", scope: !151, file: !151, line: 982, type: !4307, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4309)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!27, !43, !28}
!4309 = !{!4310, !4311}
!4310 = !DILocalVariable(name: "arg", arg: 1, scope: !4306, file: !151, line: 982, type: !43)
!4311 = !DILocalVariable(name: "ch", arg: 2, scope: !4306, file: !151, line: 982, type: !28)
!4312 = !DILocation(line: 982, column: 28, scope: !4306)
!4313 = !DILocation(line: 982, column: 38, scope: !4306)
!4314 = !DILocation(line: 973, column: 32, scope: !4270, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 984, column: 10, scope: !4306)
!4316 = !DILocation(line: 973, column: 44, scope: !4270, inlinedAt: !4315)
!4317 = !DILocation(line: 973, column: 58, scope: !4270, inlinedAt: !4315)
!4318 = !DILocation(line: 975, column: 3, scope: !4270, inlinedAt: !4315)
!4319 = !DILocation(line: 976, column: 13, scope: !4270, inlinedAt: !4315)
!4320 = !DILocation(line: 975, column: 26, scope: !4270, inlinedAt: !4315)
!4321 = !DILocation(line: 144, column: 43, scope: !3024, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 977, column: 3, scope: !4270, inlinedAt: !4315)
!4323 = !DILocation(line: 144, column: 51, scope: !3024, inlinedAt: !4322)
!4324 = !DILocation(line: 144, column: 58, scope: !3024, inlinedAt: !4322)
!4325 = !DILocation(line: 146, column: 17, scope: !3024, inlinedAt: !4322)
!4326 = !DILocation(line: 148, column: 62, scope: !3024, inlinedAt: !4322)
!4327 = !DILocation(line: 148, column: 57, scope: !3024, inlinedAt: !4322)
!4328 = !DILocation(line: 147, column: 17, scope: !3024, inlinedAt: !4322)
!4329 = !DILocation(line: 149, column: 18, scope: !3024, inlinedAt: !4322)
!4330 = !DILocation(line: 149, column: 15, scope: !3024, inlinedAt: !4322)
!4331 = !DILocation(line: 149, column: 7, scope: !3024, inlinedAt: !4322)
!4332 = !DILocation(line: 150, column: 12, scope: !3024, inlinedAt: !4322)
!4333 = !DILocation(line: 150, column: 15, scope: !3024, inlinedAt: !4322)
!4334 = !DILocation(line: 150, column: 25, scope: !3024, inlinedAt: !4322)
!4335 = !DILocation(line: 150, column: 7, scope: !3024, inlinedAt: !4322)
!4336 = !DILocation(line: 151, column: 18, scope: !3024, inlinedAt: !4322)
!4337 = !DILocation(line: 151, column: 23, scope: !3024, inlinedAt: !4322)
!4338 = !DILocation(line: 151, column: 6, scope: !3024, inlinedAt: !4322)
!4339 = !DILocation(line: 978, column: 10, scope: !4270, inlinedAt: !4315)
!4340 = !DILocation(line: 979, column: 1, scope: !4270, inlinedAt: !4315)
!4341 = !DILocation(line: 984, column: 3, scope: !4306)
!4342 = distinct !DISubprogram(name: "quotearg_colon", scope: !151, file: !151, line: 988, type: !4120, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4343)
!4343 = !{!4344}
!4344 = !DILocalVariable(name: "arg", arg: 1, scope: !4342, file: !151, line: 988, type: !43)
!4345 = !DILocation(line: 988, column: 29, scope: !4342)
!4346 = !DILocation(line: 982, column: 28, scope: !4306, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 990, column: 10, scope: !4342)
!4348 = !DILocation(line: 982, column: 38, scope: !4306, inlinedAt: !4347)
!4349 = !DILocation(line: 973, column: 32, scope: !4270, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 984, column: 10, scope: !4306, inlinedAt: !4347)
!4351 = !DILocation(line: 973, column: 44, scope: !4270, inlinedAt: !4350)
!4352 = !DILocation(line: 973, column: 58, scope: !4270, inlinedAt: !4350)
!4353 = !DILocation(line: 975, column: 3, scope: !4270, inlinedAt: !4350)
!4354 = !DILocation(line: 976, column: 13, scope: !4270, inlinedAt: !4350)
!4355 = !DILocation(line: 975, column: 26, scope: !4270, inlinedAt: !4350)
!4356 = !DILocation(line: 144, column: 43, scope: !3024, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 977, column: 3, scope: !4270, inlinedAt: !4350)
!4358 = !DILocation(line: 144, column: 51, scope: !3024, inlinedAt: !4357)
!4359 = !DILocation(line: 144, column: 58, scope: !3024, inlinedAt: !4357)
!4360 = !DILocation(line: 146, column: 17, scope: !3024, inlinedAt: !4357)
!4361 = !DILocation(line: 148, column: 57, scope: !3024, inlinedAt: !4357)
!4362 = !DILocation(line: 147, column: 17, scope: !3024, inlinedAt: !4357)
!4363 = !DILocation(line: 149, column: 7, scope: !3024, inlinedAt: !4357)
!4364 = !DILocation(line: 150, column: 12, scope: !3024, inlinedAt: !4357)
!4365 = !DILocation(line: 151, column: 6, scope: !3024, inlinedAt: !4357)
!4366 = !DILocation(line: 978, column: 10, scope: !4270, inlinedAt: !4350)
!4367 = !DILocation(line: 979, column: 1, scope: !4270, inlinedAt: !4350)
!4368 = !DILocation(line: 990, column: 3, scope: !4342)
!4369 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !151, file: !151, line: 994, type: !764, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4370)
!4370 = !{!4371, !4372}
!4371 = !DILocalVariable(name: "arg", arg: 1, scope: !4369, file: !151, line: 994, type: !43)
!4372 = !DILocalVariable(name: "argsize", arg: 2, scope: !4369, file: !151, line: 994, type: !99)
!4373 = !DILocation(line: 994, column: 33, scope: !4369)
!4374 = !DILocation(line: 994, column: 45, scope: !4369)
!4375 = !DILocation(line: 973, column: 32, scope: !4270, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 996, column: 10, scope: !4369)
!4377 = !DILocation(line: 973, column: 44, scope: !4270, inlinedAt: !4376)
!4378 = !DILocation(line: 973, column: 58, scope: !4270, inlinedAt: !4376)
!4379 = !DILocation(line: 975, column: 3, scope: !4270, inlinedAt: !4376)
!4380 = !DILocation(line: 976, column: 13, scope: !4270, inlinedAt: !4376)
!4381 = !DILocation(line: 975, column: 26, scope: !4270, inlinedAt: !4376)
!4382 = !DILocation(line: 144, column: 43, scope: !3024, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 977, column: 3, scope: !4270, inlinedAt: !4376)
!4384 = !DILocation(line: 144, column: 51, scope: !3024, inlinedAt: !4383)
!4385 = !DILocation(line: 144, column: 58, scope: !3024, inlinedAt: !4383)
!4386 = !DILocation(line: 146, column: 17, scope: !3024, inlinedAt: !4383)
!4387 = !DILocation(line: 148, column: 57, scope: !3024, inlinedAt: !4383)
!4388 = !DILocation(line: 147, column: 17, scope: !3024, inlinedAt: !4383)
!4389 = !DILocation(line: 149, column: 7, scope: !3024, inlinedAt: !4383)
!4390 = !DILocation(line: 150, column: 12, scope: !3024, inlinedAt: !4383)
!4391 = !DILocation(line: 151, column: 6, scope: !3024, inlinedAt: !4383)
!4392 = !DILocation(line: 978, column: 10, scope: !4270, inlinedAt: !4376)
!4393 = !DILocation(line: 979, column: 1, scope: !4270, inlinedAt: !4376)
!4394 = !DILocation(line: 996, column: 3, scope: !4369)
!4395 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !151, file: !151, line: 1000, type: !4143, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4396)
!4396 = !{!4397, !4398, !4399, !4400}
!4397 = !DILocalVariable(name: "n", arg: 1, scope: !4395, file: !151, line: 1000, type: !66)
!4398 = !DILocalVariable(name: "s", arg: 2, scope: !4395, file: !151, line: 1000, type: !12)
!4399 = !DILocalVariable(name: "arg", arg: 3, scope: !4395, file: !151, line: 1000, type: !43)
!4400 = !DILocalVariable(name: "options", scope: !4395, file: !151, line: 1002, type: !158)
!4401 = !DILocation(line: 187, column: 26, scope: !4151, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 1003, column: 13, scope: !4395)
!4403 = !DILocation(line: 1000, column: 29, scope: !4395)
!4404 = !DILocation(line: 1000, column: 51, scope: !4395)
!4405 = !DILocation(line: 1000, column: 66, scope: !4395)
!4406 = !DILocation(line: 1002, column: 3, scope: !4395)
!4407 = !DILocation(line: 185, column: 48, scope: !4151, inlinedAt: !4402)
!4408 = !DILocation(line: 187, column: 3, scope: !4151, inlinedAt: !4402)
!4409 = !DILocation(line: 188, column: 13, scope: !4168, inlinedAt: !4402)
!4410 = !DILocation(line: 188, column: 7, scope: !4151, inlinedAt: !4402)
!4411 = !DILocation(line: 189, column: 5, scope: !4168, inlinedAt: !4402)
!4412 = !{!4413}
!4413 = distinct !{!4413, !4414, !"quoting_options_from_style: argument 0"}
!4414 = distinct !{!4414, !"quoting_options_from_style"}
!4415 = !DILocation(line: 191, column: 10, scope: !4151, inlinedAt: !4402)
!4416 = !DILocation(line: 192, column: 1, scope: !4151, inlinedAt: !4402)
!4417 = !DILocation(line: 1003, column: 13, scope: !4395)
!4418 = !DILocation(line: 1002, column: 26, scope: !4395)
!4419 = !DILocation(line: 144, column: 43, scope: !3024, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 1004, column: 3, scope: !4395)
!4421 = !DILocation(line: 144, column: 51, scope: !3024, inlinedAt: !4420)
!4422 = !DILocation(line: 144, column: 58, scope: !3024, inlinedAt: !4420)
!4423 = !DILocation(line: 146, column: 17, scope: !3024, inlinedAt: !4420)
!4424 = !DILocation(line: 148, column: 57, scope: !3024, inlinedAt: !4420)
!4425 = !DILocation(line: 147, column: 17, scope: !3024, inlinedAt: !4420)
!4426 = !DILocation(line: 149, column: 7, scope: !3024, inlinedAt: !4420)
!4427 = !DILocation(line: 150, column: 12, scope: !3024, inlinedAt: !4420)
!4428 = !DILocation(line: 151, column: 6, scope: !3024, inlinedAt: !4420)
!4429 = !DILocation(line: 1005, column: 10, scope: !4395)
!4430 = !DILocation(line: 1006, column: 1, scope: !4395)
!4431 = !DILocation(line: 1005, column: 3, scope: !4395)
!4432 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !151, file: !151, line: 1009, type: !4433, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!27, !66, !43, !43, !43}
!4435 = !{!4436, !4437, !4438, !4439}
!4436 = !DILocalVariable(name: "n", arg: 1, scope: !4432, file: !151, line: 1009, type: !66)
!4437 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4432, file: !151, line: 1009, type: !43)
!4438 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4432, file: !151, line: 1010, type: !43)
!4439 = !DILocalVariable(name: "arg", arg: 4, scope: !4432, file: !151, line: 1010, type: !43)
!4440 = !DILocation(line: 1009, column: 24, scope: !4432)
!4441 = !DILocation(line: 1009, column: 39, scope: !4432)
!4442 = !DILocation(line: 1010, column: 32, scope: !4432)
!4443 = !DILocation(line: 1010, column: 57, scope: !4432)
!4444 = !DILocalVariable(name: "n", arg: 1, scope: !4445, file: !151, line: 1017, type: !66)
!4445 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !151, file: !151, line: 1017, type: !4446, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4448)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!27, !66, !43, !43, !43, !99}
!4448 = !{!4444, !4449, !4450, !4451, !4452, !4453}
!4449 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4445, file: !151, line: 1017, type: !43)
!4450 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4445, file: !151, line: 1018, type: !43)
!4451 = !DILocalVariable(name: "arg", arg: 4, scope: !4445, file: !151, line: 1019, type: !43)
!4452 = !DILocalVariable(name: "argsize", arg: 5, scope: !4445, file: !151, line: 1019, type: !99)
!4453 = !DILocalVariable(name: "o", scope: !4445, file: !151, line: 1021, type: !158)
!4454 = !DILocation(line: 1017, column: 28, scope: !4445, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 1012, column: 10, scope: !4432)
!4456 = !DILocation(line: 1017, column: 43, scope: !4445, inlinedAt: !4455)
!4457 = !DILocation(line: 1018, column: 36, scope: !4445, inlinedAt: !4455)
!4458 = !DILocation(line: 1019, column: 36, scope: !4445, inlinedAt: !4455)
!4459 = !DILocation(line: 1019, column: 48, scope: !4445, inlinedAt: !4455)
!4460 = !DILocation(line: 1021, column: 3, scope: !4445, inlinedAt: !4455)
!4461 = !DILocation(line: 1021, column: 30, scope: !4445, inlinedAt: !4455)
!4462 = !DILocation(line: 1021, column: 26, scope: !4445, inlinedAt: !4455)
!4463 = !DILocation(line: 171, column: 45, scope: !3073, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 1022, column: 3, scope: !4445, inlinedAt: !4455)
!4465 = !DILocation(line: 172, column: 33, scope: !3073, inlinedAt: !4464)
!4466 = !DILocation(line: 172, column: 57, scope: !3073, inlinedAt: !4464)
!4467 = !DILocation(line: 176, column: 6, scope: !3073, inlinedAt: !4464)
!4468 = !DILocation(line: 176, column: 12, scope: !3073, inlinedAt: !4464)
!4469 = !DILocation(line: 177, column: 8, scope: !3089, inlinedAt: !4464)
!4470 = !DILocation(line: 177, column: 23, scope: !3089, inlinedAt: !4464)
!4471 = !DILocation(line: 177, column: 19, scope: !3089, inlinedAt: !4464)
!4472 = !DILocation(line: 178, column: 5, scope: !3089, inlinedAt: !4464)
!4473 = !DILocation(line: 179, column: 6, scope: !3073, inlinedAt: !4464)
!4474 = !DILocation(line: 179, column: 17, scope: !3073, inlinedAt: !4464)
!4475 = !DILocation(line: 180, column: 6, scope: !3073, inlinedAt: !4464)
!4476 = !DILocation(line: 180, column: 18, scope: !3073, inlinedAt: !4464)
!4477 = !DILocation(line: 1023, column: 10, scope: !4445, inlinedAt: !4455)
!4478 = !DILocation(line: 1024, column: 1, scope: !4445, inlinedAt: !4455)
!4479 = !DILocation(line: 1012, column: 3, scope: !4432)
!4480 = !DILocation(line: 1017, column: 28, scope: !4445)
!4481 = !DILocation(line: 1017, column: 43, scope: !4445)
!4482 = !DILocation(line: 1018, column: 36, scope: !4445)
!4483 = !DILocation(line: 1019, column: 36, scope: !4445)
!4484 = !DILocation(line: 1019, column: 48, scope: !4445)
!4485 = !DILocation(line: 1021, column: 3, scope: !4445)
!4486 = !DILocation(line: 1021, column: 30, scope: !4445)
!4487 = !DILocation(line: 1021, column: 26, scope: !4445)
!4488 = !DILocation(line: 171, column: 45, scope: !3073, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 1022, column: 3, scope: !4445)
!4490 = !DILocation(line: 172, column: 33, scope: !3073, inlinedAt: !4489)
!4491 = !DILocation(line: 172, column: 57, scope: !3073, inlinedAt: !4489)
!4492 = !DILocation(line: 176, column: 6, scope: !3073, inlinedAt: !4489)
!4493 = !DILocation(line: 176, column: 12, scope: !3073, inlinedAt: !4489)
!4494 = !DILocation(line: 177, column: 8, scope: !3089, inlinedAt: !4489)
!4495 = !DILocation(line: 177, column: 23, scope: !3089, inlinedAt: !4489)
!4496 = !DILocation(line: 177, column: 19, scope: !3089, inlinedAt: !4489)
!4497 = !DILocation(line: 178, column: 5, scope: !3089, inlinedAt: !4489)
!4498 = !DILocation(line: 179, column: 6, scope: !3073, inlinedAt: !4489)
!4499 = !DILocation(line: 179, column: 17, scope: !3073, inlinedAt: !4489)
!4500 = !DILocation(line: 180, column: 6, scope: !3073, inlinedAt: !4489)
!4501 = !DILocation(line: 180, column: 18, scope: !3073, inlinedAt: !4489)
!4502 = !DILocation(line: 1023, column: 10, scope: !4445)
!4503 = !DILocation(line: 1024, column: 1, scope: !4445)
!4504 = !DILocation(line: 1023, column: 3, scope: !4445)
!4505 = distinct !DISubprogram(name: "quotearg_custom", scope: !151, file: !151, line: 1027, type: !4506, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4508)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!27, !43, !43, !43}
!4508 = !{!4509, !4510, !4511}
!4509 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4505, file: !151, line: 1027, type: !43)
!4510 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4505, file: !151, line: 1027, type: !43)
!4511 = !DILocalVariable(name: "arg", arg: 3, scope: !4505, file: !151, line: 1028, type: !43)
!4512 = !DILocation(line: 1027, column: 30, scope: !4505)
!4513 = !DILocation(line: 1027, column: 54, scope: !4505)
!4514 = !DILocation(line: 1028, column: 30, scope: !4505)
!4515 = !DILocation(line: 1009, column: 24, scope: !4432, inlinedAt: !4516)
!4516 = distinct !DILocation(line: 1030, column: 10, scope: !4505)
!4517 = !DILocation(line: 1009, column: 39, scope: !4432, inlinedAt: !4516)
!4518 = !DILocation(line: 1010, column: 32, scope: !4432, inlinedAt: !4516)
!4519 = !DILocation(line: 1010, column: 57, scope: !4432, inlinedAt: !4516)
!4520 = !DILocation(line: 1017, column: 28, scope: !4445, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 1012, column: 10, scope: !4432, inlinedAt: !4516)
!4522 = !DILocation(line: 1017, column: 43, scope: !4445, inlinedAt: !4521)
!4523 = !DILocation(line: 1018, column: 36, scope: !4445, inlinedAt: !4521)
!4524 = !DILocation(line: 1019, column: 36, scope: !4445, inlinedAt: !4521)
!4525 = !DILocation(line: 1019, column: 48, scope: !4445, inlinedAt: !4521)
!4526 = !DILocation(line: 1021, column: 3, scope: !4445, inlinedAt: !4521)
!4527 = !DILocation(line: 1021, column: 30, scope: !4445, inlinedAt: !4521)
!4528 = !DILocation(line: 1021, column: 26, scope: !4445, inlinedAt: !4521)
!4529 = !DILocation(line: 171, column: 45, scope: !3073, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 1022, column: 3, scope: !4445, inlinedAt: !4521)
!4531 = !DILocation(line: 172, column: 33, scope: !3073, inlinedAt: !4530)
!4532 = !DILocation(line: 172, column: 57, scope: !3073, inlinedAt: !4530)
!4533 = !DILocation(line: 176, column: 6, scope: !3073, inlinedAt: !4530)
!4534 = !DILocation(line: 176, column: 12, scope: !3073, inlinedAt: !4530)
!4535 = !DILocation(line: 177, column: 8, scope: !3089, inlinedAt: !4530)
!4536 = !DILocation(line: 177, column: 23, scope: !3089, inlinedAt: !4530)
!4537 = !DILocation(line: 177, column: 19, scope: !3089, inlinedAt: !4530)
!4538 = !DILocation(line: 178, column: 5, scope: !3089, inlinedAt: !4530)
!4539 = !DILocation(line: 179, column: 6, scope: !3073, inlinedAt: !4530)
!4540 = !DILocation(line: 179, column: 17, scope: !3073, inlinedAt: !4530)
!4541 = !DILocation(line: 180, column: 6, scope: !3073, inlinedAt: !4530)
!4542 = !DILocation(line: 180, column: 18, scope: !3073, inlinedAt: !4530)
!4543 = !DILocation(line: 1023, column: 10, scope: !4445, inlinedAt: !4521)
!4544 = !DILocation(line: 1024, column: 1, scope: !4445, inlinedAt: !4521)
!4545 = !DILocation(line: 1030, column: 3, scope: !4505)
!4546 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !151, file: !151, line: 1034, type: !4547, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4549)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!27, !43, !43, !43, !99}
!4549 = !{!4550, !4551, !4552, !4553}
!4550 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4546, file: !151, line: 1034, type: !43)
!4551 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4546, file: !151, line: 1034, type: !43)
!4552 = !DILocalVariable(name: "arg", arg: 3, scope: !4546, file: !151, line: 1035, type: !43)
!4553 = !DILocalVariable(name: "argsize", arg: 4, scope: !4546, file: !151, line: 1035, type: !99)
!4554 = !DILocation(line: 1034, column: 34, scope: !4546)
!4555 = !DILocation(line: 1034, column: 58, scope: !4546)
!4556 = !DILocation(line: 1035, column: 34, scope: !4546)
!4557 = !DILocation(line: 1035, column: 46, scope: !4546)
!4558 = !DILocation(line: 1017, column: 28, scope: !4445, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 1037, column: 10, scope: !4546)
!4560 = !DILocation(line: 1017, column: 43, scope: !4445, inlinedAt: !4559)
!4561 = !DILocation(line: 1018, column: 36, scope: !4445, inlinedAt: !4559)
!4562 = !DILocation(line: 1019, column: 36, scope: !4445, inlinedAt: !4559)
!4563 = !DILocation(line: 1019, column: 48, scope: !4445, inlinedAt: !4559)
!4564 = !DILocation(line: 1021, column: 3, scope: !4445, inlinedAt: !4559)
!4565 = !DILocation(line: 1021, column: 30, scope: !4445, inlinedAt: !4559)
!4566 = !DILocation(line: 1021, column: 26, scope: !4445, inlinedAt: !4559)
!4567 = !DILocation(line: 171, column: 45, scope: !3073, inlinedAt: !4568)
!4568 = distinct !DILocation(line: 1022, column: 3, scope: !4445, inlinedAt: !4559)
!4569 = !DILocation(line: 172, column: 33, scope: !3073, inlinedAt: !4568)
!4570 = !DILocation(line: 172, column: 57, scope: !3073, inlinedAt: !4568)
!4571 = !DILocation(line: 176, column: 6, scope: !3073, inlinedAt: !4568)
!4572 = !DILocation(line: 176, column: 12, scope: !3073, inlinedAt: !4568)
!4573 = !DILocation(line: 177, column: 8, scope: !3089, inlinedAt: !4568)
!4574 = !DILocation(line: 177, column: 23, scope: !3089, inlinedAt: !4568)
!4575 = !DILocation(line: 177, column: 19, scope: !3089, inlinedAt: !4568)
!4576 = !DILocation(line: 178, column: 5, scope: !3089, inlinedAt: !4568)
!4577 = !DILocation(line: 179, column: 6, scope: !3073, inlinedAt: !4568)
!4578 = !DILocation(line: 179, column: 17, scope: !3073, inlinedAt: !4568)
!4579 = !DILocation(line: 180, column: 6, scope: !3073, inlinedAt: !4568)
!4580 = !DILocation(line: 180, column: 18, scope: !3073, inlinedAt: !4568)
!4581 = !DILocation(line: 1023, column: 10, scope: !4445, inlinedAt: !4559)
!4582 = !DILocation(line: 1024, column: 1, scope: !4445, inlinedAt: !4559)
!4583 = !DILocation(line: 1037, column: 3, scope: !4546)
!4584 = distinct !DISubprogram(name: "quote_n_mem", scope: !151, file: !151, line: 1052, type: !4585, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4587)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!43, !66, !43, !99}
!4587 = !{!4588, !4589, !4590}
!4588 = !DILocalVariable(name: "n", arg: 1, scope: !4584, file: !151, line: 1052, type: !66)
!4589 = !DILocalVariable(name: "arg", arg: 2, scope: !4584, file: !151, line: 1052, type: !43)
!4590 = !DILocalVariable(name: "argsize", arg: 3, scope: !4584, file: !151, line: 1052, type: !99)
!4591 = !DILocation(line: 1052, column: 18, scope: !4584)
!4592 = !DILocation(line: 1052, column: 33, scope: !4584)
!4593 = !DILocation(line: 1052, column: 45, scope: !4584)
!4594 = !DILocation(line: 1054, column: 10, scope: !4584)
!4595 = !DILocation(line: 1054, column: 3, scope: !4584)
!4596 = distinct !DISubprogram(name: "quote_mem", scope: !151, file: !151, line: 1058, type: !4597, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4599)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!43, !43, !99}
!4599 = !{!4600, !4601}
!4600 = !DILocalVariable(name: "arg", arg: 1, scope: !4596, file: !151, line: 1058, type: !43)
!4601 = !DILocalVariable(name: "argsize", arg: 2, scope: !4596, file: !151, line: 1058, type: !99)
!4602 = !DILocation(line: 1058, column: 24, scope: !4596)
!4603 = !DILocation(line: 1058, column: 36, scope: !4596)
!4604 = !DILocation(line: 1052, column: 18, scope: !4584, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 1060, column: 10, scope: !4596)
!4606 = !DILocation(line: 1052, column: 33, scope: !4584, inlinedAt: !4605)
!4607 = !DILocation(line: 1052, column: 45, scope: !4584, inlinedAt: !4605)
!4608 = !DILocation(line: 1054, column: 10, scope: !4584, inlinedAt: !4605)
!4609 = !DILocation(line: 1060, column: 3, scope: !4596)
!4610 = distinct !DISubprogram(name: "quote_n", scope: !151, file: !151, line: 1064, type: !4611, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4613)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!43, !66, !43}
!4613 = !{!4614, !4615}
!4614 = !DILocalVariable(name: "n", arg: 1, scope: !4610, file: !151, line: 1064, type: !66)
!4615 = !DILocalVariable(name: "arg", arg: 2, scope: !4610, file: !151, line: 1064, type: !43)
!4616 = !DILocation(line: 1064, column: 14, scope: !4610)
!4617 = !DILocation(line: 1064, column: 29, scope: !4610)
!4618 = !DILocation(line: 1052, column: 18, scope: !4584, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 1066, column: 10, scope: !4610)
!4620 = !DILocation(line: 1052, column: 33, scope: !4584, inlinedAt: !4619)
!4621 = !DILocation(line: 1052, column: 45, scope: !4584, inlinedAt: !4619)
!4622 = !DILocation(line: 1054, column: 10, scope: !4584, inlinedAt: !4619)
!4623 = !DILocation(line: 1066, column: 3, scope: !4610)
!4624 = distinct !DISubprogram(name: "quote", scope: !151, file: !151, line: 1070, type: !4625, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !4627)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!43, !43}
!4627 = !{!4628}
!4628 = !DILocalVariable(name: "arg", arg: 1, scope: !4624, file: !151, line: 1070, type: !43)
!4629 = !DILocation(line: 1070, column: 20, scope: !4624)
!4630 = !DILocation(line: 1064, column: 14, scope: !4610, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 1072, column: 10, scope: !4624)
!4632 = !DILocation(line: 1064, column: 29, scope: !4610, inlinedAt: !4631)
!4633 = !DILocation(line: 1052, column: 18, scope: !4584, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 1066, column: 10, scope: !4610, inlinedAt: !4631)
!4635 = !DILocation(line: 1052, column: 33, scope: !4584, inlinedAt: !4634)
!4636 = !DILocation(line: 1052, column: 45, scope: !4584, inlinedAt: !4634)
!4637 = !DILocation(line: 1054, column: 10, scope: !4584, inlinedAt: !4634)
!4638 = !DILocation(line: 1072, column: 3, scope: !4624)
!4639 = distinct !DISubprogram(name: "same_name", scope: !4640, file: !4640, line: 51, type: !4641, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !4643)
!4640 = !DIFile(filename: "lib/same.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!34, !43, !43}
!4643 = !{!4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4677, !4678, !4679}
!4644 = !DILocalVariable(name: "source", arg: 1, scope: !4639, file: !4640, line: 51, type: !43)
!4645 = !DILocalVariable(name: "dest", arg: 2, scope: !4639, file: !4640, line: 51, type: !43)
!4646 = !DILocalVariable(name: "source_basename", scope: !4639, file: !4640, line: 54, type: !43)
!4647 = !DILocalVariable(name: "dest_basename", scope: !4639, file: !4640, line: 55, type: !43)
!4648 = !DILocalVariable(name: "source_baselen", scope: !4639, file: !4640, line: 56, type: !99)
!4649 = !DILocalVariable(name: "dest_baselen", scope: !4639, file: !4640, line: 57, type: !99)
!4650 = !DILocalVariable(name: "identical_basenames", scope: !4639, file: !4640, line: 58, type: !34)
!4651 = !DILocalVariable(name: "compare_dirs", scope: !4639, file: !4640, line: 61, type: !34)
!4652 = !DILocalVariable(name: "same", scope: !4639, file: !4640, line: 62, type: !34)
!4653 = !DILocalVariable(name: "source_dir_stats", scope: !4654, file: !4640, line: 77, type: !4656)
!4654 = distinct !DILexicalBlock(scope: !4655, file: !4640, line: 76, column: 5)
!4655 = distinct !DILexicalBlock(scope: !4639, file: !4640, line: 75, column: 7)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !871, line: 46, size: 1152, elements: !4657)
!4657 = !{!4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4674, !4675, !4676}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4656, file: !871, line: 48, baseType: !874, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4656, file: !871, line: 53, baseType: !876, size: 64, offset: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4656, file: !871, line: 61, baseType: !878, size: 64, offset: 128)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4656, file: !871, line: 62, baseType: !880, size: 32, offset: 192)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4656, file: !871, line: 64, baseType: !882, size: 32, offset: 224)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4656, file: !871, line: 65, baseType: !884, size: 32, offset: 256)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !4656, file: !871, line: 67, baseType: !66, size: 32, offset: 288)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4656, file: !871, line: 69, baseType: !874, size: 64, offset: 320)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4656, file: !871, line: 74, baseType: !888, size: 64, offset: 384)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4656, file: !871, line: 78, baseType: !890, size: 64, offset: 448)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4656, file: !871, line: 80, baseType: !892, size: 64, offset: 512)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4656, file: !871, line: 91, baseType: !4670, size: 128, offset: 576)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !895, line: 8, size: 128, elements: !4671)
!4671 = !{!4672, !4673}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4670, file: !895, line: 10, baseType: !898, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4670, file: !895, line: 11, baseType: !900, size: 64, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4656, file: !871, line: 92, baseType: !4670, size: 128, offset: 704)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4656, file: !871, line: 93, baseType: !4670, size: 128, offset: 832)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4656, file: !871, line: 106, baseType: !904, size: 192, offset: 960)
!4677 = !DILocalVariable(name: "dest_dir_stats", scope: !4654, file: !4640, line: 78, type: !4656)
!4678 = !DILocalVariable(name: "source_dirname", scope: !4654, file: !4640, line: 79, type: !27)
!4679 = !DILocalVariable(name: "dest_dirname", scope: !4654, file: !4640, line: 79, type: !27)
!4680 = !DILocation(line: 51, column: 24, scope: !4639)
!4681 = !DILocation(line: 51, column: 44, scope: !4639)
!4682 = !DILocation(line: 54, column: 33, scope: !4639)
!4683 = !DILocation(line: 54, column: 15, scope: !4639)
!4684 = !DILocation(line: 55, column: 31, scope: !4639)
!4685 = !DILocation(line: 55, column: 15, scope: !4639)
!4686 = !DILocation(line: 56, column: 27, scope: !4639)
!4687 = !DILocation(line: 56, column: 10, scope: !4639)
!4688 = !DILocation(line: 57, column: 25, scope: !4639)
!4689 = !DILocation(line: 57, column: 10, scope: !4639)
!4690 = !DILocation(line: 59, column: 21, scope: !4639)
!4691 = !DILocation(line: 60, column: 6, scope: !4639)
!4692 = !DILocation(line: 60, column: 9, scope: !4639)
!4693 = !DILocation(line: 60, column: 63, scope: !4639)
!4694 = !DILocation(line: 62, column: 8, scope: !4639)
!4695 = !DILocation(line: 75, column: 7, scope: !4639)
!4696 = !DILocation(line: 77, column: 7, scope: !4654)
!4697 = !DILocation(line: 78, column: 7, scope: !4654)
!4698 = !DILocation(line: 82, column: 24, scope: !4654)
!4699 = !DILocation(line: 79, column: 13, scope: !4654)
!4700 = !DILocation(line: 83, column: 22, scope: !4654)
!4701 = !DILocation(line: 79, column: 30, scope: !4654)
!4702 = !DILocation(line: 77, column: 19, scope: !4654)
!4703 = !DILocalVariable(name: "__path", arg: 1, scope: !4704, file: !1045, line: 449, type: !43)
!4704 = distinct !DISubprogram(name: "stat", scope: !1045, file: !1045, line: 449, type: !4705, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !4708)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!66, !43, !4707}
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4708 = !{!4703, !4709}
!4709 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !4704, file: !1045, line: 449, type: !4707)
!4710 = !DILocation(line: 449, column: 1, scope: !4704, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 85, column: 11, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4654, file: !4640, line: 85, column: 11)
!4713 = !DILocation(line: 451, column: 10, scope: !4704, inlinedAt: !4711)
!4714 = !DILocation(line: 85, column: 11, scope: !4712)
!4715 = !DILocation(line: 85, column: 11, scope: !4654)
!4716 = !DILocation(line: 88, column: 21, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4712, file: !4640, line: 86, column: 9)
!4718 = !DILocation(line: 88, column: 11, scope: !4717)
!4719 = !DILocation(line: 89, column: 9, scope: !4717)
!4720 = !DILocation(line: 78, column: 19, scope: !4654)
!4721 = !DILocation(line: 449, column: 1, scope: !4704, inlinedAt: !4722)
!4722 = distinct !DILocation(line: 91, column: 11, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4654, file: !4640, line: 91, column: 11)
!4724 = !DILocation(line: 451, column: 10, scope: !4704, inlinedAt: !4722)
!4725 = !DILocation(line: 91, column: 11, scope: !4723)
!4726 = !DILocation(line: 91, column: 11, scope: !4654)
!4727 = !DILocation(line: 94, column: 21, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4723, file: !4640, line: 92, column: 9)
!4729 = !DILocation(line: 94, column: 11, scope: !4728)
!4730 = !DILocation(line: 95, column: 9, scope: !4728)
!4731 = !DILocation(line: 97, column: 14, scope: !4654)
!4732 = !DILocation(line: 118, column: 7, scope: !4654)
!4733 = !DILocation(line: 119, column: 7, scope: !4654)
!4734 = !DILocation(line: 120, column: 5, scope: !4655)
!4735 = !DILocation(line: 120, column: 5, scope: !4654)
!4736 = !DILocation(line: 122, column: 3, scope: !4639)
!4737 = distinct !DISubprogram(name: "version_etc_arn", scope: !562, file: !562, line: 62, type: !4738, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !4781)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{null, !4740, !43, !43, !43, !4780, !99}
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1513, line: 7, baseType: !4742)
!4742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1515, line: 241, size: 1728, elements: !4743)
!4743 = !{!4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4742, file: !1515, line: 242, baseType: !66, size: 32)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4742, file: !1515, line: 247, baseType: !27, size: 64, offset: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4742, file: !1515, line: 248, baseType: !27, size: 64, offset: 128)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4742, file: !1515, line: 249, baseType: !27, size: 64, offset: 192)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4742, file: !1515, line: 250, baseType: !27, size: 64, offset: 256)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4742, file: !1515, line: 251, baseType: !27, size: 64, offset: 320)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4742, file: !1515, line: 252, baseType: !27, size: 64, offset: 384)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4742, file: !1515, line: 253, baseType: !27, size: 64, offset: 448)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4742, file: !1515, line: 254, baseType: !27, size: 64, offset: 512)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4742, file: !1515, line: 256, baseType: !27, size: 64, offset: 576)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4742, file: !1515, line: 257, baseType: !27, size: 64, offset: 640)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4742, file: !1515, line: 258, baseType: !27, size: 64, offset: 704)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4742, file: !1515, line: 260, baseType: !4757, size: 64, offset: 768)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1515, line: 156, size: 192, elements: !4759)
!4759 = !{!4760, !4761, !4763}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4758, file: !1515, line: 157, baseType: !4757, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4758, file: !1515, line: 158, baseType: !4762, size: 64, offset: 64)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4758, file: !1515, line: 162, baseType: !66, size: 32, offset: 128)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4742, file: !1515, line: 262, baseType: !4762, size: 64, offset: 832)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4742, file: !1515, line: 264, baseType: !66, size: 32, offset: 896)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4742, file: !1515, line: 268, baseType: !66, size: 32, offset: 928)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4742, file: !1515, line: 270, baseType: !888, size: 64, offset: 960)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4742, file: !1515, line: 274, baseType: !147, size: 16, offset: 1024)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4742, file: !1515, line: 275, baseType: !1543, size: 8, offset: 1040)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4742, file: !1515, line: 276, baseType: !1545, size: 8, offset: 1048)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4742, file: !1515, line: 280, baseType: !1549, size: 64, offset: 1088)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4742, file: !1515, line: 289, baseType: !1552, size: 64, offset: 1152)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4742, file: !1515, line: 297, baseType: !29, size: 64, offset: 1216)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4742, file: !1515, line: 298, baseType: !29, size: 64, offset: 1280)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4742, file: !1515, line: 299, baseType: !29, size: 64, offset: 1344)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4742, file: !1515, line: 300, baseType: !29, size: 64, offset: 1408)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4742, file: !1515, line: 302, baseType: !99, size: 64, offset: 1472)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4742, file: !1515, line: 303, baseType: !66, size: 32, offset: 1536)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4742, file: !1515, line: 305, baseType: !1560, size: 160, offset: 1568)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!4781 = !{!4782, !4783, !4784, !4785, !4786, !4787}
!4782 = !DILocalVariable(name: "stream", arg: 1, scope: !4737, file: !562, line: 62, type: !4740)
!4783 = !DILocalVariable(name: "command_name", arg: 2, scope: !4737, file: !562, line: 63, type: !43)
!4784 = !DILocalVariable(name: "package", arg: 3, scope: !4737, file: !562, line: 63, type: !43)
!4785 = !DILocalVariable(name: "version", arg: 4, scope: !4737, file: !562, line: 64, type: !43)
!4786 = !DILocalVariable(name: "authors", arg: 5, scope: !4737, file: !562, line: 65, type: !4780)
!4787 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4737, file: !562, line: 65, type: !99)
!4788 = !DILocation(line: 62, column: 24, scope: !4737)
!4789 = !DILocation(line: 63, column: 30, scope: !4737)
!4790 = !DILocation(line: 63, column: 56, scope: !4737)
!4791 = !DILocation(line: 64, column: 30, scope: !4737)
!4792 = !DILocation(line: 65, column: 39, scope: !4737)
!4793 = !DILocation(line: 65, column: 55, scope: !4737)
!4794 = !DILocation(line: 67, column: 7, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4737, file: !562, line: 67, column: 7)
!4796 = !DILocation(line: 67, column: 7, scope: !4737)
!4797 = !DILocation(line: 68, column: 5, scope: !4795)
!4798 = !DILocation(line: 70, column: 5, scope: !4795)
!4799 = !DILocation(line: 84, column: 3, scope: !4737)
!4800 = !DILocation(line: 86, column: 3, scope: !4737)
!4801 = !DILocation(line: 95, column: 3, scope: !4737)
!4802 = !DILocation(line: 99, column: 7, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4737, file: !562, line: 96, column: 5)
!4804 = !DILocation(line: 102, column: 7, scope: !4803)
!4805 = !DILocation(line: 103, column: 7, scope: !4803)
!4806 = !DILocation(line: 106, column: 7, scope: !4803)
!4807 = !DILocation(line: 107, column: 7, scope: !4803)
!4808 = !DILocation(line: 110, column: 7, scope: !4803)
!4809 = !DILocation(line: 112, column: 7, scope: !4803)
!4810 = !DILocation(line: 117, column: 7, scope: !4803)
!4811 = !DILocation(line: 119, column: 7, scope: !4803)
!4812 = !DILocation(line: 124, column: 7, scope: !4803)
!4813 = !DILocation(line: 126, column: 7, scope: !4803)
!4814 = !DILocation(line: 131, column: 7, scope: !4803)
!4815 = !DILocation(line: 134, column: 7, scope: !4803)
!4816 = !DILocation(line: 139, column: 7, scope: !4803)
!4817 = !DILocation(line: 142, column: 7, scope: !4803)
!4818 = !DILocation(line: 147, column: 7, scope: !4803)
!4819 = !DILocation(line: 151, column: 7, scope: !4803)
!4820 = !DILocation(line: 156, column: 7, scope: !4803)
!4821 = !DILocation(line: 160, column: 7, scope: !4803)
!4822 = !DILocation(line: 167, column: 7, scope: !4803)
!4823 = !DILocation(line: 171, column: 7, scope: !4803)
!4824 = !DILocation(line: 173, column: 1, scope: !4737)
!4825 = distinct !DISubprogram(name: "version_etc_ar", scope: !562, file: !562, line: 180, type: !4826, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !4828)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{null, !4740, !43, !43, !43, !4780}
!4828 = !{!4829, !4830, !4831, !4832, !4833, !4834}
!4829 = !DILocalVariable(name: "stream", arg: 1, scope: !4825, file: !562, line: 180, type: !4740)
!4830 = !DILocalVariable(name: "command_name", arg: 2, scope: !4825, file: !562, line: 181, type: !43)
!4831 = !DILocalVariable(name: "package", arg: 3, scope: !4825, file: !562, line: 181, type: !43)
!4832 = !DILocalVariable(name: "version", arg: 4, scope: !4825, file: !562, line: 182, type: !43)
!4833 = !DILocalVariable(name: "authors", arg: 5, scope: !4825, file: !562, line: 182, type: !4780)
!4834 = !DILocalVariable(name: "n_authors", scope: !4825, file: !562, line: 184, type: !99)
!4835 = !DILocation(line: 180, column: 23, scope: !4825)
!4836 = !DILocation(line: 181, column: 29, scope: !4825)
!4837 = !DILocation(line: 181, column: 55, scope: !4825)
!4838 = !DILocation(line: 182, column: 29, scope: !4825)
!4839 = !DILocation(line: 182, column: 59, scope: !4825)
!4840 = !DILocation(line: 184, column: 10, scope: !4825)
!4841 = !DILocation(line: 186, column: 8, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4825, file: !562, line: 186, column: 3)
!4843 = !DILocation(line: 186, column: 23, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4842, file: !562, line: 186, column: 3)
!4845 = !DILocation(line: 186, column: 3, scope: !4842)
!4846 = !DILocation(line: 186, column: 52, scope: !4844)
!4847 = distinct !{!4847, !4845, !4848}
!4848 = !DILocation(line: 187, column: 5, scope: !4842)
!4849 = !DILocation(line: 188, column: 3, scope: !4825)
!4850 = !DILocation(line: 189, column: 1, scope: !4825)
!4851 = distinct !DISubprogram(name: "version_etc_va", scope: !562, file: !562, line: 196, type: !4852, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !4861)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{null, !4740, !43, !43, !43, !4854}
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !559, line: 189, size: 192, elements: !4856)
!4856 = !{!4857, !4858, !4859, !4860}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4855, file: !559, line: 189, baseType: !164, size: 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4855, file: !559, line: 189, baseType: !164, size: 32, offset: 32)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4855, file: !559, line: 189, baseType: !29, size: 64, offset: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4855, file: !559, line: 189, baseType: !29, size: 64, offset: 128)
!4861 = !{!4862, !4863, !4864, !4865, !4866, !4867, !4868}
!4862 = !DILocalVariable(name: "stream", arg: 1, scope: !4851, file: !562, line: 196, type: !4740)
!4863 = !DILocalVariable(name: "command_name", arg: 2, scope: !4851, file: !562, line: 197, type: !43)
!4864 = !DILocalVariable(name: "package", arg: 3, scope: !4851, file: !562, line: 197, type: !43)
!4865 = !DILocalVariable(name: "version", arg: 4, scope: !4851, file: !562, line: 198, type: !43)
!4866 = !DILocalVariable(name: "authors", arg: 5, scope: !4851, file: !562, line: 198, type: !4854)
!4867 = !DILocalVariable(name: "n_authors", scope: !4851, file: !562, line: 200, type: !99)
!4868 = !DILocalVariable(name: "authtab", scope: !4851, file: !562, line: 201, type: !4869)
!4869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 640, elements: !154)
!4870 = !DILocation(line: 196, column: 23, scope: !4851)
!4871 = !DILocation(line: 197, column: 29, scope: !4851)
!4872 = !DILocation(line: 197, column: 55, scope: !4851)
!4873 = !DILocation(line: 198, column: 29, scope: !4851)
!4874 = !DILocation(line: 198, column: 46, scope: !4851)
!4875 = !DILocation(line: 201, column: 3, scope: !4851)
!4876 = !DILocation(line: 201, column: 15, scope: !4851)
!4877 = !DILocation(line: 200, column: 10, scope: !4851)
!4878 = !DILocation(line: 205, column: 35, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4880, file: !562, line: 203, column: 3)
!4880 = distinct !DILexicalBlock(scope: !4851, file: !562, line: 203, column: 3)
!4881 = !DILocation(line: 205, column: 14, scope: !4879)
!4882 = !DILocation(line: 205, column: 33, scope: !4879)
!4883 = !DILocation(line: 205, column: 67, scope: !4879)
!4884 = !DILocation(line: 203, column: 3, scope: !4880)
!4885 = !DILocation(line: 208, column: 3, scope: !4851)
!4886 = !DILocation(line: 210, column: 1, scope: !4851)
!4887 = distinct !DISubprogram(name: "version_etc", scope: !562, file: !562, line: 227, type: !4888, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !4890)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{null, !4740, !43, !43, !43, null}
!4890 = !{!4891, !4892, !4893, !4894, !4895}
!4891 = !DILocalVariable(name: "stream", arg: 1, scope: !4887, file: !562, line: 227, type: !4740)
!4892 = !DILocalVariable(name: "command_name", arg: 2, scope: !4887, file: !562, line: 228, type: !43)
!4893 = !DILocalVariable(name: "package", arg: 3, scope: !4887, file: !562, line: 228, type: !43)
!4894 = !DILocalVariable(name: "version", arg: 4, scope: !4887, file: !562, line: 229, type: !43)
!4895 = !DILocalVariable(name: "authors", scope: !4887, file: !562, line: 231, type: !4896)
!4896 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4897, line: 46, baseType: !4898)
!4897 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4899, line: 48, baseType: !4900)
!4899 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !559, line: 231, baseType: !4901)
!4901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4855, size: 192, elements: !1546)
!4902 = !DILocation(line: 227, column: 20, scope: !4887)
!4903 = !DILocation(line: 228, column: 26, scope: !4887)
!4904 = !DILocation(line: 228, column: 52, scope: !4887)
!4905 = !DILocation(line: 229, column: 26, scope: !4887)
!4906 = !DILocation(line: 231, column: 3, scope: !4887)
!4907 = !DILocation(line: 231, column: 11, scope: !4887)
!4908 = !DILocation(line: 233, column: 3, scope: !4887)
!4909 = !DILocation(line: 234, column: 3, scope: !4887)
!4910 = !DILocation(line: 235, column: 3, scope: !4887)
!4911 = !DILocation(line: 236, column: 1, scope: !4887)
!4912 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !562, file: !562, line: 239, type: !1219, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !76)
!4913 = !DILocation(line: 245, column: 3, scope: !4912)
!4914 = !DILocation(line: 251, column: 3, scope: !4912)
!4915 = !DILocation(line: 256, column: 3, scope: !4912)
!4916 = !DILocation(line: 258, column: 1, scope: !4912)
!4917 = distinct !DISubprogram(name: "xnmalloc", scope: !569, file: !569, line: 105, type: !4918, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !4920)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!29, !99, !99}
!4920 = !{!4921, !4922}
!4921 = !DILocalVariable(name: "n", arg: 1, scope: !4917, file: !569, line: 105, type: !99)
!4922 = !DILocalVariable(name: "s", arg: 2, scope: !4917, file: !569, line: 105, type: !99)
!4923 = !DILocation(line: 105, column: 18, scope: !4917)
!4924 = !DILocation(line: 105, column: 28, scope: !4917)
!4925 = !DILocation(line: 107, column: 7, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4917, file: !569, line: 107, column: 7)
!4927 = !DILocation(line: 107, column: 7, scope: !4917)
!4928 = !DILocation(line: 108, column: 5, scope: !4926)
!4929 = !DILocation(line: 109, column: 21, scope: !4917)
!4930 = !DILocalVariable(name: "n", arg: 1, scope: !4931, file: !4932, line: 39, type: !99)
!4931 = distinct !DISubprogram(name: "xmalloc", scope: !4932, file: !4932, line: 39, type: !4933, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !4935)
!4932 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4933 = !DISubroutineType(types: !4934)
!4934 = !{!29, !99}
!4935 = !{!4930, !4936}
!4936 = !DILocalVariable(name: "p", scope: !4931, file: !4932, line: 41, type: !29)
!4937 = !DILocation(line: 39, column: 17, scope: !4931, inlinedAt: !4938)
!4938 = distinct !DILocation(line: 109, column: 10, scope: !4917)
!4939 = !DILocation(line: 41, column: 13, scope: !4931, inlinedAt: !4938)
!4940 = !DILocation(line: 41, column: 9, scope: !4931, inlinedAt: !4938)
!4941 = !DILocation(line: 42, column: 8, scope: !4942, inlinedAt: !4938)
!4942 = distinct !DILexicalBlock(scope: !4931, file: !4932, line: 42, column: 7)
!4943 = !DILocation(line: 42, column: 15, scope: !4942, inlinedAt: !4938)
!4944 = !DILocation(line: 42, column: 10, scope: !4942, inlinedAt: !4938)
!4945 = !DILocation(line: 43, column: 5, scope: !4942, inlinedAt: !4938)
!4946 = !DILocation(line: 109, column: 3, scope: !4917)
!4947 = !DILocation(line: 39, column: 17, scope: !4931)
!4948 = !DILocation(line: 41, column: 13, scope: !4931)
!4949 = !DILocation(line: 41, column: 9, scope: !4931)
!4950 = !DILocation(line: 42, column: 8, scope: !4942)
!4951 = !DILocation(line: 42, column: 15, scope: !4942)
!4952 = !DILocation(line: 42, column: 10, scope: !4942)
!4953 = !DILocation(line: 43, column: 5, scope: !4942)
!4954 = !DILocation(line: 44, column: 3, scope: !4931)
!4955 = distinct !DISubprogram(name: "xnrealloc", scope: !569, file: !569, line: 118, type: !4956, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !4958)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!29, !29, !99, !99}
!4958 = !{!4959, !4960, !4961}
!4959 = !DILocalVariable(name: "p", arg: 1, scope: !4955, file: !569, line: 118, type: !29)
!4960 = !DILocalVariable(name: "n", arg: 2, scope: !4955, file: !569, line: 118, type: !99)
!4961 = !DILocalVariable(name: "s", arg: 3, scope: !4955, file: !569, line: 118, type: !99)
!4962 = !DILocation(line: 118, column: 18, scope: !4955)
!4963 = !DILocation(line: 118, column: 28, scope: !4955)
!4964 = !DILocation(line: 118, column: 38, scope: !4955)
!4965 = !DILocation(line: 120, column: 7, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4955, file: !569, line: 120, column: 7)
!4967 = !DILocation(line: 120, column: 7, scope: !4955)
!4968 = !DILocation(line: 121, column: 5, scope: !4966)
!4969 = !DILocation(line: 122, column: 25, scope: !4955)
!4970 = !DILocalVariable(name: "p", arg: 1, scope: !4971, file: !4932, line: 51, type: !29)
!4971 = distinct !DISubprogram(name: "xrealloc", scope: !4932, file: !4932, line: 51, type: !4972, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !4974)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!29, !29, !99}
!4974 = !{!4970, !4975}
!4975 = !DILocalVariable(name: "n", arg: 2, scope: !4971, file: !4932, line: 51, type: !99)
!4976 = !DILocation(line: 51, column: 17, scope: !4971, inlinedAt: !4977)
!4977 = distinct !DILocation(line: 122, column: 10, scope: !4955)
!4978 = !DILocation(line: 51, column: 27, scope: !4971, inlinedAt: !4977)
!4979 = !DILocation(line: 53, column: 8, scope: !4980, inlinedAt: !4977)
!4980 = distinct !DILexicalBlock(scope: !4971, file: !4932, line: 53, column: 7)
!4981 = !DILocation(line: 53, column: 13, scope: !4980, inlinedAt: !4977)
!4982 = !DILocation(line: 53, column: 10, scope: !4980, inlinedAt: !4977)
!4983 = !DILocation(line: 57, column: 7, scope: !4984, inlinedAt: !4977)
!4984 = distinct !DILexicalBlock(scope: !4980, file: !4932, line: 54, column: 5)
!4985 = !DILocation(line: 58, column: 7, scope: !4984, inlinedAt: !4977)
!4986 = !DILocation(line: 61, column: 7, scope: !4971, inlinedAt: !4977)
!4987 = !DILocation(line: 62, column: 8, scope: !4988, inlinedAt: !4977)
!4988 = distinct !DILexicalBlock(scope: !4971, file: !4932, line: 62, column: 7)
!4989 = !DILocation(line: 62, column: 13, scope: !4988, inlinedAt: !4977)
!4990 = !DILocation(line: 62, column: 10, scope: !4988, inlinedAt: !4977)
!4991 = !DILocation(line: 63, column: 5, scope: !4988, inlinedAt: !4977)
!4992 = !DILocation(line: 122, column: 3, scope: !4955)
!4993 = !DILocation(line: 51, column: 17, scope: !4971)
!4994 = !DILocation(line: 51, column: 27, scope: !4971)
!4995 = !DILocation(line: 53, column: 8, scope: !4980)
!4996 = !DILocation(line: 53, column: 13, scope: !4980)
!4997 = !DILocation(line: 53, column: 10, scope: !4980)
!4998 = !DILocation(line: 57, column: 7, scope: !4984)
!4999 = !DILocation(line: 58, column: 7, scope: !4984)
!5000 = !DILocation(line: 61, column: 7, scope: !4971)
!5001 = !DILocation(line: 62, column: 8, scope: !4988)
!5002 = !DILocation(line: 62, column: 13, scope: !4988)
!5003 = !DILocation(line: 62, column: 10, scope: !4988)
!5004 = !DILocation(line: 63, column: 5, scope: !4988)
!5005 = !DILocation(line: 65, column: 1, scope: !4971)
!5006 = !DILocation(line: 180, column: 19, scope: !570)
!5007 = !DILocation(line: 180, column: 30, scope: !570)
!5008 = !DILocation(line: 180, column: 41, scope: !570)
!5009 = !DILocation(line: 182, column: 14, scope: !570)
!5010 = !DILocation(line: 182, column: 10, scope: !570)
!5011 = !DILocation(line: 184, column: 9, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !570, file: !569, line: 184, column: 7)
!5013 = !DILocation(line: 184, column: 7, scope: !570)
!5014 = !DILocation(line: 186, column: 13, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5016, file: !569, line: 186, column: 11)
!5016 = distinct !DILexicalBlock(scope: !5012, file: !569, line: 185, column: 5)
!5017 = !DILocation(line: 186, column: 11, scope: !5016)
!5018 = !DILocation(line: 194, column: 30, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5015, file: !569, line: 187, column: 9)
!5020 = !DILocation(line: 195, column: 16, scope: !5019)
!5021 = !DILocation(line: 195, column: 13, scope: !5019)
!5022 = !DILocation(line: 196, column: 9, scope: !5019)
!5023 = !DILocation(line: 204, column: 69, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5025, file: !569, line: 204, column: 11)
!5025 = distinct !DILexicalBlock(scope: !5012, file: !569, line: 199, column: 5)
!5026 = !DILocation(line: 205, column: 11, scope: !5024)
!5027 = !DILocation(line: 204, column: 11, scope: !5025)
!5028 = !DILocation(line: 206, column: 9, scope: !5024)
!5029 = !DILocation(line: 210, column: 7, scope: !570)
!5030 = !DILocation(line: 211, column: 25, scope: !570)
!5031 = !DILocation(line: 51, column: 17, scope: !4971, inlinedAt: !5032)
!5032 = distinct !DILocation(line: 211, column: 10, scope: !570)
!5033 = !DILocation(line: 51, column: 27, scope: !4971, inlinedAt: !5032)
!5034 = !DILocation(line: 53, column: 10, scope: !4980, inlinedAt: !5032)
!5035 = !DILocation(line: 207, column: 14, scope: !5025)
!5036 = !DILocation(line: 207, column: 18, scope: !5025)
!5037 = !DILocation(line: 207, column: 9, scope: !5025)
!5038 = !DILocation(line: 53, column: 8, scope: !4980, inlinedAt: !5032)
!5039 = !DILocation(line: 57, column: 7, scope: !4984, inlinedAt: !5032)
!5040 = !DILocation(line: 58, column: 7, scope: !4984, inlinedAt: !5032)
!5041 = !DILocation(line: 61, column: 7, scope: !4971, inlinedAt: !5032)
!5042 = !DILocation(line: 62, column: 8, scope: !4988, inlinedAt: !5032)
!5043 = !DILocation(line: 62, column: 13, scope: !4988, inlinedAt: !5032)
!5044 = !DILocation(line: 62, column: 10, scope: !4988, inlinedAt: !5032)
!5045 = !DILocation(line: 63, column: 5, scope: !4988, inlinedAt: !5032)
!5046 = !DILocation(line: 211, column: 3, scope: !570)
!5047 = distinct !DISubprogram(name: "xcharalloc", scope: !569, file: !569, line: 220, type: !3920, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !5048)
!5048 = !{!5049}
!5049 = !DILocalVariable(name: "n", arg: 1, scope: !5047, file: !569, line: 220, type: !99)
!5050 = !DILocation(line: 220, column: 20, scope: !5047)
!5051 = !DILocation(line: 39, column: 17, scope: !4931, inlinedAt: !5052)
!5052 = distinct !DILocation(line: 222, column: 10, scope: !5047)
!5053 = !DILocation(line: 41, column: 13, scope: !4931, inlinedAt: !5052)
!5054 = !DILocation(line: 41, column: 9, scope: !4931, inlinedAt: !5052)
!5055 = !DILocation(line: 42, column: 8, scope: !4942, inlinedAt: !5052)
!5056 = !DILocation(line: 42, column: 15, scope: !4942, inlinedAt: !5052)
!5057 = !DILocation(line: 42, column: 10, scope: !4942, inlinedAt: !5052)
!5058 = !DILocation(line: 43, column: 5, scope: !4942, inlinedAt: !5052)
!5059 = !DILocation(line: 222, column: 3, scope: !5047)
!5060 = distinct !DISubprogram(name: "x2realloc", scope: !4932, file: !4932, line: 74, type: !5061, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !5063)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!29, !29, !573}
!5063 = !{!5064, !5065}
!5064 = !DILocalVariable(name: "p", arg: 1, scope: !5060, file: !4932, line: 74, type: !29)
!5065 = !DILocalVariable(name: "pn", arg: 2, scope: !5060, file: !4932, line: 74, type: !573)
!5066 = !DILocation(line: 74, column: 18, scope: !5060)
!5067 = !DILocation(line: 74, column: 29, scope: !5060)
!5068 = !DILocation(line: 180, column: 19, scope: !570, inlinedAt: !5069)
!5069 = distinct !DILocation(line: 76, column: 10, scope: !5060)
!5070 = !DILocation(line: 180, column: 30, scope: !570, inlinedAt: !5069)
!5071 = !DILocation(line: 180, column: 41, scope: !570, inlinedAt: !5069)
!5072 = !DILocation(line: 182, column: 14, scope: !570, inlinedAt: !5069)
!5073 = !DILocation(line: 182, column: 10, scope: !570, inlinedAt: !5069)
!5074 = !DILocation(line: 184, column: 9, scope: !5012, inlinedAt: !5069)
!5075 = !DILocation(line: 184, column: 7, scope: !570, inlinedAt: !5069)
!5076 = !DILocation(line: 186, column: 13, scope: !5015, inlinedAt: !5069)
!5077 = !DILocation(line: 186, column: 11, scope: !5016, inlinedAt: !5069)
!5078 = !DILocation(line: 210, column: 7, scope: !570, inlinedAt: !5069)
!5079 = !DILocation(line: 51, column: 17, scope: !4971, inlinedAt: !5080)
!5080 = distinct !DILocation(line: 211, column: 10, scope: !570, inlinedAt: !5069)
!5081 = !DILocation(line: 51, column: 27, scope: !4971, inlinedAt: !5080)
!5082 = !DILocation(line: 53, column: 10, scope: !4980, inlinedAt: !5080)
!5083 = !DILocation(line: 205, column: 11, scope: !5024, inlinedAt: !5069)
!5084 = !DILocation(line: 204, column: 11, scope: !5025, inlinedAt: !5069)
!5085 = !DILocation(line: 206, column: 9, scope: !5024, inlinedAt: !5069)
!5086 = !DILocation(line: 207, column: 14, scope: !5025, inlinedAt: !5069)
!5087 = !DILocation(line: 207, column: 18, scope: !5025, inlinedAt: !5069)
!5088 = !DILocation(line: 207, column: 9, scope: !5025, inlinedAt: !5069)
!5089 = !DILocation(line: 53, column: 8, scope: !4980, inlinedAt: !5080)
!5090 = !DILocation(line: 57, column: 7, scope: !4984, inlinedAt: !5080)
!5091 = !DILocation(line: 58, column: 7, scope: !4984, inlinedAt: !5080)
!5092 = !DILocation(line: 61, column: 7, scope: !4971, inlinedAt: !5080)
!5093 = !DILocation(line: 62, column: 8, scope: !4988, inlinedAt: !5080)
!5094 = !DILocation(line: 62, column: 13, scope: !4988, inlinedAt: !5080)
!5095 = !DILocation(line: 62, column: 10, scope: !4988, inlinedAt: !5080)
!5096 = !DILocation(line: 63, column: 5, scope: !4988, inlinedAt: !5080)
!5097 = !DILocation(line: 76, column: 3, scope: !5060)
!5098 = distinct !DISubprogram(name: "xzalloc", scope: !4932, file: !4932, line: 84, type: !4933, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !5099)
!5099 = !{!5100}
!5100 = !DILocalVariable(name: "s", arg: 1, scope: !5098, file: !4932, line: 84, type: !99)
!5101 = !DILocation(line: 84, column: 17, scope: !5098)
!5102 = !DILocation(line: 39, column: 17, scope: !4931, inlinedAt: !5103)
!5103 = distinct !DILocation(line: 86, column: 18, scope: !5098)
!5104 = !DILocation(line: 41, column: 13, scope: !4931, inlinedAt: !5103)
!5105 = !DILocation(line: 41, column: 9, scope: !4931, inlinedAt: !5103)
!5106 = !DILocation(line: 42, column: 8, scope: !4942, inlinedAt: !5103)
!5107 = !DILocation(line: 42, column: 15, scope: !4942, inlinedAt: !5103)
!5108 = !DILocation(line: 42, column: 10, scope: !4942, inlinedAt: !5103)
!5109 = !DILocation(line: 43, column: 5, scope: !4942, inlinedAt: !5103)
!5110 = !DILocation(line: 86, column: 10, scope: !5098)
!5111 = !DILocation(line: 86, column: 3, scope: !5098)
!5112 = distinct !DISubprogram(name: "xcalloc", scope: !4932, file: !4932, line: 93, type: !4918, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !5113)
!5113 = !{!5114, !5115, !5116}
!5114 = !DILocalVariable(name: "n", arg: 1, scope: !5112, file: !4932, line: 93, type: !99)
!5115 = !DILocalVariable(name: "s", arg: 2, scope: !5112, file: !4932, line: 93, type: !99)
!5116 = !DILocalVariable(name: "p", scope: !5112, file: !4932, line: 95, type: !29)
!5117 = !DILocation(line: 93, column: 17, scope: !5112)
!5118 = !DILocation(line: 93, column: 27, scope: !5112)
!5119 = !DILocation(line: 100, column: 7, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5112, file: !4932, line: 100, column: 7)
!5121 = !DILocation(line: 101, column: 7, scope: !5120)
!5122 = !DILocation(line: 101, column: 18, scope: !5120)
!5123 = !DILocation(line: 95, column: 9, scope: !5112)
!5124 = !DILocation(line: 101, column: 16, scope: !5120)
!5125 = !DILocation(line: 100, column: 7, scope: !5112)
!5126 = !DILocation(line: 102, column: 5, scope: !5120)
!5127 = !DILocation(line: 103, column: 3, scope: !5112)
!5128 = distinct !DISubprogram(name: "xmemdup", scope: !4932, file: !4932, line: 111, type: !5129, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !5131)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!29, !1390, !99}
!5131 = !{!5132, !5133}
!5132 = !DILocalVariable(name: "p", arg: 1, scope: !5128, file: !4932, line: 111, type: !1390)
!5133 = !DILocalVariable(name: "s", arg: 2, scope: !5128, file: !4932, line: 111, type: !99)
!5134 = !DILocation(line: 111, column: 22, scope: !5128)
!5135 = !DILocation(line: 111, column: 32, scope: !5128)
!5136 = !DILocation(line: 39, column: 17, scope: !4931, inlinedAt: !5137)
!5137 = distinct !DILocation(line: 113, column: 18, scope: !5128)
!5138 = !DILocation(line: 41, column: 13, scope: !4931, inlinedAt: !5137)
!5139 = !DILocation(line: 41, column: 9, scope: !4931, inlinedAt: !5137)
!5140 = !DILocation(line: 42, column: 8, scope: !4942, inlinedAt: !5137)
!5141 = !DILocation(line: 42, column: 15, scope: !4942, inlinedAt: !5137)
!5142 = !DILocation(line: 42, column: 10, scope: !4942, inlinedAt: !5137)
!5143 = !DILocation(line: 43, column: 5, scope: !4942, inlinedAt: !5137)
!5144 = !DILocation(line: 113, column: 10, scope: !5128)
!5145 = !DILocation(line: 113, column: 3, scope: !5128)
!5146 = distinct !DISubprogram(name: "xstrdup", scope: !4932, file: !4932, line: 119, type: !4120, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !5147)
!5147 = !{!5148}
!5148 = !DILocalVariable(name: "string", arg: 1, scope: !5146, file: !4932, line: 119, type: !43)
!5149 = !DILocation(line: 119, column: 22, scope: !5146)
!5150 = !DILocation(line: 121, column: 27, scope: !5146)
!5151 = !DILocation(line: 121, column: 43, scope: !5146)
!5152 = !DILocation(line: 111, column: 22, scope: !5128, inlinedAt: !5153)
!5153 = distinct !DILocation(line: 121, column: 10, scope: !5146)
!5154 = !DILocation(line: 111, column: 32, scope: !5128, inlinedAt: !5153)
!5155 = !DILocation(line: 39, column: 17, scope: !4931, inlinedAt: !5156)
!5156 = distinct !DILocation(line: 113, column: 18, scope: !5128, inlinedAt: !5153)
!5157 = !DILocation(line: 41, column: 13, scope: !4931, inlinedAt: !5156)
!5158 = !DILocation(line: 41, column: 9, scope: !4931, inlinedAt: !5156)
!5159 = !DILocation(line: 42, column: 8, scope: !4942, inlinedAt: !5156)
!5160 = !DILocation(line: 42, column: 15, scope: !4942, inlinedAt: !5156)
!5161 = !DILocation(line: 42, column: 10, scope: !4942, inlinedAt: !5156)
!5162 = !DILocation(line: 43, column: 5, scope: !4942, inlinedAt: !5156)
!5163 = !DILocation(line: 113, column: 10, scope: !5128, inlinedAt: !5153)
!5164 = !DILocation(line: 121, column: 3, scope: !5146)
!5165 = distinct !DISubprogram(name: "xalloc_die", scope: !5166, file: !5166, line: 32, type: !1219, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !582, variables: !76)
!5166 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5167 = !DILocation(line: 34, column: 10, scope: !5165)
!5168 = !DILocation(line: 34, column: 33, scope: !5165)
!5169 = !DILocation(line: 34, column: 3, scope: !5165)
!5170 = !DILocation(line: 40, column: 3, scope: !5165)
!5171 = distinct !DISubprogram(name: "xgetcwd", scope: !5172, file: !5172, line: 35, type: !5173, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !5174)
!5172 = !DIFile(filename: "lib/xgetcwd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5173 = !DISubroutineType(types: !599)
!5174 = !{!5175}
!5175 = !DILocalVariable(name: "cwd", scope: !5171, file: !5172, line: 37, type: !27)
!5176 = !DILocation(line: 37, column: 15, scope: !5171)
!5177 = !DILocation(line: 37, column: 9, scope: !5171)
!5178 = !DILocation(line: 38, column: 9, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5171, file: !5172, line: 38, column: 7)
!5180 = !DILocation(line: 38, column: 13, scope: !5179)
!5181 = !DILocation(line: 38, column: 16, scope: !5179)
!5182 = !DILocation(line: 38, column: 22, scope: !5179)
!5183 = !DILocation(line: 38, column: 7, scope: !5171)
!5184 = !DILocation(line: 39, column: 5, scope: !5179)
!5185 = !DILocation(line: 40, column: 3, scope: !5171)
!5186 = distinct !DISubprogram(name: "rpl_calloc", scope: !5187, file: !5187, line: 42, type: !4918, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !5188)
!5187 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5188 = !{!5189, !5190, !5191, !5192}
!5189 = !DILocalVariable(name: "n", arg: 1, scope: !5186, file: !5187, line: 42, type: !99)
!5190 = !DILocalVariable(name: "s", arg: 2, scope: !5186, file: !5187, line: 42, type: !99)
!5191 = !DILocalVariable(name: "result", scope: !5186, file: !5187, line: 44, type: !29)
!5192 = !DILocalVariable(name: "bytes", scope: !5193, file: !5187, line: 56, type: !99)
!5193 = distinct !DILexicalBlock(scope: !5194, file: !5187, line: 53, column: 5)
!5194 = distinct !DILexicalBlock(scope: !5186, file: !5187, line: 47, column: 7)
!5195 = !DILocation(line: 42, column: 20, scope: !5186)
!5196 = !DILocation(line: 42, column: 30, scope: !5186)
!5197 = !DILocation(line: 47, column: 9, scope: !5194)
!5198 = !DILocation(line: 47, column: 19, scope: !5194)
!5199 = !DILocation(line: 47, column: 14, scope: !5194)
!5200 = !DILocation(line: 56, column: 24, scope: !5193)
!5201 = !DILocation(line: 56, column: 14, scope: !5193)
!5202 = !DILocation(line: 57, column: 17, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5193, file: !5187, line: 57, column: 11)
!5204 = !DILocation(line: 57, column: 21, scope: !5203)
!5205 = !DILocation(line: 57, column: 11, scope: !5193)
!5206 = !DILocation(line: 59, column: 11, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5203, file: !5187, line: 58, column: 9)
!5208 = !DILocation(line: 59, column: 17, scope: !5207)
!5209 = !DILocation(line: 65, column: 12, scope: !5186)
!5210 = !DILocation(line: 44, column: 9, scope: !5186)
!5211 = !DILocation(line: 72, column: 3, scope: !5186)
!5212 = !DILocation(line: 73, column: 1, scope: !5186)
!5213 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5214, file: !5214, line: 334, type: !5215, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !5229)
!5214 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!99, !5217, !43, !99, !5218}
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3172, line: 6, baseType: !5220)
!5220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3174, line: 21, baseType: !5221)
!5221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3174, line: 13, size: 64, elements: !5222)
!5222 = !{!5223, !5224}
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5221, file: !3174, line: 15, baseType: !66, size: 32)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5221, file: !3174, line: 20, baseType: !5225, size: 32, offset: 32)
!5225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5221, file: !3174, line: 16, size: 32, elements: !5226)
!5226 = !{!5227, !5228}
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5225, file: !3174, line: 18, baseType: !164, size: 32)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5225, file: !3174, line: 19, baseType: !3183, size: 32)
!5229 = !{!5230, !5231, !5232, !5233, !5234, !5235, !5236}
!5230 = !DILocalVariable(name: "pwc", arg: 1, scope: !5213, file: !5214, line: 334, type: !5217)
!5231 = !DILocalVariable(name: "s", arg: 2, scope: !5213, file: !5214, line: 334, type: !43)
!5232 = !DILocalVariable(name: "n", arg: 3, scope: !5213, file: !5214, line: 334, type: !99)
!5233 = !DILocalVariable(name: "ps", arg: 4, scope: !5213, file: !5214, line: 334, type: !5218)
!5234 = !DILocalVariable(name: "ret", scope: !5213, file: !5214, line: 336, type: !99)
!5235 = !DILocalVariable(name: "wc", scope: !5213, file: !5214, line: 337, type: !3188)
!5236 = !DILocalVariable(name: "uc", scope: !5237, file: !5214, line: 398, type: !30)
!5237 = distinct !DILexicalBlock(scope: !5238, file: !5214, line: 397, column: 5)
!5238 = distinct !DILexicalBlock(scope: !5213, file: !5214, line: 396, column: 7)
!5239 = !DILocation(line: 334, column: 23, scope: !5213)
!5240 = !DILocation(line: 334, column: 40, scope: !5213)
!5241 = !DILocation(line: 334, column: 50, scope: !5213)
!5242 = !DILocation(line: 334, column: 64, scope: !5213)
!5243 = !DILocation(line: 337, column: 3, scope: !5213)
!5244 = !DILocation(line: 353, column: 9, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5213, file: !5214, line: 353, column: 7)
!5246 = !DILocation(line: 353, column: 7, scope: !5213)
!5247 = !DILocation(line: 388, column: 9, scope: !5213)
!5248 = !DILocation(line: 336, column: 10, scope: !5213)
!5249 = !DILocation(line: 396, column: 19, scope: !5238)
!5250 = !DILocation(line: 396, column: 31, scope: !5238)
!5251 = !DILocation(line: 396, column: 26, scope: !5238)
!5252 = !DILocation(line: 396, column: 41, scope: !5238)
!5253 = !DILocation(line: 396, column: 7, scope: !5213)
!5254 = !DILocation(line: 398, column: 26, scope: !5237)
!5255 = !DILocation(line: 398, column: 21, scope: !5237)
!5256 = !DILocation(line: 399, column: 14, scope: !5237)
!5257 = !DILocation(line: 399, column: 12, scope: !5237)
!5258 = !DILocation(line: 405, column: 1, scope: !5213)
!5259 = distinct !DISubprogram(name: "close_stream", scope: !5260, file: !5260, line: 56, type: !5261, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !5303)
!5260 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!66, !5263}
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1513, line: 7, baseType: !5265)
!5265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1515, line: 241, size: 1728, elements: !5266)
!5266 = !{!5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5265, file: !1515, line: 242, baseType: !66, size: 32)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5265, file: !1515, line: 247, baseType: !27, size: 64, offset: 64)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5265, file: !1515, line: 248, baseType: !27, size: 64, offset: 128)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5265, file: !1515, line: 249, baseType: !27, size: 64, offset: 192)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5265, file: !1515, line: 250, baseType: !27, size: 64, offset: 256)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5265, file: !1515, line: 251, baseType: !27, size: 64, offset: 320)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5265, file: !1515, line: 252, baseType: !27, size: 64, offset: 384)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5265, file: !1515, line: 253, baseType: !27, size: 64, offset: 448)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5265, file: !1515, line: 254, baseType: !27, size: 64, offset: 512)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5265, file: !1515, line: 256, baseType: !27, size: 64, offset: 576)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5265, file: !1515, line: 257, baseType: !27, size: 64, offset: 640)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5265, file: !1515, line: 258, baseType: !27, size: 64, offset: 704)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5265, file: !1515, line: 260, baseType: !5280, size: 64, offset: 768)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1515, line: 156, size: 192, elements: !5282)
!5282 = !{!5283, !5284, !5286}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5281, file: !1515, line: 157, baseType: !5280, size: 64)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5281, file: !1515, line: 158, baseType: !5285, size: 64, offset: 64)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5281, file: !1515, line: 162, baseType: !66, size: 32, offset: 128)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5265, file: !1515, line: 262, baseType: !5285, size: 64, offset: 832)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5265, file: !1515, line: 264, baseType: !66, size: 32, offset: 896)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5265, file: !1515, line: 268, baseType: !66, size: 32, offset: 928)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5265, file: !1515, line: 270, baseType: !888, size: 64, offset: 960)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5265, file: !1515, line: 274, baseType: !147, size: 16, offset: 1024)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5265, file: !1515, line: 275, baseType: !1543, size: 8, offset: 1040)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5265, file: !1515, line: 276, baseType: !1545, size: 8, offset: 1048)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5265, file: !1515, line: 280, baseType: !1549, size: 64, offset: 1088)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5265, file: !1515, line: 289, baseType: !1552, size: 64, offset: 1152)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5265, file: !1515, line: 297, baseType: !29, size: 64, offset: 1216)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5265, file: !1515, line: 298, baseType: !29, size: 64, offset: 1280)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5265, file: !1515, line: 299, baseType: !29, size: 64, offset: 1344)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5265, file: !1515, line: 300, baseType: !29, size: 64, offset: 1408)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5265, file: !1515, line: 302, baseType: !99, size: 64, offset: 1472)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5265, file: !1515, line: 303, baseType: !66, size: 32, offset: 1536)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5265, file: !1515, line: 305, baseType: !1560, size: 160, offset: 1568)
!5303 = !{!5304, !5305, !5307, !5308}
!5304 = !DILocalVariable(name: "stream", arg: 1, scope: !5259, file: !5260, line: 56, type: !5263)
!5305 = !DILocalVariable(name: "some_pending", scope: !5259, file: !5260, line: 58, type: !5306)
!5306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!5307 = !DILocalVariable(name: "prev_fail", scope: !5259, file: !5260, line: 59, type: !5306)
!5308 = !DILocalVariable(name: "fclose_fail", scope: !5259, file: !5260, line: 60, type: !5306)
!5309 = !DILocation(line: 56, column: 21, scope: !5259)
!5310 = !DILocation(line: 58, column: 30, scope: !5259)
!5311 = !DILocalVariable(name: "__stream", arg: 1, scope: !5312, file: !735, line: 132, type: !5263)
!5312 = distinct !DISubprogram(name: "ferror_unlocked", scope: !735, file: !735, line: 132, type: !5261, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !5313)
!5313 = !{!5311}
!5314 = !DILocation(line: 132, column: 1, scope: !5312, inlinedAt: !5315)
!5315 = distinct !DILocation(line: 59, column: 27, scope: !5259)
!5316 = !DILocation(line: 134, column: 10, scope: !5312, inlinedAt: !5315)
!5317 = !{!744, !701, i64 0}
!5318 = !DILocation(line: 59, column: 43, scope: !5259)
!5319 = !DILocation(line: 60, column: 29, scope: !5259)
!5320 = !DILocation(line: 60, column: 45, scope: !5259)
!5321 = !DILocation(line: 70, column: 17, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5259, file: !5260, line: 70, column: 7)
!5323 = !DILocation(line: 58, column: 50, scope: !5259)
!5324 = !DILocation(line: 70, column: 33, scope: !5322)
!5325 = !DILocation(line: 70, column: 53, scope: !5322)
!5326 = !DILocation(line: 70, column: 59, scope: !5322)
!5327 = !DILocation(line: 70, column: 7, scope: !5259)
!5328 = !DILocation(line: 72, column: 11, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5322, file: !5260, line: 71, column: 5)
!5330 = !DILocation(line: 73, column: 9, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5329, file: !5260, line: 72, column: 11)
!5332 = !DILocation(line: 73, column: 15, scope: !5331)
!5333 = !DILocation(line: 78, column: 1, scope: !5259)
!5334 = distinct !DISubprogram(name: "dir_name", scope: !5335, file: !5335, line: 32, type: !4120, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !5336)
!5335 = !DIFile(filename: "lib/dirname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5336 = !{!5337, !5338}
!5337 = !DILocalVariable(name: "file", arg: 1, scope: !5334, file: !5335, line: 32, type: !43)
!5338 = !DILocalVariable(name: "result", scope: !5334, file: !5335, line: 34, type: !27)
!5339 = !DILocation(line: 32, column: 23, scope: !5334)
!5340 = !DILocation(line: 34, column: 18, scope: !5334)
!5341 = !DILocation(line: 34, column: 9, scope: !5334)
!5342 = !DILocation(line: 35, column: 8, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5334, file: !5335, line: 35, column: 7)
!5344 = !DILocation(line: 35, column: 7, scope: !5334)
!5345 = !DILocation(line: 36, column: 5, scope: !5343)
!5346 = !DILocation(line: 37, column: 3, scope: !5334)
!5347 = distinct !DISubprogram(name: "dir_len", scope: !5348, file: !5348, line: 32, type: !5349, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !5351)
!5348 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5349 = !DISubroutineType(types: !5350)
!5350 = !{!99, !43}
!5351 = !{!5352, !5353, !5354}
!5352 = !DILocalVariable(name: "file", arg: 1, scope: !5347, file: !5348, line: 32, type: !43)
!5353 = !DILocalVariable(name: "prefix_length", scope: !5347, file: !5348, line: 34, type: !99)
!5354 = !DILocalVariable(name: "length", scope: !5347, file: !5348, line: 35, type: !99)
!5355 = !DILocation(line: 32, column: 22, scope: !5347)
!5356 = !DILocation(line: 34, column: 10, scope: !5347)
!5357 = !DILocation(line: 41, column: 24, scope: !5347)
!5358 = !DILocation(line: 38, column: 20, scope: !5347)
!5359 = !DILocation(line: 48, column: 17, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5347, file: !5348, line: 48, column: 3)
!5361 = !DILocation(line: 48, column: 39, scope: !5360)
!5362 = !DILocation(line: 35, column: 10, scope: !5347)
!5363 = !DILocation(line: 49, column: 22, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5360, file: !5348, line: 48, column: 3)
!5365 = !DILocation(line: 48, column: 3, scope: !5360)
!5366 = !DILocation(line: 50, column: 11, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5364, file: !5348, line: 50, column: 9)
!5368 = distinct !{!5368, !5365, !5369}
!5369 = !DILocation(line: 51, column: 7, scope: !5360)
!5370 = !DILocation(line: 50, column: 9, scope: !5364)
!5371 = !DILocation(line: 52, column: 3, scope: !5347)
!5372 = distinct !DISubprogram(name: "mdir_name", scope: !5348, file: !5348, line: 71, type: !4120, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !5373)
!5373 = !{!5374, !5375, !5376, !5377}
!5374 = !DILocalVariable(name: "file", arg: 1, scope: !5372, file: !5348, line: 71, type: !43)
!5375 = !DILocalVariable(name: "length", scope: !5372, file: !5348, line: 73, type: !99)
!5376 = !DILocalVariable(name: "append_dot", scope: !5372, file: !5348, line: 74, type: !34)
!5377 = !DILocalVariable(name: "dir", scope: !5372, file: !5348, line: 78, type: !27)
!5378 = !DILocation(line: 71, column: 24, scope: !5372)
!5379 = !DILocation(line: 32, column: 22, scope: !5347, inlinedAt: !5380)
!5380 = distinct !DILocation(line: 73, column: 19, scope: !5372)
!5381 = !DILocation(line: 34, column: 10, scope: !5347, inlinedAt: !5380)
!5382 = !DILocation(line: 41, column: 24, scope: !5347, inlinedAt: !5380)
!5383 = !DILocation(line: 38, column: 20, scope: !5347, inlinedAt: !5380)
!5384 = !DILocation(line: 48, column: 17, scope: !5360, inlinedAt: !5380)
!5385 = !DILocation(line: 48, column: 39, scope: !5360, inlinedAt: !5380)
!5386 = !DILocation(line: 35, column: 10, scope: !5347, inlinedAt: !5380)
!5387 = !DILocation(line: 49, column: 22, scope: !5364, inlinedAt: !5380)
!5388 = !DILocation(line: 48, column: 3, scope: !5360, inlinedAt: !5380)
!5389 = !DILocation(line: 50, column: 11, scope: !5367, inlinedAt: !5380)
!5390 = !DILocation(line: 50, column: 9, scope: !5364, inlinedAt: !5380)
!5391 = !DILocation(line: 73, column: 10, scope: !5372)
!5392 = !DILocation(line: 74, column: 29, scope: !5372)
!5393 = !DILocation(line: 78, column: 32, scope: !5372)
!5394 = !DILocation(line: 78, column: 30, scope: !5372)
!5395 = !DILocation(line: 78, column: 43, scope: !5372)
!5396 = !DILocation(line: 78, column: 15, scope: !5372)
!5397 = !DILocation(line: 78, column: 9, scope: !5372)
!5398 = !DILocation(line: 79, column: 8, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5372, file: !5348, line: 79, column: 7)
!5400 = !DILocation(line: 79, column: 7, scope: !5372)
!5401 = !DILocation(line: 81, column: 3, scope: !5372)
!5402 = !DILocation(line: 82, column: 7, scope: !5372)
!5403 = !DILocation(line: 83, column: 19, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5372, file: !5348, line: 82, column: 7)
!5405 = !DILocation(line: 83, column: 5, scope: !5404)
!5406 = !DILocation(line: 84, column: 3, scope: !5372)
!5407 = !DILocation(line: 84, column: 15, scope: !5372)
!5408 = !DILocation(line: 85, column: 3, scope: !5372)
!5409 = !DILocation(line: 86, column: 1, scope: !5372)
!5410 = distinct !DISubprogram(name: "last_component", scope: !5411, file: !5411, line: 30, type: !4120, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !5412)
!5411 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5412 = !{!5413, !5414, !5415, !5416}
!5413 = !DILocalVariable(name: "name", arg: 1, scope: !5410, file: !5411, line: 30, type: !43)
!5414 = !DILocalVariable(name: "base", scope: !5410, file: !5411, line: 32, type: !43)
!5415 = !DILocalVariable(name: "p", scope: !5410, file: !5411, line: 33, type: !43)
!5416 = !DILocalVariable(name: "saw_slash", scope: !5410, file: !5411, line: 34, type: !34)
!5417 = !DILocation(line: 30, column: 29, scope: !5410)
!5418 = !DILocation(line: 32, column: 15, scope: !5410)
!5419 = !DILocation(line: 34, column: 8, scope: !5410)
!5420 = !DILocation(line: 36, column: 3, scope: !5410)
!5421 = !DILocation(line: 36, column: 10, scope: !5410)
!5422 = !DILocation(line: 37, column: 9, scope: !5410)
!5423 = distinct !{!5423, !5420, !5422}
!5424 = !DILocation(line: 39, column: 3, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5410, file: !5411, line: 39, column: 3)
!5426 = !DILocation(line: 39, column: 18, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5425, file: !5411, line: 39, column: 3)
!5428 = !DILocation(line: 33, column: 15, scope: !5410)
!5429 = !DILocation(line: 43, column: 16, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5431, file: !5411, line: 43, column: 16)
!5431 = distinct !DILexicalBlock(scope: !5432, file: !5411, line: 41, column: 11)
!5432 = distinct !DILexicalBlock(scope: !5427, file: !5411, line: 40, column: 5)
!5433 = !DILocation(line: 43, column: 16, scope: !5431)
!5434 = !DILocation(line: 39, column: 23, scope: !5427)
!5435 = !DILocation(line: 39, column: 3, scope: !5427)
!5436 = distinct !{!5436, !5424, !5437}
!5437 = !DILocation(line: 48, column: 5, scope: !5425)
!5438 = !DILocation(line: 50, column: 3, scope: !5410)
!5439 = distinct !DISubprogram(name: "base_len", scope: !5411, file: !5411, line: 58, type: !5349, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !5440)
!5440 = !{!5441, !5442, !5443}
!5441 = !DILocalVariable(name: "name", arg: 1, scope: !5439, file: !5411, line: 58, type: !43)
!5442 = !DILocalVariable(name: "len", scope: !5439, file: !5411, line: 60, type: !99)
!5443 = !DILocalVariable(name: "prefix_len", scope: !5439, file: !5411, line: 61, type: !99)
!5444 = !DILocation(line: 58, column: 23, scope: !5439)
!5445 = !DILocation(line: 61, column: 10, scope: !5439)
!5446 = !DILocation(line: 63, column: 14, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5439, file: !5411, line: 63, column: 3)
!5448 = !DILocation(line: 60, column: 10, scope: !5439)
!5449 = !DILocation(line: 63, column: 32, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5447, file: !5411, line: 63, column: 3)
!5451 = !DILocation(line: 63, column: 38, scope: !5450)
!5452 = !DILocation(line: 63, column: 41, scope: !5450)
!5453 = distinct !{!5453, !5454, !5455}
!5454 = !DILocation(line: 63, column: 3, scope: !5447)
!5455 = !DILocation(line: 64, column: 5, scope: !5447)
!5456 = !DILocation(line: 74, column: 3, scope: !5439)
!5457 = distinct !DISubprogram(name: "hard_locale", scope: !5458, file: !5458, line: 38, type: !5459, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !5461)
!5458 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5459 = !DISubroutineType(types: !5460)
!5460 = !{!34, !66}
!5461 = !{!5462, !5463, !5464}
!5462 = !DILocalVariable(name: "category", arg: 1, scope: !5457, file: !5458, line: 38, type: !66)
!5463 = !DILocalVariable(name: "hard", scope: !5457, file: !5458, line: 40, type: !34)
!5464 = !DILocalVariable(name: "p", scope: !5457, file: !5458, line: 41, type: !43)
!5465 = !DILocation(line: 38, column: 18, scope: !5457)
!5466 = !DILocation(line: 40, column: 8, scope: !5457)
!5467 = !DILocation(line: 41, column: 19, scope: !5457)
!5468 = !DILocation(line: 41, column: 15, scope: !5457)
!5469 = !DILocation(line: 43, column: 7, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5457, file: !5458, line: 43, column: 7)
!5471 = !DILocation(line: 43, column: 7, scope: !5457)
!5472 = !DILocation(line: 47, column: 15, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5474, file: !5458, line: 47, column: 15)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !5458, line: 46, column: 9)
!5475 = distinct !DILexicalBlock(scope: !5476, file: !5458, line: 45, column: 11)
!5476 = distinct !DILexicalBlock(scope: !5470, file: !5458, line: 44, column: 5)
!5477 = !DILocation(line: 47, column: 31, scope: !5473)
!5478 = !DILocation(line: 47, column: 36, scope: !5473)
!5479 = !DILocation(line: 47, column: 39, scope: !5473)
!5480 = !DILocation(line: 47, column: 59, scope: !5473)
!5481 = !DILocation(line: 47, column: 15, scope: !5474)
!5482 = !DILocation(line: 48, column: 13, scope: !5473)
!5483 = !DILocation(line: 71, column: 3, scope: !5457)
!5484 = distinct !DISubprogram(name: "hash_pjw", scope: !5485, file: !5485, line: 31, type: !1388, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !602, variables: !5486)
!5485 = !DIFile(filename: "lib/hash-pjw.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5486 = !{!5487, !5488, !5489, !5490}
!5487 = !DILocalVariable(name: "x", arg: 1, scope: !5484, file: !5485, line: 31, type: !1390)
!5488 = !DILocalVariable(name: "tablesize", arg: 2, scope: !5484, file: !5485, line: 31, type: !99)
!5489 = !DILocalVariable(name: "s", scope: !5484, file: !5485, line: 33, type: !43)
!5490 = !DILocalVariable(name: "h", scope: !5484, file: !5485, line: 34, type: !99)
!5491 = !DILocation(line: 31, column: 23, scope: !5484)
!5492 = !DILocation(line: 31, column: 33, scope: !5484)
!5493 = !DILocation(line: 34, column: 10, scope: !5484)
!5494 = !DILocation(line: 33, column: 15, scope: !5484)
!5495 = !DILocation(line: 36, column: 15, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5497, file: !5485, line: 36, column: 3)
!5497 = distinct !DILexicalBlock(scope: !5484, file: !5485, line: 36, column: 3)
!5498 = !DILocation(line: 36, column: 3, scope: !5497)
!5499 = !DILocation(line: 37, column: 9, scope: !5496)
!5500 = !DILocation(line: 37, column: 18, scope: !5496)
!5501 = !DILocation(line: 37, column: 29, scope: !5496)
!5502 = !DILocation(line: 37, column: 24, scope: !5496)
!5503 = !DILocation(line: 37, column: 12, scope: !5496)
!5504 = !DILocation(line: 36, column: 20, scope: !5496)
!5505 = distinct !{!5505, !5498, !5506}
!5506 = !DILocation(line: 37, column: 48, scope: !5497)
!5507 = !DILocation(line: 39, column: 12, scope: !5484)
!5508 = !DILocation(line: 39, column: 3, scope: !5484)
!5509 = distinct !DISubprogram(name: "locale_charset", scope: !544, file: !544, line: 393, type: !5510, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !200, variables: !5512)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{!43}
!5512 = !{!5513, !5514}
!5513 = !DILocalVariable(name: "codeset", scope: !5509, file: !544, line: 395, type: !43)
!5514 = !DILocalVariable(name: "aliases", scope: !5509, file: !544, line: 396, type: !43)
!5515 = !DILocalVariable(name: "buf1", scope: !5516, file: !544, line: 196, type: !5583)
!5516 = distinct !DILexicalBlock(scope: !5517, file: !544, line: 194, column: 21)
!5517 = distinct !DILexicalBlock(scope: !5518, file: !544, line: 193, column: 19)
!5518 = distinct !DILexicalBlock(scope: !5519, file: !544, line: 193, column: 19)
!5519 = distinct !DILexicalBlock(scope: !5520, file: !544, line: 188, column: 17)
!5520 = distinct !DILexicalBlock(scope: !5521, file: !544, line: 181, column: 19)
!5521 = distinct !DILexicalBlock(scope: !5522, file: !544, line: 177, column: 13)
!5522 = distinct !DILexicalBlock(scope: !5523, file: !544, line: 173, column: 15)
!5523 = distinct !DILexicalBlock(scope: !5524, file: !544, line: 161, column: 9)
!5524 = distinct !DILexicalBlock(scope: !5525, file: !544, line: 157, column: 11)
!5525 = distinct !DILexicalBlock(scope: !5526, file: !544, line: 130, column: 5)
!5526 = distinct !DILexicalBlock(scope: !5527, file: !544, line: 129, column: 7)
!5527 = distinct !DISubprogram(name: "get_charset_aliases", scope: !544, file: !544, line: 124, type: !5510, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !200, variables: !5528)
!5528 = !{!5529, !5530, !5531, !5532, !5533, !5535, !5536, !5537, !5538, !5579, !5580, !5581, !5515, !5582, !5586, !5587, !5588}
!5529 = !DILocalVariable(name: "cp", scope: !5527, file: !544, line: 126, type: !43)
!5530 = !DILocalVariable(name: "dir", scope: !5525, file: !544, line: 132, type: !43)
!5531 = !DILocalVariable(name: "base", scope: !5525, file: !544, line: 133, type: !43)
!5532 = !DILocalVariable(name: "file_name", scope: !5525, file: !544, line: 134, type: !27)
!5533 = !DILocalVariable(name: "dir_len", scope: !5534, file: !544, line: 144, type: !99)
!5534 = distinct !DILexicalBlock(scope: !5525, file: !544, line: 143, column: 7)
!5535 = !DILocalVariable(name: "base_len", scope: !5534, file: !544, line: 145, type: !99)
!5536 = !DILocalVariable(name: "add_slash", scope: !5534, file: !544, line: 146, type: !66)
!5537 = !DILocalVariable(name: "fd", scope: !5523, file: !544, line: 162, type: !66)
!5538 = !DILocalVariable(name: "fp", scope: !5521, file: !544, line: 178, type: !5539)
!5539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5540, size: 64)
!5540 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1513, line: 7, baseType: !5541)
!5541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1515, line: 241, size: 1728, elements: !5542)
!5542 = !{!5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5541, file: !1515, line: 242, baseType: !66, size: 32)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5541, file: !1515, line: 247, baseType: !27, size: 64, offset: 64)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5541, file: !1515, line: 248, baseType: !27, size: 64, offset: 128)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5541, file: !1515, line: 249, baseType: !27, size: 64, offset: 192)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5541, file: !1515, line: 250, baseType: !27, size: 64, offset: 256)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5541, file: !1515, line: 251, baseType: !27, size: 64, offset: 320)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5541, file: !1515, line: 252, baseType: !27, size: 64, offset: 384)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5541, file: !1515, line: 253, baseType: !27, size: 64, offset: 448)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5541, file: !1515, line: 254, baseType: !27, size: 64, offset: 512)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5541, file: !1515, line: 256, baseType: !27, size: 64, offset: 576)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5541, file: !1515, line: 257, baseType: !27, size: 64, offset: 640)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5541, file: !1515, line: 258, baseType: !27, size: 64, offset: 704)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5541, file: !1515, line: 260, baseType: !5556, size: 64, offset: 768)
!5556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5557, size: 64)
!5557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1515, line: 156, size: 192, elements: !5558)
!5558 = !{!5559, !5560, !5562}
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5557, file: !1515, line: 157, baseType: !5556, size: 64)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5557, file: !1515, line: 158, baseType: !5561, size: 64, offset: 64)
!5561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5557, file: !1515, line: 162, baseType: !66, size: 32, offset: 128)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5541, file: !1515, line: 262, baseType: !5561, size: 64, offset: 832)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5541, file: !1515, line: 264, baseType: !66, size: 32, offset: 896)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5541, file: !1515, line: 268, baseType: !66, size: 32, offset: 928)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5541, file: !1515, line: 270, baseType: !888, size: 64, offset: 960)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5541, file: !1515, line: 274, baseType: !147, size: 16, offset: 1024)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5541, file: !1515, line: 275, baseType: !1543, size: 8, offset: 1040)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5541, file: !1515, line: 276, baseType: !1545, size: 8, offset: 1048)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5541, file: !1515, line: 280, baseType: !1549, size: 64, offset: 1088)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5541, file: !1515, line: 289, baseType: !1552, size: 64, offset: 1152)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5541, file: !1515, line: 297, baseType: !29, size: 64, offset: 1216)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5541, file: !1515, line: 298, baseType: !29, size: 64, offset: 1280)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5541, file: !1515, line: 299, baseType: !29, size: 64, offset: 1344)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5541, file: !1515, line: 300, baseType: !29, size: 64, offset: 1408)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5541, file: !1515, line: 302, baseType: !99, size: 64, offset: 1472)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5541, file: !1515, line: 303, baseType: !66, size: 32, offset: 1536)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5541, file: !1515, line: 305, baseType: !1560, size: 160, offset: 1568)
!5579 = !DILocalVariable(name: "res_ptr", scope: !5519, file: !544, line: 190, type: !27)
!5580 = !DILocalVariable(name: "res_size", scope: !5519, file: !544, line: 191, type: !99)
!5581 = !DILocalVariable(name: "c", scope: !5516, file: !544, line: 195, type: !66)
!5582 = !DILocalVariable(name: "buf2", scope: !5516, file: !544, line: 197, type: !5583)
!5583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 408, elements: !5584)
!5584 = !{!5585}
!5585 = !DISubrange(count: 51)
!5586 = !DILocalVariable(name: "l1", scope: !5516, file: !544, line: 198, type: !99)
!5587 = !DILocalVariable(name: "l2", scope: !5516, file: !544, line: 198, type: !99)
!5588 = !DILocalVariable(name: "old_res_ptr", scope: !5516, file: !544, line: 199, type: !27)
!5589 = !DILocation(line: 196, column: 28, scope: !5516, inlinedAt: !5590)
!5590 = distinct !DILocation(line: 589, column: 18, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5509, file: !544, line: 589, column: 3)
!5592 = !DILocation(line: 197, column: 28, scope: !5516, inlinedAt: !5590)
!5593 = !DILocation(line: 403, column: 13, scope: !5509)
!5594 = !DILocation(line: 395, column: 15, scope: !5509)
!5595 = !DILocation(line: 584, column: 15, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5509, file: !544, line: 584, column: 7)
!5597 = !DILocation(line: 584, column: 7, scope: !5509)
!5598 = !DILocation(line: 128, column: 8, scope: !5527, inlinedAt: !5590)
!5599 = !DILocation(line: 126, column: 15, scope: !5527, inlinedAt: !5590)
!5600 = !DILocation(line: 129, column: 10, scope: !5526, inlinedAt: !5590)
!5601 = !DILocation(line: 129, column: 7, scope: !5527, inlinedAt: !5590)
!5602 = !DILocation(line: 138, column: 13, scope: !5525, inlinedAt: !5590)
!5603 = !DILocation(line: 132, column: 19, scope: !5525, inlinedAt: !5590)
!5604 = !DILocation(line: 139, column: 15, scope: !5605, inlinedAt: !5590)
!5605 = distinct !DILexicalBlock(scope: !5525, file: !544, line: 139, column: 11)
!5606 = !DILocation(line: 139, column: 23, scope: !5605, inlinedAt: !5590)
!5607 = !DILocation(line: 139, column: 26, scope: !5605, inlinedAt: !5590)
!5608 = !DILocation(line: 139, column: 33, scope: !5605, inlinedAt: !5590)
!5609 = !DILocation(line: 139, column: 11, scope: !5525, inlinedAt: !5590)
!5610 = !DILocation(line: 140, column: 9, scope: !5605, inlinedAt: !5590)
!5611 = !DILocation(line: 144, column: 26, scope: !5534, inlinedAt: !5590)
!5612 = !DILocation(line: 144, column: 16, scope: !5534, inlinedAt: !5590)
!5613 = !DILocation(line: 145, column: 16, scope: !5534, inlinedAt: !5590)
!5614 = !DILocation(line: 146, column: 34, scope: !5534, inlinedAt: !5590)
!5615 = !DILocation(line: 146, column: 38, scope: !5534, inlinedAt: !5590)
!5616 = !DILocation(line: 146, column: 42, scope: !5534, inlinedAt: !5590)
!5617 = !DILocation(line: 147, column: 48, scope: !5534, inlinedAt: !5590)
!5618 = !DILocation(line: 147, column: 46, scope: !5534, inlinedAt: !5590)
!5619 = !DILocation(line: 147, column: 69, scope: !5534, inlinedAt: !5590)
!5620 = !DILocation(line: 147, column: 30, scope: !5534, inlinedAt: !5590)
!5621 = !DILocation(line: 134, column: 13, scope: !5525, inlinedAt: !5590)
!5622 = !DILocation(line: 148, column: 13, scope: !5534, inlinedAt: !5590)
!5623 = !DILocation(line: 150, column: 13, scope: !5624, inlinedAt: !5590)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !544, line: 149, column: 11)
!5625 = distinct !DILexicalBlock(scope: !5534, file: !544, line: 148, column: 13)
!5626 = !DILocation(line: 151, column: 17, scope: !5624, inlinedAt: !5590)
!5627 = !DILocation(line: 152, column: 34, scope: !5628, inlinedAt: !5590)
!5628 = distinct !DILexicalBlock(scope: !5624, file: !544, line: 151, column: 17)
!5629 = !DILocation(line: 153, column: 41, scope: !5624, inlinedAt: !5590)
!5630 = !DILocation(line: 153, column: 13, scope: !5624, inlinedAt: !5590)
!5631 = !DILocation(line: 157, column: 11, scope: !5525, inlinedAt: !5590)
!5632 = !DILocation(line: 171, column: 16, scope: !5523, inlinedAt: !5590)
!5633 = !DILocation(line: 162, column: 15, scope: !5523, inlinedAt: !5590)
!5634 = !DILocation(line: 173, column: 18, scope: !5522, inlinedAt: !5590)
!5635 = !DILocation(line: 173, column: 15, scope: !5523, inlinedAt: !5590)
!5636 = !DILocation(line: 180, column: 20, scope: !5521, inlinedAt: !5590)
!5637 = !DILocation(line: 178, column: 21, scope: !5521, inlinedAt: !5590)
!5638 = !DILocation(line: 181, column: 22, scope: !5520, inlinedAt: !5590)
!5639 = !DILocation(line: 181, column: 19, scope: !5521, inlinedAt: !5590)
!5640 = !DILocation(line: 184, column: 19, scope: !5641, inlinedAt: !5590)
!5641 = distinct !DILexicalBlock(scope: !5520, file: !544, line: 182, column: 17)
!5642 = !DILocation(line: 186, column: 17, scope: !5641, inlinedAt: !5590)
!5643 = !DILocation(line: 190, column: 25, scope: !5519, inlinedAt: !5590)
!5644 = !DILocation(line: 191, column: 26, scope: !5519, inlinedAt: !5590)
!5645 = !DILocation(line: 193, column: 19, scope: !5519, inlinedAt: !5590)
!5646 = !DILocation(line: 196, column: 23, scope: !5516, inlinedAt: !5590)
!5647 = !DILocation(line: 197, column: 23, scope: !5516, inlinedAt: !5590)
!5648 = !DILocalVariable(name: "__fp", arg: 1, scope: !5649, file: !735, line: 63, type: !5539)
!5649 = distinct !DISubprogram(name: "getc_unlocked", scope: !735, file: !735, line: 63, type: !5650, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !200, variables: !5652)
!5650 = !DISubroutineType(types: !5651)
!5651 = !{!66, !5539}
!5652 = !{!5648}
!5653 = !DILocation(line: 63, column: 22, scope: !5649, inlinedAt: !5654)
!5654 = distinct !DILocation(line: 201, column: 27, scope: !5516, inlinedAt: !5590)
!5655 = !DILocation(line: 65, column: 10, scope: !5649, inlinedAt: !5654)
!5656 = !{!744, !629, i64 8}
!5657 = !{!744, !629, i64 16}
!5658 = !DILocation(line: 195, column: 27, scope: !5516, inlinedAt: !5590)
!5659 = !DILocation(line: 202, column: 27, scope: !5516, inlinedAt: !5590)
!5660 = distinct !{!5660, !5661, !5664}
!5661 = !DILocation(line: 209, column: 27, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5663, file: !544, line: 207, column: 25)
!5663 = distinct !DILexicalBlock(scope: !5516, file: !544, line: 206, column: 27)
!5664 = !DILocation(line: 211, column: 58, scope: !5662)
!5665 = !DILocation(line: 65, column: 10, scope: !5649, inlinedAt: !5666)
!5666 = distinct !DILocation(line: 210, column: 33, scope: !5662, inlinedAt: !5590)
!5667 = !DILocation(line: 63, column: 22, scope: !5649, inlinedAt: !5666)
!5668 = !DILocation(line: 210, column: 29, scope: !5662, inlinedAt: !5590)
!5669 = distinct !{!5669, !5670, !5671}
!5670 = !DILocation(line: 193, column: 19, scope: !5518)
!5671 = !DILocation(line: 241, column: 21, scope: !5518)
!5672 = !DILocation(line: 216, column: 23, scope: !5516, inlinedAt: !5590)
!5673 = !DILocation(line: 217, column: 27, scope: !5674, inlinedAt: !5590)
!5674 = distinct !DILexicalBlock(scope: !5516, file: !544, line: 217, column: 27)
!5675 = !DILocation(line: 217, column: 64, scope: !5674, inlinedAt: !5590)
!5676 = !DILocation(line: 217, column: 27, scope: !5516, inlinedAt: !5590)
!5677 = !DILocation(line: 219, column: 28, scope: !5516, inlinedAt: !5590)
!5678 = !DILocation(line: 198, column: 30, scope: !5516, inlinedAt: !5590)
!5679 = !DILocation(line: 220, column: 28, scope: !5516, inlinedAt: !5590)
!5680 = !DILocation(line: 198, column: 34, scope: !5516, inlinedAt: !5590)
!5681 = !DILocation(line: 199, column: 29, scope: !5516, inlinedAt: !5590)
!5682 = !DILocation(line: 222, column: 36, scope: !5683, inlinedAt: !5590)
!5683 = distinct !DILexicalBlock(scope: !5516, file: !544, line: 222, column: 27)
!5684 = !DILocation(line: 222, column: 27, scope: !5516, inlinedAt: !5590)
!5685 = !DILocation(line: 225, column: 63, scope: !5686, inlinedAt: !5590)
!5686 = distinct !DILexicalBlock(scope: !5683, file: !544, line: 223, column: 25)
!5687 = !DILocation(line: 225, column: 46, scope: !5686, inlinedAt: !5590)
!5688 = !DILocation(line: 226, column: 25, scope: !5686, inlinedAt: !5590)
!5689 = !DILocation(line: 229, column: 36, scope: !5690, inlinedAt: !5590)
!5690 = distinct !DILexicalBlock(scope: !5683, file: !544, line: 228, column: 25)
!5691 = !DILocation(line: 230, column: 73, scope: !5690, inlinedAt: !5590)
!5692 = !DILocation(line: 230, column: 46, scope: !5690, inlinedAt: !5590)
!5693 = !DILocation(line: 232, column: 35, scope: !5694, inlinedAt: !5590)
!5694 = distinct !DILexicalBlock(scope: !5516, file: !544, line: 232, column: 27)
!5695 = !DILocation(line: 232, column: 27, scope: !5516, inlinedAt: !5590)
!5696 = !DILocation(line: 236, column: 27, scope: !5697, inlinedAt: !5590)
!5697 = distinct !DILexicalBlock(scope: !5694, file: !544, line: 233, column: 25)
!5698 = !DILocation(line: 237, column: 27, scope: !5697, inlinedAt: !5590)
!5699 = !DILocation(line: 241, column: 21, scope: !5517, inlinedAt: !5590)
!5700 = !DILocation(line: 239, column: 39, scope: !5516, inlinedAt: !5590)
!5701 = !DILocation(line: 239, column: 50, scope: !5516, inlinedAt: !5590)
!5702 = !DILocation(line: 239, column: 61, scope: !5516, inlinedAt: !5590)
!5703 = !DILocalVariable(name: "__dest", arg: 1, scope: !5704, file: !5705, line: 88, type: !5708)
!5704 = distinct !DISubprogram(name: "strcpy", scope: !5705, file: !5705, line: 88, type: !5706, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !200, variables: !5710)
!5705 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5706 = !DISubroutineType(types: !5707)
!5707 = !{!27, !5708, !5709}
!5708 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !27)
!5709 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!5710 = !{!5703, !5711}
!5711 = !DILocalVariable(name: "__src", arg: 2, scope: !5704, file: !5705, line: 88, type: !5709)
!5712 = !DILocation(line: 88, column: 1, scope: !5704, inlinedAt: !5713)
!5713 = distinct !DILocation(line: 239, column: 23, scope: !5516, inlinedAt: !5590)
!5714 = !DILocation(line: 90, column: 49, scope: !5704, inlinedAt: !5713)
!5715 = !DILocation(line: 90, column: 10, scope: !5704, inlinedAt: !5713)
!5716 = !DILocation(line: 88, column: 1, scope: !5704, inlinedAt: !5717)
!5717 = distinct !DILocation(line: 240, column: 23, scope: !5516, inlinedAt: !5590)
!5718 = !DILocation(line: 90, column: 49, scope: !5704, inlinedAt: !5717)
!5719 = !DILocation(line: 90, column: 10, scope: !5704, inlinedAt: !5717)
!5720 = !DILocation(line: 193, column: 19, scope: !5517, inlinedAt: !5590)
!5721 = !DILocation(line: 242, column: 19, scope: !5519, inlinedAt: !5590)
!5722 = !DILocation(line: 243, column: 32, scope: !5723, inlinedAt: !5590)
!5723 = distinct !DILexicalBlock(scope: !5519, file: !544, line: 243, column: 23)
!5724 = !DILocation(line: 243, column: 23, scope: !5519, inlinedAt: !5590)
!5725 = !DILocation(line: 247, column: 33, scope: !5726, inlinedAt: !5590)
!5726 = distinct !DILexicalBlock(scope: !5723, file: !544, line: 246, column: 21)
!5727 = !DILocation(line: 247, column: 45, scope: !5726, inlinedAt: !5590)
!5728 = !DILocation(line: 253, column: 11, scope: !5523, inlinedAt: !5590)
!5729 = !DILocation(line: 377, column: 23, scope: !5525, inlinedAt: !5590)
!5730 = !DILocation(line: 378, column: 5, scope: !5525, inlinedAt: !5590)
!5731 = !DILocation(line: 396, column: 15, scope: !5509)
!5732 = !DILocation(line: 590, column: 8, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5591, file: !544, line: 589, column: 3)
!5734 = !DILocation(line: 590, column: 17, scope: !5733)
!5735 = !DILocation(line: 589, column: 3, scope: !5591)
!5736 = !DILocation(line: 592, column: 9, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5733, file: !544, line: 592, column: 9)
!5738 = !DILocation(line: 592, column: 35, scope: !5737)
!5739 = !DILocation(line: 593, column: 9, scope: !5737)
!5740 = !DILocation(line: 593, column: 24, scope: !5737)
!5741 = !DILocation(line: 593, column: 31, scope: !5737)
!5742 = !DILocation(line: 593, column: 34, scope: !5737)
!5743 = !DILocation(line: 593, column: 45, scope: !5737)
!5744 = !DILocation(line: 592, column: 9, scope: !5733)
!5745 = !DILocation(line: 595, column: 29, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5737, file: !544, line: 594, column: 7)
!5747 = !DILocation(line: 595, column: 27, scope: !5746)
!5748 = !DILocation(line: 595, column: 46, scope: !5746)
!5749 = !DILocation(line: 596, column: 9, scope: !5746)
!5750 = !DILocation(line: 591, column: 19, scope: !5733)
!5751 = !DILocation(line: 591, column: 36, scope: !5733)
!5752 = !DILocation(line: 591, column: 16, scope: !5733)
!5753 = !DILocation(line: 591, column: 52, scope: !5733)
!5754 = !DILocation(line: 591, column: 69, scope: !5733)
!5755 = !DILocation(line: 591, column: 49, scope: !5733)
!5756 = distinct !{!5756, !5735, !5757}
!5757 = !DILocation(line: 597, column: 7, scope: !5591)
!5758 = !DILocation(line: 602, column: 7, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5509, file: !544, line: 602, column: 7)
!5760 = !DILocation(line: 602, column: 18, scope: !5759)
!5761 = !DILocation(line: 602, column: 7, scope: !5509)
!5762 = !DILocation(line: 612, column: 3, scope: !5509)
!5763 = distinct !DISubprogram(name: "rpl_fclose", scope: !5764, file: !5764, line: 56, type: !5765, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !604, variables: !5807)
!5764 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5765 = !DISubroutineType(types: !5766)
!5766 = !{!66, !5767}
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5768, size: 64)
!5768 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1513, line: 7, baseType: !5769)
!5769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1515, line: 241, size: 1728, elements: !5770)
!5770 = !{!5771, !5772, !5773, !5774, !5775, !5776, !5777, !5778, !5779, !5780, !5781, !5782, !5783, !5791, !5792, !5793, !5794, !5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806}
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5769, file: !1515, line: 242, baseType: !66, size: 32)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5769, file: !1515, line: 247, baseType: !27, size: 64, offset: 64)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5769, file: !1515, line: 248, baseType: !27, size: 64, offset: 128)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5769, file: !1515, line: 249, baseType: !27, size: 64, offset: 192)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5769, file: !1515, line: 250, baseType: !27, size: 64, offset: 256)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5769, file: !1515, line: 251, baseType: !27, size: 64, offset: 320)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5769, file: !1515, line: 252, baseType: !27, size: 64, offset: 384)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5769, file: !1515, line: 253, baseType: !27, size: 64, offset: 448)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5769, file: !1515, line: 254, baseType: !27, size: 64, offset: 512)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5769, file: !1515, line: 256, baseType: !27, size: 64, offset: 576)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5769, file: !1515, line: 257, baseType: !27, size: 64, offset: 640)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5769, file: !1515, line: 258, baseType: !27, size: 64, offset: 704)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5769, file: !1515, line: 260, baseType: !5784, size: 64, offset: 768)
!5784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5785, size: 64)
!5785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1515, line: 156, size: 192, elements: !5786)
!5786 = !{!5787, !5788, !5790}
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5785, file: !1515, line: 157, baseType: !5784, size: 64)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5785, file: !1515, line: 158, baseType: !5789, size: 64, offset: 64)
!5789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5769, size: 64)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5785, file: !1515, line: 162, baseType: !66, size: 32, offset: 128)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5769, file: !1515, line: 262, baseType: !5789, size: 64, offset: 832)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5769, file: !1515, line: 264, baseType: !66, size: 32, offset: 896)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5769, file: !1515, line: 268, baseType: !66, size: 32, offset: 928)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5769, file: !1515, line: 270, baseType: !888, size: 64, offset: 960)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5769, file: !1515, line: 274, baseType: !147, size: 16, offset: 1024)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5769, file: !1515, line: 275, baseType: !1543, size: 8, offset: 1040)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5769, file: !1515, line: 276, baseType: !1545, size: 8, offset: 1048)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5769, file: !1515, line: 280, baseType: !1549, size: 64, offset: 1088)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5769, file: !1515, line: 289, baseType: !1552, size: 64, offset: 1152)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5769, file: !1515, line: 297, baseType: !29, size: 64, offset: 1216)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5769, file: !1515, line: 298, baseType: !29, size: 64, offset: 1280)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5769, file: !1515, line: 299, baseType: !29, size: 64, offset: 1344)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5769, file: !1515, line: 300, baseType: !29, size: 64, offset: 1408)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5769, file: !1515, line: 302, baseType: !99, size: 64, offset: 1472)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5769, file: !1515, line: 303, baseType: !66, size: 32, offset: 1536)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5769, file: !1515, line: 305, baseType: !1560, size: 160, offset: 1568)
!5807 = !{!5808, !5809, !5810, !5811}
!5808 = !DILocalVariable(name: "fp", arg: 1, scope: !5763, file: !5764, line: 56, type: !5767)
!5809 = !DILocalVariable(name: "saved_errno", scope: !5763, file: !5764, line: 58, type: !66)
!5810 = !DILocalVariable(name: "fd", scope: !5763, file: !5764, line: 59, type: !66)
!5811 = !DILocalVariable(name: "result", scope: !5763, file: !5764, line: 60, type: !66)
!5812 = !DILocation(line: 56, column: 19, scope: !5763)
!5813 = !DILocation(line: 58, column: 7, scope: !5763)
!5814 = !DILocation(line: 60, column: 7, scope: !5763)
!5815 = !DILocation(line: 63, column: 8, scope: !5763)
!5816 = !DILocation(line: 59, column: 7, scope: !5763)
!5817 = !DILocation(line: 64, column: 10, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5763, file: !5764, line: 64, column: 7)
!5819 = !DILocation(line: 64, column: 7, scope: !5763)
!5820 = !DILocation(line: 65, column: 12, scope: !5818)
!5821 = !DILocation(line: 65, column: 5, scope: !5818)
!5822 = !DILocation(line: 70, column: 9, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5763, file: !5764, line: 70, column: 7)
!5824 = !DILocation(line: 70, column: 23, scope: !5823)
!5825 = !DILocation(line: 70, column: 33, scope: !5823)
!5826 = !DILocation(line: 70, column: 26, scope: !5823)
!5827 = !DILocation(line: 70, column: 59, scope: !5823)
!5828 = !DILocation(line: 71, column: 7, scope: !5823)
!5829 = !DILocation(line: 71, column: 10, scope: !5823)
!5830 = !DILocation(line: 70, column: 7, scope: !5763)
!5831 = !DILocation(line: 98, column: 12, scope: !5763)
!5832 = !DILocation(line: 103, column: 7, scope: !5763)
!5833 = !DILocation(line: 72, column: 19, scope: !5823)
!5834 = !DILocation(line: 103, column: 19, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5763, file: !5764, line: 103, column: 7)
!5836 = !DILocation(line: 105, column: 13, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5835, file: !5764, line: 104, column: 5)
!5838 = !DILocation(line: 107, column: 5, scope: !5837)
!5839 = !DILocation(line: 110, column: 1, scope: !5763)
!5840 = distinct !DISubprogram(name: "rpl_fflush", scope: !5841, file: !5841, line: 127, type: !5842, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !5884)
!5841 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5842 = !DISubroutineType(types: !5843)
!5843 = !{!66, !5844}
!5844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5845, size: 64)
!5845 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1513, line: 7, baseType: !5846)
!5846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1515, line: 241, size: 1728, elements: !5847)
!5847 = !{!5848, !5849, !5850, !5851, !5852, !5853, !5854, !5855, !5856, !5857, !5858, !5859, !5860, !5868, !5869, !5870, !5871, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883}
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5846, file: !1515, line: 242, baseType: !66, size: 32)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5846, file: !1515, line: 247, baseType: !27, size: 64, offset: 64)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5846, file: !1515, line: 248, baseType: !27, size: 64, offset: 128)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5846, file: !1515, line: 249, baseType: !27, size: 64, offset: 192)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5846, file: !1515, line: 250, baseType: !27, size: 64, offset: 256)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5846, file: !1515, line: 251, baseType: !27, size: 64, offset: 320)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5846, file: !1515, line: 252, baseType: !27, size: 64, offset: 384)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5846, file: !1515, line: 253, baseType: !27, size: 64, offset: 448)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5846, file: !1515, line: 254, baseType: !27, size: 64, offset: 512)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5846, file: !1515, line: 256, baseType: !27, size: 64, offset: 576)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5846, file: !1515, line: 257, baseType: !27, size: 64, offset: 640)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5846, file: !1515, line: 258, baseType: !27, size: 64, offset: 704)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5846, file: !1515, line: 260, baseType: !5861, size: 64, offset: 768)
!5861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5862, size: 64)
!5862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1515, line: 156, size: 192, elements: !5863)
!5863 = !{!5864, !5865, !5867}
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5862, file: !1515, line: 157, baseType: !5861, size: 64)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5862, file: !1515, line: 158, baseType: !5866, size: 64, offset: 64)
!5866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5846, size: 64)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5862, file: !1515, line: 162, baseType: !66, size: 32, offset: 128)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5846, file: !1515, line: 262, baseType: !5866, size: 64, offset: 832)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5846, file: !1515, line: 264, baseType: !66, size: 32, offset: 896)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5846, file: !1515, line: 268, baseType: !66, size: 32, offset: 928)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5846, file: !1515, line: 270, baseType: !888, size: 64, offset: 960)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5846, file: !1515, line: 274, baseType: !147, size: 16, offset: 1024)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5846, file: !1515, line: 275, baseType: !1543, size: 8, offset: 1040)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5846, file: !1515, line: 276, baseType: !1545, size: 8, offset: 1048)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5846, file: !1515, line: 280, baseType: !1549, size: 64, offset: 1088)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5846, file: !1515, line: 289, baseType: !1552, size: 64, offset: 1152)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5846, file: !1515, line: 297, baseType: !29, size: 64, offset: 1216)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5846, file: !1515, line: 298, baseType: !29, size: 64, offset: 1280)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5846, file: !1515, line: 299, baseType: !29, size: 64, offset: 1344)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5846, file: !1515, line: 300, baseType: !29, size: 64, offset: 1408)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5846, file: !1515, line: 302, baseType: !99, size: 64, offset: 1472)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5846, file: !1515, line: 303, baseType: !66, size: 32, offset: 1536)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5846, file: !1515, line: 305, baseType: !1560, size: 160, offset: 1568)
!5884 = !{!5885}
!5885 = !DILocalVariable(name: "stream", arg: 1, scope: !5840, file: !5841, line: 127, type: !5844)
!5886 = !DILocation(line: 127, column: 19, scope: !5840)
!5887 = !DILocation(line: 148, column: 14, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5840, file: !5841, line: 148, column: 7)
!5889 = !DILocation(line: 148, column: 22, scope: !5888)
!5890 = !DILocation(line: 148, column: 27, scope: !5888)
!5891 = !DILocation(line: 148, column: 7, scope: !5840)
!5892 = !DILocation(line: 149, column: 12, scope: !5888)
!5893 = !DILocation(line: 149, column: 5, scope: !5888)
!5894 = !DILocalVariable(name: "fp", arg: 1, scope: !5895, file: !5841, line: 40, type: !5844)
!5895 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5841, file: !5841, line: 40, type: !5896, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !5898)
!5896 = !DISubroutineType(types: !5897)
!5897 = !{null, !5844}
!5898 = !{!5894}
!5899 = !DILocation(line: 40, column: 48, scope: !5895, inlinedAt: !5900)
!5900 = distinct !DILocation(line: 153, column: 3, scope: !5840)
!5901 = !DILocation(line: 42, column: 11, scope: !5902, inlinedAt: !5900)
!5902 = distinct !DILexicalBlock(scope: !5895, file: !5841, line: 42, column: 7)
!5903 = !DILocation(line: 42, column: 18, scope: !5902, inlinedAt: !5900)
!5904 = !DILocation(line: 42, column: 7, scope: !5895, inlinedAt: !5900)
!5905 = !DILocation(line: 44, column: 5, scope: !5902, inlinedAt: !5900)
!5906 = !DILocation(line: 155, column: 10, scope: !5840)
!5907 = !DILocation(line: 155, column: 3, scope: !5840)
!5908 = !DILocation(line: 229, column: 1, scope: !5840)
!5909 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5910, file: !5910, line: 28, type: !5911, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !5954)
!5910 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!66, !5913, !5953, !66}
!5913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5914, size: 64)
!5914 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1513, line: 7, baseType: !5915)
!5915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1515, line: 241, size: 1728, elements: !5916)
!5916 = !{!5917, !5918, !5919, !5920, !5921, !5922, !5923, !5924, !5925, !5926, !5927, !5928, !5929, !5937, !5938, !5939, !5940, !5941, !5942, !5943, !5944, !5945, !5946, !5947, !5948, !5949, !5950, !5951, !5952}
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5915, file: !1515, line: 242, baseType: !66, size: 32)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5915, file: !1515, line: 247, baseType: !27, size: 64, offset: 64)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5915, file: !1515, line: 248, baseType: !27, size: 64, offset: 128)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5915, file: !1515, line: 249, baseType: !27, size: 64, offset: 192)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5915, file: !1515, line: 250, baseType: !27, size: 64, offset: 256)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5915, file: !1515, line: 251, baseType: !27, size: 64, offset: 320)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5915, file: !1515, line: 252, baseType: !27, size: 64, offset: 384)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5915, file: !1515, line: 253, baseType: !27, size: 64, offset: 448)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5915, file: !1515, line: 254, baseType: !27, size: 64, offset: 512)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5915, file: !1515, line: 256, baseType: !27, size: 64, offset: 576)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5915, file: !1515, line: 257, baseType: !27, size: 64, offset: 640)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5915, file: !1515, line: 258, baseType: !27, size: 64, offset: 704)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5915, file: !1515, line: 260, baseType: !5930, size: 64, offset: 768)
!5930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5931, size: 64)
!5931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1515, line: 156, size: 192, elements: !5932)
!5932 = !{!5933, !5934, !5936}
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5931, file: !1515, line: 157, baseType: !5930, size: 64)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5931, file: !1515, line: 158, baseType: !5935, size: 64, offset: 64)
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5915, size: 64)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5931, file: !1515, line: 162, baseType: !66, size: 32, offset: 128)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5915, file: !1515, line: 262, baseType: !5935, size: 64, offset: 832)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5915, file: !1515, line: 264, baseType: !66, size: 32, offset: 896)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5915, file: !1515, line: 268, baseType: !66, size: 32, offset: 928)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5915, file: !1515, line: 270, baseType: !888, size: 64, offset: 960)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5915, file: !1515, line: 274, baseType: !147, size: 16, offset: 1024)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5915, file: !1515, line: 275, baseType: !1543, size: 8, offset: 1040)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5915, file: !1515, line: 276, baseType: !1545, size: 8, offset: 1048)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5915, file: !1515, line: 280, baseType: !1549, size: 64, offset: 1088)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5915, file: !1515, line: 289, baseType: !1552, size: 64, offset: 1152)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5915, file: !1515, line: 297, baseType: !29, size: 64, offset: 1216)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5915, file: !1515, line: 298, baseType: !29, size: 64, offset: 1280)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5915, file: !1515, line: 299, baseType: !29, size: 64, offset: 1344)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5915, file: !1515, line: 300, baseType: !29, size: 64, offset: 1408)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5915, file: !1515, line: 302, baseType: !99, size: 64, offset: 1472)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5915, file: !1515, line: 303, baseType: !66, size: 32, offset: 1536)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5915, file: !1515, line: 305, baseType: !1560, size: 160, offset: 1568)
!5953 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !4897, line: 57, baseType: !888)
!5954 = !{!5955, !5956, !5957, !5958}
!5955 = !DILocalVariable(name: "fp", arg: 1, scope: !5909, file: !5910, line: 28, type: !5913)
!5956 = !DILocalVariable(name: "offset", arg: 2, scope: !5909, file: !5910, line: 28, type: !5953)
!5957 = !DILocalVariable(name: "whence", arg: 3, scope: !5909, file: !5910, line: 28, type: !66)
!5958 = !DILocalVariable(name: "pos", scope: !5959, file: !5910, line: 116, type: !5953)
!5959 = distinct !DILexicalBlock(scope: !5960, file: !5910, line: 112, column: 5)
!5960 = distinct !DILexicalBlock(scope: !5909, file: !5910, line: 51, column: 7)
!5961 = !DILocation(line: 28, column: 15, scope: !5909)
!5962 = !DILocation(line: 28, column: 25, scope: !5909)
!5963 = !DILocation(line: 28, column: 37, scope: !5909)
!5964 = !DILocation(line: 51, column: 11, scope: !5960)
!5965 = !DILocation(line: 51, column: 31, scope: !5960)
!5966 = !DILocation(line: 51, column: 24, scope: !5960)
!5967 = !DILocation(line: 52, column: 7, scope: !5960)
!5968 = !DILocation(line: 52, column: 14, scope: !5960)
!5969 = !DILocation(line: 52, column: 35, scope: !5960)
!5970 = !{!744, !629, i64 32}
!5971 = !DILocation(line: 52, column: 28, scope: !5960)
!5972 = !DILocation(line: 53, column: 7, scope: !5960)
!5973 = !DILocation(line: 53, column: 14, scope: !5960)
!5974 = !{!744, !629, i64 72}
!5975 = !DILocation(line: 53, column: 28, scope: !5960)
!5976 = !DILocation(line: 51, column: 7, scope: !5909)
!5977 = !DILocation(line: 116, column: 26, scope: !5959)
!5978 = !DILocation(line: 116, column: 19, scope: !5959)
!5979 = !DILocation(line: 116, column: 13, scope: !5959)
!5980 = !DILocation(line: 117, column: 15, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5959, file: !5910, line: 117, column: 11)
!5982 = !DILocation(line: 117, column: 11, scope: !5959)
!5983 = !DILocation(line: 127, column: 11, scope: !5959)
!5984 = !DILocation(line: 127, column: 18, scope: !5959)
!5985 = !DILocation(line: 128, column: 11, scope: !5959)
!5986 = !DILocation(line: 128, column: 19, scope: !5959)
!5987 = !{!744, !745, i64 144}
!5988 = !DILocation(line: 159, column: 7, scope: !5959)
!5989 = !DILocation(line: 161, column: 10, scope: !5909)
!5990 = !DILocation(line: 161, column: 3, scope: !5909)
!5991 = !DILocation(line: 162, column: 1, scope: !5909)
