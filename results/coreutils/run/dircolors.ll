; ModuleID = 'coreutils-8.30/src/dircolors.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, %union.anon, i64, %union.anon.0, %union.anon.1, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [0 x i8] }
%union.anon = type { i64 }
%union.anon.0 = type { i8* (i64)* }
%union.anon.1 = type { void (i8*)* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon.12 }
%union.anon.12 = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [274 x i8] c"Output commands to set the LS_COLORS environment variable.\0A\0ADetermine format of output:\0A  -b, --sh, --bourne-shell    output Bourne shell code to set LS_COLORS\0A  -c, --csh, --c-shell        output C shell code to set LS_COLORS\0A  -p, --print-database        output defaults\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [222 x i8] c"\0AIf FILE is specified, read it to determine which colors to use for which\0Afile types and extensions.  Otherwise, a precompiled database is used.\0AFor details on the format of these files, run 'dircolors --print-database'.\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dircolors\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"bcp\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [15 x i8] c"H. Peter Anvin\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [103 x i8] c"the options to output dircolors' internal database and\0Ato select a shell syntax are mutually exclusive\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"file operands cannot be combined with --print-database (-p)\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@G_line = internal constant [4164 x i8] c"# Configuration file for dircolors, a utility to help you set the\00# LS_COLORS environment variable used by GNU ls with the --color option.\00# Copyright (C) 1996-2018 Free Software Foundation, Inc.\00# Copying and distribution of this file, with or without modification,\00# are permitted provided the copyright notice and this notice are preserved.\00# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the\00# slackware version of dircolors) are recognized but ignored.\00# Below are TERM entries, which can be a glob patterns, to match\00# against the TERM environment variable to determine if it is colorizable.\00TERM Eterm\00TERM ansi\00TERM *color*\00TERM con[0-9]*x[0-9]*\00TERM cons25\00TERM console\00TERM cygwin\00TERM dtterm\00TERM gnome\00TERM hurd\00TERM jfbterm\00TERM konsole\00TERM kterm\00TERM linux\00TERM linux-c\00TERM mlterm\00TERM putty\00TERM rxvt*\00TERM screen*\00TERM st\00TERM terminator\00TERM tmux*\00TERM vt100\00TERM xterm*\00# Below are the color init strings for the basic file types. A color init\00# string consists of one or more of the following numeric codes:\00# Attribute codes:\00# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed\00# Text color codes:\00# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white\00# Background color codes:\00# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white\00#NORMAL 00 # no color code at all\00#FILE 00 # regular file: use no color at all\00RESET 0 # reset to \22normal\22 color\00DIR 01;34 # directory\00LINK 01;36 # symbolic link. (If you set this to 'target' instead of a\00 # numerical value, the color is as for the file pointed to.)\00MULTIHARDLINK 00 # regular file with more than one link\00FIFO 40;33 # pipe\00SOCK 01;35 # socket\00DOOR 01;35 # door\00BLK 40;33;01 # block device driver\00CHR 40;33;01 # character device driver\00ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ...\00MISSING 00 # ... and the files they point to\00SETUID 37;41 # file that is setuid (u+s)\00SETGID 30;43 # file that is setgid (g+s)\00CAPABILITY 30;41 # file with capability\00STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)\00OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky\00STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable\00# This is for files with execute permission:\00EXEC 01;32\00# List any file extensions like '.gz' or '.tar' that you would like ls\00# to colorize below. Put the extension, a space, and the color init string.\00# (and any comments you want to add after a '#')\00# If you use DOS-style suffixes, you may want to uncomment the following:\00#.cmd 01;32 # executables (bright green)\00#.exe 01;32\00#.com 01;32\00#.btm 01;32\00#.bat 01;32\00# Or if you want to colorize scripts even if they do not have the\00# executable bit actually set.\00#.sh 01;32\00#.csh 01;32\00 # archives or compressed (bright red)\00.tar 01;31\00.tgz 01;31\00.arc 01;31\00.arj 01;31\00.taz 01;31\00.lha 01;31\00.lz4 01;31\00.lzh 01;31\00.lzma 01;31\00.tlz 01;31\00.txz 01;31\00.tzo 01;31\00.t7z 01;31\00.zip 01;31\00.z 01;31\00.dz 01;31\00.gz 01;31\00.lrz 01;31\00.lz 01;31\00.lzo 01;31\00.xz 01;31\00.zst 01;31\00.tzst 01;31\00.bz2 01;31\00.bz 01;31\00.tbz 01;31\00.tbz2 01;31\00.tz 01;31\00.deb 01;31\00.rpm 01;31\00.jar 01;31\00.war 01;31\00.ear 01;31\00.sar 01;31\00.rar 01;31\00.alz 01;31\00.ace 01;31\00.zoo 01;31\00.cpio 01;31\00.7z 01;31\00.rz 01;31\00.cab 01;31\00.wim 01;31\00.swm 01;31\00.dwm 01;31\00.esd 01;31\00# image formats\00.jpg 01;35\00.jpeg 01;35\00.mjpg 01;35\00.mjpeg 01;35\00.gif 01;35\00.bmp 01;35\00.pbm 01;35\00.pgm 01;35\00.ppm 01;35\00.tga 01;35\00.xbm 01;35\00.xpm 01;35\00.tif 01;35\00.tiff 01;35\00.png 01;35\00.svg 01;35\00.svgz 01;35\00.mng 01;35\00.pcx 01;35\00.mov 01;35\00.mpg 01;35\00.mpeg 01;35\00.m2v 01;35\00.mkv 01;35\00.webm 01;35\00.ogm 01;35\00.mp4 01;35\00.m4v 01;35\00.mp4v 01;35\00.vob 01;35\00.qt 01;35\00.nuv 01;35\00.wmv 01;35\00.asf 01;35\00.rm 01;35\00.rmvb 01;35\00.flc 01;35\00.avi 01;35\00.fli 01;35\00.flv 01;35\00.gl 01;35\00.dl 01;35\00.xcf 01;35\00.xwd 01;35\00.yuv 01;35\00.cgm 01;35\00.emf 01;35\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.ogv 01;35\00.ogx 01;35\00# audio formats\00.aac 00;36\00.au 00;36\00.flac 00;36\00.m4a 00;36\00.mid 00;36\00.midi 00;36\00.mka 00;36\00.mp3 00;36\00.mpc 00;36\00.ogg 00;36\00.ra 00;36\00.wav 00;36\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.oga 00;36\00.opus 00;36\00.spx 00;36\00.xspf 00;36\00", align 16, !dbg !245
@.str.44 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"csh\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"tcsh\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"no SHELL environment variable, and no shell type option given\00", align 1
@lsc_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !243
@.str.115 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.116 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"LS_COLORS='\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"setenv LS_COLORS '\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"';\0Aexport LS_COLORS\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"%s:%lu: invalid line;  missing second token\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"EIGHTBIT\00", align 1
@slack_codes = internal unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* null], align 16, !dbg !251
@ls_codes = internal unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0), i8* null], align 16, !dbg !257
@.str.52 = private unnamed_addr constant [32 x i8] c"%s:%lu: unrecognized keyword %s\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"<internal>\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"bd\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"lc\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"ec\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"su\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"sg\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"ow\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"tw\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"mh\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"NORM\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"RESET\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"LNK\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"ORPHAN\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"PIPE\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"SOCK\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"BLK\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"CHR\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"DOOR\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"LEFTCODE\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"RIGHTCODE\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"ENDCODE\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"SUID\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"SETUID\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"SGID\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"SETGID\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"STICKY\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"OTHER_WRITABLE\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"OWR\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"STICKY_OTHER_WRITABLE\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"OWT\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"CAPABILITY\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"MULTIHARDLINK\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"CLRTOEOL\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"bourne-shell\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"c-shell\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"print-database\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i64 0, i64 0), align 8, !dbg !271
@.str.118 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !277
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !282
@.str.123 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.124 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !285
@.str.132 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !292
@.str.137 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.138 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.139 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.142, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.143, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.144, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.145, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.146, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.147, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.148, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.149, i32 0, i32 0), i8* null], align 16, !dbg !299
@.str.140 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.142 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.143 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.144 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.145 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.146 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.147 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.148 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.149 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !311
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !318
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !328
@.str.11.150 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.151 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.152 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.153 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.154 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.155 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.156 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !335
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !342
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !330
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !344
@.str.163 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.164 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.165 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.166 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.167 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.168 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.169 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.170 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.171 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.172 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.173 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.174 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.175 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.176 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.179 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.180 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.181 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.182 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.183 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.184 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !349
@.str.1.195 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.196 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@obstack_alloc_failed_handler = dso_local local_unnamed_addr global void ()* @print_and_abort, align 8, !dbg !358
@.str.1.209 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.210 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.219 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.220 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.223 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.224 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !818 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !823, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i32 %0, metadata !822, metadata !DIExpression()), !dbg !846
  %3 = icmp eq i32 %0, 0, !dbg !847
  br i1 %3, label %9, label %4, !dbg !848

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !849, !tbaa !851
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !849
  %7 = load i8*, i8** @program_name, align 8, !dbg !849, !tbaa !851
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !849
  br label %60, !dbg !849

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !855
  %11 = load i8*, i8** @program_name, align 8, !dbg !855, !tbaa !851
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #12, !dbg !855
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !856
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !856, !tbaa !851
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !856
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !857
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !857, !tbaa !851
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !857
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !858
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !858, !tbaa !851
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !858
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !859
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !859, !tbaa !851
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !859
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !860
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #12, !dbg !860
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %25, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !842
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !861
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !831, metadata !DIExpression()) #12, !dbg !862
  br label %27, !dbg !863

; <label>:27:                                     ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !831, metadata !DIExpression()) #12, !dbg !862
  %30 = tail call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %28) #14, !dbg !863
  %31 = icmp eq i32 %30, 0, !dbg !863
  br i1 %31, label %37, label %32, !dbg !864

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !865
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !831, metadata !DIExpression()) #12, !dbg !862
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !866
  %35 = load i8*, i8** %34, align 8, !dbg !866, !tbaa !867
  %36 = icmp eq i8* %35, null, !dbg !869
  br i1 %36, label %37, label %27, !dbg !870, !llvm.loop !871

; <label>:37:                                     ; preds = %32, %27
  %38 = phi %struct.infomap* [ %33, %32 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !831, metadata !DIExpression()) #12, !dbg !862
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !831, metadata !DIExpression()) #12, !dbg !862
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !874
  %40 = load i8*, i8** %39, align 8, !dbg !874, !tbaa !876
  %41 = icmp eq i8* %40, null, !dbg !877
  %42 = select i1 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %40, !dbg !878
  call void @llvm.dbg.value(metadata i8* %42, metadata !830, metadata !DIExpression()) #12, !dbg !879
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #12, !dbg !880
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !880
  %45 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !881
  call void @llvm.dbg.value(metadata i8* %45, metadata !838, metadata !DIExpression()) #12, !dbg !882
  %46 = icmp eq i8* %45, null, !dbg !883
  br i1 %46, label %53, label %47, !dbg !885

; <label>:47:                                     ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #14, !dbg !886
  %49 = icmp eq i32 %48, 0, !dbg !886
  br i1 %49, label %53, label %50, !dbg !887

; <label>:50:                                     ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.33, i64 0, i64 0), i32 5) #12, !dbg !888
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !888
  br label %53, !dbg !890

; <label>:53:                                     ; preds = %37, %47, %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #12, !dbg !891
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !891
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #12, !dbg !892
  %57 = icmp eq i8* %42, getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), !dbg !892
  %58 = select i1 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !892
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* %42, i8* %58) #12, !dbg !892
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #12, !dbg !893
  br label %60

; <label>:60:                                     ; preds = %53, %4
  tail call void @exit(i32 %0) #15, !dbg !894
  unreachable, !dbg !894
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !895 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !900, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i8** %1, metadata !901, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata i8 1, metadata !902, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 2, metadata !904, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i8 0, metadata !905, metadata !DIExpression()), !dbg !925
  %3 = load i8*, i8** %1, align 8, !dbg !926, !tbaa !851
  tail call void @set_program_name(i8* %3) #12, !dbg !927
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !928
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !929
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !930
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !931
  br label %8, !dbg !932

; <label>:8:                                      ; preds = %11, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %11 ]
  %10 = phi i32 [ 2, %2 ], [ %12, %11 ]
  br label %11, !dbg !933

; <label>:11:                                     ; preds = %14, %8
  %12 = phi i32 [ %10, %8 ], [ %15, %14 ], !dbg !924
  call void @llvm.dbg.value(metadata i32 %12, metadata !904, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i8 %9, metadata !905, metadata !DIExpression()), !dbg !925
  %13 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !933
  call void @llvm.dbg.value(metadata i32 %13, metadata !903, metadata !DIExpression()), !dbg !934
  switch i32 %13, label %21 [
    i32 -1, label %22
    i32 98, label %14
    i32 99, label %16
    i32 112, label %8
    i32 -130, label %17
    i32 -131, label %18
  ], !dbg !932, !llvm.loop !935

; <label>:14:                                     ; preds = %11, %16
  %15 = phi i32 [ 1, %16 ], [ 0, %11 ]
  br label %11, !dbg !924, !llvm.loop !935

; <label>:16:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i32 1, metadata !904, metadata !DIExpression()), !dbg !924
  br label %14, !dbg !937

; <label>:17:                                     ; preds = %11
  tail call void @usage(i32 0) #16, !dbg !939
  unreachable, !dbg !939

; <label>:18:                                     ; preds = %11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !940, !tbaa !851
  %20 = load i8*, i8** @Version, align 8, !dbg !940, !tbaa !851
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* null) #12, !dbg !940
  tail call void @exit(i32 0) #15, !dbg !940
  unreachable, !dbg !940

; <label>:21:                                     ; preds = %11
  tail call void @usage(i32 1) #16, !dbg !941
  unreachable, !dbg !941

; <label>:22:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i32 %12, metadata !904, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 %12, metadata !904, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i8 %9, metadata !905, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i32 %12, metadata !904, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i8 %9, metadata !905, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i32 %12, metadata !904, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i8 %9, metadata !905, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i32 %12, metadata !904, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i8 %9, metadata !905, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i32 %12, metadata !904, metadata !DIExpression()), !dbg !924
  %23 = load i32, i32* @optind, align 4, !dbg !942, !tbaa !943
  %24 = sub nsw i32 %0, %23, !dbg !945
  call void @llvm.dbg.value(metadata i32 %24, metadata !900, metadata !DIExpression()), !dbg !921
  %25 = sext i32 %23 to i64, !dbg !946
  %26 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !946
  call void @llvm.dbg.value(metadata i8** %26, metadata !901, metadata !DIExpression()), !dbg !922
  %27 = icmp ne i8 %9, 0, !dbg !947
  %28 = icmp ne i32 %12, 2, !dbg !949
  %29 = and i1 %27, %28, !dbg !950
  br i1 %29, label %30, label %32, !dbg !950

; <label>:30:                                     ; preds = %22
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.13, i64 0, i64 0), i32 5) #12, !dbg !951
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %31) #12, !dbg !953
  tail call void @usage(i32 1) #16, !dbg !954
  unreachable, !dbg !954

; <label>:32:                                     ; preds = %22
  %33 = xor i1 %27, true, !dbg !955
  %34 = zext i1 %33 to i32, !dbg !955
  %35 = icmp sgt i32 %24, %34, !dbg !957
  br i1 %35, label %36, label %47, !dbg !958

; <label>:36:                                     ; preds = %32
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #12, !dbg !959
  %38 = zext i1 %33 to i64, !dbg !961
  %39 = getelementptr inbounds i8*, i8** %26, i64 %38, !dbg !961
  %40 = load i8*, i8** %39, align 8, !dbg !961, !tbaa !851
  %41 = tail call i8* @quote(i8* %40) #12, !dbg !962
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %37, i8* %41) #12, !dbg !963
  br i1 %27, label %42, label %46, !dbg !964

; <label>:42:                                     ; preds = %36
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !965, !tbaa !851
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0), i32 5) #12, !dbg !965
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %43, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %44) #12, !dbg !965
  br label %46, !dbg !965

; <label>:46:                                     ; preds = %42, %36
  tail call void @usage(i32 1) #16, !dbg !967
  unreachable, !dbg !967

; <label>:47:                                     ; preds = %32
  br i1 %27, label %48, label %57, !dbg !968

; <label>:48:                                     ; preds = %47, %48
  %49 = phi i8* [ %53, %48 ], [ getelementptr inbounds ([4164 x i8], [4164 x i8]* @G_line, i64 0, i64 0), %47 ]
  call void @llvm.dbg.value(metadata i8* %49, metadata !906, metadata !DIExpression()), !dbg !969
  %50 = tail call i32 @puts(i8* %49), !dbg !970
  %51 = tail call i64 @strlen(i8* %49) #14, !dbg !972
  %52 = add i64 %51, 1, !dbg !973
  %53 = getelementptr inbounds i8, i8* %49, i64 %52, !dbg !974
  call void @llvm.dbg.value(metadata i8* %53, metadata !906, metadata !DIExpression()), !dbg !969
  %54 = ptrtoint i8* %53 to i64, !dbg !975
  %55 = sub i64 %54, ptrtoint ([4164 x i8]* @G_line to i64), !dbg !975
  %56 = icmp ult i64 %55, 4164, !dbg !976
  br i1 %56, label %48, label %138, !dbg !977, !llvm.loop !978

; <label>:57:                                     ; preds = %47
  %58 = icmp eq i32 %12, 2, !dbg !980
  br i1 %58, label %59, label %75, !dbg !982

; <label>:59:                                     ; preds = %57
  %60 = tail call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #12, !dbg !983
  call void @llvm.dbg.value(metadata i8* %60, metadata !988, metadata !DIExpression()) #12, !dbg !991
  %61 = icmp eq i8* %60, null, !dbg !992
  br i1 %61, label %73, label %62, !dbg !994

; <label>:62:                                     ; preds = %59
  %63 = load i8, i8* %60, align 1, !dbg !995, !tbaa !996
  %64 = icmp eq i8 %63, 0, !dbg !997
  br i1 %64, label %73, label %65, !dbg !998

; <label>:65:                                     ; preds = %62
  %66 = tail call i8* @last_component(i8* nonnull %60) #14, !dbg !999
  call void @llvm.dbg.value(metadata i8* %66, metadata !988, metadata !DIExpression()) #12, !dbg !991
  %67 = tail call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #14, !dbg !1000
  %68 = icmp eq i32 %67, 0, !dbg !1000
  br i1 %68, label %75, label %69, !dbg !1002

; <label>:69:                                     ; preds = %65
  %70 = tail call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #14, !dbg !1003
  %71 = icmp eq i32 %70, 0, !dbg !1003
  %72 = zext i1 %71 to i32, !dbg !1004
  br label %75, !dbg !1004

; <label>:73:                                     ; preds = %62, %59
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !1005
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %74) #12, !dbg !1005
  unreachable, !dbg !1005

; <label>:75:                                     ; preds = %69, %65, %57
  %76 = phi i32 [ %12, %57 ], [ %72, %69 ], [ 1, %65 ], !dbg !1008
  call void @llvm.dbg.value(metadata i32 %76, metadata !904, metadata !DIExpression()), !dbg !924
  %77 = tail call i32 @_obstack_begin(%struct.obstack* nonnull @lsc_obstack, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #12, !dbg !1009
  %78 = icmp eq i32 %24, 0, !dbg !1010
  br i1 %78, label %79, label %81, !dbg !1012

; <label>:79:                                     ; preds = %75
  %80 = tail call fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE* null, i8* null), !dbg !1013
  br i1 %80, label %104, label %138, !dbg !1014

; <label>:81:                                     ; preds = %75
  %82 = load i8*, i8** %26, align 8, !dbg !1015, !tbaa !851
  call void @llvm.dbg.value(metadata i8* %82, metadata !1016, metadata !DIExpression()) #12, !dbg !1022
  %83 = tail call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i64 0, i64 0)) #14, !dbg !1024
  %84 = icmp eq i32 %83, 0, !dbg !1024
  br i1 %84, label %93, label %85, !dbg !1026

; <label>:85:                                     ; preds = %81
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1027, !tbaa !851
  %87 = tail call %struct._IO_FILE* @freopen_safer(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0), %struct._IO_FILE* %86) #12, !dbg !1028
  %88 = icmp eq %struct._IO_FILE* %87, null, !dbg !1029
  br i1 %88, label %89, label %93, !dbg !1030

; <label>:89:                                     ; preds = %85
  %90 = tail call i32* @__errno_location() #17, !dbg !1031
  %91 = load i32, i32* %90, align 4, !dbg !1031, !tbaa !943
  %92 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %82) #12, !dbg !1033
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %92) #12, !dbg !1034
  br label %138, !dbg !1035

; <label>:93:                                     ; preds = %85, %81
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1036, !tbaa !851
  %95 = tail call fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE* %94, i8* %82) #12, !dbg !1037
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1038, !tbaa !851
  %97 = tail call i32 @rpl_fclose(%struct._IO_FILE* %96) #12, !dbg !1040
  %98 = icmp eq i32 %97, 0, !dbg !1041
  br i1 %98, label %103, label %99, !dbg !1042

; <label>:99:                                     ; preds = %93
  %100 = tail call i32* @__errno_location() #17, !dbg !1043
  %101 = load i32, i32* %100, align 4, !dbg !1043, !tbaa !943
  %102 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %82) #12, !dbg !1045
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %102) #12, !dbg !1046
  br label %138, !dbg !1047

; <label>:103:                                    ; preds = %93
  br i1 %95, label %104, label %138, !dbg !1014

; <label>:104:                                    ; preds = %79, %103
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !913, metadata !DIExpression()), !dbg !1048
  %105 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1048, !tbaa !1049
  %106 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 2), align 8, !dbg !1048, !tbaa !1052
  %107 = ptrtoint i8* %105 to i64, !dbg !1048
  %108 = ptrtoint i8* %106 to i64, !dbg !1048
  %109 = sub i64 %107, %108, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %109, metadata !909, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !916, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %106, metadata !918, metadata !DIExpression()), !dbg !1054
  %110 = icmp eq i8* %105, %106, !dbg !1055
  br i1 %110, label %111, label %114, !dbg !1054

; <label>:111:                                    ; preds = %104
  %112 = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 10), align 8, !dbg !1055
  %113 = or i8 %112, 2, !dbg !1055
  store i8 %113, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 10), align 8, !dbg !1055
  br label %114, !dbg !1055

; <label>:114:                                    ; preds = %111, %104
  %115 = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 6), align 8, !dbg !1054, !tbaa !1057
  %116 = add i64 %115, %107, !dbg !1054
  %117 = xor i64 %115, -1, !dbg !1054
  %118 = and i64 %116, %117, !dbg !1054
  %119 = getelementptr inbounds i8, i8* null, i64 %118, !dbg !1054
  %120 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 1) to i64*), align 8, !dbg !1058, !tbaa !1060
  %121 = ptrtoint i8* %119 to i64, !dbg !1058
  %122 = sub i64 %121, %120, !dbg !1058
  %123 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1058, !tbaa !1061
  %124 = ptrtoint i8* %123 to i64, !dbg !1058
  %125 = sub i64 %124, %120, !dbg !1058
  %126 = icmp ugt i64 %122, %125, !dbg !1058
  %127 = select i1 %126, i8* %123, i8* %119, !dbg !1054
  store i8* %127, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1054
  %128 = ptrtoint i8* %127 to i64, !dbg !1054
  store i64 %128, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 2) to i64*), align 8, !dbg !1054, !tbaa !1052
  call void @llvm.dbg.value(metadata i8* %106, metadata !915, metadata !DIExpression()), !dbg !1062
  %129 = icmp eq i32 %76, 0, !dbg !1063
  %130 = select i1 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), !dbg !1065
  %131 = select i1 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), !dbg !1065
  call void @llvm.dbg.value(metadata i8* %131, metadata !920, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i8* %130, metadata !919, metadata !DIExpression()), !dbg !1067
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1068, !tbaa !851
  %133 = tail call i32 @fputs_unlocked(i8* %130, %struct._IO_FILE* %132), !dbg !1068
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1069, !tbaa !851
  %135 = tail call i64 @fwrite_unlocked(i8* %106, i64 1, i64 %109, %struct._IO_FILE* %134), !dbg !1069
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1070, !tbaa !851
  %137 = tail call i32 @fputs_unlocked(i8* %131, %struct._IO_FILE* %136), !dbg !1070
  br label %138, !dbg !1071

; <label>:138:                                    ; preds = %48, %89, %99, %79, %103, %114
  %139 = phi i32 [ 0, %114 ], [ 1, %103 ], [ 1, %79 ], [ 1, %99 ], [ 1, %89 ], [ 0, %48 ]
  ret i32 %139, !dbg !1072
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

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE*, i8*) unnamed_addr #7 !dbg !12 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !82, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i8* %1, metadata !83, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i64 0, metadata !84, metadata !DIExpression()), !dbg !1075
  %5 = bitcast i8** %3 to i8*, !dbg !1076
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12, !dbg !1076
  call void @llvm.dbg.value(metadata i8* null, metadata !86, metadata !DIExpression()), !dbg !1077
  store i8* null, i8** %3, align 8, !dbg !1077, !tbaa !851
  %6 = bitcast i64* %4 to i8*, !dbg !1078
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12, !dbg !1078
  call void @llvm.dbg.value(metadata i64 0, metadata !87, metadata !DIExpression()), !dbg !1079
  store i64 0, i64* %4, align 8, !dbg !1079, !tbaa !1080
  call void @llvm.dbg.value(metadata i8 1, metadata !90, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i32 3, metadata !91, metadata !DIExpression()), !dbg !1082
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #12, !dbg !1083
  call void @llvm.dbg.value(metadata i8* %7, metadata !89, metadata !DIExpression()), !dbg !1084
  %8 = icmp eq i8* %7, null, !dbg !1085
  br i1 %8, label %12, label %9, !dbg !1087

; <label>:9:                                      ; preds = %2
  %10 = load i8, i8* %7, align 1, !dbg !1088, !tbaa !996
  %11 = icmp eq i8 %10, 0, !dbg !1089
  br i1 %11, label %12, label %13, !dbg !1090

; <label>:12:                                     ; preds = %9, %2
  br label %13, !dbg !1091

; <label>:13:                                     ; preds = %12, %9
  %14 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %12 ], [ %7, %9 ], !dbg !1092
  call void @llvm.dbg.value(metadata i8* %14, metadata !89, metadata !DIExpression()), !dbg !1084
  %15 = icmp eq %struct._IO_FILE* %0, null
  %16 = icmp eq i8* %1, null
  br label %17, !dbg !1093

; <label>:17:                                     ; preds = %249, %13
  %18 = phi i32 [ %250, %249 ], [ 3, %13 ]
  %19 = phi i8 [ %251, %249 ], [ 1, %13 ]
  %20 = phi i8* [ %43, %249 ], [ getelementptr inbounds ([4164 x i8], [4164 x i8]* @G_line, i64 0, i64 0), %13 ]
  %21 = phi i64 [ %29, %249 ], [ 0, %13 ]
  br label %22, !dbg !1094

; <label>:22:                                     ; preds = %17, %113
  %23 = phi i8 [ %19, %17 ], [ 0, %113 ]
  %24 = phi i8* [ %20, %17 ], [ %43, %113 ]
  %25 = phi i64 [ %21, %17 ], [ %29, %113 ]
  br label %26, !dbg !1094

; <label>:26:                                     ; preds = %56, %22
  %27 = phi i8* [ %24, %22 ], [ %43, %56 ], !dbg !1095
  %28 = phi i64 [ %25, %22 ], [ %29, %56 ], !dbg !1096
  call void @llvm.dbg.value(metadata i64 %28, metadata !84, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i8* %27, metadata !85, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8 %23, metadata !90, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i32 %18, metadata !91, metadata !DIExpression()), !dbg !1082
  %29 = add i64 %28, 1, !dbg !1094
  call void @llvm.dbg.value(metadata i64 %29, metadata !84, metadata !DIExpression()), !dbg !1075
  br i1 %15, label %35, label %30, !dbg !1097

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i8** %3, metadata !86, metadata !DIExpression(DW_OP_deref)), !dbg !1077
  call void @llvm.dbg.value(metadata i64* %4, metadata !87, metadata !DIExpression(DW_OP_deref)), !dbg !1079
  call void @llvm.dbg.value(metadata i8** %3, metadata !1098, metadata !DIExpression()) #12, !dbg !1107
  call void @llvm.dbg.value(metadata i64* %4, metadata !1105, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1106, metadata !DIExpression()) #12, !dbg !1113
  %31 = call i64 @__getdelim(i8** nonnull %3, i64* nonnull %4, i32 10, %struct._IO_FILE* nonnull %0) #12, !dbg !1114
  %32 = icmp slt i64 %31, 1, !dbg !1115
  %33 = load i8*, i8** %3, align 8, !dbg !1116, !tbaa !851
  call void @llvm.dbg.value(metadata i8* %33, metadata !86, metadata !DIExpression()), !dbg !1077
  br i1 %32, label %34, label %41, !dbg !1117

; <label>:34:                                     ; preds = %30
  call void @llvm.dbg.value(metadata i8 %23, metadata !90, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8 %23, metadata !90, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8 %23, metadata !90, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8 %23, metadata !90, metadata !DIExpression()), !dbg !1081
  call void @free(i8* %33) #12, !dbg !1118
  br label %252, !dbg !1120

; <label>:35:                                     ; preds = %26
  %36 = icmp eq i8* %27, getelementptr inbounds ([4164 x i8], [4164 x i8]* @G_line, i64 1, i64 0), !dbg !1121
  br i1 %36, label %252, label %37, !dbg !1124

; <label>:37:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %27, metadata !88, metadata !DIExpression()), !dbg !1125
  %38 = call i64 @strlen(i8* %27) #14, !dbg !1126
  %39 = add i64 %38, 1, !dbg !1127
  %40 = getelementptr inbounds i8, i8* %27, i64 %39, !dbg !1128
  call void @llvm.dbg.value(metadata i8* %40, metadata !85, metadata !DIExpression()), !dbg !1095
  br label %41

; <label>:41:                                     ; preds = %30, %37
  %42 = phi i8* [ %27, %37 ], [ %33, %30 ], !dbg !1129
  %43 = phi i8* [ %40, %37 ], [ %27, %30 ], !dbg !1129
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8* %42, metadata !88, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8* %42, metadata !1130, metadata !DIExpression()) #12, !dbg !1140
  call void @llvm.dbg.value(metadata i8* %42, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  %44 = tail call i16** @__ctype_b_loc() #17, !dbg !1143
  %45 = load i16*, i16** %44, align 8, !tbaa !851
  br label %46, !dbg !1146

; <label>:46:                                     ; preds = %46, %41
  %47 = phi i8* [ %42, %41 ], [ %54, %46 ], !dbg !1147
  call void @llvm.dbg.value(metadata i8* %47, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  %48 = load i8, i8* %47, align 1, !dbg !1143, !tbaa !996
  %49 = zext i8 %48 to i64, !dbg !1143
  %50 = getelementptr inbounds i16, i16* %45, i64 %49, !dbg !1143
  %51 = load i16, i16* %50, align 2, !dbg !1143, !tbaa !1148
  %52 = and i16 %51, 8192, !dbg !1143
  %53 = icmp eq i16 %52, 0, !dbg !1150
  %54 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1151
  call void @llvm.dbg.value(metadata i8* %54, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  br i1 %53, label %55, label %46, !dbg !1150, !llvm.loop !1152

; <label>:55:                                     ; preds = %46
  call void @llvm.dbg.value(metadata i8* %47, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %47, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %47, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %47, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %47, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %47, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %47, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %47, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %47, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  switch i8 %48, label %57 [
    i8 0, label %56
    i8 35, label %56
  ], !dbg !1155

; <label>:56:                                     ; preds = %55, %55, %108
  br label %26, !dbg !1075, !llvm.loop !1157

; <label>:57:                                     ; preds = %55, %57
  %58 = phi i8* [ %59, %57 ], [ %47, %55 ]
  %59 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1159
  %60 = load i8, i8* %59, align 1, !dbg !1161, !tbaa !996
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i16, i16* %45, i64 %61
  %63 = load i16, i16* %62, align 2, !dbg !1161, !tbaa !1148
  call void @llvm.dbg.value(metadata i8* %59, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  %64 = and i16 %63, 8192, !dbg !1161
  %65 = icmp ne i16 %64, 0, !dbg !1161
  %66 = icmp eq i8 %60, 0, !dbg !1162
  %67 = or i1 %66, %65, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %59, metadata !1137, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !1142
  br i1 %67, label %68, label %57, !dbg !1163, !llvm.loop !1164

; <label>:68:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i8* %59, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* undef, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* undef, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* undef, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  %69 = ptrtoint i8* %59 to i64, !dbg !1167
  %70 = ptrtoint i8* %47 to i64, !dbg !1167
  %71 = sub i64 %69, %70, !dbg !1167
  %72 = call noalias i8* @xstrndup(i8* %47, i64 %71) #12, !dbg !1168
  %73 = load i8, i8* %59, align 1, !dbg !1169, !tbaa !996
  %74 = icmp eq i8 %73, 0, !dbg !1171
  br i1 %74, label %108, label %75, !dbg !1172

; <label>:75:                                     ; preds = %68
  %76 = load i16*, i16** %44, align 8, !tbaa !851
  br label %77, !dbg !1173

; <label>:77:                                     ; preds = %77, %75
  %78 = phi i8* [ %79, %77 ], [ %59, %75 ], !dbg !1175
  call void @llvm.dbg.value(metadata i8* %78, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  %79 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !1173
  call void @llvm.dbg.value(metadata i8* %79, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  %80 = load i8, i8* %79, align 1, !dbg !1176, !tbaa !996
  %81 = zext i8 %80 to i64, !dbg !1176
  %82 = getelementptr inbounds i16, i16* %76, i64 %81, !dbg !1176
  %83 = load i16, i16* %82, align 2, !dbg !1176, !tbaa !1148
  %84 = and i16 %83, 8192, !dbg !1176
  %85 = icmp eq i16 %84, 0, !dbg !1177
  br i1 %85, label %86, label %77, !dbg !1177, !llvm.loop !1178

; <label>:86:                                     ; preds = %77
  switch i8 %80, label %87 [
    i8 0, label %108
    i8 35, label %108
  ], !dbg !1181

; <label>:87:                                     ; preds = %86, %91
  %88 = phi i8 [ %93, %91 ], [ %80, %86 ], !dbg !1183
  %89 = phi i8* [ %92, %91 ], [ %79, %86 ], !dbg !1184
  call void @llvm.dbg.value(metadata i8* %89, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  switch i8 %88, label %91 [
    i8 35, label %90
    i8 0, label %90
  ], !dbg !1185

; <label>:90:                                     ; preds = %87, %87
  call void @llvm.dbg.value(metadata i8* %89, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %89, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %89, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %89, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  br label %94, !dbg !1186

; <label>:91:                                     ; preds = %87
  %92 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1189
  call void @llvm.dbg.value(metadata i8* %92, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  %93 = load i8, i8* %92, align 1, !dbg !1183, !tbaa !996
  br label %87, !dbg !1185, !llvm.loop !1190

; <label>:94:                                     ; preds = %90, %94
  %95 = phi i8* [ %96, %94 ], [ %89, %90 ]
  %96 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !1186
  call void @llvm.dbg.value(metadata i8* %96, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  %97 = load i8, i8* %96, align 1, !dbg !1193, !tbaa !996
  %98 = zext i8 %97 to i64, !dbg !1193
  %99 = getelementptr inbounds i16, i16* %76, i64 %98, !dbg !1193
  %100 = load i16, i16* %99, align 2, !dbg !1193, !tbaa !1148
  %101 = and i16 %100, 8192, !dbg !1193
  %102 = icmp eq i16 %101, 0, !dbg !1194
  br i1 %102, label %103, label %94, !dbg !1194, !llvm.loop !1195

; <label>:103:                                    ; preds = %94
  call void @llvm.dbg.value(metadata i8* %95, metadata !1137, metadata !DIExpression()) #12, !dbg !1142
  %104 = ptrtoint i8* %95 to i64, !dbg !1198
  %105 = ptrtoint i8* %79 to i64, !dbg !1198
  %106 = sub i64 %104, %105, !dbg !1198
  %107 = call noalias i8* @xstrndup(i8* nonnull %79, i64 %106) #12, !dbg !1199
  br label %108, !dbg !1200

; <label>:108:                                    ; preds = %68, %86, %86, %103
  %109 = phi i8* [ null, %68 ], [ %107, %103 ], [ null, %86 ], [ null, %86 ], !dbg !1096
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1201
  %110 = icmp eq i8* %72, null, !dbg !1202
  br i1 %110, label %56, label %111, !dbg !1204

; <label>:111:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1205
  %112 = icmp eq i8* %109, null, !dbg !1206
  br i1 %112, label %113, label %116, !dbg !1208

; <label>:113:                                    ; preds = %111
  %114 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i64 0, i64 0), i32 5) #12, !dbg !1209
  %115 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #12, !dbg !1211
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %114, i8* %115, i64 %29) #12, !dbg !1212
  call void @llvm.dbg.value(metadata i8 0, metadata !90, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1201
  call void @free(i8* nonnull %72) #12, !dbg !1213
  br label %22, !dbg !1214, !llvm.loop !1157

; <label>:116:                                    ; preds = %111
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8 0, metadata !95, metadata !DIExpression()), !dbg !1215
  %117 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #14, !dbg !1216
  %118 = icmp eq i32 %117, 0, !dbg !1217
  br i1 %118, label %119, label %125, !dbg !1218

; <label>:119:                                    ; preds = %116
  %120 = call i32 @fnmatch(i8* nonnull %109, i8* %14, i32 0) #12, !dbg !1219
  %121 = icmp eq i32 %120, 0, !dbg !1222
  br i1 %121, label %249, label %122, !dbg !1223

; <label>:122:                                    ; preds = %119
  %123 = icmp eq i32 %18, 2, !dbg !1224
  %124 = select i1 %123, i32 2, i32 0, !dbg !1226
  br label %249, !dbg !1226

; <label>:125:                                    ; preds = %116
  %126 = icmp eq i32 %18, 2, !dbg !1227
  %127 = select i1 %126, i32 1, i32 %18, !dbg !1229
  call void @llvm.dbg.value(metadata i32 %127, metadata !91, metadata !DIExpression()), !dbg !1082
  %128 = icmp eq i32 %127, 0, !dbg !1230
  br i1 %128, label %249, label %129, !dbg !1231

; <label>:129:                                    ; preds = %125
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1201
  %130 = load i8, i8* %72, align 1, !dbg !1232, !tbaa !996
  switch i8 %130, label %178 [
    i8 46, label %131
    i8 42, label %159
  ], !dbg !1233

; <label>:131:                                    ; preds = %129
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !96, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !154, metadata !DIExpression()), !dbg !1235
  %132 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1235, !tbaa !1061
  %133 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1235, !tbaa !1049
  %134 = icmp eq i64 %132, %133, !dbg !1236
  %135 = inttoptr i64 %133 to i8*, !dbg !1234
  br i1 %134, label %136, label %138, !dbg !1234

; <label>:136:                                    ; preds = %131
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1236
  %137 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1234, !tbaa !1049
  br label %138, !dbg !1236

; <label>:138:                                    ; preds = %136, %131
  %139 = phi i8* [ %137, %136 ], [ %135, %131 ], !dbg !1234
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !1234
  store i8* %140, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1234, !tbaa !1049
  store i8 42, i8* %139, align 1, !dbg !1234, !tbaa !996
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1201
  call fastcc void @append_quoted(i8* nonnull %72), !dbg !1237
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !159, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !161, metadata !DIExpression()), !dbg !1239
  %141 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1239, !tbaa !1061
  %142 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1239, !tbaa !1049
  %143 = icmp eq i64 %141, %142, !dbg !1240
  %144 = inttoptr i64 %142 to i8*, !dbg !1238
  br i1 %143, label %145, label %147, !dbg !1238

; <label>:145:                                    ; preds = %138
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1240
  %146 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1238, !tbaa !1049
  br label %147, !dbg !1240

; <label>:147:                                    ; preds = %145, %138
  %148 = phi i8* [ %146, %145 ], [ %144, %138 ], !dbg !1238
  %149 = getelementptr inbounds i8, i8* %148, i64 1, !dbg !1238
  store i8* %149, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1238, !tbaa !1049
  store i8 61, i8* %148, align 1, !dbg !1238, !tbaa !996
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1205
  call fastcc void @append_quoted(i8* nonnull %109), !dbg !1241
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !164, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !166, metadata !DIExpression()), !dbg !1243
  %150 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1243, !tbaa !1061
  %151 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1243, !tbaa !1049
  %152 = icmp eq i64 %150, %151, !dbg !1244
  %153 = inttoptr i64 %151 to i8*, !dbg !1242
  br i1 %152, label %154, label %156, !dbg !1242

; <label>:154:                                    ; preds = %147
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1244
  %155 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1242, !tbaa !1049
  br label %156, !dbg !1244

; <label>:156:                                    ; preds = %154, %147
  %157 = phi i8* [ %155, %154 ], [ %153, %147 ], !dbg !1242
  %158 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !1242
  store i8* %158, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1242, !tbaa !1049
  store i8 58, i8* %157, align 1, !dbg !1242, !tbaa !996
  br label %249, !dbg !1245

; <label>:159:                                    ; preds = %129
  call fastcc void @append_quoted(i8* nonnull %72), !dbg !1246
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !169, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !173, metadata !DIExpression()), !dbg !1248
  %160 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1248, !tbaa !1061
  %161 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1248, !tbaa !1049
  %162 = icmp eq i64 %160, %161, !dbg !1249
  %163 = inttoptr i64 %161 to i8*, !dbg !1247
  br i1 %162, label %164, label %166, !dbg !1247

; <label>:164:                                    ; preds = %159
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1249
  %165 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1247, !tbaa !1049
  br label %166, !dbg !1249

; <label>:166:                                    ; preds = %164, %159
  %167 = phi i8* [ %165, %164 ], [ %163, %159 ], !dbg !1247
  %168 = getelementptr inbounds i8, i8* %167, i64 1, !dbg !1247
  store i8* %168, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1247, !tbaa !1049
  store i8 61, i8* %167, align 1, !dbg !1247, !tbaa !996
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1205
  call fastcc void @append_quoted(i8* nonnull %109), !dbg !1250
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !176, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !178, metadata !DIExpression()), !dbg !1252
  %169 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1252, !tbaa !1061
  %170 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1252, !tbaa !1049
  %171 = icmp eq i64 %169, %170, !dbg !1253
  %172 = inttoptr i64 %170 to i8*, !dbg !1251
  br i1 %171, label %173, label %175, !dbg !1251

; <label>:173:                                    ; preds = %166
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1253
  %174 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1251, !tbaa !1049
  br label %175, !dbg !1253

; <label>:175:                                    ; preds = %173, %166
  %176 = phi i8* [ %174, %173 ], [ %172, %166 ], !dbg !1251
  %177 = getelementptr inbounds i8, i8* %176, i64 1, !dbg !1251
  store i8* %177, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1251, !tbaa !1049
  store i8 58, i8* %176, align 1, !dbg !1251, !tbaa !996
  br label %249, !dbg !1254

; <label>:178:                                    ; preds = %129
  %179 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0)) #14, !dbg !1255
  %180 = icmp eq i32 %179, 0, !dbg !1256
  br i1 %180, label %249, label %181, !dbg !1257

; <label>:181:                                    ; preds = %178
  %182 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0)) #14, !dbg !1258
  %183 = icmp eq i32 %182, 0, !dbg !1259
  br i1 %183, label %249, label %184, !dbg !1260

; <label>:184:                                    ; preds = %181
  %185 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0)) #14, !dbg !1261
  %186 = icmp eq i32 %185, 0, !dbg !1262
  br i1 %186, label %249, label %189, !dbg !1263

; <label>:187:                                    ; preds = %189
  call void @llvm.dbg.value(metadata i32 undef, metadata !181, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1264
  %188 = icmp eq i64 %195, 37, !dbg !1265
  br i1 %188, label %238, label %189, !dbg !1265, !llvm.loop !1267

; <label>:189:                                    ; preds = %184, %187
  %190 = phi i64 [ %195, %187 ], [ 0, %184 ]
  call void @llvm.dbg.value(metadata i64 %190, metadata !181, metadata !DIExpression()), !dbg !1264
  %191 = getelementptr inbounds [38 x i8*], [38 x i8*]* @slack_codes, i64 0, i64 %190, !dbg !1269
  %192 = load i8*, i8** %191, align 8, !dbg !1269, !tbaa !851
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1201
  %193 = call i32 @c_strcasecmp(i8* nonnull %72, i8* %192) #14, !dbg !1271
  %194 = icmp eq i32 %193, 0, !dbg !1273
  %195 = add nuw nsw i64 %190, 1, !dbg !1274
  call void @llvm.dbg.value(metadata i32 undef, metadata !181, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1264
  br i1 %194, label %196, label %187, !dbg !1275

; <label>:196:                                    ; preds = %189
  call void @llvm.dbg.value(metadata i64 %190, metadata !181, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %190, metadata !181, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %190, metadata !181, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %190, metadata !181, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !184, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !189, metadata !DIExpression()), !dbg !1277
  %197 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1277, !tbaa !1061
  %198 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1277, !tbaa !1049
  %199 = icmp eq i64 %197, %198, !dbg !1278
  %200 = inttoptr i64 %198 to i8*, !dbg !1276
  br i1 %199, label %201, label %203, !dbg !1276

; <label>:201:                                    ; preds = %196
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1278
  %202 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1276, !tbaa !1049
  br label %203, !dbg !1278

; <label>:203:                                    ; preds = %201, %196
  %204 = phi i8* [ %202, %201 ], [ %200, %196 ], !dbg !1276
  %205 = getelementptr inbounds [38 x i8*], [38 x i8*]* @ls_codes, i64 0, i64 %190, !dbg !1276
  %206 = load i8*, i8** %205, align 8, !dbg !1276, !tbaa !851
  %207 = load i8, i8* %206, align 1, !dbg !1276, !tbaa !996
  %208 = getelementptr inbounds i8, i8* %204, i64 1, !dbg !1276
  store i8* %208, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1276, !tbaa !1049
  store i8 %207, i8* %204, align 1, !dbg !1276, !tbaa !996
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !192, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !194, metadata !DIExpression()), !dbg !1280
  %209 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1280, !tbaa !1061
  %210 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1280, !tbaa !1049
  %211 = icmp eq i64 %209, %210, !dbg !1281
  %212 = inttoptr i64 %210 to i8*, !dbg !1279
  br i1 %211, label %213, label %215, !dbg !1279

; <label>:213:                                    ; preds = %203
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1281
  %214 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1279, !tbaa !1049
  br label %215, !dbg !1281

; <label>:215:                                    ; preds = %213, %203
  %216 = phi i8* [ %214, %213 ], [ %212, %203 ], !dbg !1279
  %217 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !1279
  %218 = load i8, i8* %217, align 1, !dbg !1279, !tbaa !996
  %219 = getelementptr inbounds i8, i8* %216, i64 1, !dbg !1279
  store i8* %219, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1279, !tbaa !1049
  store i8 %218, i8* %216, align 1, !dbg !1279, !tbaa !996
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !197, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !199, metadata !DIExpression()), !dbg !1283
  %220 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1283, !tbaa !1061
  %221 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1283, !tbaa !1049
  %222 = icmp eq i64 %220, %221, !dbg !1284
  %223 = inttoptr i64 %221 to i8*, !dbg !1282
  br i1 %222, label %224, label %226, !dbg !1282

; <label>:224:                                    ; preds = %215
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1284
  %225 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1282, !tbaa !1049
  br label %226, !dbg !1284

; <label>:226:                                    ; preds = %224, %215
  %227 = phi i8* [ %225, %224 ], [ %223, %215 ], !dbg !1282
  %228 = getelementptr inbounds i8, i8* %227, i64 1, !dbg !1282
  store i8* %228, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1282, !tbaa !1049
  store i8 61, i8* %227, align 1, !dbg !1282, !tbaa !996
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1205
  call fastcc void @append_quoted(i8* nonnull %109), !dbg !1285
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !202, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !204, metadata !DIExpression()), !dbg !1287
  %229 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1287, !tbaa !1061
  %230 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1287, !tbaa !1049
  %231 = icmp eq i64 %229, %230, !dbg !1288
  %232 = inttoptr i64 %230 to i8*, !dbg !1286
  br i1 %231, label %233, label %235, !dbg !1286

; <label>:233:                                    ; preds = %226
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1288
  %234 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1286, !tbaa !1049
  br label %235, !dbg !1288

; <label>:235:                                    ; preds = %233, %226
  %236 = phi i8* [ %234, %233 ], [ %232, %226 ], !dbg !1286
  %237 = getelementptr inbounds i8, i8* %236, i64 1, !dbg !1286
  store i8* %237, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1286, !tbaa !1049
  store i8 58, i8* %236, align 1, !dbg !1286, !tbaa !996
  br label %249, !dbg !1289

; <label>:238:                                    ; preds = %187
  call void @llvm.dbg.value(metadata i32 %127, metadata !91, metadata !DIExpression()), !dbg !1082
  %239 = add i32 %127, -1, !dbg !1290
  %240 = icmp ult i32 %239, 2, !dbg !1290
  br i1 %240, label %241, label %249, !dbg !1292

; <label>:241:                                    ; preds = %238
  %242 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0), i32 5) #12, !dbg !1293
  br i1 %16, label %245, label %243, !dbg !1295

; <label>:243:                                    ; preds = %241
  %244 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %1) #12, !dbg !1296
  br label %247, !dbg !1295

; <label>:245:                                    ; preds = %241
  %246 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i32 5) #12, !dbg !1297
  br label %247, !dbg !1295

; <label>:247:                                    ; preds = %245, %243
  %248 = phi i8* [ %244, %243 ], [ %246, %245 ], !dbg !1295
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1201
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %242, i8* %248, i64 %29, i8* nonnull %72) #12, !dbg !1298
  call void @llvm.dbg.value(metadata i8 0, metadata !90, metadata !DIExpression()), !dbg !1081
  br label %249, !dbg !1299

; <label>:249:                                    ; preds = %125, %235, %122, %119, %184, %181, %178, %175, %156, %247, %238
  %250 = phi i32 [ %127, %247 ], [ %127, %238 ], [ 0, %125 ], [ %127, %235 ], [ %124, %122 ], [ 2, %119 ], [ %127, %184 ], [ %127, %181 ], [ %127, %178 ], [ %127, %175 ], [ %127, %156 ]
  %251 = phi i8 [ 0, %247 ], [ %23, %238 ], [ %23, %125 ], [ %23, %235 ], [ %23, %122 ], [ %23, %119 ], [ %23, %184 ], [ %23, %181 ], [ %23, %178 ], [ %23, %175 ], [ %23, %156 ], !dbg !1092
  call void @llvm.dbg.value(metadata i8 %251, metadata !90, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1201
  call void @free(i8* %72) #12, !dbg !1300
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1205
  call void @free(i8* %109) #12, !dbg !1301
  br label %17, !dbg !1158

; <label>:252:                                    ; preds = %35, %34
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1095
  %253 = and i8 %23, 1, !dbg !1302
  %254 = icmp ne i8 %253, 0, !dbg !1302
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12, !dbg !1303
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12, !dbg !1303
  ret i1 %254, !dbg !1304
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

declare i32 @fnmatch(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @append_quoted(i8* nocapture readonly) unnamed_addr #7 !dbg !1305 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1307, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8 1, metadata !1308, metadata !DIExpression()), !dbg !1338
  %2 = load i8, i8* %0, align 1, !dbg !1339, !tbaa !996
  %3 = icmp eq i8 %2, 0, !dbg !1340
  br i1 %3, label %68, label %4, !dbg !1341

; <label>:4:                                      ; preds = %1, %61
  %5 = phi i8 [ %66, %61 ], [ %2, %1 ]
  %6 = phi i8* [ %65, %61 ], [ %0, %1 ]
  %7 = phi i8 [ %54, %61 ], [ 1, %1 ]
  call void @llvm.dbg.value(metadata i8* %6, metadata !1307, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8 %7, metadata !1308, metadata !DIExpression()), !dbg !1338
  %8 = sext i8 %5 to i32, !dbg !1339
  switch i32 %8, label %53 [
    i32 39, label %9
    i32 92, label %37
    i32 94, label %37
    i32 58, label %40
    i32 61, label %40
  ], !dbg !1342

; <label>:9:                                      ; preds = %4
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1309, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1313, metadata !DIExpression()), !dbg !1344
  %10 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1344, !tbaa !1061
  %11 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1344, !tbaa !1049
  %12 = icmp eq i64 %10, %11, !dbg !1345
  %13 = inttoptr i64 %11 to i8*, !dbg !1343
  br i1 %12, label %14, label %16, !dbg !1343

; <label>:14:                                     ; preds = %9
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1345
  %15 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1343, !tbaa !1049
  br label %16, !dbg !1345

; <label>:16:                                     ; preds = %14, %9
  %17 = phi i8* [ %15, %14 ], [ %13, %9 ], !dbg !1343
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1343
  store i8* %18, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1343, !tbaa !1049
  store i8 39, i8* %17, align 1, !dbg !1343, !tbaa !996
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1316, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1318, metadata !DIExpression()), !dbg !1347
  %19 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1347, !tbaa !1061
  %20 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1347, !tbaa !1049
  %21 = icmp eq i64 %19, %20, !dbg !1348
  %22 = inttoptr i64 %20 to i8*, !dbg !1346
  br i1 %21, label %23, label %25, !dbg !1346

; <label>:23:                                     ; preds = %16
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1348
  %24 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1346, !tbaa !1049
  br label %25, !dbg !1348

; <label>:25:                                     ; preds = %23, %16
  %26 = phi i8* [ %24, %23 ], [ %22, %16 ], !dbg !1346
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1346
  store i8* %27, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1346, !tbaa !1049
  store i8 92, i8* %26, align 1, !dbg !1346, !tbaa !996
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1321, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1323, metadata !DIExpression()), !dbg !1350
  %28 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1350, !tbaa !1061
  %29 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1350, !tbaa !1049
  %30 = icmp eq i64 %28, %29, !dbg !1351
  %31 = inttoptr i64 %29 to i8*, !dbg !1349
  br i1 %30, label %32, label %34, !dbg !1349

; <label>:32:                                     ; preds = %25
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1351
  %33 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1349, !tbaa !1049
  br label %34, !dbg !1351

; <label>:34:                                     ; preds = %32, %25
  %35 = phi i8* [ %33, %32 ], [ %31, %25 ], !dbg !1349
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1349
  store i8* %36, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1349, !tbaa !1049
  store i8 39, i8* %35, align 1, !dbg !1349, !tbaa !996
  call void @llvm.dbg.value(metadata i8 1, metadata !1308, metadata !DIExpression()), !dbg !1338
  br label %53, !dbg !1352

; <label>:37:                                     ; preds = %4, %4
  %38 = and i8 %7, 1, !dbg !1353
  %39 = xor i8 %38, 1, !dbg !1354
  call void @llvm.dbg.value(metadata i8 %39, metadata !1308, metadata !DIExpression()), !dbg !1338
  br label %53, !dbg !1355

; <label>:40:                                     ; preds = %4, %4
  %41 = and i8 %7, 1, !dbg !1356
  %42 = icmp eq i8 %41, 0, !dbg !1356
  br i1 %42, label %53, label %43, !dbg !1357

; <label>:43:                                     ; preds = %40
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1326, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1329, metadata !DIExpression()), !dbg !1359
  %44 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1359, !tbaa !1061
  %45 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1359, !tbaa !1049
  %46 = icmp eq i64 %44, %45, !dbg !1360
  %47 = inttoptr i64 %45 to i8*, !dbg !1358
  br i1 %46, label %48, label %50, !dbg !1358

; <label>:48:                                     ; preds = %43
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1360
  %49 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1358, !tbaa !1049
  br label %50, !dbg !1360

; <label>:50:                                     ; preds = %48, %43
  %51 = phi i8* [ %49, %48 ], [ %47, %43 ], !dbg !1358
  %52 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1358
  store i8* %52, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1358, !tbaa !1049
  store i8 92, i8* %51, align 1, !dbg !1358, !tbaa !996
  br label %53, !dbg !1361

; <label>:53:                                     ; preds = %4, %50, %40, %37, %34
  %54 = phi i8 [ %39, %37 ], [ 1, %34 ], [ 1, %40 ], [ 1, %50 ], [ 1, %4 ], !dbg !1362
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1332, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1334, metadata !DIExpression()), !dbg !1364
  %55 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1364, !tbaa !1061
  %56 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1364, !tbaa !1049
  %57 = icmp eq i64 %55, %56, !dbg !1365
  %58 = inttoptr i64 %56 to i8*, !dbg !1363
  br i1 %57, label %59, label %61, !dbg !1363

; <label>:59:                                     ; preds = %53
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1365
  %60 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1363, !tbaa !1049
  br label %61, !dbg !1365

; <label>:61:                                     ; preds = %59, %53
  %62 = phi i8* [ %60, %59 ], [ %58, %53 ], !dbg !1363
  %63 = load i8, i8* %6, align 1, !dbg !1363, !tbaa !996
  %64 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1363
  store i8* %64, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1363, !tbaa !1049
  store i8 %63, i8* %62, align 1, !dbg !1363, !tbaa !996
  %65 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1366
  call void @llvm.dbg.value(metadata i8* %65, metadata !1307, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8 %54, metadata !1308, metadata !DIExpression()), !dbg !1338
  %66 = load i8, i8* %65, align 1, !dbg !1339, !tbaa !996
  %67 = icmp eq i8 %66, 0, !dbg !1340
  br i1 %67, label %68, label %4, !dbg !1341, !llvm.loop !1367

; <label>:68:                                     ; preds = %61, %1
  ret void, !dbg !1369
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @c_strcasecmp(i8* readonly, i8* readonly) local_unnamed_addr #10 !dbg !1370 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1375, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i8* %1, metadata !1376, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i8* %0, metadata !1377, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8* %1, metadata !1378, metadata !DIExpression()), !dbg !1384
  %3 = icmp eq i8* %0, %1, !dbg !1385
  br i1 %3, label %31, label %4, !dbg !1387

; <label>:4:                                      ; preds = %2, %23
  %5 = phi i8* [ %25, %23 ], [ %1, %2 ], !dbg !1388
  %6 = phi i8* [ %24, %23 ], [ %0, %2 ], !dbg !1388
  call void @llvm.dbg.value(metadata i8* %6, metadata !1377, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8* %5, metadata !1378, metadata !DIExpression()), !dbg !1384
  %7 = load i8, i8* %6, align 1, !dbg !1390, !tbaa !996
  %8 = zext i8 %7 to i32, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %8, metadata !1391, metadata !DIExpression()), !dbg !1397
  %9 = add nsw i32 %8, -65, !dbg !1399
  %10 = icmp ult i32 %9, 26, !dbg !1399
  %11 = add nuw nsw i32 %8, 32, !dbg !1400
  %12 = select i1 %10, i32 %11, i32 %8, !dbg !1399
  %13 = load i8, i8* %5, align 1, !dbg !1402, !tbaa !996
  %14 = zext i8 %13 to i32, !dbg !1402
  call void @llvm.dbg.value(metadata i32 %14, metadata !1391, metadata !DIExpression()), !dbg !1403
  %15 = add nsw i32 %14, -65, !dbg !1405
  %16 = icmp ult i32 %15, 26, !dbg !1405
  %17 = add nuw nsw i32 %14, 32, !dbg !1406
  %18 = select i1 %16, i32 %17, i32 %14, !dbg !1405
  %19 = and i32 %12, 255, !dbg !1407
  %20 = icmp eq i32 %19, 0, !dbg !1409
  br i1 %20, label %21, label %23, !dbg !1410

; <label>:21:                                     ; preds = %4
  %22 = and i32 %18, 255, !dbg !1411
  br label %28, !dbg !1410

; <label>:23:                                     ; preds = %4
  %24 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1413
  call void @llvm.dbg.value(metadata i8* %24, metadata !1377, metadata !DIExpression()), !dbg !1383
  %25 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1414
  call void @llvm.dbg.value(metadata i8* %25, metadata !1378, metadata !DIExpression()), !dbg !1384
  %26 = and i32 %18, 255, !dbg !1415
  %27 = icmp eq i32 %19, %26, !dbg !1416
  br i1 %27, label %4, label %28, !dbg !1417, !llvm.loop !1418

; <label>:28:                                     ; preds = %23, %21
  %29 = phi i32 [ %22, %21 ], [ %26, %23 ], !dbg !1411
  %30 = sub nsw i32 %19, %29, !dbg !1421
  br label %31, !dbg !1422

; <label>:31:                                     ; preds = %2, %28
  %32 = phi i32 [ %30, %28 ], [ 0, %2 ], !dbg !1423
  ret i32 %32, !dbg !1424
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1425 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1427, metadata !DIExpression()), !dbg !1428
  store i8* %0, i8** @file_name, align 8, !dbg !1429, !tbaa !851
  ret void, !dbg !1430
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1431 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1435, metadata !DIExpression()), !dbg !1436
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1437, !tbaa !1438
  ret void, !dbg !1440
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1441 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1446, !tbaa !851
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1447
  %3 = icmp eq i32 %2, 0, !dbg !1448
  br i1 %3, label %22, label %4, !dbg !1449

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1450, !tbaa !1438, !range !1451
  %6 = icmp eq i8 %5, 0, !dbg !1450
  br i1 %6, label %11, label %7, !dbg !1452

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1453
  %9 = load i32, i32* %8, align 4, !dbg !1453, !tbaa !943
  %10 = icmp eq i32 %9, 32, !dbg !1454
  br i1 %10, label %22, label %11, !dbg !1455

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i64 0, i64 0), i32 5) #12, !dbg !1456
  call void @llvm.dbg.value(metadata i8* %12, metadata !1443, metadata !DIExpression()), !dbg !1457
  %13 = load i8*, i8** @file_name, align 8, !dbg !1458, !tbaa !851
  %14 = icmp eq i8* %13, null, !dbg !1458
  %15 = tail call i32* @__errno_location() #17, !dbg !1460
  %16 = load i32, i32* %15, align 4, !dbg !1460, !tbaa !943
  br i1 %14, label %19, label %17, !dbg !1461

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1462
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.124, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1463
  br label %20, !dbg !1463

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.125, i64 0, i64 0), i8* %12) #12, !dbg !1464
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1465, !tbaa !943
  tail call void @_exit(i32 %21) #15, !dbg !1466
  unreachable, !dbg !1466

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1467, !tbaa !851
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1469
  %25 = icmp eq i32 %24, 0, !dbg !1470
  br i1 %25, label %28, label %26, !dbg !1471

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1472, !tbaa !943
  tail call void @_exit(i32 %27) #15, !dbg !1473
  unreachable, !dbg !1473

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1474
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly) local_unnamed_addr #10 !dbg !1475 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1480, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %0, metadata !1481, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i8 0, metadata !1483, metadata !DIExpression()), !dbg !1486
  br label %2, !dbg !1487

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !1488
  call void @llvm.dbg.value(metadata i8* %3, metadata !1481, metadata !DIExpression()), !dbg !1485
  %4 = load i8, i8* %3, align 1, !dbg !1489, !tbaa !996
  %5 = icmp eq i8 %4, 47, !dbg !1489
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1490
  call void @llvm.dbg.value(metadata i8* %6, metadata !1481, metadata !DIExpression()), !dbg !1485
  br i1 %5, label %2, label %7, !dbg !1487, !llvm.loop !1491

; <label>:7:                                      ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !1492
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !1485
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !1495
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !1496
  call void @llvm.dbg.value(metadata i8 %11, metadata !1483, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i8* %10, metadata !1482, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i8* %9, metadata !1481, metadata !DIExpression()), !dbg !1485
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !1500

; <label>:12:                                     ; preds = %7
  %13 = and i8 %11, 1, !dbg !1501
  %14 = icmp eq i8 %13, 0, !dbg !1501
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !1503
  %16 = select i1 %14, i8 %11, i8 0, !dbg !1503
  br label %17, !dbg !1503

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !1488
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !1488
  call void @llvm.dbg.value(metadata i8 %19, metadata !1483, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i8* %18, metadata !1481, metadata !DIExpression()), !dbg !1485
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1504
  call void @llvm.dbg.value(metadata i8* %20, metadata !1482, metadata !DIExpression()), !dbg !1499
  %21 = load i8, i8* %20, align 1, !dbg !1492, !tbaa !996
  br label %7, !dbg !1505, !llvm.loop !1506

; <label>:22:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !1481, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i8* %9, metadata !1481, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i8* %9, metadata !1481, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i8* %9, metadata !1481, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i8* %9, metadata !1481, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i8* %9, metadata !1481, metadata !DIExpression()), !dbg !1485
  ret i8* %9, !dbg !1508
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly) local_unnamed_addr #10 !dbg !1509 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1513, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i64 0, metadata !1515, metadata !DIExpression()), !dbg !1517
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %2, metadata !1514, metadata !DIExpression()), !dbg !1520
  br label %3, !dbg !1521

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !1522
  call void @llvm.dbg.value(metadata i64 %4, metadata !1514, metadata !DIExpression()), !dbg !1520
  %5 = icmp ugt i64 %4, 1, !dbg !1524
  br i1 %5, label %6, label %11, !dbg !1525

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !1526
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !1526
  %9 = load i8, i8* %8, align 1, !dbg !1526, !tbaa !996
  %10 = icmp eq i8 %9, 47, !dbg !1526
  br i1 %10, label %3, label %11, !dbg !1527, !llvm.loop !1528

; <label>:11:                                     ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !1514, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %4, metadata !1514, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %4, metadata !1514, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %4, metadata !1514, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %4, metadata !1514, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %4, metadata !1514, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %4, metadata !1514, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %4, metadata !1514, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %4, metadata !1514, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %4, metadata !1514, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %4, metadata !1514, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %4, metadata !1514, metadata !DIExpression()), !dbg !1520
  ret i64 %4, !dbg !1530
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #7 !dbg !1531 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1570, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %1, metadata !1571, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1572, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata i8 0, metadata !1573, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata i8 0, metadata !1574, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8 0, metadata !1575, metadata !DIExpression()), !dbg !1582
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #12, !dbg !1583
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ], !dbg !1584

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #12, !dbg !1585
  %7 = icmp ne i32 %6, 2, !dbg !1588
  %8 = zext i1 %7 to i8, !dbg !1589
  br label %9, !dbg !1589

; <label>:9:                                      ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ], !dbg !1590
  call void @llvm.dbg.value(metadata i8 %10, metadata !1575, metadata !DIExpression()), !dbg !1582
  %11 = tail call i32 @dup2(i32 1, i32 1) #12, !dbg !1591
  %12 = icmp ne i32 %11, 1, !dbg !1593
  %13 = zext i1 %12 to i8, !dbg !1594
  br label %14, !dbg !1594

; <label>:14:                                     ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ], !dbg !1590
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ], !dbg !1590
  call void @llvm.dbg.value(metadata i8 %16, metadata !1575, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8 %15, metadata !1574, metadata !DIExpression()), !dbg !1581
  %17 = tail call i32 @dup2(i32 0, i32 0) #12, !dbg !1595
  %18 = icmp eq i32 %17, 0, !dbg !1597
  call void @llvm.dbg.value(metadata i8 %16, metadata !1575, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8 %15, metadata !1574, metadata !DIExpression()), !dbg !1581
  br i1 %18, label %27, label %19, !dbg !1598

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !1600, metadata !DIExpression()) #12, !dbg !1606
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i64 0, i64 0), i32 0) #12, !dbg !1608
  call void @llvm.dbg.value(metadata i32 %20, metadata !1605, metadata !DIExpression()) #12, !dbg !1609
  %21 = icmp eq i32 %20, 0, !dbg !1610
  br i1 %21, label %27, label %22, !dbg !1612

; <label>:22:                                     ; preds = %19
  %23 = icmp sgt i32 %20, -1, !dbg !1613
  br i1 %23, label %24, label %54, !dbg !1616

; <label>:24:                                     ; preds = %22
  %25 = tail call i32 @close(i32 %20) #12, !dbg !1617
  %26 = tail call i32* @__errno_location() #17, !dbg !1619
  store i32 9, i32* %26, align 4, !dbg !1620, !tbaa !943
  br label %54, !dbg !1621

; <label>:27:                                     ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0, !dbg !1622
  br i1 %29, label %38, label %30, !dbg !1624

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, metadata !1600, metadata !DIExpression()) #12, !dbg !1625
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i64 0, i64 0), i32 0) #12, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %31, metadata !1605, metadata !DIExpression()) #12, !dbg !1628
  %32 = icmp eq i32 %31, 1, !dbg !1629
  br i1 %32, label %38, label %33, !dbg !1630

; <label>:33:                                     ; preds = %30
  %34 = icmp sgt i32 %31, -1, !dbg !1631
  br i1 %34, label %35, label %54, !dbg !1632

; <label>:35:                                     ; preds = %33
  %36 = tail call i32 @close(i32 %31) #12, !dbg !1633
  %37 = tail call i32* @__errno_location() #17, !dbg !1634
  store i32 9, i32* %37, align 4, !dbg !1635, !tbaa !943
  br label %54, !dbg !1636

; <label>:38:                                     ; preds = %30, %27
  %39 = and i8 %16, 1, !dbg !1637
  %40 = icmp eq i8 %39, 0, !dbg !1637
  br i1 %40, label %49, label %41, !dbg !1639

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i32 2, metadata !1600, metadata !DIExpression()) #12, !dbg !1640
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i64 0, i64 0), i32 0) #12, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %42, metadata !1605, metadata !DIExpression()) #12, !dbg !1643
  %43 = icmp eq i32 %42, 2, !dbg !1644
  br i1 %43, label %49, label %44, !dbg !1645

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i32 %42, -1, !dbg !1646
  br i1 %45, label %46, label %54, !dbg !1647

; <label>:46:                                     ; preds = %44
  %47 = tail call i32 @close(i32 %42) #12, !dbg !1648
  %48 = tail call i32* @__errno_location() #17, !dbg !1649
  store i32 9, i32* %48, align 4, !dbg !1650, !tbaa !943
  br label %54, !dbg !1651

; <label>:49:                                     ; preds = %3, %41, %38
  %50 = phi i8 [ %16, %38 ], [ %16, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %15, %38 ], [ %15, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #12, !dbg !1652
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %53, metadata !1572, metadata !DIExpression()), !dbg !1579
  br label %54

; <label>:54:                                     ; preds = %44, %46, %33, %35, %22, %24, %49
  %55 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ], [ %16, %46 ], [ %16, %44 ]
  %56 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ], [ %15, %46 ], [ %15, %44 ]
  %57 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ], [ %28, %46 ], [ %28, %44 ]
  %58 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], [ null, %46 ], [ null, %44 ], !dbg !1653
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %58, metadata !1572, metadata !DIExpression()), !dbg !1579
  %59 = tail call i32* @__errno_location() #17, !dbg !1654
  %60 = load i32, i32* %59, align 4, !dbg !1654, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %60, metadata !1576, metadata !DIExpression()), !dbg !1655
  %61 = and i8 %55, 1, !dbg !1656
  %62 = icmp eq i8 %61, 0, !dbg !1656
  br i1 %62, label %65, label %63, !dbg !1658

; <label>:63:                                     ; preds = %54
  %64 = tail call i32 @close(i32 2) #12, !dbg !1659
  br label %65, !dbg !1659

; <label>:65:                                     ; preds = %54, %63
  %66 = and i8 %56, 1, !dbg !1660
  %67 = icmp eq i8 %66, 0, !dbg !1660
  br i1 %67, label %70, label %68, !dbg !1662

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @close(i32 1) #12, !dbg !1663
  br label %70, !dbg !1663

; <label>:70:                                     ; preds = %65, %68
  br i1 %57, label %71, label %73, !dbg !1664

; <label>:71:                                     ; preds = %70
  %72 = tail call i32 @close(i32 0) #12, !dbg !1665
  br label %73, !dbg !1665

; <label>:73:                                     ; preds = %71, %70
  %74 = icmp eq %struct._IO_FILE* %58, null, !dbg !1667
  br i1 %74, label %75, label %76, !dbg !1669

; <label>:75:                                     ; preds = %73
  store i32 %60, i32* %59, align 4, !dbg !1670, !tbaa !943
  br label %76, !dbg !1671

; <label>:76:                                     ; preds = %73, %75
  ret %struct._IO_FILE* %58, !dbg !1672
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1673 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1675, metadata !DIExpression()), !dbg !1678
  %2 = icmp eq i8* %0, null, !dbg !1679
  br i1 %2, label %3, label %6, !dbg !1681

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1682, !tbaa !851
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.137, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1684
  tail call void @abort() #15, !dbg !1685
  unreachable, !dbg !1685

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1686
  call void @llvm.dbg.value(metadata i8* %7, metadata !1676, metadata !DIExpression()), !dbg !1687
  %8 = icmp eq i8* %7, null, !dbg !1688
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1689
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1690
  call void @llvm.dbg.value(metadata i8* %10, metadata !1677, metadata !DIExpression()), !dbg !1691
  %11 = ptrtoint i8* %10 to i64, !dbg !1692
  %12 = ptrtoint i8* %0 to i64, !dbg !1692
  %13 = sub i64 %11, %12, !dbg !1692
  %14 = icmp sgt i64 %13, 6, !dbg !1694
  br i1 %14, label %15, label %24, !dbg !1695

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1696
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.138, i64 0, i64 0), i64 7) #14, !dbg !1697
  %18 = icmp eq i32 %17, 0, !dbg !1698
  br i1 %18, label %19, label %24, !dbg !1699

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1675, metadata !DIExpression()), !dbg !1678
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.139, i64 0, i64 0), i64 3) #14, !dbg !1700
  %21 = icmp eq i32 %20, 0, !dbg !1703
  br i1 %21, label %22, label %24, !dbg !1704

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1705
  call void @llvm.dbg.value(metadata i8* %23, metadata !1675, metadata !DIExpression()), !dbg !1678
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1707, !tbaa !851
  br label %24, !dbg !1708

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1675, metadata !DIExpression()), !dbg !1678
  store i8* %25, i8** @program_name, align 8, !dbg !1709, !tbaa !851
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1710, !tbaa !851
  ret void, !dbg !1711
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1712 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1717, metadata !DIExpression()), !dbg !1720
  %2 = tail call i32* @__errno_location() #17, !dbg !1721
  %3 = load i32, i32* %2, align 4, !dbg !1721, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %3, metadata !1718, metadata !DIExpression()), !dbg !1722
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1723
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1723
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1723
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1724
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1724
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1719, metadata !DIExpression()), !dbg !1725
  store i32 %3, i32* %2, align 4, !dbg !1726, !tbaa !943
  ret %struct.quoting_options* %8, !dbg !1727
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !1728 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1734, metadata !DIExpression()), !dbg !1735
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1736
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1736
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1737
  %5 = load i32, i32* %4, align 8, !dbg !1737, !tbaa !1738
  ret i32 %5, !dbg !1740
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1741 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1745, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %1, metadata !1746, metadata !DIExpression()), !dbg !1748
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1749
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1749
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1750
  store i32 %1, i32* %5, align 8, !dbg !1751, !tbaa !1738
  ret void, !dbg !1752
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1753 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1757, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %1, metadata !1758, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 %2, metadata !1759, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 %1, metadata !1760, metadata !DIExpression()), !dbg !1768
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1769
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1769
  %6 = lshr i8 %1, 5, !dbg !1770
  %7 = zext i8 %6 to i64, !dbg !1770
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1771
  call void @llvm.dbg.value(metadata i32* %8, metadata !1761, metadata !DIExpression()), !dbg !1772
  %9 = and i8 %1, 31, !dbg !1773
  %10 = zext i8 %9 to i32, !dbg !1773
  call void @llvm.dbg.value(metadata i32 %10, metadata !1763, metadata !DIExpression()), !dbg !1774
  %11 = load i32, i32* %8, align 4, !dbg !1775, !tbaa !943
  %12 = lshr i32 %11, %10, !dbg !1776
  %13 = and i32 %12, 1, !dbg !1777
  call void @llvm.dbg.value(metadata i32 %13, metadata !1764, metadata !DIExpression()), !dbg !1778
  %14 = and i32 %2, 1, !dbg !1779
  %15 = xor i32 %13, %14, !dbg !1780
  %16 = shl i32 %15, %10, !dbg !1781
  %17 = xor i32 %16, %11, !dbg !1782
  store i32 %17, i32* %8, align 4, !dbg !1782, !tbaa !943
  ret i32 %13, !dbg !1783
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1784 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1788, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i32 %1, metadata !1789, metadata !DIExpression()), !dbg !1792
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1793
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1795
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1788, metadata !DIExpression()), !dbg !1791
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1796
  %6 = load i32, i32* %5, align 4, !dbg !1796, !tbaa !1797
  call void @llvm.dbg.value(metadata i32 %6, metadata !1790, metadata !DIExpression()), !dbg !1798
  store i32 %1, i32* %5, align 4, !dbg !1799, !tbaa !1797
  ret i32 %6, !dbg !1800
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1801 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1805, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %1, metadata !1806, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8* %2, metadata !1807, metadata !DIExpression()), !dbg !1810
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1811
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1813
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1805, metadata !DIExpression()), !dbg !1808
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1814
  store i32 10, i32* %6, align 8, !dbg !1815, !tbaa !1738
  %7 = icmp ne i8* %1, null, !dbg !1816
  %8 = icmp ne i8* %2, null, !dbg !1818
  %9 = and i1 %7, %8, !dbg !1819
  br i1 %9, label %11, label %10, !dbg !1819

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1820
  unreachable, !dbg !1820

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1821
  store i8* %1, i8** %12, align 8, !dbg !1822, !tbaa !1823
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1824
  store i8* %2, i8** %13, align 8, !dbg !1825, !tbaa !1826
  ret void, !dbg !1827
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1832, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %1, metadata !1833, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i8* %2, metadata !1834, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %3, metadata !1835, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1836, metadata !DIExpression()), !dbg !1844
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1845
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1845
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1837, metadata !DIExpression()), !dbg !1846
  %8 = tail call i32* @__errno_location() #17, !dbg !1847
  %9 = load i32, i32* %8, align 4, !dbg !1847, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %9, metadata !1838, metadata !DIExpression()), !dbg !1848
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1849
  %11 = load i32, i32* %10, align 8, !dbg !1849, !tbaa !1738
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1850
  %13 = load i32, i32* %12, align 4, !dbg !1850, !tbaa !1797
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1851
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1852
  %16 = load i8*, i8** %15, align 8, !dbg !1852, !tbaa !1823
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1853
  %18 = load i8*, i8** %17, align 8, !dbg !1853, !tbaa !1826
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %19, metadata !1839, metadata !DIExpression()), !dbg !1855
  store i32 %9, i32* %8, align 4, !dbg !1856, !tbaa !943
  ret i64 %19, !dbg !1857
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1858 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1864, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 %1, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8* %2, metadata !1866, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %3, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i32 %4, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %5, metadata !1869, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i32* %6, metadata !1870, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8* %7, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %8, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 0, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 0, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8* null, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 0, metadata !1877, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i8 0, metadata !1878, metadata !DIExpression()), !dbg !1941
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1942
  %14 = icmp eq i64 %13, 1, !dbg !1943
  %15 = lshr i32 %5, 1, !dbg !1944
  %16 = trunc i32 %15 to i8, !dbg !1944
  %17 = and i8 %16, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i8 %17, metadata !1880, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 0, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 0, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 1, metadata !1883, metadata !DIExpression()), !dbg !1947
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1948

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1938
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1939
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1940
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1941
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1949
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1945
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1946
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1947
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %39, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %38, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %37, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %36, metadata !1880, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %35, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %34, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %33, metadata !1877, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i8* %32, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %31, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 0, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8* %30, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %29, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i32 %28, metadata !1868, metadata !DIExpression()), !dbg !1932
  switch i32 %28, label %92 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %93
    i32 0, label %91
    i32 2, label %83
    i32 4, label %77
    i32 3, label %74
    i32 1, label %75
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ], !dbg !1951

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 1, metadata !1880, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %36, metadata !1880, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 5, metadata !1868, metadata !DIExpression()), !dbg !1932
  br label %93, !dbg !1952

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1880, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 5, metadata !1868, metadata !DIExpression()), !dbg !1932
  %43 = and i8 %36, 1, !dbg !1953
  %44 = icmp eq i8 %43, 0, !dbg !1953
  br i1 %44, label %45, label %93, !dbg !1952

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1955
  br i1 %46, label %93, label %47, !dbg !1958

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1955, !tbaa !996
  br label %93, !dbg !1955

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.150, i64 0, i64 0), i32 %28), !dbg !1959
  call void @llvm.dbg.value(metadata i8* %49, metadata !1871, metadata !DIExpression()), !dbg !1935
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), i32 %28), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %50, metadata !1872, metadata !DIExpression()), !dbg !1936
  br label %51, !dbg !1964

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %52, metadata !1871, metadata !DIExpression()), !dbg !1935
  %54 = and i8 %36, 1, !dbg !1965
  %55 = icmp eq i8 %54, 0, !dbg !1965
  br i1 %55, label %56, label %71, !dbg !1967

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 0, metadata !1874, metadata !DIExpression()), !dbg !1937
  %57 = load i8, i8* %52, align 1, !dbg !1968, !tbaa !996
  %58 = icmp eq i8 %57, 0, !dbg !1971
  br i1 %58, label %71, label %59, !dbg !1971

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %62, metadata !1874, metadata !DIExpression()), !dbg !1937
  %63 = icmp ult i64 %62, %40, !dbg !1972
  br i1 %63, label %64, label %66, !dbg !1975

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1972
  store i8 %60, i8* %65, align 1, !dbg !1972, !tbaa !996
  br label %66, !dbg !1972

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1975
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %68, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %67, metadata !1874, metadata !DIExpression()), !dbg !1937
  %69 = load i8, i8* %68, align 1, !dbg !1968, !tbaa !996
  %70 = icmp eq i8 %69, 0, !dbg !1971
  br i1 %70, label %71, label %59, !dbg !1971, !llvm.loop !1977

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1937
  call void @llvm.dbg.value(metadata i64 %72, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 1, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %53, metadata !1876, metadata !DIExpression()), !dbg !1939
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %73, metadata !1877, metadata !DIExpression()), !dbg !1940
  br label %93, !dbg !1980

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1878, metadata !DIExpression()), !dbg !1941
  br label %75, !dbg !1981

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1949
  call void @llvm.dbg.value(metadata i8 %76, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 1, metadata !1880, metadata !DIExpression()), !dbg !1944
  br label %77, !dbg !1982

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1941
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1949
  call void @llvm.dbg.value(metadata i8 %79, metadata !1880, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %78, metadata !1878, metadata !DIExpression()), !dbg !1941
  %80 = and i8 %79, 1, !dbg !1983
  %81 = icmp eq i8 %80, 0, !dbg !1983
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1985
  br label %83, !dbg !1985

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1986
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1944
  call void @llvm.dbg.value(metadata i8 %85, metadata !1880, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %84, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()), !dbg !1932
  %86 = and i8 %85, 1, !dbg !1987
  %87 = icmp eq i8 %86, 0, !dbg !1987
  br i1 %87, label %88, label %93, !dbg !1989

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1990
  br i1 %89, label %93, label %90, !dbg !1993

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1990, !tbaa !996
  br label %93, !dbg !1990

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1880, metadata !DIExpression()), !dbg !1944
  br label %93, !dbg !1994

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1995
  unreachable, !dbg !1995

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1937
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), %41 ], !dbg !1949
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1949
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1949
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1996
  call void @llvm.dbg.value(metadata i8 %101, metadata !1880, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %100, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %99, metadata !1877, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %97, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i32 %94, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 0, metadata !1873, metadata !DIExpression()), !dbg !1997
  %102 = and i8 %100, 1
  %103 = icmp ne i8 %102, 0
  %104 = icmp ne i32 %94, 2
  %105 = and i1 %104, %103
  %106 = icmp ne i64 %99, 0
  %107 = and i1 %106, %105
  %108 = icmp ugt i64 %99, 1
  %109 = and i8 %101, 1
  %110 = icmp eq i8 %109, 0
  %111 = icmp ne i8 %109, 0
  %112 = and i1 %18, %111
  %113 = or i1 %104, %110
  %114 = icmp eq i32 %94, 2
  %115 = xor i1 %103, true
  %116 = and i1 %114, %111
  %117 = and i8 %100, %101
  %118 = and i8 %117, 1
  %119 = icmp ne i8 %118, 0
  %120 = and i1 %119, %106
  br label %121, !dbg !1998

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1999
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1937
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1938
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1945
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1946
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1947
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %128, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %127, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %126, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %125, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %122, metadata !1873, metadata !DIExpression()), !dbg !1997
  %130 = icmp eq i64 %125, -1, !dbg !2000
  br i1 %130, label %131, label %135, !dbg !2001

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2002
  %133 = load i8, i8* %132, align 1, !dbg !2002, !tbaa !996
  %134 = icmp eq i8 %133, 0, !dbg !2003
  br i1 %134, label %617, label %137, !dbg !2004

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2005
  br i1 %136, label %617, label %137, !dbg !2004

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1889, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 0, metadata !1890, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !2008
  br i1 %107, label %138, label %153, !dbg !2009

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2011
  %140 = and i1 %108, %130, !dbg !2012
  br i1 %140, label %141, label %143, !dbg !2012

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %142, metadata !1867, metadata !DIExpression()), !dbg !1931
  br label %143, !dbg !2014

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1867, metadata !DIExpression()), !dbg !1931
  %145 = icmp ugt i64 %139, %144, !dbg !2015
  br i1 %145, label %153, label %146, !dbg !2016

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2017
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2018
  %149 = icmp ne i32 %148, 0, !dbg !2019
  %150 = or i1 %149, %110, !dbg !2020
  %151 = xor i1 %149, true, !dbg !2020
  %152 = zext i1 %151 to i8, !dbg !2020
  br i1 %150, label %153, label %661, !dbg !2020

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2021
  call void @llvm.dbg.value(metadata i8 %155, metadata !1889, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %154, metadata !1867, metadata !DIExpression()), !dbg !1931
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2022
  %157 = load i8, i8* %156, align 1, !dbg !2022, !tbaa !996
  call void @llvm.dbg.value(metadata i8 %157, metadata !1884, metadata !DIExpression()), !dbg !2023
  switch i8 %157, label %296 [
    i8 0, label %158
    i8 63, label %208
    i8 7, label %255
    i8 8, label %245
    i8 12, label %246
    i8 10, label %253
    i8 13, label %247
    i8 9, label %248
    i8 11, label %249
    i8 92, label %250
    i8 123, label %257
    i8 125, label %257
    i8 35, label %268
    i8 126, label %268
    i8 32, label %270
    i8 33, label %271
    i8 34, label %271
    i8 36, label %271
    i8 38, label %271
    i8 40, label %271
    i8 41, label %271
    i8 42, label %271
    i8 59, label %271
    i8 60, label %271
    i8 61, label %271
    i8 62, label %271
    i8 91, label %271
    i8 94, label %271
    i8 96, label %271
    i8 124, label %271
    i8 39, label %273
    i8 37, label %467
    i8 43, label %467
    i8 44, label %467
    i8 45, label %467
    i8 46, label %467
    i8 47, label %467
    i8 48, label %467
    i8 49, label %467
    i8 50, label %467
    i8 51, label %467
    i8 52, label %467
    i8 53, label %467
    i8 54, label %467
    i8 55, label %467
    i8 56, label %467
    i8 57, label %467
    i8 58, label %467
    i8 65, label %467
    i8 66, label %467
    i8 67, label %467
    i8 68, label %467
    i8 69, label %467
    i8 70, label %467
    i8 71, label %467
    i8 72, label %467
    i8 73, label %467
    i8 74, label %467
    i8 75, label %467
    i8 76, label %467
    i8 77, label %467
    i8 78, label %467
    i8 79, label %467
    i8 80, label %467
    i8 81, label %467
    i8 82, label %467
    i8 83, label %467
    i8 84, label %467
    i8 85, label %467
    i8 86, label %467
    i8 87, label %467
    i8 88, label %467
    i8 89, label %467
    i8 90, label %467
    i8 93, label %467
    i8 95, label %467
    i8 97, label %467
    i8 98, label %467
    i8 99, label %467
    i8 100, label %467
    i8 101, label %467
    i8 102, label %467
    i8 103, label %467
    i8 104, label %467
    i8 105, label %467
    i8 106, label %467
    i8 107, label %467
    i8 108, label %467
    i8 109, label %467
    i8 110, label %467
    i8 111, label %467
    i8 112, label %467
    i8 113, label %467
    i8 114, label %467
    i8 115, label %467
    i8 116, label %467
    i8 117, label %467
    i8 118, label %467
    i8 119, label %467
    i8 120, label %467
    i8 121, label %467
    i8 122, label %467
  ], !dbg !2024

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2025

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2026

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1890, metadata !DIExpression()), !dbg !2007
  %161 = and i8 %126, 1, !dbg !2030
  %162 = icmp eq i8 %161, 0, !dbg !2030
  %163 = and i1 %114, %162, !dbg !2030
  br i1 %163, label %164, label %180, !dbg !2030

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2032
  br i1 %165, label %166, label %168, !dbg !2036

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2032
  store i8 39, i8* %167, align 1, !dbg !2032, !tbaa !996
  br label %168, !dbg !2032

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %169, metadata !1874, metadata !DIExpression()), !dbg !1937
  %170 = icmp ult i64 %169, %129, !dbg !2037
  br i1 %170, label %171, label %173, !dbg !2040

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2037
  store i8 36, i8* %172, align 1, !dbg !2037, !tbaa !996
  br label %173, !dbg !2037

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %174, metadata !1874, metadata !DIExpression()), !dbg !1937
  %175 = icmp ult i64 %174, %129, !dbg !2041
  br i1 %175, label %176, label %178, !dbg !2044

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2041
  store i8 39, i8* %177, align 1, !dbg !2041, !tbaa !996
  br label %178, !dbg !2041

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %179, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 1, metadata !1881, metadata !DIExpression()), !dbg !1945
  br label %180, !dbg !2045

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1996
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1996
  call void @llvm.dbg.value(metadata i8 %182, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %181, metadata !1874, metadata !DIExpression()), !dbg !1937
  %183 = icmp ult i64 %181, %129, !dbg !2046
  br i1 %183, label %184, label %186, !dbg !2049

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2046
  store i8 92, i8* %185, align 1, !dbg !2046, !tbaa !996
  br label %186, !dbg !2046

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %187, metadata !1874, metadata !DIExpression()), !dbg !1937
  br i1 %104, label %188, label %478, !dbg !2050

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2052
  %190 = icmp ult i64 %189, %154, !dbg !2053
  br i1 %190, label %191, label %467, !dbg !2054

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2055
  %193 = load i8, i8* %192, align 1, !dbg !2055, !tbaa !996
  %194 = add i8 %193, -48, !dbg !2056
  %195 = icmp ult i8 %194, 10, !dbg !2056
  br i1 %195, label %196, label %467, !dbg !2056

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2057
  br i1 %197, label %198, label %200, !dbg !2061

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2057
  store i8 48, i8* %199, align 1, !dbg !2057, !tbaa !996
  br label %200, !dbg !2057

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %201, metadata !1874, metadata !DIExpression()), !dbg !1937
  %202 = icmp ult i64 %201, %129, !dbg !2062
  br i1 %202, label %203, label %205, !dbg !2065

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2062
  store i8 48, i8* %204, align 1, !dbg !2062, !tbaa !996
  br label %205, !dbg !2062

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %206, metadata !1874, metadata !DIExpression()), !dbg !1937
  br label %467, !dbg !2066

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2067

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2068

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2069

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2071

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2073
  %213 = icmp ult i64 %212, %154, !dbg !2074
  br i1 %213, label %214, label %467, !dbg !2075

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2076
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2077
  %217 = load i8, i8* %216, align 1, !dbg !2077, !tbaa !996
  %218 = icmp eq i8 %217, 63, !dbg !2078
  br i1 %218, label %219, label %467, !dbg !2079

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2080
  %221 = load i8, i8* %220, align 1, !dbg !2080, !tbaa !996
  %222 = sext i8 %221 to i32, !dbg !2080
  switch i32 %222, label %467 [
    i32 33, label %223
    i32 39, label %223
    i32 40, label %223
    i32 41, label %223
    i32 45, label %223
    i32 47, label %223
    i32 60, label %223
    i32 61, label %223
    i32 62, label %223
  ], !dbg !2081

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2082

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1884, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %212, metadata !1873, metadata !DIExpression()), !dbg !1997
  %225 = icmp ult i64 %123, %129, !dbg !2084
  br i1 %225, label %226, label %228, !dbg !2087

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2084
  store i8 63, i8* %227, align 1, !dbg !2084, !tbaa !996
  br label %228, !dbg !2084

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %229, metadata !1874, metadata !DIExpression()), !dbg !1937
  %230 = icmp ult i64 %229, %129, !dbg !2088
  br i1 %230, label %231, label %233, !dbg !2091

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2088
  store i8 34, i8* %232, align 1, !dbg !2088, !tbaa !996
  br label %233, !dbg !2088

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %234, metadata !1874, metadata !DIExpression()), !dbg !1937
  %235 = icmp ult i64 %234, %129, !dbg !2092
  br i1 %235, label %236, label %238, !dbg !2095

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2092
  store i8 34, i8* %237, align 1, !dbg !2092, !tbaa !996
  br label %238, !dbg !2092

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %239, metadata !1874, metadata !DIExpression()), !dbg !1937
  %240 = icmp ult i64 %239, %129, !dbg !2096
  br i1 %240, label %241, label %243, !dbg !2099

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2096
  store i8 63, i8* %242, align 1, !dbg !2096, !tbaa !996
  br label %243, !dbg !2096

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %244, metadata !1874, metadata !DIExpression()), !dbg !1937
  br label %467, !dbg !2100

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1888, metadata !DIExpression()), !dbg !2101
  br label %255, !dbg !2102

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1888, metadata !DIExpression()), !dbg !2101
  br label %255, !dbg !2103

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1888, metadata !DIExpression()), !dbg !2101
  br label %253, !dbg !2104

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1888, metadata !DIExpression()), !dbg !2101
  br label %253, !dbg !2105

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1888, metadata !DIExpression()), !dbg !2101
  br label %255, !dbg !2106

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1888, metadata !DIExpression()), !dbg !2101
  br i1 %114, label %251, label %252, !dbg !2107

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2108

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2111

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2113
  call void @llvm.dbg.value(metadata i8 %254, metadata !1888, metadata !DIExpression()), !dbg !2101
  br i1 %113, label %255, label %661, !dbg !2114

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2113
  call void @llvm.dbg.value(metadata i8 %256, metadata !1888, metadata !DIExpression()), !dbg !2101
  br i1 %103, label %524, label %478, !dbg !2116

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2117
  br i1 %258, label %259, label %264, !dbg !2119

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2120, !tbaa !996
  %261 = icmp ne i8 %260, 0, !dbg !2121
  %262 = icmp ne i64 %122, 0, !dbg !2122
  %263 = or i1 %262, %261, !dbg !2124
  br i1 %263, label %467, label %270, !dbg !2124

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2125
  %266 = icmp ne i64 %122, 0, !dbg !2122
  %267 = or i1 %266, %265, !dbg !2119
  br i1 %267, label %467, label %270, !dbg !2119

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2122
  br i1 %269, label %270, label %467, !dbg !2126

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1891, metadata !DIExpression()), !dbg !2008
  br label %271, !dbg !2127

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2113
  call void @llvm.dbg.value(metadata i8 %272, metadata !1891, metadata !DIExpression()), !dbg !2008
  br i1 %113, label %467, label %661, !dbg !2128

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 1, metadata !1891, metadata !DIExpression()), !dbg !2008
  br i1 %114, label %274, label %467, !dbg !2130

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2131

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2134
  %277 = icmp ne i64 %124, 0, !dbg !2136
  %278 = or i1 %277, %276, !dbg !2137
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2137
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2137
  call void @llvm.dbg.value(metadata i64 %280, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %279, metadata !1875, metadata !DIExpression()), !dbg !1938
  %281 = icmp ult i64 %123, %280, !dbg !2138
  br i1 %281, label %282, label %284, !dbg !2141

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2138
  store i8 39, i8* %283, align 1, !dbg !2138, !tbaa !996
  br label %284, !dbg !2138

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %285, metadata !1874, metadata !DIExpression()), !dbg !1937
  %286 = icmp ult i64 %285, %280, !dbg !2142
  br i1 %286, label %287, label %289, !dbg !2145

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2142
  store i8 92, i8* %288, align 1, !dbg !2142, !tbaa !996
  br label %289, !dbg !2142

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %290, metadata !1874, metadata !DIExpression()), !dbg !1937
  %291 = icmp ult i64 %290, %280, !dbg !2146
  br i1 %291, label %292, label %294, !dbg !2149

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2146
  store i8 39, i8* %293, align 1, !dbg !2146, !tbaa !996
  br label %294, !dbg !2146

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %295, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, metadata !1881, metadata !DIExpression()), !dbg !1945
  br label %467, !dbg !2150

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2151

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1892, metadata !DIExpression()), !dbg !2152
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2153
  %299 = load i16*, i16** %298, align 8, !dbg !2153, !tbaa !851
  %300 = zext i8 %157 to i64, !dbg !2153
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2153
  %302 = load i16, i16* %301, align 2, !dbg !2153, !tbaa !1148
  %303 = lshr i16 %302, 14, !dbg !2155
  %304 = trunc i16 %303 to i8, !dbg !2155
  %305 = and i8 %304, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i8 %305, metadata !1895, metadata !DIExpression()), !dbg !2156
  br label %359, !dbg !2157

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2158
  store i64 0, i64* %10, align 8, !dbg !2159
  call void @llvm.dbg.value(metadata i64 0, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 1, metadata !1895, metadata !DIExpression()), !dbg !2156
  %307 = icmp eq i64 %154, -1, !dbg !2160
  br i1 %307, label %308, label %310, !dbg !2162

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %309, metadata !1867, metadata !DIExpression()), !dbg !1931
  br label %310, !dbg !2164

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2165
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  br label %312, !dbg !2166

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2167
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2168
  call void @llvm.dbg.value(metadata i8 %314, metadata !1895, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %313, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2169
  %315 = add i64 %313, %122, !dbg !2170
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2171
  %317 = sub i64 %311, %315, !dbg !2172
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1896, metadata !DIExpression(DW_OP_deref)), !dbg !2173
  call void @llvm.dbg.value(metadata i32* %12, metadata !1914, metadata !DIExpression(DW_OP_deref)), !dbg !2174
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %318, metadata !1917, metadata !DIExpression()), !dbg !2176
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2177

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %313, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %313, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %313, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %313, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %313, metadata !1892, metadata !DIExpression()), !dbg !2152
  %320 = icmp ugt i64 %311, %315, !dbg !2178
  br i1 %320, label %321, label %344, !dbg !2180

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1892, metadata !DIExpression()), !dbg !2152
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2181
  %325 = load i8, i8* %324, align 1, !dbg !2181, !tbaa !996
  %326 = icmp eq i8 %325, 0, !dbg !2180
  br i1 %326, label %344, label %327, !dbg !2182

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %328, metadata !1892, metadata !DIExpression()), !dbg !2152
  %329 = add i64 %328, %122, !dbg !2184
  %330 = icmp ult i64 %329, %311, !dbg !2178
  br i1 %330, label %321, label %344, !dbg !2180, !llvm.loop !2185

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2186
  %333 = and i1 %116, %332, !dbg !2189
  call void @llvm.dbg.value(metadata i64 1, metadata !1918, metadata !DIExpression()), !dbg !2190
  br i1 %333, label %334, label %347, !dbg !2189

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1918, metadata !DIExpression()), !dbg !2190
  %336 = add i64 %335, %315, !dbg !2191
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2192
  %338 = load i8, i8* %337, align 1, !dbg !2192, !tbaa !996
  %339 = sext i8 %338 to i32, !dbg !2192
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2193

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %341, metadata !1918, metadata !DIExpression()), !dbg !2190
  %342 = icmp ult i64 %341, %318, !dbg !2186
  br i1 %342, label %334, label %347, !dbg !2195, !llvm.loop !2196

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %314, metadata !1895, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %313, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %314, metadata !1895, metadata !DIExpression()), !dbg !2156
  br label %344, !dbg !2198

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1895, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %352, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2198
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2199, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %348, metadata !1914, metadata !DIExpression()), !dbg !2174
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !2201
  %350 = icmp eq i32 %349, 0, !dbg !2201
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2202
  call void @llvm.dbg.value(metadata i8 %351, metadata !1895, metadata !DIExpression()), !dbg !2156
  %352 = add i64 %318, %313, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %352, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %351, metadata !1895, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %352, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2198
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1896, metadata !DIExpression(DW_OP_deref)), !dbg !2173
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2204
  %354 = icmp eq i32 %353, 0, !dbg !2205
  br i1 %354, label %312, label %355, !dbg !2206, !llvm.loop !2207

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2209
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8 %100, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %100, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %100, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %100, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %100, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i32 %94, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %94, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %94, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %94, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %94, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8 %100, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %100, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %100, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %100, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %100, metadata !1878, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %311, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %351, metadata !1895, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %352, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2198
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2209
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2210
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2211
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2211
  call void @llvm.dbg.value(metadata i8 %362, metadata !1895, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %361, metadata !1892, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %360, metadata !1867, metadata !DIExpression()), !dbg !1931
  %363 = and i8 %362, 1, !dbg !2212
  %364 = icmp ne i8 %363, 0, !dbg !2212
  call void @llvm.dbg.value(metadata i8 %363, metadata !1891, metadata !DIExpression()), !dbg !2008
  %365 = icmp ult i64 %361, 2, !dbg !2213
  %366 = or i1 %364, %115, !dbg !2214
  %367 = and i1 %365, %366, !dbg !2215
  br i1 %367, label %467, label %368, !dbg !2215

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %369, metadata !1925, metadata !DIExpression()), !dbg !2217
  br label %370, !dbg !2218

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2219
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2223
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1945
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2219
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2225
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2007
  call void @llvm.dbg.value(metadata i8 %376, metadata !1890, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 %375, metadata !1889, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 %374, metadata !1884, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %373, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %372, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %371, metadata !1873, metadata !DIExpression()), !dbg !1997
  br i1 %366, label %423, label %377, !dbg !2229

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2230

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1890, metadata !DIExpression()), !dbg !2007
  %379 = and i8 %373, 1, !dbg !2233
  %380 = icmp eq i8 %379, 0, !dbg !2233
  %381 = and i1 %114, %380, !dbg !2233
  br i1 %381, label %382, label %398, !dbg !2233

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2235
  br i1 %383, label %384, label %386, !dbg !2239

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2235
  store i8 39, i8* %385, align 1, !dbg !2235, !tbaa !996
  br label %386, !dbg !2235

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %387, metadata !1874, metadata !DIExpression()), !dbg !1937
  %388 = icmp ult i64 %387, %129, !dbg !2240
  br i1 %388, label %389, label %391, !dbg !2243

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2240
  store i8 36, i8* %390, align 1, !dbg !2240, !tbaa !996
  br label %391, !dbg !2240

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %392, metadata !1874, metadata !DIExpression()), !dbg !1937
  %393 = icmp ult i64 %392, %129, !dbg !2244
  br i1 %393, label %394, label %396, !dbg !2247

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2244
  store i8 39, i8* %395, align 1, !dbg !2244, !tbaa !996
  br label %396, !dbg !2244

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %397, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 1, metadata !1881, metadata !DIExpression()), !dbg !1945
  br label %398, !dbg !2248

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1996
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1996
  call void @llvm.dbg.value(metadata i8 %400, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %399, metadata !1874, metadata !DIExpression()), !dbg !1937
  %401 = icmp ult i64 %399, %129, !dbg !2249
  br i1 %401, label %402, label %404, !dbg !2252

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2249
  store i8 92, i8* %403, align 1, !dbg !2249, !tbaa !996
  br label %404, !dbg !2249

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %405, metadata !1874, metadata !DIExpression()), !dbg !1937
  %406 = icmp ult i64 %405, %129, !dbg !2253
  br i1 %406, label %407, label %411, !dbg !2256

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2253
  %409 = or i8 %408, 48, !dbg !2253
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2253
  store i8 %409, i8* %410, align 1, !dbg !2253, !tbaa !996
  br label %411, !dbg !2253

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %412, metadata !1874, metadata !DIExpression()), !dbg !1937
  %413 = icmp ult i64 %412, %129, !dbg !2257
  br i1 %413, label %414, label %419, !dbg !2260

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2257
  %416 = and i8 %415, 7, !dbg !2257
  %417 = or i8 %416, 48, !dbg !2257
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2257
  store i8 %417, i8* %418, align 1, !dbg !2257, !tbaa !996
  br label %419, !dbg !2257

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %420, metadata !1874, metadata !DIExpression()), !dbg !1937
  %421 = and i8 %374, 7, !dbg !2261
  %422 = or i8 %421, 48, !dbg !2262
  call void @llvm.dbg.value(metadata i8 %422, metadata !1884, metadata !DIExpression()), !dbg !2023
  br label %432, !dbg !2263

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2264
  %425 = icmp eq i8 %424, 0, !dbg !2264
  br i1 %425, label %432, label %426, !dbg !2265

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2266
  br i1 %427, label %428, label %430, !dbg !2269

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2266
  store i8 92, i8* %429, align 1, !dbg !2266, !tbaa !996
  br label %430, !dbg !2266

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %431, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, metadata !1889, metadata !DIExpression()), !dbg !2006
  br label %432, !dbg !2270

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2271
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1945
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2272
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2273
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2275
  call void @llvm.dbg.value(metadata i8 %437, metadata !1890, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 %436, metadata !1889, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 %435, metadata !1884, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %434, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %433, metadata !1874, metadata !DIExpression()), !dbg !1937
  %438 = add i64 %371, 1, !dbg !2276
  %439 = icmp ugt i64 %369, %438, !dbg !2278
  br i1 %439, label %440, label %562, !dbg !2279

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2280
  %442 = icmp ne i8 %441, 0, !dbg !2280
  %443 = and i8 %437, 1, !dbg !2280
  %444 = icmp eq i8 %443, 0, !dbg !2280
  %445 = and i1 %442, %444, !dbg !2280
  br i1 %445, label %446, label %457, !dbg !2280

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2283
  br i1 %447, label %448, label %450, !dbg !2287

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2283
  store i8 39, i8* %449, align 1, !dbg !2283, !tbaa !996
  br label %450, !dbg !2283

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %451, metadata !1874, metadata !DIExpression()), !dbg !1937
  %452 = icmp ult i64 %451, %129, !dbg !2288
  br i1 %452, label %453, label %455, !dbg !2291

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2288
  store i8 39, i8* %454, align 1, !dbg !2288, !tbaa !996
  br label %455, !dbg !2288

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %456, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, metadata !1881, metadata !DIExpression()), !dbg !1945
  br label %457, !dbg !2292

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2293
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1996
  call void @llvm.dbg.value(metadata i8 %459, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %458, metadata !1874, metadata !DIExpression()), !dbg !1937
  %460 = icmp ult i64 %458, %129, !dbg !2294
  br i1 %460, label %461, label %463, !dbg !2296

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2294
  store i8 %435, i8* %462, align 1, !dbg !2294, !tbaa !996
  br label %463, !dbg !2294

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %464, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %438, metadata !1873, metadata !DIExpression()), !dbg !1997
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2297
  %466 = load i8, i8* %465, align 1, !dbg !2297, !tbaa !996
  call void @llvm.dbg.value(metadata i8 %466, metadata !1884, metadata !DIExpression()), !dbg !2023
  br label %370, !dbg !2298, !llvm.loop !2299

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2302
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1996
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1938
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2303
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1996
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1996
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2021
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2021
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2021
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %476, metadata !1891, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 %475, metadata !1890, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 %155, metadata !1889, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 %474, metadata !1884, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %473, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %472, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %471, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %470, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %469, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %468, metadata !1873, metadata !DIExpression()), !dbg !1997
  br i1 %105, label %489, label %478, !dbg !2304

; <label>:478:                                    ; preds = %255, %207, %186, %467
  %479 = phi i64 [ %477, %467 ], [ %129, %186 ], [ %129, %207 ], [ %129, %255 ]
  %480 = phi i8 [ %476, %467 ], [ 0, %186 ], [ 0, %207 ], [ 0, %255 ]
  %481 = phi i8 [ %475, %467 ], [ 1, %186 ], [ 0, %207 ], [ 0, %255 ]
  %482 = phi i8 [ %474, %467 ], [ 48, %186 ], [ 0, %207 ], [ %157, %255 ]
  %483 = phi i8 [ %473, %467 ], [ %127, %186 ], [ %127, %207 ], [ %127, %255 ]
  %484 = phi i8 [ %472, %467 ], [ %182, %186 ], [ %126, %207 ], [ %126, %255 ]
  %485 = phi i64 [ %471, %467 ], [ %154, %186 ], [ %154, %207 ], [ %154, %255 ]
  %486 = phi i64 [ %470, %467 ], [ %124, %186 ], [ %124, %207 ], [ %124, %255 ]
  %487 = phi i64 [ %469, %467 ], [ %187, %186 ], [ %123, %207 ], [ %123, %255 ]
  %488 = phi i64 [ %468, %467 ], [ %122, %186 ], [ %122, %207 ], [ %122, %255 ]
  br i1 %112, label %490, label %512, !dbg !2306

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2307

; <label>:490:                                    ; preds = %489, %478
  %491 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %492 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %493 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %494 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %495 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %496 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %497 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %498 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %499 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %500 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %501 = lshr i8 %494, 5, !dbg !2308
  %502 = zext i8 %501 to i64, !dbg !2308
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2309
  %504 = load i32, i32* %503, align 4, !dbg !2309, !tbaa !943
  %505 = and i8 %494, 31, !dbg !2310
  %506 = zext i8 %505 to i32, !dbg !2310
  %507 = shl i32 1, %506, !dbg !2311
  %508 = and i32 %504, %507, !dbg !2311
  %509 = icmp eq i32 %508, 0, !dbg !2311
  %510 = icmp eq i8 %155, 0, !dbg !2312
  %511 = and i1 %510, %509, !dbg !2313
  br i1 %511, label %562, label %524, !dbg !2313

; <label>:512:                                    ; preds = %489, %478
  %513 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %514 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %515 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %516 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %517 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %518 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %519 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %520 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %521 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %522 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %523 = icmp eq i8 %155, 0, !dbg !2312
  br i1 %523, label %562, label %524, !dbg !2314

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2315
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1996
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1938
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2303
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1945
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1946
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2316
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2021
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %532, metadata !1891, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 %531, metadata !1884, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %530, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %529, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %528, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %527, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %526, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %525, metadata !1873, metadata !DIExpression()), !dbg !1997
  br i1 %110, label %534, label %661, !dbg !2319

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1890, metadata !DIExpression()), !dbg !2007
  %535 = and i8 %529, 1, !dbg !2321
  %536 = icmp eq i8 %535, 0, !dbg !2321
  %537 = and i1 %114, %536, !dbg !2321
  br i1 %537, label %538, label %554, !dbg !2321

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2323
  br i1 %539, label %540, label %542, !dbg !2327

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2323
  store i8 39, i8* %541, align 1, !dbg !2323, !tbaa !996
  br label %542, !dbg !2323

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2327
  call void @llvm.dbg.value(metadata i64 %543, metadata !1874, metadata !DIExpression()), !dbg !1937
  %544 = icmp ult i64 %543, %533, !dbg !2328
  br i1 %544, label %545, label %547, !dbg !2331

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2328
  store i8 36, i8* %546, align 1, !dbg !2328, !tbaa !996
  br label %547, !dbg !2328

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %548, metadata !1874, metadata !DIExpression()), !dbg !1937
  %549 = icmp ult i64 %548, %533, !dbg !2332
  br i1 %549, label %550, label %552, !dbg !2335

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2332
  store i8 39, i8* %551, align 1, !dbg !2332, !tbaa !996
  br label %552, !dbg !2332

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %553, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 1, metadata !1881, metadata !DIExpression()), !dbg !1945
  br label %554, !dbg !2336

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2293
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1996
  call void @llvm.dbg.value(metadata i8 %556, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %555, metadata !1874, metadata !DIExpression()), !dbg !1937
  %557 = icmp ult i64 %555, %533, !dbg !2337
  br i1 %557, label %558, label %560, !dbg !2340

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2337
  store i8 92, i8* %559, align 1, !dbg !2337, !tbaa !996
  br label %560, !dbg !2337

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %561, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %572, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %571, metadata !1891, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 %570, metadata !1890, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 %569, metadata !1884, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %568, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %567, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %566, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %565, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %564, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %563, metadata !1873, metadata !DIExpression()), !dbg !1997
  br label %589, !dbg !2341

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2315
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1996
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1938
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2303
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1945
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1946
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2344
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2021
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2021
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %571, metadata !1891, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 %570, metadata !1890, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 %569, metadata !1884, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %568, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %567, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %566, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %565, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %564, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %563, metadata !1873, metadata !DIExpression()), !dbg !1997
  %573 = and i8 %567, 1, !dbg !2341
  %574 = icmp ne i8 %573, 0, !dbg !2341
  %575 = and i8 %570, 1, !dbg !2341
  %576 = icmp eq i8 %575, 0, !dbg !2341
  %577 = and i1 %574, %576, !dbg !2341
  br i1 %577, label %578, label %589, !dbg !2341

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2345
  br i1 %579, label %580, label %582, !dbg !2349

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2345
  store i8 39, i8* %581, align 1, !dbg !2345, !tbaa !996
  br label %582, !dbg !2345

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %583, metadata !1874, metadata !DIExpression()), !dbg !1937
  %584 = icmp ult i64 %583, %572, !dbg !2350
  br i1 %584, label %585, label %587, !dbg !2353

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2350
  store i8 39, i8* %586, align 1, !dbg !2350, !tbaa !996
  br label %587, !dbg !2350

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %588, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, metadata !1881, metadata !DIExpression()), !dbg !1945
  br label %589, !dbg !2354

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2293
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1996
  call void @llvm.dbg.value(metadata i8 %598, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %597, metadata !1874, metadata !DIExpression()), !dbg !1937
  %599 = icmp ult i64 %597, %590, !dbg !2355
  br i1 %599, label %600, label %602, !dbg !2358

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2355
  store i8 %592, i8* %601, align 1, !dbg !2355, !tbaa !996
  br label %602, !dbg !2355

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %603, metadata !1874, metadata !DIExpression()), !dbg !1937
  %604 = and i8 %591, 1, !dbg !2359
  %605 = icmp eq i8 %604, 0, !dbg !2359
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2361
  call void @llvm.dbg.value(metadata i8 %606, metadata !1883, metadata !DIExpression()), !dbg !1947
  br label %607, !dbg !2362

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2315
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1996
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1938
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2303
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1945
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1996
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1947
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %614, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %613, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %612, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %611, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %610, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %609, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %608, metadata !1873, metadata !DIExpression()), !dbg !1997
  %616 = add i64 %608, 1, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %616, metadata !1873, metadata !DIExpression()), !dbg !1997
  br label %121, !dbg !2364, !llvm.loop !2365

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8 %126, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %126, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %127, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %127, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %128, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %128, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8 %126, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %126, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %127, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %127, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %128, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %128, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8 %126, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %126, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %127, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %127, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %128, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %128, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8 %126, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %126, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %127, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %127, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %128, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %128, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %618, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %618, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %126, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %126, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %127, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %127, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %128, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %128, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %125, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %125, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %126, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %126, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %127, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %127, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %128, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %128, metadata !1883, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  %619 = icmp eq i64 %123, 0, !dbg !2367
  %620 = and i1 %114, %619, !dbg !2369
  %621 = xor i1 %620, true, !dbg !2369
  %622 = or i1 %110, %621, !dbg !2369
  br i1 %622, label %623, label %661, !dbg !2369

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2370
  %625 = xor i1 %624, true, !dbg !2370
  %626 = and i8 %127, 1, !dbg !2372
  %627 = icmp eq i8 %626, 0, !dbg !2372
  %628 = or i1 %627, %625, !dbg !2370
  br i1 %628, label %638, label %629, !dbg !2370

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2373
  %631 = icmp eq i8 %630, 0, !dbg !2373
  br i1 %631, label %634, label %632, !dbg !2376

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %618, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %618, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %618, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %618, metadata !1867, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %95, metadata !1871, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %96, metadata !1872, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 %124, metadata !1875, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %125, metadata !1867, metadata !DIExpression()), !dbg !1931
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2377
  br label %671, !dbg !2378

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2379
  %636 = icmp ne i64 %124, 0, !dbg !2381
  %637 = and i1 %636, %635, !dbg !2382
  br i1 %637, label %27, label %638, !dbg !2382

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %129, metadata !1865, metadata !DIExpression()), !dbg !1929
  %639 = icmp ne i8* %98, null, !dbg !2383
  %640 = and i1 %639, %110, !dbg !2385
  br i1 %640, label %641, label %656, !dbg !2385

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %123, metadata !1874, metadata !DIExpression()), !dbg !1937
  %642 = load i8, i8* %98, align 1, !dbg !2386, !tbaa !996
  %643 = icmp eq i8 %642, 0, !dbg !2389
  br i1 %643, label %656, label %644, !dbg !2389

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %647, metadata !1874, metadata !DIExpression()), !dbg !1937
  %648 = icmp ult i64 %647, %129, !dbg !2390
  br i1 %648, label %649, label %651, !dbg !2393

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2390
  store i8 %645, i8* %650, align 1, !dbg !2390, !tbaa !996
  br label %651, !dbg !2390

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2393
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2394
  call void @llvm.dbg.value(metadata i8* %653, metadata !1876, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %652, metadata !1874, metadata !DIExpression()), !dbg !1937
  %654 = load i8, i8* %653, align 1, !dbg !2386, !tbaa !996
  %655 = icmp eq i8 %654, 0, !dbg !2389
  br i1 %655, label %656, label %644, !dbg !2389, !llvm.loop !2395

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1937
  call void @llvm.dbg.value(metadata i64 %657, metadata !1874, metadata !DIExpression()), !dbg !1937
  %658 = icmp ult i64 %657, %129, !dbg !2397
  br i1 %658, label %659, label %671, !dbg !2399

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2400
  store i8 0, i8* %660, align 1, !dbg !2401, !tbaa !996
  br label %671, !dbg !2400

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1865, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %663, metadata !1867, metadata !DIExpression()), !dbg !1931
  %665 = icmp ne i32 %662, 2, !dbg !2402
  %666 = icmp eq i8 %102, 0, !dbg !2404
  %667 = or i1 %665, %666, !dbg !2405
  call void @llvm.dbg.value(metadata i32 4, metadata !1868, metadata !DIExpression()), !dbg !1932
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2405
  call void @llvm.dbg.value(metadata i32 %668, metadata !1868, metadata !DIExpression()), !dbg !1932
  %669 = and i32 %5, -3, !dbg !2406
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2407
  br label %671, !dbg !2408

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2409
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2410 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2414, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i32 %1, metadata !2415, metadata !DIExpression()), !dbg !2419
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2420
  call void @llvm.dbg.value(metadata i8* %3, metadata !2416, metadata !DIExpression()), !dbg !2421
  %4 = icmp eq i8* %3, %0, !dbg !2422
  br i1 %4, label %5, label %71, !dbg !2424

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2425
  call void @llvm.dbg.value(metadata i8* %6, metadata !2417, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i8* %6, metadata !2427, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8* null, metadata !2433, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 85, metadata !2434, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8 84, metadata !2435, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 70, metadata !2436, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 45, metadata !2437, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 56, metadata !2438, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 0, metadata !2439, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2440, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 0, metadata !2441, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 0, metadata !2442, metadata !DIExpression()), !dbg !2455
  %7 = load i8, i8* %6, align 1, !dbg !2456, !tbaa !996
  %8 = and i8 %7, -33, !dbg !2456
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2456

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2458, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8* null, metadata !2463, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 84, metadata !2464, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 70, metadata !2465, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 45, metadata !2466, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 56, metadata !2467, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8 0, metadata !2468, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2469, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 0, metadata !2470, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8 0, metadata !2471, metadata !DIExpression()), !dbg !2484
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2485
  %11 = load i8, i8* %10, align 1, !dbg !2485, !tbaa !996
  %12 = and i8 %11, -33, !dbg !2485
  %13 = icmp eq i8 %12, 84, !dbg !2485
  br i1 %13, label %14, label %68, !dbg !2485

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2487, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8* null, metadata !2492, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 70, metadata !2493, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 45, metadata !2494, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 56, metadata !2495, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2496, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 0, metadata !2497, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 0, metadata !2498, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8 0, metadata !2499, metadata !DIExpression()), !dbg !2511
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2512
  %16 = load i8, i8* %15, align 1, !dbg !2512, !tbaa !996
  %17 = and i8 %16, -33, !dbg !2512
  %18 = icmp eq i8 %17, 70, !dbg !2512
  br i1 %18, label %19, label %68, !dbg !2512

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2514, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* null, metadata !2519, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8 45, metadata !2520, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8 56, metadata !2521, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 0, metadata !2524, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 0, metadata !2525, metadata !DIExpression()), !dbg !2536
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2537
  %21 = load i8, i8* %20, align 1, !dbg !2537, !tbaa !996
  %22 = icmp eq i8 %21, 45, !dbg !2537
  br i1 %22, label %23, label %68, !dbg !2539

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2540, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* null, metadata !2545, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 56, metadata !2546, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 0, metadata !2547, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 0, metadata !2548, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 0, metadata !2549, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8 0, metadata !2550, metadata !DIExpression()), !dbg !2560
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2561
  %25 = load i8, i8* %24, align 1, !dbg !2561, !tbaa !996
  %26 = icmp eq i8 %25, 56, !dbg !2561
  br i1 %26, label %27, label %68, !dbg !2563

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2564, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8* null, metadata !2569, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8 0, metadata !2572, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 0, metadata !2573, metadata !DIExpression()), !dbg !2582
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2583
  %29 = load i8, i8* %28, align 1, !dbg !2583, !tbaa !996
  %30 = icmp eq i8 %29, 0, !dbg !2583
  br i1 %30, label %31, label %68, !dbg !2585

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2586, !tbaa !996
  %33 = icmp eq i8 %32, 96, !dbg !2587
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.153, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.154, i64 0, i64 0), !dbg !2586
  br label %71, !dbg !2588

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2458, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* null, metadata !2463, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 66, metadata !2464, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 49, metadata !2465, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 56, metadata !2466, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8 48, metadata !2467, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8 51, metadata !2468, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 48, metadata !2469, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 0, metadata !2470, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8 0, metadata !2471, metadata !DIExpression()), !dbg !2601
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2602
  %37 = load i8, i8* %36, align 1, !dbg !2602, !tbaa !996
  %38 = and i8 %37, -33, !dbg !2602
  %39 = icmp eq i8 %38, 66, !dbg !2602
  br i1 %39, label %40, label %68, !dbg !2602

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2487, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* null, metadata !2492, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8 49, metadata !2493, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 56, metadata !2494, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 48, metadata !2495, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 51, metadata !2496, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 48, metadata !2497, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2498, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 0, metadata !2499, metadata !DIExpression()), !dbg !2612
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2613
  %42 = load i8, i8* %41, align 1, !dbg !2613, !tbaa !996
  %43 = icmp eq i8 %42, 49, !dbg !2613
  br i1 %43, label %44, label %68, !dbg !2614

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2514, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8* null, metadata !2519, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8 56, metadata !2520, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8 48, metadata !2521, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 51, metadata !2522, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 48, metadata !2523, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 0, metadata !2524, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 0, metadata !2525, metadata !DIExpression()), !dbg !2623
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2624
  %46 = load i8, i8* %45, align 1, !dbg !2624, !tbaa !996
  %47 = icmp eq i8 %46, 56, !dbg !2624
  br i1 %47, label %48, label %68, !dbg !2625

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2540, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8* null, metadata !2545, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 48, metadata !2546, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 51, metadata !2547, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 48, metadata !2548, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8 0, metadata !2549, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 0, metadata !2550, metadata !DIExpression()), !dbg !2633
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2634
  %50 = load i8, i8* %49, align 1, !dbg !2634, !tbaa !996
  %51 = icmp eq i8 %50, 48, !dbg !2634
  br i1 %51, label %52, label %68, !dbg !2635

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2564, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8* null, metadata !2569, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 51, metadata !2570, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 48, metadata !2571, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 0, metadata !2572, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8 0, metadata !2573, metadata !DIExpression()), !dbg !2642
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2643
  %54 = load i8, i8* %53, align 1, !dbg !2643, !tbaa !996
  %55 = icmp eq i8 %54, 51, !dbg !2643
  br i1 %55, label %56, label %68, !dbg !2644

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2645, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8* null, metadata !2650, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8 48, metadata !2651, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 0, metadata !2653, metadata !DIExpression()), !dbg !2661
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2662
  %58 = load i8, i8* %57, align 1, !dbg !2662, !tbaa !996
  %59 = icmp eq i8 %58, 48, !dbg !2662
  br i1 %59, label %60, label %68, !dbg !2664

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2665, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8* null, metadata !2670, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 0, metadata !2671, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 0, metadata !2672, metadata !DIExpression()), !dbg !2679
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2680
  %62 = load i8, i8* %61, align 1, !dbg !2680, !tbaa !996
  %63 = icmp eq i8 %62, 0, !dbg !2680
  br i1 %63, label %64, label %68, !dbg !2682

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2683, !tbaa !996
  %66 = icmp eq i8 %65, 96, !dbg !2684
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.155, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.156, i64 0, i64 0), !dbg !2683
  br label %71, !dbg !2685

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2686
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), !dbg !2687
  br label %71, !dbg !2688

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2689
  ret i8* %72, !dbg !2690
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2691 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2695, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i64 %1, metadata !2696, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2697, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8* %0, metadata !2701, metadata !DIExpression()) #12, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %1, metadata !2706, metadata !DIExpression()) #12, !dbg !2716
  call void @llvm.dbg.value(metadata i64* null, metadata !2707, metadata !DIExpression()) #12, !dbg !2717
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2708, metadata !DIExpression()) #12, !dbg !2718
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2719
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2709, metadata !DIExpression()) #12, !dbg !2720
  %6 = tail call i32* @__errno_location() #17, !dbg !2721
  %7 = load i32, i32* %6, align 4, !dbg !2721, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %7, metadata !2710, metadata !DIExpression()) #12, !dbg !2722
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2723
  %9 = load i32, i32* %8, align 4, !dbg !2723, !tbaa !1797
  %10 = or i32 %9, 1, !dbg !2724
  call void @llvm.dbg.value(metadata i32 %10, metadata !2711, metadata !DIExpression()) #12, !dbg !2725
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2726
  %12 = load i32, i32* %11, align 8, !dbg !2726, !tbaa !1738
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2727
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2728
  %15 = load i8*, i8** %14, align 8, !dbg !2728, !tbaa !1823
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2729
  %17 = load i8*, i8** %16, align 8, !dbg !2729, !tbaa !1826
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2730
  %19 = add i64 %18, 1, !dbg !2731
  call void @llvm.dbg.value(metadata i64 %19, metadata !2712, metadata !DIExpression()) #12, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %19, metadata !2733, metadata !DIExpression()) #12, !dbg !2738
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2740
  call void @llvm.dbg.value(metadata i8* %20, metadata !2713, metadata !DIExpression()) #12, !dbg !2741
  %21 = load i32, i32* %11, align 8, !dbg !2742, !tbaa !1738
  %22 = load i8*, i8** %14, align 8, !dbg !2743, !tbaa !1823
  %23 = load i8*, i8** %16, align 8, !dbg !2744, !tbaa !1826
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2745
  store i32 %7, i32* %6, align 4, !dbg !2746, !tbaa !943
  ret i8* %20, !dbg !2747
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2702 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %1, metadata !2706, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64* %2, metadata !2707, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2708, metadata !DIExpression()), !dbg !2751
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2752
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2709, metadata !DIExpression()), !dbg !2753
  %7 = tail call i32* @__errno_location() #17, !dbg !2754
  %8 = load i32, i32* %7, align 4, !dbg !2754, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %8, metadata !2710, metadata !DIExpression()), !dbg !2755
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2756
  %10 = load i32, i32* %9, align 4, !dbg !2756, !tbaa !1797
  %11 = icmp ne i64* %2, null, !dbg !2757
  %12 = xor i1 %11, true, !dbg !2757
  %13 = zext i1 %12 to i32, !dbg !2757
  %14 = or i32 %10, %13, !dbg !2758
  call void @llvm.dbg.value(metadata i32 %14, metadata !2711, metadata !DIExpression()), !dbg !2759
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2760
  %16 = load i32, i32* %15, align 8, !dbg !2760, !tbaa !1738
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2761
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2762
  %19 = load i8*, i8** %18, align 8, !dbg !2762, !tbaa !1823
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2763
  %21 = load i8*, i8** %20, align 8, !dbg !2763, !tbaa !1826
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2764
  %23 = add i64 %22, 1, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %23, metadata !2712, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %23, metadata !2733, metadata !DIExpression()) #12, !dbg !2767
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2769
  call void @llvm.dbg.value(metadata i8* %24, metadata !2713, metadata !DIExpression()), !dbg !2770
  %25 = load i32, i32* %15, align 8, !dbg !2771, !tbaa !1738
  %26 = load i8*, i8** %18, align 8, !dbg !2772, !tbaa !1823
  %27 = load i8*, i8** %20, align 8, !dbg !2773, !tbaa !1826
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2774
  store i32 %8, i32* %7, align 4, !dbg !2775, !tbaa !943
  br i1 %11, label %29, label %30, !dbg !2776

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2777, !tbaa !1080
  br label %30, !dbg !2779

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2780
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2781 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2785, !tbaa !851
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2783, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i32 1, metadata !2784, metadata !DIExpression()), !dbg !2787
  %2 = load i32, i32* @nslots, align 4, !dbg !2788, !tbaa !943
  %3 = icmp sgt i32 %2, 1, !dbg !2791
  br i1 %3, label %4, label %12, !dbg !2792

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2784, metadata !DIExpression()), !dbg !2787
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2793
  %7 = load i8*, i8** %6, align 8, !dbg !2793, !tbaa !2794
  tail call void @free(i8* %7) #12, !dbg !2796
  %8 = add nuw nsw i64 %5, 1, !dbg !2797
  call void @llvm.dbg.value(metadata i32 undef, metadata !2784, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2787
  %9 = load i32, i32* @nslots, align 4, !dbg !2788, !tbaa !943
  %10 = sext i32 %9 to i64, !dbg !2791
  %11 = icmp slt i64 %8, %10, !dbg !2791
  br i1 %11, label %4, label %12, !dbg !2792, !llvm.loop !2798

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2800
  %14 = load i8*, i8** %13, align 8, !dbg !2800, !tbaa !2794
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2802
  br i1 %15, label %17, label %16, !dbg !2803

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2804
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2806, !tbaa !2807
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2808, !tbaa !2794
  br label %17, !dbg !2809

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2810
  br i1 %18, label %21, label %19, !dbg !2812

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2813
  tail call void @free(i8* %20) #12, !dbg !2815
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2816, !tbaa !851
  br label %21, !dbg !2817

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2818, !tbaa !943
  ret void, !dbg !2819
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2820 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2824, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %1, metadata !2825, metadata !DIExpression()), !dbg !2827
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2828
  ret i8* %3, !dbg !2829
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2830 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2834, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i8* %1, metadata !2835, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64 %2, metadata !2836, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2837, metadata !DIExpression()), !dbg !2852
  %5 = tail call i32* @__errno_location() #17, !dbg !2853
  %6 = load i32, i32* %5, align 4, !dbg !2853, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %6, metadata !2838, metadata !DIExpression()), !dbg !2854
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2855, !tbaa !851
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2839, metadata !DIExpression()), !dbg !2856
  %8 = icmp slt i32 %0, 0, !dbg !2857
  br i1 %8, label %9, label %10, !dbg !2859

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2860
  unreachable, !dbg !2860

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2861, !tbaa !943
  %12 = icmp sgt i32 %11, %0, !dbg !2862
  br i1 %12, label %34, label %13, !dbg !2863

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2864
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2843, metadata !DIExpression()), !dbg !2865
  %15 = icmp eq i32 %0, 2147483647, !dbg !2866
  br i1 %15, label %16, label %17, !dbg !2868

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2869
  unreachable, !dbg !2869

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2870
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2870
  %20 = add nsw i32 %0, 1, !dbg !2871
  %21 = sext i32 %20 to i64, !dbg !2872
  %22 = shl nsw i64 %21, 4, !dbg !2873
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2874
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2874
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2839, metadata !DIExpression()), !dbg !2856
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2875, !tbaa !851
  br i1 %14, label %25, label %26, !dbg !2876

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2877, !tbaa.struct !2879
  br label %26, !dbg !2880

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2881, !tbaa !943
  %28 = sext i32 %27 to i64, !dbg !2882
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2882
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2883
  %31 = sub nsw i32 %20, %27, !dbg !2884
  %32 = sext i32 %31 to i64, !dbg !2885
  %33 = shl nsw i64 %32, 4, !dbg !2886
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2883
  store i32 %20, i32* @nslots, align 4, !dbg !2887, !tbaa !943
  br label %34, !dbg !2888

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2889
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2839, metadata !DIExpression()), !dbg !2856
  %36 = sext i32 %0 to i64, !dbg !2890
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2891
  %38 = load i64, i64* %37, align 8, !dbg !2891, !tbaa !2807
  call void @llvm.dbg.value(metadata i64 %38, metadata !2844, metadata !DIExpression()), !dbg !2892
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2893
  %40 = load i8*, i8** %39, align 8, !dbg !2893, !tbaa !2794
  call void @llvm.dbg.value(metadata i8* %40, metadata !2846, metadata !DIExpression()), !dbg !2894
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2895
  %42 = load i32, i32* %41, align 4, !dbg !2895, !tbaa !1797
  %43 = or i32 %42, 1, !dbg !2896
  call void @llvm.dbg.value(metadata i32 %43, metadata !2847, metadata !DIExpression()), !dbg !2897
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2898
  %45 = load i32, i32* %44, align 8, !dbg !2898, !tbaa !1738
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2899
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2900
  %48 = load i8*, i8** %47, align 8, !dbg !2900, !tbaa !1823
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2901
  %50 = load i8*, i8** %49, align 8, !dbg !2901, !tbaa !1826
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2902
  call void @llvm.dbg.value(metadata i64 %51, metadata !2848, metadata !DIExpression()), !dbg !2903
  %52 = icmp ugt i64 %38, %51, !dbg !2904
  br i1 %52, label %63, label %53, !dbg !2906

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %54, metadata !2844, metadata !DIExpression()), !dbg !2892
  store i64 %54, i64* %37, align 8, !dbg !2909, !tbaa !2807
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2910
  br i1 %55, label %57, label %56, !dbg !2912

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2913
  br label %57, !dbg !2913

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2733, metadata !DIExpression()) #12, !dbg !2914
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2916
  call void @llvm.dbg.value(metadata i8* %58, metadata !2846, metadata !DIExpression()), !dbg !2894
  store i8* %58, i8** %39, align 8, !dbg !2917, !tbaa !2794
  %59 = load i32, i32* %44, align 8, !dbg !2918, !tbaa !1738
  %60 = load i8*, i8** %47, align 8, !dbg !2919, !tbaa !1823
  %61 = load i8*, i8** %49, align 8, !dbg !2920, !tbaa !1826
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2921
  br label %63, !dbg !2922

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2923
  call void @llvm.dbg.value(metadata i8* %64, metadata !2846, metadata !DIExpression()), !dbg !2894
  store i32 %6, i32* %5, align 4, !dbg !2924, !tbaa !943
  ret i8* %64, !dbg !2925
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2926 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2930, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8* %1, metadata !2931, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %2, metadata !2932, metadata !DIExpression()), !dbg !2935
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2936
  ret i8* %4, !dbg !2937
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2938 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2940, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2824, metadata !DIExpression()) #12, !dbg !2942
  call void @llvm.dbg.value(metadata i8* %0, metadata !2825, metadata !DIExpression()) #12, !dbg !2944
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2945
  ret i8* %2, !dbg !2946
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2947 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2951, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %1, metadata !2952, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i32 0, metadata !2930, metadata !DIExpression()) #12, !dbg !2955
  call void @llvm.dbg.value(metadata i8* %0, metadata !2931, metadata !DIExpression()) #12, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %1, metadata !2932, metadata !DIExpression()) #12, !dbg !2958
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2959
  ret i8* %3, !dbg !2960
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2961 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2965, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i32 %1, metadata !2966, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8* %2, metadata !2967, metadata !DIExpression()), !dbg !2971
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2972
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2972
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2968, metadata !DIExpression(DW_OP_deref)), !dbg !2973
  call void @llvm.dbg.value(metadata i32 %1, metadata !2974, metadata !DIExpression()) #12, !dbg !2980
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2982, !alias.scope !2983
  %6 = icmp eq i32 %1, 10, !dbg !2986
  br i1 %6, label %7, label %8, !dbg !2988

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2989, !noalias !2983
  unreachable, !dbg !2989

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2990
  store i32 %1, i32* %9, align 8, !dbg !2991, !tbaa !1738, !alias.scope !2983
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2968, metadata !DIExpression(DW_OP_deref)), !dbg !2973
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2979, metadata !DIExpression(DW_OP_deref)), !dbg !2982
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2992
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2993
  ret i8* %10, !dbg !2994
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2995 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2999, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 %1, metadata !3000, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8* %2, metadata !3001, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %3, metadata !3002, metadata !DIExpression()), !dbg !3007
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3008
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3008
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3003, metadata !DIExpression(DW_OP_deref)), !dbg !3009
  call void @llvm.dbg.value(metadata i32 %1, metadata !2974, metadata !DIExpression()) #12, !dbg !3010
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !3012, !alias.scope !3013
  %7 = icmp eq i32 %1, 10, !dbg !3016
  br i1 %7, label %8, label %9, !dbg !3017

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3018, !noalias !3013
  unreachable, !dbg !3018

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3019
  store i32 %1, i32* %10, align 8, !dbg !3020, !tbaa !1738, !alias.scope !3013
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3003, metadata !DIExpression(DW_OP_deref)), !dbg !3009
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2979, metadata !DIExpression(DW_OP_deref)), !dbg !3012
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3021
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3022
  ret i8* %11, !dbg !3023
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3024 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3028, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8* %1, metadata !3029, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i32 0, metadata !2965, metadata !DIExpression()) #12, !dbg !3032
  call void @llvm.dbg.value(metadata i32 %0, metadata !2966, metadata !DIExpression()) #12, !dbg !3034
  call void @llvm.dbg.value(metadata i8* %1, metadata !2967, metadata !DIExpression()) #12, !dbg !3035
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3036
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3036
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2968, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3037
  call void @llvm.dbg.value(metadata i32 %0, metadata !2974, metadata !DIExpression()) #12, !dbg !3038
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !3040, !alias.scope !3041
  %5 = icmp eq i32 %0, 10, !dbg !3044
  br i1 %5, label %6, label %7, !dbg !3045

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3046, !noalias !3041
  unreachable, !dbg !3046

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3047
  store i32 %0, i32* %8, align 8, !dbg !3048, !tbaa !1738, !alias.scope !3041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2968, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3037
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2979, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3040
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3049
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3050
  ret i8* %9, !dbg !3051
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3052 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3056, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8* %1, metadata !3057, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i64 %2, metadata !3058, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i32 0, metadata !2999, metadata !DIExpression()) #12, !dbg !3062
  call void @llvm.dbg.value(metadata i32 %0, metadata !3000, metadata !DIExpression()) #12, !dbg !3064
  call void @llvm.dbg.value(metadata i8* %1, metadata !3001, metadata !DIExpression()) #12, !dbg !3065
  call void @llvm.dbg.value(metadata i64 %2, metadata !3002, metadata !DIExpression()) #12, !dbg !3066
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3067
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3067
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3003, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3068
  call void @llvm.dbg.value(metadata i32 %0, metadata !2974, metadata !DIExpression()) #12, !dbg !3069
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !3071, !alias.scope !3072
  %6 = icmp eq i32 %0, 10, !dbg !3075
  br i1 %6, label %7, label %8, !dbg !3076

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3077, !noalias !3072
  unreachable, !dbg !3077

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3078
  store i32 %0, i32* %9, align 8, !dbg !3079, !tbaa !1738, !alias.scope !3072
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3003, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3068
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2979, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3071
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !3080
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3081
  ret i8* %10, !dbg !3082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3083 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3087, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 %2, metadata !3089, metadata !DIExpression()), !dbg !3093
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3094
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3094
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3095, !tbaa.struct !3096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3090, metadata !DIExpression(DW_OP_deref)), !dbg !3097
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1757, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8 %2, metadata !1758, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i32 1, metadata !1759, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %2, metadata !1760, metadata !DIExpression()), !dbg !3102
  %6 = lshr i8 %2, 5, !dbg !3103
  %7 = zext i8 %6 to i64, !dbg !3103
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3104
  call void @llvm.dbg.value(metadata i32* %8, metadata !1761, metadata !DIExpression()), !dbg !3105
  %9 = and i8 %2, 31, !dbg !3106
  %10 = zext i8 %9 to i32, !dbg !3106
  call void @llvm.dbg.value(metadata i32 %10, metadata !1763, metadata !DIExpression()), !dbg !3107
  %11 = load i32, i32* %8, align 4, !dbg !3108, !tbaa !943
  %12 = lshr i32 %11, %10, !dbg !3109
  %13 = and i32 %12, 1, !dbg !3110
  call void @llvm.dbg.value(metadata i32 %13, metadata !1764, metadata !DIExpression()), !dbg !3111
  %14 = xor i32 %13, 1, !dbg !3112
  %15 = shl i32 %14, %10, !dbg !3113
  %16 = xor i32 %15, %11, !dbg !3114
  store i32 %16, i32* %8, align 4, !dbg !3114, !tbaa !943
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3090, metadata !DIExpression(DW_OP_deref)), !dbg !3097
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3115
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3116
  ret i8* %17, !dbg !3117
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3118 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3122, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i8 %1, metadata !3123, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8* %0, metadata !3087, metadata !DIExpression()) #12, !dbg !3126
  call void @llvm.dbg.value(metadata i64 -1, metadata !3088, metadata !DIExpression()) #12, !dbg !3128
  call void @llvm.dbg.value(metadata i8 %1, metadata !3089, metadata !DIExpression()) #12, !dbg !3129
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3130
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3130
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3131, !tbaa.struct !3096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3090, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3132
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1757, metadata !DIExpression()) #12, !dbg !3133
  call void @llvm.dbg.value(metadata i8 %1, metadata !1758, metadata !DIExpression()) #12, !dbg !3135
  call void @llvm.dbg.value(metadata i32 1, metadata !1759, metadata !DIExpression()) #12, !dbg !3136
  call void @llvm.dbg.value(metadata i8 %1, metadata !1760, metadata !DIExpression()) #12, !dbg !3137
  %5 = lshr i8 %1, 5, !dbg !3138
  %6 = zext i8 %5 to i64, !dbg !3138
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3139
  call void @llvm.dbg.value(metadata i32* %7, metadata !1761, metadata !DIExpression()) #12, !dbg !3140
  %8 = and i8 %1, 31, !dbg !3141
  %9 = zext i8 %8 to i32, !dbg !3141
  call void @llvm.dbg.value(metadata i32 %9, metadata !1763, metadata !DIExpression()) #12, !dbg !3142
  %10 = load i32, i32* %7, align 4, !dbg !3143, !tbaa !943
  %11 = lshr i32 %10, %9, !dbg !3144
  %12 = and i32 %11, 1, !dbg !3145
  call void @llvm.dbg.value(metadata i32 %12, metadata !1764, metadata !DIExpression()) #12, !dbg !3146
  %13 = xor i32 %12, 1, !dbg !3147
  %14 = shl i32 %13, %9, !dbg !3148
  %15 = xor i32 %14, %10, !dbg !3149
  store i32 %15, i32* %7, align 4, !dbg !3149, !tbaa !943
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3090, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3132
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3150
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3151
  ret i8* %16, !dbg !3152
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3153 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3155, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8* %0, metadata !3122, metadata !DIExpression()) #12, !dbg !3157
  call void @llvm.dbg.value(metadata i8 58, metadata !3123, metadata !DIExpression()) #12, !dbg !3159
  call void @llvm.dbg.value(metadata i8* %0, metadata !3087, metadata !DIExpression()) #12, !dbg !3160
  call void @llvm.dbg.value(metadata i64 -1, metadata !3088, metadata !DIExpression()) #12, !dbg !3162
  call void @llvm.dbg.value(metadata i8 58, metadata !3089, metadata !DIExpression()) #12, !dbg !3163
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3164
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3164
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3165, !tbaa.struct !3096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3090, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3166
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1757, metadata !DIExpression()) #12, !dbg !3167
  call void @llvm.dbg.value(metadata i8 58, metadata !1758, metadata !DIExpression()) #12, !dbg !3169
  call void @llvm.dbg.value(metadata i32 1, metadata !1759, metadata !DIExpression()) #12, !dbg !3170
  call void @llvm.dbg.value(metadata i8 58, metadata !1760, metadata !DIExpression()) #12, !dbg !3171
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3172
  call void @llvm.dbg.value(metadata i32* %4, metadata !1761, metadata !DIExpression()) #12, !dbg !3173
  call void @llvm.dbg.value(metadata i32 26, metadata !1763, metadata !DIExpression()) #12, !dbg !3174
  %5 = load i32, i32* %4, align 4, !dbg !3175, !tbaa !943
  %6 = or i32 %5, 67108864, !dbg !3176
  store i32 %6, i32* %4, align 4, !dbg !3176, !tbaa !943
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3090, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3166
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3177
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3178
  ret i8* %7, !dbg !3179
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3180 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3182, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 %1, metadata !3183, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i8* %0, metadata !3087, metadata !DIExpression()) #12, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()) #12, !dbg !3188
  call void @llvm.dbg.value(metadata i8 58, metadata !3089, metadata !DIExpression()) #12, !dbg !3189
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3190
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3191, !tbaa.struct !3096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3090, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3192
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1757, metadata !DIExpression()) #12, !dbg !3193
  call void @llvm.dbg.value(metadata i8 58, metadata !1758, metadata !DIExpression()) #12, !dbg !3195
  call void @llvm.dbg.value(metadata i32 1, metadata !1759, metadata !DIExpression()) #12, !dbg !3196
  call void @llvm.dbg.value(metadata i8 58, metadata !1760, metadata !DIExpression()) #12, !dbg !3197
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3198
  call void @llvm.dbg.value(metadata i32* %5, metadata !1761, metadata !DIExpression()) #12, !dbg !3199
  call void @llvm.dbg.value(metadata i32 26, metadata !1763, metadata !DIExpression()) #12, !dbg !3200
  %6 = load i32, i32* %5, align 4, !dbg !3201, !tbaa !943
  %7 = or i32 %6, 67108864, !dbg !3202
  store i32 %7, i32* %5, align 4, !dbg !3202, !tbaa !943
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3090, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3192
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3203
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3204
  ret i8* %8, !dbg !3205
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3206 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2979, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %0, metadata !3208, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 %1, metadata !3209, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %2, metadata !3210, metadata !DIExpression()), !dbg !3216
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3217
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3217
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3218
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3218
  call void @llvm.dbg.value(metadata i32 %1, metadata !2974, metadata !DIExpression()) #12, !dbg !3219
  call void @llvm.dbg.value(metadata i32 0, metadata !2979, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3212
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3212, !alias.scope !3220
  %8 = icmp eq i32 %1, 10, !dbg !3223
  br i1 %8, label %9, label %10, !dbg !3224

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3225, !noalias !3220
  unreachable, !dbg !3225

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2979, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3212
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3218
  store i32 %1, i32* %11, align 8, !dbg !3218
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3218
  %13 = bitcast i32* %12 to i8*, !dbg !3218
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3218
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3218
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3211, metadata !DIExpression(DW_OP_deref)), !dbg !3226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1757, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8 58, metadata !1758, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 1, metadata !1759, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 58, metadata !1760, metadata !DIExpression()), !dbg !3231
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3232
  call void @llvm.dbg.value(metadata i32* %14, metadata !1761, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 26, metadata !1763, metadata !DIExpression()), !dbg !3234
  %15 = load i32, i32* %14, align 4, !dbg !3235, !tbaa !943
  %16 = or i32 %15, 67108864, !dbg !3236
  store i32 %16, i32* %14, align 4, !dbg !3236, !tbaa !943
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3211, metadata !DIExpression(DW_OP_deref)), !dbg !3226
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3237
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3238
  ret i8* %17, !dbg !3239
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3240 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3244, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8* %1, metadata !3245, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i8* %2, metadata !3246, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i8* %3, metadata !3247, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i32 %0, metadata !3252, metadata !DIExpression()) #12, !dbg !3262
  call void @llvm.dbg.value(metadata i8* %1, metadata !3257, metadata !DIExpression()) #12, !dbg !3264
  call void @llvm.dbg.value(metadata i8* %2, metadata !3258, metadata !DIExpression()) #12, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %3, metadata !3259, metadata !DIExpression()) #12, !dbg !3266
  call void @llvm.dbg.value(metadata i64 -1, metadata !3260, metadata !DIExpression()) #12, !dbg !3267
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3268
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3268
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3269, !tbaa.struct !3096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3261, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3270
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1805, metadata !DIExpression()) #12, !dbg !3271
  call void @llvm.dbg.value(metadata i8* %1, metadata !1806, metadata !DIExpression()) #12, !dbg !3273
  call void @llvm.dbg.value(metadata i8* %2, metadata !1807, metadata !DIExpression()) #12, !dbg !3274
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1805, metadata !DIExpression()) #12, !dbg !3271
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3275
  store i32 10, i32* %7, align 8, !dbg !3276, !tbaa !1738
  %8 = icmp ne i8* %1, null, !dbg !3277
  %9 = icmp ne i8* %2, null, !dbg !3278
  %10 = and i1 %8, %9, !dbg !3279
  br i1 %10, label %12, label %11, !dbg !3279

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3280
  unreachable, !dbg !3280

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3281
  store i8* %1, i8** %13, align 8, !dbg !3282, !tbaa !1823
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3283
  store i8* %2, i8** %14, align 8, !dbg !3284, !tbaa !1826
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3261, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3270
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3285
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3286
  ret i8* %15, !dbg !3287
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3253 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3252, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %1, metadata !3257, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %2, metadata !3258, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8* %3, metadata !3259, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %4, metadata !3260, metadata !DIExpression()), !dbg !3292
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3293
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3293
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3294, !tbaa.struct !3096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3261, metadata !DIExpression(DW_OP_deref)), !dbg !3295
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1805, metadata !DIExpression()) #12, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %1, metadata !1806, metadata !DIExpression()) #12, !dbg !3298
  call void @llvm.dbg.value(metadata i8* %2, metadata !1807, metadata !DIExpression()) #12, !dbg !3299
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1805, metadata !DIExpression()) #12, !dbg !3296
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3300
  store i32 10, i32* %8, align 8, !dbg !3301, !tbaa !1738
  %9 = icmp ne i8* %1, null, !dbg !3302
  %10 = icmp ne i8* %2, null, !dbg !3303
  %11 = and i1 %9, %10, !dbg !3304
  br i1 %11, label %13, label %12, !dbg !3304

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3305
  unreachable, !dbg !3305

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3306
  store i8* %1, i8** %14, align 8, !dbg !3307, !tbaa !1823
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3308
  store i8* %2, i8** %15, align 8, !dbg !3309, !tbaa !1826
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3261, metadata !DIExpression(DW_OP_deref)), !dbg !3295
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3310
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3311
  ret i8* %16, !dbg !3312
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3313 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3317, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i8* %1, metadata !3318, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8* %2, metadata !3319, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 0, metadata !3244, metadata !DIExpression()) #12, !dbg !3323
  call void @llvm.dbg.value(metadata i8* %0, metadata !3245, metadata !DIExpression()) #12, !dbg !3325
  call void @llvm.dbg.value(metadata i8* %1, metadata !3246, metadata !DIExpression()) #12, !dbg !3326
  call void @llvm.dbg.value(metadata i8* %2, metadata !3247, metadata !DIExpression()) #12, !dbg !3327
  call void @llvm.dbg.value(metadata i32 0, metadata !3252, metadata !DIExpression()) #12, !dbg !3328
  call void @llvm.dbg.value(metadata i8* %0, metadata !3257, metadata !DIExpression()) #12, !dbg !3330
  call void @llvm.dbg.value(metadata i8* %1, metadata !3258, metadata !DIExpression()) #12, !dbg !3331
  call void @llvm.dbg.value(metadata i8* %2, metadata !3259, metadata !DIExpression()) #12, !dbg !3332
  call void @llvm.dbg.value(metadata i64 -1, metadata !3260, metadata !DIExpression()) #12, !dbg !3333
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3334
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3334
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3335, !tbaa.struct !3096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3261, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3336
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1805, metadata !DIExpression()) #12, !dbg !3337
  call void @llvm.dbg.value(metadata i8* %0, metadata !1806, metadata !DIExpression()) #12, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %1, metadata !1807, metadata !DIExpression()) #12, !dbg !3340
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1805, metadata !DIExpression()) #12, !dbg !3337
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3341
  store i32 10, i32* %6, align 8, !dbg !3342, !tbaa !1738
  %7 = icmp ne i8* %0, null, !dbg !3343
  %8 = icmp ne i8* %1, null, !dbg !3344
  %9 = and i1 %7, %8, !dbg !3345
  br i1 %9, label %11, label %10, !dbg !3345

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3346
  unreachable, !dbg !3346

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3347
  store i8* %0, i8** %12, align 8, !dbg !3348, !tbaa !1823
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3349
  store i8* %1, i8** %13, align 8, !dbg !3350, !tbaa !1826
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3261, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3336
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3351
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3352
  ret i8* %14, !dbg !3353
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3354 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3358, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i8* %1, metadata !3359, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8* %2, metadata !3360, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %3, metadata !3361, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i32 0, metadata !3252, metadata !DIExpression()) #12, !dbg !3366
  call void @llvm.dbg.value(metadata i8* %0, metadata !3257, metadata !DIExpression()) #12, !dbg !3368
  call void @llvm.dbg.value(metadata i8* %1, metadata !3258, metadata !DIExpression()) #12, !dbg !3369
  call void @llvm.dbg.value(metadata i8* %2, metadata !3259, metadata !DIExpression()) #12, !dbg !3370
  call void @llvm.dbg.value(metadata i64 %3, metadata !3260, metadata !DIExpression()) #12, !dbg !3371
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3372
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3372
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3373, !tbaa.struct !3096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3261, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3374
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1805, metadata !DIExpression()) #12, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %0, metadata !1806, metadata !DIExpression()) #12, !dbg !3377
  call void @llvm.dbg.value(metadata i8* %1, metadata !1807, metadata !DIExpression()) #12, !dbg !3378
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1805, metadata !DIExpression()) #12, !dbg !3375
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3379
  store i32 10, i32* %7, align 8, !dbg !3380, !tbaa !1738
  %8 = icmp ne i8* %0, null, !dbg !3381
  %9 = icmp ne i8* %1, null, !dbg !3382
  %10 = and i1 %8, %9, !dbg !3383
  br i1 %10, label %12, label %11, !dbg !3383

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3384
  unreachable, !dbg !3384

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3385
  store i8* %0, i8** %13, align 8, !dbg !3386, !tbaa !1823
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3387
  store i8* %1, i8** %14, align 8, !dbg !3388, !tbaa !1826
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3261, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3374
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3389
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3390
  ret i8* %15, !dbg !3391
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3392 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3396, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i8* %1, metadata !3397, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %2, metadata !3398, metadata !DIExpression()), !dbg !3401
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3402
  ret i8* %4, !dbg !3403
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3404 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3408, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %1, metadata !3409, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i32 0, metadata !3396, metadata !DIExpression()) #12, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %0, metadata !3397, metadata !DIExpression()) #12, !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3398, metadata !DIExpression()) #12, !dbg !3415
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3416
  ret i8* %3, !dbg !3417
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3418 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3422, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i8* %1, metadata !3423, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i32 %0, metadata !3396, metadata !DIExpression()) #12, !dbg !3426
  call void @llvm.dbg.value(metadata i8* %1, metadata !3397, metadata !DIExpression()) #12, !dbg !3428
  call void @llvm.dbg.value(metadata i64 -1, metadata !3398, metadata !DIExpression()) #12, !dbg !3429
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3430
  ret i8* %3, !dbg !3431
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3432 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3436, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 0, metadata !3422, metadata !DIExpression()) #12, !dbg !3438
  call void @llvm.dbg.value(metadata i8* %0, metadata !3423, metadata !DIExpression()) #12, !dbg !3440
  call void @llvm.dbg.value(metadata i32 0, metadata !3396, metadata !DIExpression()) #12, !dbg !3441
  call void @llvm.dbg.value(metadata i8* %0, metadata !3397, metadata !DIExpression()) #12, !dbg !3443
  call void @llvm.dbg.value(metadata i64 -1, metadata !3398, metadata !DIExpression()) #12, !dbg !3444
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3445
  ret i8* %2, !dbg !3446
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3447 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3486, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8* %1, metadata !3487, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i8* %2, metadata !3488, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i8* %3, metadata !3489, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i8** %4, metadata !3490, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i64 %5, metadata !3491, metadata !DIExpression()), !dbg !3497
  %7 = icmp eq i8* %1, null, !dbg !3498
  br i1 %7, label %10, label %8, !dbg !3500

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.163, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3501
  br label %12, !dbg !3501

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.164, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3502
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.165, i64 0, i64 0), i32 5) #12, !dbg !3503
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !3503
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.166, i64 0, i64 0), i32 5) #12, !dbg !3504
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3504
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.167, i64 0, i64 0), i32 5) #12, !dbg !3508
  %20 = load i8*, i8** %4, align 8, !dbg !3508, !tbaa !851
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3508
  br label %146, !dbg !3509

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.168, i64 0, i64 0), i32 5) #12, !dbg !3510
  %24 = load i8*, i8** %4, align 8, !dbg !3510, !tbaa !851
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3510
  %26 = load i8*, i8** %25, align 8, !dbg !3510, !tbaa !851
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3510
  br label %146, !dbg !3511

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.169, i64 0, i64 0), i32 5) #12, !dbg !3512
  %30 = load i8*, i8** %4, align 8, !dbg !3512, !tbaa !851
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3512
  %32 = load i8*, i8** %31, align 8, !dbg !3512, !tbaa !851
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3512
  %34 = load i8*, i8** %33, align 8, !dbg !3512, !tbaa !851
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3512
  br label %146, !dbg !3513

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.170, i64 0, i64 0), i32 5) #12, !dbg !3514
  %38 = load i8*, i8** %4, align 8, !dbg !3514, !tbaa !851
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3514
  %40 = load i8*, i8** %39, align 8, !dbg !3514, !tbaa !851
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3514
  %42 = load i8*, i8** %41, align 8, !dbg !3514, !tbaa !851
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3514
  %44 = load i8*, i8** %43, align 8, !dbg !3514, !tbaa !851
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3514
  br label %146, !dbg !3515

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.171, i64 0, i64 0), i32 5) #12, !dbg !3516
  %48 = load i8*, i8** %4, align 8, !dbg !3516, !tbaa !851
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3516
  %50 = load i8*, i8** %49, align 8, !dbg !3516, !tbaa !851
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3516
  %52 = load i8*, i8** %51, align 8, !dbg !3516, !tbaa !851
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3516
  %54 = load i8*, i8** %53, align 8, !dbg !3516, !tbaa !851
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3516
  %56 = load i8*, i8** %55, align 8, !dbg !3516, !tbaa !851
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3516
  br label %146, !dbg !3517

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.172, i64 0, i64 0), i32 5) #12, !dbg !3518
  %60 = load i8*, i8** %4, align 8, !dbg !3518, !tbaa !851
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3518
  %62 = load i8*, i8** %61, align 8, !dbg !3518, !tbaa !851
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3518
  %64 = load i8*, i8** %63, align 8, !dbg !3518, !tbaa !851
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3518
  %66 = load i8*, i8** %65, align 8, !dbg !3518, !tbaa !851
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3518
  %68 = load i8*, i8** %67, align 8, !dbg !3518, !tbaa !851
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3518
  %70 = load i8*, i8** %69, align 8, !dbg !3518, !tbaa !851
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3518
  br label %146, !dbg !3519

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.173, i64 0, i64 0), i32 5) #12, !dbg !3520
  %74 = load i8*, i8** %4, align 8, !dbg !3520, !tbaa !851
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3520
  %76 = load i8*, i8** %75, align 8, !dbg !3520, !tbaa !851
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3520
  %78 = load i8*, i8** %77, align 8, !dbg !3520, !tbaa !851
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3520
  %80 = load i8*, i8** %79, align 8, !dbg !3520, !tbaa !851
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3520
  %82 = load i8*, i8** %81, align 8, !dbg !3520, !tbaa !851
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3520
  %84 = load i8*, i8** %83, align 8, !dbg !3520, !tbaa !851
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3520
  %86 = load i8*, i8** %85, align 8, !dbg !3520, !tbaa !851
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3520
  br label %146, !dbg !3521

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.174, i64 0, i64 0), i32 5) #12, !dbg !3522
  %90 = load i8*, i8** %4, align 8, !dbg !3522, !tbaa !851
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3522
  %92 = load i8*, i8** %91, align 8, !dbg !3522, !tbaa !851
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3522
  %94 = load i8*, i8** %93, align 8, !dbg !3522, !tbaa !851
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3522
  %96 = load i8*, i8** %95, align 8, !dbg !3522, !tbaa !851
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3522
  %98 = load i8*, i8** %97, align 8, !dbg !3522, !tbaa !851
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3522
  %100 = load i8*, i8** %99, align 8, !dbg !3522, !tbaa !851
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3522
  %102 = load i8*, i8** %101, align 8, !dbg !3522, !tbaa !851
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3522
  %104 = load i8*, i8** %103, align 8, !dbg !3522, !tbaa !851
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3522
  br label %146, !dbg !3523

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.175, i64 0, i64 0), i32 5) #12, !dbg !3524
  %108 = load i8*, i8** %4, align 8, !dbg !3524, !tbaa !851
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3524
  %110 = load i8*, i8** %109, align 8, !dbg !3524, !tbaa !851
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3524
  %112 = load i8*, i8** %111, align 8, !dbg !3524, !tbaa !851
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3524
  %114 = load i8*, i8** %113, align 8, !dbg !3524, !tbaa !851
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3524
  %116 = load i8*, i8** %115, align 8, !dbg !3524, !tbaa !851
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3524
  %118 = load i8*, i8** %117, align 8, !dbg !3524, !tbaa !851
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3524
  %120 = load i8*, i8** %119, align 8, !dbg !3524, !tbaa !851
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3524
  %122 = load i8*, i8** %121, align 8, !dbg !3524, !tbaa !851
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3524
  %124 = load i8*, i8** %123, align 8, !dbg !3524, !tbaa !851
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3524
  br label %146, !dbg !3525

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.176, i64 0, i64 0), i32 5) #12, !dbg !3526
  %128 = load i8*, i8** %4, align 8, !dbg !3526, !tbaa !851
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3526
  %130 = load i8*, i8** %129, align 8, !dbg !3526, !tbaa !851
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3526
  %132 = load i8*, i8** %131, align 8, !dbg !3526, !tbaa !851
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3526
  %134 = load i8*, i8** %133, align 8, !dbg !3526, !tbaa !851
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3526
  %136 = load i8*, i8** %135, align 8, !dbg !3526, !tbaa !851
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3526
  %138 = load i8*, i8** %137, align 8, !dbg !3526, !tbaa !851
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3526
  %140 = load i8*, i8** %139, align 8, !dbg !3526, !tbaa !851
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3526
  %142 = load i8*, i8** %141, align 8, !dbg !3526, !tbaa !851
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3526
  %144 = load i8*, i8** %143, align 8, !dbg !3526, !tbaa !851
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3526
  br label %146, !dbg !3527

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3528
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3529 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3533, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i8* %1, metadata !3534, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i8* %2, metadata !3535, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i8* %3, metadata !3536, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8** %4, metadata !3537, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i64 0, metadata !3538, metadata !DIExpression()), !dbg !3544
  br label %6, !dbg !3545

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3547
  call void @llvm.dbg.value(metadata i64 %7, metadata !3538, metadata !DIExpression()), !dbg !3544
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3549
  %9 = load i8*, i8** %8, align 8, !dbg !3549, !tbaa !851
  %10 = icmp eq i8* %9, null, !dbg !3550
  %11 = add i64 %7, 1, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %11, metadata !3538, metadata !DIExpression()), !dbg !3544
  br i1 %10, label %12, label %6, !dbg !3550, !llvm.loop !3552

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3538, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %7, metadata !3538, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %7, metadata !3538, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %7, metadata !3538, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %7, metadata !3538, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %7, metadata !3538, metadata !DIExpression()), !dbg !3544
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3554
  ret void, !dbg !3555
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3556 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3567, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i8* %1, metadata !3568, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i8* %2, metadata !3569, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8* %3, metadata !3570, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3571, metadata !DIExpression()), !dbg !3579
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3580
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3580
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3573, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i64 0, metadata !3572, metadata !DIExpression()), !dbg !3582
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3572, metadata !DIExpression()), !dbg !3582
  %11 = load i32, i32* %8, align 8, !dbg !3583
  %12 = icmp ult i32 %11, 41, !dbg !3583
  br i1 %12, label %13, label %18, !dbg !3583

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3583
  %15 = sext i32 %11 to i64, !dbg !3583
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3583
  %17 = add i32 %11, 8, !dbg !3583
  store i32 %17, i32* %8, align 8, !dbg !3583
  br label %21, !dbg !3583

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3583
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3583
  store i8* %20, i8** %10, align 8, !dbg !3583
  br label %21, !dbg !3583

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3583
  %25 = load i8*, i8** %24, align 8, !dbg !3583
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3586
  store i8* %25, i8** %26, align 16, !dbg !3587, !tbaa !851
  %27 = icmp eq i8* %25, null, !dbg !3588
  br i1 %27, label %30, label %28, !dbg !3589

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3572, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 1, metadata !3572, metadata !DIExpression()), !dbg !3582
  %29 = icmp ult i32 %22, 41, !dbg !3583
  br i1 %29, label %35, label %32, !dbg !3583

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3590
  call void @llvm.dbg.value(metadata i64 %31, metadata !3572, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 %31, metadata !3572, metadata !DIExpression()), !dbg !3582
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3591
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3592
  ret void, !dbg !3592

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3583
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3583
  store i8* %34, i8** %10, align 8, !dbg !3583
  br label %40, !dbg !3583

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3583
  %37 = sext i32 %22 to i64, !dbg !3583
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3583
  %39 = add i32 %22, 8, !dbg !3583
  store i32 %39, i32* %8, align 8, !dbg !3583
  br label %40, !dbg !3583

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3583
  %44 = load i8*, i8** %43, align 8, !dbg !3583
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3586
  store i8* %44, i8** %45, align 8, !dbg !3587, !tbaa !851
  %46 = icmp eq i8* %44, null, !dbg !3588
  br i1 %46, label %30, label %47, !dbg !3589

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3572, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 2, metadata !3572, metadata !DIExpression()), !dbg !3582
  %48 = icmp ult i32 %41, 41, !dbg !3583
  br i1 %48, label %52, label %49, !dbg !3583

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3583
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3583
  store i8* %51, i8** %10, align 8, !dbg !3583
  br label %57, !dbg !3583

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3583
  %54 = sext i32 %41 to i64, !dbg !3583
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3583
  %56 = add i32 %41, 8, !dbg !3583
  store i32 %56, i32* %8, align 8, !dbg !3583
  br label %57, !dbg !3583

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3583
  %61 = load i8*, i8** %60, align 8, !dbg !3583
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3586
  store i8* %61, i8** %62, align 16, !dbg !3587, !tbaa !851
  %63 = icmp eq i8* %61, null, !dbg !3588
  br i1 %63, label %30, label %64, !dbg !3589

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3572, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 3, metadata !3572, metadata !DIExpression()), !dbg !3582
  %65 = icmp ult i32 %58, 41, !dbg !3583
  br i1 %65, label %69, label %66, !dbg !3583

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3583
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3583
  store i8* %68, i8** %10, align 8, !dbg !3583
  br label %74, !dbg !3583

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3583
  %71 = sext i32 %58 to i64, !dbg !3583
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3583
  %73 = add i32 %58, 8, !dbg !3583
  store i32 %73, i32* %8, align 8, !dbg !3583
  br label %74, !dbg !3583

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3583
  %78 = load i8*, i8** %77, align 8, !dbg !3583
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3586
  store i8* %78, i8** %79, align 8, !dbg !3587, !tbaa !851
  %80 = icmp eq i8* %78, null, !dbg !3588
  br i1 %80, label %30, label %81, !dbg !3589

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3572, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 4, metadata !3572, metadata !DIExpression()), !dbg !3582
  %82 = icmp ult i32 %75, 41, !dbg !3583
  br i1 %82, label %86, label %83, !dbg !3583

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3583
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3583
  store i8* %85, i8** %10, align 8, !dbg !3583
  br label %91, !dbg !3583

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3583
  %88 = sext i32 %75 to i64, !dbg !3583
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3583
  %90 = add i32 %75, 8, !dbg !3583
  store i32 %90, i32* %8, align 8, !dbg !3583
  br label %91, !dbg !3583

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3583
  %95 = load i8*, i8** %94, align 8, !dbg !3583
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3586
  store i8* %95, i8** %96, align 16, !dbg !3587, !tbaa !851
  %97 = icmp eq i8* %95, null, !dbg !3588
  br i1 %97, label %30, label %98, !dbg !3589

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3572, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 5, metadata !3572, metadata !DIExpression()), !dbg !3582
  %99 = icmp ult i32 %92, 41, !dbg !3583
  br i1 %99, label %103, label %100, !dbg !3583

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3583
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3583
  store i8* %102, i8** %10, align 8, !dbg !3583
  br label %108, !dbg !3583

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3583
  %105 = sext i32 %92 to i64, !dbg !3583
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3583
  %107 = add i32 %92, 8, !dbg !3583
  store i32 %107, i32* %8, align 8, !dbg !3583
  br label %108, !dbg !3583

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3583
  %111 = load i8*, i8** %110, align 8, !dbg !3583
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3586
  store i8* %111, i8** %112, align 8, !dbg !3587, !tbaa !851
  %113 = icmp eq i8* %111, null, !dbg !3588
  br i1 %113, label %30, label %114, !dbg !3589

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3572, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 6, metadata !3572, metadata !DIExpression()), !dbg !3582
  %115 = load i8*, i8** %10, align 8, !dbg !3583
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3583
  store i8* %116, i8** %10, align 8, !dbg !3583
  %117 = bitcast i8* %115 to i8**, !dbg !3583
  %118 = load i8*, i8** %117, align 8, !dbg !3583
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3586
  store i8* %118, i8** %119, align 16, !dbg !3587, !tbaa !851
  %120 = icmp eq i8* %118, null, !dbg !3588
  br i1 %120, label %30, label %121, !dbg !3589

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3572, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 7, metadata !3572, metadata !DIExpression()), !dbg !3582
  %122 = load i8*, i8** %10, align 8, !dbg !3583
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3583
  store i8* %123, i8** %10, align 8, !dbg !3583
  %124 = bitcast i8* %122 to i8**, !dbg !3583
  %125 = load i8*, i8** %124, align 8, !dbg !3583
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3586
  store i8* %125, i8** %126, align 8, !dbg !3587, !tbaa !851
  %127 = icmp eq i8* %125, null, !dbg !3588
  br i1 %127, label %30, label %128, !dbg !3589

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3572, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 8, metadata !3572, metadata !DIExpression()), !dbg !3582
  %129 = load i8*, i8** %10, align 8, !dbg !3583
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3583
  store i8* %130, i8** %10, align 8, !dbg !3583
  %131 = bitcast i8* %129 to i8**, !dbg !3583
  %132 = load i8*, i8** %131, align 8, !dbg !3583
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3586
  store i8* %132, i8** %133, align 16, !dbg !3587, !tbaa !851
  %134 = icmp eq i8* %132, null, !dbg !3588
  br i1 %134, label %30, label %135, !dbg !3589

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3572, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 9, metadata !3572, metadata !DIExpression()), !dbg !3582
  %136 = load i8*, i8** %10, align 8, !dbg !3583
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3583
  store i8* %137, i8** %10, align 8, !dbg !3583
  %138 = bitcast i8* %136 to i8**, !dbg !3583
  %139 = load i8*, i8** %138, align 8, !dbg !3583
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3586
  store i8* %139, i8** %140, align 8, !dbg !3587, !tbaa !851
  %141 = icmp eq i8* %139, null, !dbg !3588
  %142 = select i1 %141, i64 9, i64 10, !dbg !3589
  br label %30, !dbg !3589
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3593 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3597, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8* %1, metadata !3598, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i8* %2, metadata !3599, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i8* %3, metadata !3600, metadata !DIExpression()), !dbg !3611
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3612
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3612
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3601, metadata !DIExpression()), !dbg !3613
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3614
  call void @llvm.va_start(i8* nonnull %6), !dbg !3614
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3615
  call void @llvm.va_end(i8* nonnull %6), !dbg !3616
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3617
  ret void, !dbg !3617
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3618 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.179, i64 0, i64 0), i32 5) #12, !dbg !3619
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.180, i64 0, i64 0)) #12, !dbg !3619
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.181, i64 0, i64 0), i32 5) #12, !dbg !3620
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.182, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.183, i64 0, i64 0)) #12, !dbg !3620
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.184, i64 0, i64 0), i32 5) #12, !dbg !3621
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3621, !tbaa !851
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3621
  ret void, !dbg !3622
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3623 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3627, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i64 %1, metadata !3628, metadata !DIExpression()), !dbg !3630
  %3 = udiv i64 9223372036854775807, %1, !dbg !3631
  %4 = icmp ult i64 %3, %0, !dbg !3631
  br i1 %4, label %5, label %6, !dbg !3633

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3634
  unreachable, !dbg !3634

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %7, metadata !3636, metadata !DIExpression()) #12, !dbg !3641
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %8, metadata !3640, metadata !DIExpression()) #12, !dbg !3644
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

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3637 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3636, metadata !DIExpression()), !dbg !3651
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3652
  call void @llvm.dbg.value(metadata i8* %2, metadata !3640, metadata !DIExpression()), !dbg !3653
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
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3659 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3663, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i64 %1, metadata !3664, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %2, metadata !3665, metadata !DIExpression()), !dbg !3668
  %4 = udiv i64 9223372036854775807, %2, !dbg !3669
  %5 = icmp ult i64 %4, %1, !dbg !3669
  br i1 %5, label %6, label %7, !dbg !3671

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3672
  unreachable, !dbg !3672

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %0, metadata !3674, metadata !DIExpression()) #12, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %8, metadata !3677, metadata !DIExpression()) #12, !dbg !3680
  %9 = icmp eq i64 %8, 0, !dbg !3681
  %10 = icmp ne i8* %0, null, !dbg !3683
  %11 = and i1 %10, %9, !dbg !3684
  br i1 %11, label %12, label %13, !dbg !3684

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3685
  br label %19, !dbg !3687

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3688
  call void @llvm.dbg.value(metadata i8* %14, metadata !3674, metadata !DIExpression()) #12, !dbg !3678
  %15 = icmp eq i8* %14, null, !dbg !3689
  %16 = icmp ne i64 %8, 0, !dbg !3691
  %17 = and i1 %16, %15, !dbg !3692
  br i1 %17, label %18, label %19, !dbg !3692

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3693
  unreachable, !dbg !3693

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3694
  ret i8* %20, !dbg !3695
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3675 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3674, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i64 %1, metadata !3677, metadata !DIExpression()), !dbg !3697
  %3 = icmp eq i64 %1, 0, !dbg !3698
  %4 = icmp ne i8* %0, null, !dbg !3699
  %5 = and i1 %4, %3, !dbg !3700
  br i1 %5, label %6, label %7, !dbg !3700

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3701
  br label %13, !dbg !3702

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3703
  call void @llvm.dbg.value(metadata i8* %8, metadata !3674, metadata !DIExpression()), !dbg !3696
  %9 = icmp eq i8* %8, null, !dbg !3704
  %10 = icmp ne i64 %1, 0, !dbg !3705
  %11 = and i1 %10, %9, !dbg !3706
  br i1 %11, label %12, label %13, !dbg !3706

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3707
  unreachable, !dbg !3707

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3708
  ret i8* %14, !dbg !3709
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !397, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64* %1, metadata !398, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i64 %2, metadata !399, metadata !DIExpression()), !dbg !3712
  %4 = load i64, i64* %1, align 8, !dbg !3713, !tbaa !1080
  call void @llvm.dbg.value(metadata i64 %4, metadata !400, metadata !DIExpression()), !dbg !3714
  %5 = icmp eq i8* %0, null, !dbg !3715
  br i1 %5, label %6, label %20, !dbg !3717

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3718
  br i1 %7, label %8, label %13, !dbg !3721

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %9, metadata !400, metadata !DIExpression()), !dbg !3714
  %10 = icmp ugt i64 %2, 128, !dbg !3724
  %11 = zext i1 %10 to i64, !dbg !3724
  %12 = add nuw nsw i64 %9, %11, !dbg !3725
  call void @llvm.dbg.value(metadata i64 %12, metadata !400, metadata !DIExpression()), !dbg !3714
  br label %13, !dbg !3726

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3727
  call void @llvm.dbg.value(metadata i64 %14, metadata !400, metadata !DIExpression()), !dbg !3714
  %15 = udiv i64 9223372036854775807, %2, !dbg !3728
  %16 = icmp ult i64 %15, %14, !dbg !3728
  br i1 %16, label %19, label %17, !dbg !3730

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !400, metadata !DIExpression()), !dbg !3714
  store i64 %14, i64* %1, align 8, !dbg !3731, !tbaa !1080
  %18 = mul i64 %14, %2, !dbg !3732
  call void @llvm.dbg.value(metadata i8* %0, metadata !3674, metadata !DIExpression()) #12, !dbg !3733
  call void @llvm.dbg.value(metadata i64 %28, metadata !3677, metadata !DIExpression()) #12, !dbg !3735
  br label %31, !dbg !3736

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3737
  unreachable, !dbg !3737

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3738
  %22 = icmp ugt i64 %21, %4, !dbg !3741
  br i1 %22, label %24, label %23, !dbg !3742

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3743
  unreachable, !dbg !3743

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3744
  %26 = add i64 %4, 1, !dbg !3745
  %27 = add i64 %26, %25, !dbg !3746
  call void @llvm.dbg.value(metadata i64 %27, metadata !400, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i64 %27, metadata !400, metadata !DIExpression()), !dbg !3714
  store i64 %27, i64* %1, align 8, !dbg !3731, !tbaa !1080
  %28 = mul i64 %27, %2, !dbg !3732
  call void @llvm.dbg.value(metadata i8* %0, metadata !3674, metadata !DIExpression()) #12, !dbg !3733
  call void @llvm.dbg.value(metadata i64 %28, metadata !3677, metadata !DIExpression()) #12, !dbg !3735
  %29 = icmp eq i64 %28, 0, !dbg !3747
  br i1 %29, label %30, label %31, !dbg !3736

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3748
  br label %38, !dbg !3749

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3750
  call void @llvm.dbg.value(metadata i8* %33, metadata !3674, metadata !DIExpression()) #12, !dbg !3733
  %34 = icmp eq i8* %33, null, !dbg !3751
  %35 = icmp ne i64 %32, 0, !dbg !3752
  %36 = and i1 %35, %34, !dbg !3753
  br i1 %36, label %37, label %38, !dbg !3753

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3754
  unreachable, !dbg !3754

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3755
  ret i8* %39, !dbg !3756
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3757 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3759, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i64 %0, metadata !3636, metadata !DIExpression()) #12, !dbg !3761
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3763
  call void @llvm.dbg.value(metadata i8* %2, metadata !3640, metadata !DIExpression()) #12, !dbg !3764
  %3 = icmp eq i8* %2, null, !dbg !3765
  %4 = icmp ne i64 %0, 0, !dbg !3766
  %5 = and i1 %4, %3, !dbg !3767
  br i1 %5, label %6, label %7, !dbg !3767

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3768
  unreachable, !dbg !3768

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3769
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3770 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3774, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64* %1, metadata !3775, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i8* %0, metadata !397, metadata !DIExpression()) #12, !dbg !3778
  call void @llvm.dbg.value(metadata i64* %1, metadata !398, metadata !DIExpression()) #12, !dbg !3780
  call void @llvm.dbg.value(metadata i64 1, metadata !399, metadata !DIExpression()) #12, !dbg !3781
  %3 = load i64, i64* %1, align 8, !dbg !3782, !tbaa !1080
  call void @llvm.dbg.value(metadata i64 %3, metadata !400, metadata !DIExpression()) #12, !dbg !3783
  %4 = icmp eq i8* %0, null, !dbg !3784
  br i1 %4, label %5, label %12, !dbg !3785

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3786
  br i1 %6, label %9, label %7, !dbg !3787

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !400, metadata !DIExpression()) #12, !dbg !3783
  %8 = icmp slt i64 %3, 0, !dbg !3788
  br i1 %8, label %11, label %9, !dbg !3789

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !400, metadata !DIExpression()) #12, !dbg !3783
  store i64 %10, i64* %1, align 8, !dbg !3790, !tbaa !1080
  call void @llvm.dbg.value(metadata i8* %0, metadata !3674, metadata !DIExpression()) #12, !dbg !3791
  call void @llvm.dbg.value(metadata i64 %18, metadata !3677, metadata !DIExpression()) #12, !dbg !3793
  br label %21, !dbg !3794

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3795
  unreachable, !dbg !3795

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3796
  br i1 %13, label %15, label %14, !dbg !3797

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3798
  unreachable, !dbg !3798

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3799
  %17 = add i64 %3, 1, !dbg !3800
  %18 = add i64 %17, %16, !dbg !3801
  call void @llvm.dbg.value(metadata i64 %18, metadata !400, metadata !DIExpression()) #12, !dbg !3783
  call void @llvm.dbg.value(metadata i64 %18, metadata !400, metadata !DIExpression()) #12, !dbg !3783
  store i64 %18, i64* %1, align 8, !dbg !3790, !tbaa !1080
  call void @llvm.dbg.value(metadata i8* %0, metadata !3674, metadata !DIExpression()) #12, !dbg !3791
  call void @llvm.dbg.value(metadata i64 %18, metadata !3677, metadata !DIExpression()) #12, !dbg !3793
  %19 = icmp eq i64 %18, 0, !dbg !3802
  br i1 %19, label %20, label %21, !dbg !3794

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3803
  br label %28, !dbg !3804

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3805
  call void @llvm.dbg.value(metadata i8* %23, metadata !3674, metadata !DIExpression()) #12, !dbg !3791
  %24 = icmp eq i8* %23, null, !dbg !3806
  %25 = icmp ne i64 %22, 0, !dbg !3807
  %26 = and i1 %25, %24, !dbg !3808
  br i1 %26, label %27, label %28, !dbg !3808

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3809
  unreachable, !dbg !3809

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3810
  ret i8* %29, !dbg !3811
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3812 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3814, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata i64 %0, metadata !3636, metadata !DIExpression()) #12, !dbg !3816
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3818
  call void @llvm.dbg.value(metadata i8* %2, metadata !3640, metadata !DIExpression()) #12, !dbg !3819
  %3 = icmp eq i8* %2, null, !dbg !3820
  %4 = icmp ne i64 %0, 0, !dbg !3821
  %5 = and i1 %4, %3, !dbg !3822
  br i1 %5, label %6, label %7, !dbg !3822

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3823
  unreachable, !dbg !3823

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3824
  ret i8* %2, !dbg !3825
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3826 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3828, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64 %1, metadata !3829, metadata !DIExpression()), !dbg !3832
  %3 = udiv i64 9223372036854775807, %1, !dbg !3833
  %4 = icmp ult i64 %3, %0, !dbg !3833
  br i1 %4, label %8, label %5, !dbg !3835

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3836
  call void @llvm.dbg.value(metadata i8* %6, metadata !3830, metadata !DIExpression()), !dbg !3837
  %7 = icmp eq i8* %6, null, !dbg !3838
  br i1 %7, label %8, label %9, !dbg !3839

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3840
  unreachable, !dbg !3840

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3841
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3842 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3848, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 %1, metadata !3849, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %1, metadata !3636, metadata !DIExpression()) #12, !dbg !3852
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3854
  call void @llvm.dbg.value(metadata i8* %3, metadata !3640, metadata !DIExpression()) #12, !dbg !3855
  %4 = icmp eq i8* %3, null, !dbg !3856
  %5 = icmp ne i64 %1, 0, !dbg !3857
  %6 = and i1 %5, %4, !dbg !3858
  br i1 %6, label %7, label %8, !dbg !3858

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3859
  unreachable, !dbg !3859

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3860
  ret i8* %3, !dbg !3861
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3862 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3864, metadata !DIExpression()), !dbg !3865
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3866
  %3 = add i64 %2, 1, !dbg !3867
  call void @llvm.dbg.value(metadata i8* %0, metadata !3848, metadata !DIExpression()) #12, !dbg !3868
  call void @llvm.dbg.value(metadata i64 %3, metadata !3849, metadata !DIExpression()) #12, !dbg !3870
  call void @llvm.dbg.value(metadata i64 %3, metadata !3636, metadata !DIExpression()) #12, !dbg !3871
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3873
  call void @llvm.dbg.value(metadata i8* %4, metadata !3640, metadata !DIExpression()) #12, !dbg !3874
  %5 = icmp eq i8* %4, null, !dbg !3875
  %6 = icmp ne i64 %3, 0, !dbg !3876
  %7 = and i1 %6, %5, !dbg !3877
  br i1 %7, label %8, label %9, !dbg !3877

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3878
  unreachable, !dbg !3878

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !3879
  ret i8* %4, !dbg !3880
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3881 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3883, !tbaa !943
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.195, i64 0, i64 0), i32 5) #12, !dbg !3884
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.196, i64 0, i64 0), i8* %2) #12, !dbg !3885
  tail call void @abort() #15, !dbg !3886
  unreachable, !dbg !3886
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3887 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3890, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 %1, metadata !3891, metadata !DIExpression()), !dbg !3894
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #12, !dbg !3895
  call void @llvm.dbg.value(metadata i8* %3, metadata !3892, metadata !DIExpression()), !dbg !3896
  %4 = icmp eq i8* %3, null, !dbg !3897
  br i1 %4, label %5, label %6, !dbg !3899

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3900
  unreachable, !dbg !3900

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !3901
}

; Function Attrs: nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3902 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3905, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i64 %1, metadata !3906, metadata !DIExpression()), !dbg !3912
  %3 = icmp eq i64 %0, 0, !dbg !3913
  %4 = icmp eq i64 %1, 0, !dbg !3914
  %5 = or i1 %3, %4, !dbg !3915
  br i1 %5, label %12, label %6, !dbg !3915

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3916
  call void @llvm.dbg.value(metadata i64 %7, metadata !3908, metadata !DIExpression()), !dbg !3917
  %8 = udiv i64 %7, %1, !dbg !3918
  %9 = icmp eq i64 %8, %0, !dbg !3920
  br i1 %9, label %12, label %10, !dbg !3921

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3922
  store i32 12, i32* %11, align 4, !dbg !3924, !tbaa !943
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3905, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i64 %13, metadata !3906, metadata !DIExpression()), !dbg !3912
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %15, metadata !3907, metadata !DIExpression()), !dbg !3926
  br label %16, !dbg !3927

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3928
  ret i8* %17, !dbg !3929
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3930 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3969, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i32 0, metadata !3970, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i32 0, metadata !3972, metadata !DIExpression()), !dbg !3975
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3976
  call void @llvm.dbg.value(metadata i32 %2, metadata !3971, metadata !DIExpression()), !dbg !3977
  %3 = icmp slt i32 %2, 0, !dbg !3978
  br i1 %3, label %4, label %6, !dbg !3980

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3981
  br label %24, !dbg !3982

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3983
  %8 = icmp eq i32 %7, 0, !dbg !3983
  br i1 %8, label %13, label %9, !dbg !3985

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3986
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3987
  %12 = icmp eq i64 %11, -1, !dbg !3988
  br i1 %12, label %16, label %13, !dbg !3989

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3990
  %15 = icmp eq i32 %14, 0, !dbg !3990
  br i1 %15, label %16, label %18, !dbg !3991

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3970, metadata !DIExpression()), !dbg !3974
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3992
  call void @llvm.dbg.value(metadata i32 %21, metadata !3972, metadata !DIExpression()), !dbg !3975
  br label %24, !dbg !3993

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3994
  %20 = load i32, i32* %19, align 4, !dbg !3994, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %20, metadata !3970, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i32 %20, metadata !3970, metadata !DIExpression()), !dbg !3974
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3992
  call void @llvm.dbg.value(metadata i32 %21, metadata !3972, metadata !DIExpression()), !dbg !3975
  %22 = icmp eq i32 %20, 0, !dbg !3995
  br i1 %22, label %24, label %23, !dbg !3993

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3997, !tbaa !943
  call void @llvm.dbg.value(metadata i32 -1, metadata !3972, metadata !DIExpression()), !dbg !3975
  br label %24, !dbg !3999

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4000
  ret i32 %25, !dbg !4001
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4002 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4041, metadata !DIExpression()), !dbg !4042
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4043
  br i1 %2, label %6, label %3, !dbg !4045

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4046
  %5 = icmp eq i32 %4, 0, !dbg !4046
  br i1 %5, label %6, label %8, !dbg !4047

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4048
  br label %17, !dbg !4049

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4050, metadata !DIExpression()) #12, !dbg !4055
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4057
  %10 = load i32, i32* %9, align 8, !dbg !4057, !tbaa !4059
  %11 = and i32 %10, 256, !dbg !4061
  %12 = icmp eq i32 %11, 0, !dbg !4061
  br i1 %12, label %15, label %13, !dbg !4062

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4063
  br label %15, !dbg !4063

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4064
  br label %17, !dbg !4065

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4066
  ret i32 %18, !dbg !4067
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4068 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4108, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 %1, metadata !4109, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i32 %2, metadata !4110, metadata !DIExpression()), !dbg !4116
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4117
  %5 = load i8*, i8** %4, align 8, !dbg !4117, !tbaa !4118
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4119
  %7 = load i8*, i8** %6, align 8, !dbg !4119, !tbaa !4120
  %8 = icmp eq i8* %5, %7, !dbg !4121
  br i1 %8, label %9, label %28, !dbg !4122

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4123
  %11 = load i8*, i8** %10, align 8, !dbg !4123, !tbaa !4124
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4125
  %13 = load i8*, i8** %12, align 8, !dbg !4125, !tbaa !4126
  %14 = icmp eq i8* %11, %13, !dbg !4127
  br i1 %14, label %15, label %28, !dbg !4128

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4129
  %17 = load i8*, i8** %16, align 8, !dbg !4129, !tbaa !4130
  %18 = icmp eq i8* %17, null, !dbg !4131
  br i1 %18, label %19, label %28, !dbg !4132

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4133
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4134
  call void @llvm.dbg.value(metadata i64 %21, metadata !4111, metadata !DIExpression()), !dbg !4135
  %22 = icmp eq i64 %21, -1, !dbg !4136
  br i1 %22, label %30, label %23, !dbg !4138

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4139
  %25 = load i32, i32* %24, align 8, !dbg !4140, !tbaa !4059
  %26 = and i32 %25, -17, !dbg !4140
  store i32 %26, i32* %24, align 8, !dbg !4140, !tbaa !4059
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4141
  store i64 %21, i64* %27, align 8, !dbg !4142, !tbaa !4143
  br label %30, !dbg !4144

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4145
  br label %30, !dbg !4146

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4147
  ret i32 %31, !dbg !4148
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4149 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4166, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata i8* %1, metadata !4167, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %2, metadata !4168, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4169, metadata !DIExpression()), !dbg !4178
  %6 = bitcast i32* %5 to i8*, !dbg !4179
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4179
  %7 = icmp eq i32* %0, null, !dbg !4180
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4182
  call void @llvm.dbg.value(metadata i32* %8, metadata !4166, metadata !DIExpression()), !dbg !4175
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !4183
  call void @llvm.dbg.value(metadata i64 %9, metadata !4170, metadata !DIExpression()), !dbg !4184
  %10 = icmp ugt i64 %9, -3, !dbg !4185
  %11 = icmp ne i64 %2, 0, !dbg !4186
  %12 = and i1 %11, %10, !dbg !4187
  br i1 %12, label %13, label %18, !dbg !4187

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !4188
  br i1 %14, label %18, label %15, !dbg !4189

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4190, !tbaa !996
  call void @llvm.dbg.value(metadata i8 %16, metadata !4172, metadata !DIExpression()), !dbg !4191
  %17 = zext i8 %16 to i32, !dbg !4192
  store i32 %17, i32* %8, align 4, !dbg !4193, !tbaa !943
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4194
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4195
  ret i64 %19, !dbg !4195
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @print_and_abort() #0 !dbg !4196 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4197, !tbaa !851
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.209, i64 0, i64 0), i32 5) #12, !dbg !4197
  %3 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.210, i64 0, i64 0), i8* %2) #12, !dbg !4197
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !4198, !tbaa !943
  tail call void @exit(i32 %4) #15, !dbg !4199
  unreachable, !dbg !4199
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @_obstack_begin(%struct.obstack* nocapture, i64, i64, i8* (i64)*, void (i8*)*) local_unnamed_addr #7 !dbg !4200 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4238, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i64 %1, metadata !4239, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i64 %2, metadata !4240, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i8* (i64)* %3, metadata !4241, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata void (i8*)* %4, metadata !4242, metadata !DIExpression()), !dbg !4247
  %6 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0, !dbg !4248
  store i8* (i64)* %3, i8* (i64)** %6, align 8, !dbg !4249, !tbaa !996
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0, !dbg !4250
  store void (i8*)* %4, void (i8*)** %7, align 8, !dbg !4251, !tbaa !996
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4252
  %9 = load i8, i8* %8, align 8, !dbg !4253
  %10 = and i8 %9, -2, !dbg !4253
  store i8 %10, i8* %8, align 8, !dbg !4253
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4254, metadata !DIExpression()) #12, !dbg !4265
  call void @llvm.dbg.value(metadata i64 %1, metadata !4259, metadata !DIExpression()) #12, !dbg !4267
  call void @llvm.dbg.value(metadata i64 %2, metadata !4260, metadata !DIExpression()) #12, !dbg !4268
  %11 = icmp eq i64 %2, 0, !dbg !4269
  %12 = select i1 %11, i64 16, i64 %2, !dbg !4271
  call void @llvm.dbg.value(metadata i64 %12, metadata !4260, metadata !DIExpression()) #12, !dbg !4268
  %13 = icmp eq i64 %1, 0, !dbg !4272
  call void @llvm.dbg.value(metadata i64 4064, metadata !4259, metadata !DIExpression()) #12, !dbg !4267
  %14 = select i1 %13, i64 4064, i64 %1, !dbg !4273
  call void @llvm.dbg.value(metadata i64 %14, metadata !4259, metadata !DIExpression()) #12, !dbg !4267
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4274
  store i64 %14, i64* %15, align 8, !dbg !4275, !tbaa !4276
  %16 = add i64 %12, -1, !dbg !4277
  %17 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4278
  store i64 %16, i64* %17, align 8, !dbg !4279, !tbaa !1057
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4280, metadata !DIExpression()) #12, !dbg !4286
  call void @llvm.dbg.value(metadata i64 %14, metadata !4285, metadata !DIExpression()) #12, !dbg !4288
  %18 = tail call i8* %3(i64 %14) #12, !dbg !4289
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4291
  %20 = bitcast %struct._obstack_chunk** %19 to i8**, !dbg !4292
  store i8* %18, i8** %20, align 8, !dbg !4292, !tbaa !1060
  %21 = icmp eq i8* %18, null, !dbg !4293
  br i1 %21, label %22, label %24, !dbg !4295

; <label>:22:                                     ; preds = %5
  %23 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4296, !tbaa !851
  tail call void %23() #15, !dbg !4297
  unreachable, !dbg !4297

; <label>:24:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %18, metadata !4261, metadata !DIExpression()) #12, !dbg !4298
  %25 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !4299
  %26 = ptrtoint i8* %25 to i64, !dbg !4299
  %27 = add i64 %16, %26, !dbg !4299
  %28 = sub i64 0, %12, !dbg !4299
  %29 = and i64 %27, %28, !dbg !4299
  %30 = getelementptr inbounds i8, i8* null, i64 %29, !dbg !4299
  %31 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4300
  store i8* %30, i8** %31, align 8, !dbg !4301, !tbaa !1052
  %32 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4302
  store i8* %30, i8** %32, align 8, !dbg !4303, !tbaa !1049
  %33 = load i64, i64* %15, align 8, !dbg !4304, !tbaa !4276
  %34 = getelementptr inbounds i8, i8* %18, i64 %33, !dbg !4305
  %35 = bitcast i8* %18 to i8**, !dbg !4306
  store i8* %34, i8** %35, align 8, !dbg !4307, !tbaa !851
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4308
  store i8* %34, i8** %36, align 8, !dbg !4309, !tbaa !1061
  %37 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !4310
  %38 = bitcast i8* %37 to %struct._obstack_chunk**, !dbg !4310
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %38, align 8, !dbg !4311, !tbaa !851
  %39 = load i8, i8* %8, align 8, !dbg !4312
  %40 = and i8 %39, -7, !dbg !4313
  store i8 %40, i8* %8, align 8, !dbg !4313
  ret i32 1, !dbg !4314
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @_obstack_begin_1(%struct.obstack* nocapture, i64, i64, i8* (i8*, i64)*, void (i8*, i8*)*, i8*) local_unnamed_addr #7 !dbg !4315 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4319, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i64 %1, metadata !4320, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %2, metadata !4321, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata i8* (i8*, i64)* %3, metadata !4322, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %4, metadata !4323, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i8* %5, metadata !4324, metadata !DIExpression()), !dbg !4330
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !4331
  %8 = bitcast %union.anon.0* %7 to i8* (i8*, i64)**, !dbg !4332
  store i8* (i8*, i64)* %3, i8* (i8*, i64)** %8, align 8, !dbg !4333, !tbaa !996
  %9 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !4334
  %10 = bitcast %union.anon.1* %9 to void (i8*, i8*)**, !dbg !4335
  store void (i8*, i8*)* %4, void (i8*, i8*)** %10, align 8, !dbg !4336, !tbaa !996
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4337
  store i8* %5, i8** %11, align 8, !dbg !4338, !tbaa !4339
  %12 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4340
  %13 = load i8, i8* %12, align 8, !dbg !4341
  %14 = or i8 %13, 1, !dbg !4341
  store i8 %14, i8* %12, align 8, !dbg !4341
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4254, metadata !DIExpression()) #12, !dbg !4342
  call void @llvm.dbg.value(metadata i64 %1, metadata !4259, metadata !DIExpression()) #12, !dbg !4344
  call void @llvm.dbg.value(metadata i64 %2, metadata !4260, metadata !DIExpression()) #12, !dbg !4345
  %15 = icmp eq i64 %2, 0, !dbg !4346
  %16 = select i1 %15, i64 16, i64 %2, !dbg !4347
  call void @llvm.dbg.value(metadata i64 %16, metadata !4260, metadata !DIExpression()) #12, !dbg !4345
  %17 = icmp eq i64 %1, 0, !dbg !4348
  call void @llvm.dbg.value(metadata i64 4064, metadata !4259, metadata !DIExpression()) #12, !dbg !4344
  %18 = select i1 %17, i64 4064, i64 %1, !dbg !4349
  call void @llvm.dbg.value(metadata i64 %18, metadata !4259, metadata !DIExpression()) #12, !dbg !4344
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4350
  store i64 %18, i64* %19, align 8, !dbg !4351, !tbaa !4276
  %20 = add i64 %16, -1, !dbg !4352
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4353
  store i64 %20, i64* %21, align 8, !dbg !4354, !tbaa !1057
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4280, metadata !DIExpression()) #12, !dbg !4355
  call void @llvm.dbg.value(metadata i64 %18, metadata !4285, metadata !DIExpression()) #12, !dbg !4357
  %22 = tail call i8* %3(i8* %5, i64 %18) #12, !dbg !4358
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4359
  %24 = bitcast %struct._obstack_chunk** %23 to i8**, !dbg !4360
  store i8* %22, i8** %24, align 8, !dbg !4360, !tbaa !1060
  %25 = icmp eq i8* %22, null, !dbg !4361
  br i1 %25, label %26, label %28, !dbg !4362

; <label>:26:                                     ; preds = %6
  %27 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4363, !tbaa !851
  tail call void %27() #15, !dbg !4364
  unreachable, !dbg !4364

; <label>:28:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i8* %22, metadata !4261, metadata !DIExpression()) #12, !dbg !4365
  %29 = getelementptr inbounds i8, i8* %22, i64 16, !dbg !4366
  %30 = ptrtoint i8* %29 to i64, !dbg !4366
  %31 = add i64 %20, %30, !dbg !4366
  %32 = sub i64 0, %16, !dbg !4366
  %33 = and i64 %31, %32, !dbg !4366
  %34 = getelementptr inbounds i8, i8* null, i64 %33, !dbg !4366
  %35 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4367
  store i8* %34, i8** %35, align 8, !dbg !4368, !tbaa !1052
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4369
  store i8* %34, i8** %36, align 8, !dbg !4370, !tbaa !1049
  %37 = load i64, i64* %19, align 8, !dbg !4371, !tbaa !4276
  %38 = getelementptr inbounds i8, i8* %22, i64 %37, !dbg !4372
  %39 = bitcast i8* %22 to i8**, !dbg !4373
  store i8* %38, i8** %39, align 8, !dbg !4374, !tbaa !851
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4375
  store i8* %38, i8** %40, align 8, !dbg !4376, !tbaa !1061
  %41 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !4377
  %42 = bitcast i8* %41 to %struct._obstack_chunk**, !dbg !4377
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %42, align 8, !dbg !4378, !tbaa !851
  %43 = load i8, i8* %12, align 8, !dbg !4379
  %44 = and i8 %43, -7, !dbg !4380
  store i8 %44, i8* %12, align 8, !dbg !4380
  ret i32 1, !dbg !4381
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_obstack_newchunk(%struct.obstack* nocapture, i64) local_unnamed_addr #7 !dbg !4382 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4386, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i64 %1, metadata !4387, metadata !DIExpression()), !dbg !4396
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4397
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !4397, !tbaa !1060
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !4388, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* null, metadata !4389, metadata !DIExpression()), !dbg !4399
  %5 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4400
  %6 = bitcast i8** %5 to i64*, !dbg !4400
  %7 = load i64, i64* %6, align 8, !dbg !4400, !tbaa !1049
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4401
  %9 = bitcast i8** %8 to i64*, !dbg !4401
  %10 = load i64, i64* %9, align 8, !dbg !4401, !tbaa !1052
  %11 = sub i64 %7, %10, !dbg !4402
  call void @llvm.dbg.value(metadata i64 %11, metadata !4390, metadata !DIExpression()), !dbg !4403
  %12 = add i64 %11, %1, !dbg !4404
  call void @llvm.dbg.value(metadata i64 %12, metadata !4392, metadata !DIExpression()), !dbg !4405
  %13 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4406
  %14 = load i64, i64* %13, align 8, !dbg !4406, !tbaa !1057
  %15 = add i64 %12, %14, !dbg !4407
  call void @llvm.dbg.value(metadata i64 %15, metadata !4393, metadata !DIExpression()), !dbg !4408
  %16 = lshr i64 %11, 3, !dbg !4409
  %17 = add nuw nsw i64 %16, 100, !dbg !4410
  %18 = add i64 %17, %15, !dbg !4411
  call void @llvm.dbg.value(metadata i64 %18, metadata !4394, metadata !DIExpression()), !dbg !4412
  %19 = icmp ult i64 %18, %15, !dbg !4413
  %20 = select i1 %19, i64 %15, i64 %18, !dbg !4415
  call void @llvm.dbg.value(metadata i64 %20, metadata !4394, metadata !DIExpression()), !dbg !4412
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4416
  %22 = load i64, i64* %21, align 8, !dbg !4416, !tbaa !4276
  %23 = icmp ult i64 %20, %22, !dbg !4418
  call void @llvm.dbg.value(metadata i64 %22, metadata !4394, metadata !DIExpression()), !dbg !4412
  %24 = select i1 %23, i64 %22, i64 %20, !dbg !4419
  call void @llvm.dbg.value(metadata i64 %24, metadata !4394, metadata !DIExpression()), !dbg !4412
  %25 = icmp ugt i64 %11, %12, !dbg !4420
  %26 = icmp ugt i64 %12, %15, !dbg !4422
  %27 = or i1 %25, %26, !dbg !4423
  br i1 %27, label %47, label %28, !dbg !4423

; <label>:28:                                     ; preds = %2
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4280, metadata !DIExpression()) #12, !dbg !4424
  call void @llvm.dbg.value(metadata i64 %24, metadata !4285, metadata !DIExpression()) #12, !dbg !4426
  %29 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4427
  %30 = load i8, i8* %29, align 8, !dbg !4427
  %31 = and i8 %30, 1, !dbg !4427
  %32 = icmp eq i8 %31, 0, !dbg !4428
  %33 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !4429
  br i1 %32, label %40, label %34, !dbg !4430

; <label>:34:                                     ; preds = %28
  %35 = bitcast %union.anon.0* %33 to i8* (i8*, i64)**, !dbg !4431
  %36 = load i8* (i8*, i64)*, i8* (i8*, i64)** %35, align 8, !dbg !4431, !tbaa !996
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4432
  %38 = load i8*, i8** %37, align 8, !dbg !4432, !tbaa !4339
  %39 = tail call i8* %36(i8* %38, i64 %24) #12, !dbg !4433
  br label %44, !dbg !4434

; <label>:40:                                     ; preds = %28
  %41 = getelementptr inbounds %union.anon.0, %union.anon.0* %33, i64 0, i32 0, !dbg !4435
  %42 = load i8* (i64)*, i8* (i64)** %41, align 8, !dbg !4435, !tbaa !996
  %43 = tail call i8* %42(i64 %24) #12, !dbg !4436
  br label %44, !dbg !4437

; <label>:44:                                     ; preds = %40, %34
  %45 = phi i8* [ %39, %34 ], [ %43, %40 ], !dbg !4429
  %46 = icmp eq i8* %45, null, !dbg !4438
  br i1 %46, label %47, label %49, !dbg !4440

; <label>:47:                                     ; preds = %2, %44
  %48 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4441, !tbaa !851
  tail call void %48() #15, !dbg !4442
  unreachable, !dbg !4442

; <label>:49:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %45, metadata !4389, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i8* %45, metadata !4389, metadata !DIExpression()), !dbg !4399
  %50 = bitcast %struct._obstack_chunk** %3 to i8**, !dbg !4443
  store i8* %45, i8** %50, align 8, !dbg !4443, !tbaa !1060
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !4444
  %52 = bitcast i8* %51 to %struct._obstack_chunk**, !dbg !4444
  store %struct._obstack_chunk* %4, %struct._obstack_chunk** %52, align 8, !dbg !4445, !tbaa !851
  %53 = getelementptr inbounds i8, i8* %45, i64 %24, !dbg !4446
  %54 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4447
  store i8* %53, i8** %54, align 8, !dbg !4448, !tbaa !1061
  %55 = bitcast i8* %45 to i8**, !dbg !4449
  store i8* %53, i8** %55, align 8, !dbg !4450, !tbaa !851
  %56 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !4451
  %57 = ptrtoint i8* %56 to i64, !dbg !4451
  %58 = load i64, i64* %13, align 8, !dbg !4451, !tbaa !1057
  %59 = add i64 %58, %57, !dbg !4451
  %60 = xor i64 %58, -1, !dbg !4451
  %61 = and i64 %59, %60, !dbg !4451
  %62 = getelementptr inbounds i8, i8* null, i64 %61, !dbg !4451
  call void @llvm.dbg.value(metadata i8* %62, metadata !4391, metadata !DIExpression()), !dbg !4452
  %63 = load i8*, i8** %8, align 8, !dbg !4453, !tbaa !1052
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 %11, i1 false), !dbg !4454
  %64 = load i8, i8* %29, align 8, !dbg !4455
  %65 = and i8 %64, 2, !dbg !4455
  %66 = icmp eq i8 %65, 0, !dbg !4457
  br i1 %66, label %67, label %92, !dbg !4458

; <label>:67:                                     ; preds = %49
  %68 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 2, i64 0, !dbg !4459
  %69 = ptrtoint i8* %68 to i64, !dbg !4459
  %70 = add i64 %58, %69, !dbg !4459
  %71 = and i64 %70, %60, !dbg !4459
  %72 = getelementptr inbounds i8, i8* null, i64 %71, !dbg !4459
  %73 = icmp eq i8* %63, %72, !dbg !4460
  br i1 %73, label %74, label %92, !dbg !4461

; <label>:74:                                     ; preds = %67
  %75 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 1, !dbg !4462
  %76 = bitcast %struct._obstack_chunk** %75 to i64*, !dbg !4462
  %77 = load i64, i64* %76, align 8, !dbg !4462, !tbaa !851
  %78 = bitcast i8* %51 to i64*, !dbg !4464
  store i64 %77, i64* %78, align 8, !dbg !4464, !tbaa !851
  %79 = bitcast %struct._obstack_chunk* %4 to i8*, !dbg !4465
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4466, metadata !DIExpression()) #12, !dbg !4472
  call void @llvm.dbg.value(metadata i8* %79, metadata !4471, metadata !DIExpression()) #12, !dbg !4474
  %80 = load i8, i8* %29, align 8, !dbg !4475
  %81 = and i8 %80, 1, !dbg !4475
  %82 = icmp eq i8 %81, 0, !dbg !4477
  %83 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !4478
  br i1 %82, label %89, label %84, !dbg !4479

; <label>:84:                                     ; preds = %74
  %85 = bitcast %union.anon.1* %83 to void (i8*, i8*)**, !dbg !4480
  %86 = load void (i8*, i8*)*, void (i8*, i8*)** %85, align 8, !dbg !4480, !tbaa !996
  %87 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4481
  %88 = load i8*, i8** %87, align 8, !dbg !4481, !tbaa !4339
  tail call void %86(i8* %88, i8* %79) #12, !dbg !4482
  br label %92, !dbg !4482

; <label>:89:                                     ; preds = %74
  %90 = getelementptr inbounds %union.anon.1, %union.anon.1* %83, i64 0, i32 0, !dbg !4483
  %91 = load void (i8*)*, void (i8*)** %90, align 8, !dbg !4483, !tbaa !996
  tail call void %91(i8* %79) #12, !dbg !4484
  br label %92

; <label>:92:                                     ; preds = %89, %84, %49, %67
  store i8* %62, i8** %8, align 8, !dbg !4485, !tbaa !1052
  %93 = getelementptr inbounds i8, i8* %62, i64 %11, !dbg !4486
  store i8* %93, i8** %5, align 8, !dbg !4487, !tbaa !1049
  %94 = load i8, i8* %29, align 8, !dbg !4488
  %95 = and i8 %94, -3, !dbg !4488
  store i8 %95, i8* %29, align 8, !dbg !4488
  ret void, !dbg !4489
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @_obstack_allocated_p(%struct.obstack* nocapture readonly, i8* readnone) local_unnamed_addr #10 !dbg !4490 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4494, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i8* %1, metadata !4495, metadata !DIExpression()), !dbg !4499
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4500
  call void @llvm.dbg.value(metadata %struct._obstack_chunk** %3, metadata !4496, metadata !DIExpression(DW_OP_deref)), !dbg !4501
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !4502, !tbaa !851
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !4496, metadata !DIExpression()), !dbg !4501
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !4504
  br i1 %5, label %18, label %6, !dbg !4505

; <label>:6:                                      ; preds = %2, %14
  %7 = phi %struct._obstack_chunk* [ %16, %14 ], [ %4, %2 ]
  %8 = bitcast %struct._obstack_chunk* %7 to i8*, !dbg !4506
  %9 = icmp ult i8* %8, %1, !dbg !4507
  br i1 %9, label %10, label %14, !dbg !4508

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 0, !dbg !4509
  %12 = load i8*, i8** %11, align 8, !dbg !4509, !tbaa !851
  %13 = icmp ult i8* %12, %1, !dbg !4510
  br i1 %13, label %14, label %18, !dbg !4511

; <label>:14:                                     ; preds = %6, %10
  %15 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 1, !dbg !4512
  call void @llvm.dbg.value(metadata %struct._obstack_chunk** %15, metadata !4497, metadata !DIExpression(DW_OP_deref)), !dbg !4513
  call void @llvm.dbg.value(metadata %struct._obstack_chunk** %15, metadata !4496, metadata !DIExpression(DW_OP_deref)), !dbg !4501
  %16 = load %struct._obstack_chunk*, %struct._obstack_chunk** %15, align 8, !dbg !4502, !tbaa !851
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %16, metadata !4496, metadata !DIExpression()), !dbg !4501
  %17 = icmp eq %struct._obstack_chunk* %16, null, !dbg !4504
  br i1 %17, label %18, label %6, !dbg !4505, !llvm.loop !4514

; <label>:18:                                     ; preds = %10, %14, %2
  %19 = phi i32 [ 0, %2 ], [ 0, %14 ], [ 1, %10 ], !dbg !4504
  ret i32 %19, !dbg !4516
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_obstack_free(%struct.obstack* nocapture, i8*) local_unnamed_addr #7 !dbg !4517 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4519, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i8* %1, metadata !4520, metadata !DIExpression()), !dbg !4524
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4525
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !4525, !tbaa !1060
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !4521, metadata !DIExpression()), !dbg !4526
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !4527
  br i1 %5, label %42, label %6, !dbg !4528

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  %9 = getelementptr inbounds %union.anon.1, %union.anon.1* %8, i64 0, i32 0
  %10 = bitcast %union.anon.1* %8 to void (i8*, i8*)**
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9
  br label %12, !dbg !4528

; <label>:12:                                     ; preds = %6, %31
  %13 = phi %struct._obstack_chunk* [ %4, %6 ], [ %22, %31 ]
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4521, metadata !DIExpression()), !dbg !4526
  %14 = bitcast %struct._obstack_chunk* %13 to i8*, !dbg !4529
  %15 = icmp ult i8* %14, %1, !dbg !4530
  br i1 %15, label %16, label %20, !dbg !4531

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0, !dbg !4532
  %18 = load i8*, i8** %17, align 8, !dbg !4532, !tbaa !851
  %19 = icmp ult i8* %18, %1, !dbg !4533
  br i1 %19, label %20, label %35, !dbg !4534

; <label>:20:                                     ; preds = %12, %16
  %21 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 1, !dbg !4535
  %22 = load %struct._obstack_chunk*, %struct._obstack_chunk** %21, align 8, !dbg !4535, !tbaa !851
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, metadata !4522, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4466, metadata !DIExpression()) #12, !dbg !4538
  call void @llvm.dbg.value(metadata i8* %14, metadata !4471, metadata !DIExpression()) #12, !dbg !4540
  %23 = load i8, i8* %7, align 8, !dbg !4541
  %24 = and i8 %23, 1, !dbg !4541
  %25 = icmp eq i8 %24, 0, !dbg !4542
  br i1 %25, label %29, label %26, !dbg !4543

; <label>:26:                                     ; preds = %20
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8, !dbg !4544, !tbaa !996
  %28 = load i8*, i8** %11, align 8, !dbg !4545, !tbaa !4339
  tail call void %27(i8* %28, i8* nonnull %14) #12, !dbg !4546
  br label %31, !dbg !4546

; <label>:29:                                     ; preds = %20
  %30 = load void (i8*)*, void (i8*)** %9, align 8, !dbg !4547, !tbaa !996
  tail call void %30(i8* nonnull %14) #12, !dbg !4548
  br label %31

; <label>:31:                                     ; preds = %26, %29
  %32 = load i8, i8* %7, align 8, !dbg !4549
  %33 = or i8 %32, 2, !dbg !4549
  store i8 %33, i8* %7, align 8, !dbg !4549
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, metadata !4521, metadata !DIExpression()), !dbg !4526
  %34 = icmp eq %struct._obstack_chunk* %22, null, !dbg !4527
  br i1 %34, label %42, label %12, !dbg !4528, !llvm.loop !4550

; <label>:35:                                     ; preds = %16
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4521, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4521, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4521, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4521, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4521, metadata !DIExpression()), !dbg !4526
  %36 = bitcast %struct._obstack_chunk* %13 to i64*, !dbg !4552
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4521, metadata !DIExpression()), !dbg !4526
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4553
  store i8* %1, i8** %37, align 8, !dbg !4556, !tbaa !1049
  %38 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4557
  store i8* %1, i8** %38, align 8, !dbg !4558, !tbaa !1052
  %39 = load i64, i64* %36, align 8, !dbg !4559, !tbaa !851
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4560
  %41 = bitcast i8** %40 to i64*, !dbg !4561
  store i64 %39, i64* %41, align 8, !dbg !4561, !tbaa !1061
  store %struct._obstack_chunk* %13, %struct._obstack_chunk** %3, align 8, !dbg !4562, !tbaa !1060
  br label %45, !dbg !4563

; <label>:42:                                     ; preds = %31, %2
  %43 = icmp eq i8* %1, null, !dbg !4564
  br i1 %43, label %45, label %44, !dbg !4566

; <label>:44:                                     ; preds = %42
  tail call void @abort() #15, !dbg !4567
  unreachable, !dbg !4567

; <label>:45:                                     ; preds = %42, %35
  ret void, !dbg !4568
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @_obstack_memory_used(%struct.obstack* nocapture readonly) local_unnamed_addr #10 !dbg !4569 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4573, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 0, metadata !4575, metadata !DIExpression()), !dbg !4577
  %2 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4578
  call void @llvm.dbg.value(metadata %struct._obstack_chunk** %2, metadata !4574, metadata !DIExpression(DW_OP_deref)), !dbg !4580
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %2, align 8, !dbg !4581, !tbaa !851
  call void @llvm.dbg.value(metadata i64 0, metadata !4575, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %3, metadata !4574, metadata !DIExpression()), !dbg !4580
  %4 = icmp eq %struct._obstack_chunk* %3, null, !dbg !4583
  br i1 %4, label %16, label %5, !dbg !4584

; <label>:5:                                      ; preds = %1, %5
  %6 = phi %struct._obstack_chunk* [ %14, %5 ], [ %3, %1 ]
  %7 = phi i64 [ %12, %5 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !4575, metadata !DIExpression()), !dbg !4577
  %8 = bitcast %struct._obstack_chunk* %6 to i64*, !dbg !4585
  %9 = load i64, i64* %8, align 8, !dbg !4585, !tbaa !851
  %10 = ptrtoint %struct._obstack_chunk* %6 to i64, !dbg !4587
  %11 = sub i64 %7, %10, !dbg !4587
  %12 = add i64 %11, %9, !dbg !4588
  %13 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %6, i64 0, i32 1, !dbg !4589
  call void @llvm.dbg.value(metadata %struct._obstack_chunk** %13, metadata !4574, metadata !DIExpression(DW_OP_deref)), !dbg !4580
  %14 = load %struct._obstack_chunk*, %struct._obstack_chunk** %13, align 8, !dbg !4581, !tbaa !851
  call void @llvm.dbg.value(metadata i64 %12, metadata !4575, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %14, metadata !4574, metadata !DIExpression()), !dbg !4580
  %15 = icmp eq %struct._obstack_chunk* %14, null, !dbg !4583
  br i1 %15, label %16, label %5, !dbg !4584, !llvm.loop !4590

; <label>:16:                                     ; preds = %5, %1
  %17 = phi i64 [ 0, %1 ], [ %12, %5 ], !dbg !4592
  call void @llvm.dbg.value(metadata i64 %17, metadata !4575, metadata !DIExpression()), !dbg !4577
  ret i64 %17, !dbg !4593
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4594 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4633, metadata !DIExpression()), !dbg !4638
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4639
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4640, metadata !DIExpression()), !dbg !4643
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4645
  %4 = load i32, i32* %3, align 8, !dbg !4645, !tbaa !4059
  %5 = and i32 %4, 32, !dbg !4645
  %6 = icmp eq i32 %5, 0, !dbg !4646
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4647
  %8 = icmp ne i32 %7, 0, !dbg !4648
  br i1 %6, label %9, label %19, !dbg !4649

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4651
  %11 = xor i1 %8, true, !dbg !4652
  %12 = or i1 %10, %11, !dbg !4652
  %13 = sext i1 %8 to i32, !dbg !4652
  br i1 %12, label %22, label %14, !dbg !4652

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4653
  %16 = load i32, i32* %15, align 4, !dbg !4653, !tbaa !943
  %17 = icmp ne i32 %16, 9, !dbg !4654
  %18 = sext i1 %17 to i32, !dbg !4655
  br label %22, !dbg !4655

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4656

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4658
  store i32 0, i32* %21, align 4, !dbg !4660, !tbaa !943
  br label %22, !dbg !4658

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4661
  ret i32 %23, !dbg !4662
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4663 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4666, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i8 1, metadata !4667, metadata !DIExpression()), !dbg !4670
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4671
  call void @llvm.dbg.value(metadata i8* %2, metadata !4668, metadata !DIExpression()), !dbg !4672
  %3 = icmp eq i8* %2, null, !dbg !4673
  br i1 %3, label %11, label %4, !dbg !4675

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.219, i64 0, i64 0)) #14, !dbg !4676
  %6 = icmp eq i32 %5, 0, !dbg !4681
  br i1 %6, label %10, label %7, !dbg !4682

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.220, i64 0, i64 0)) #14, !dbg !4683
  %9 = icmp eq i32 %8, 0, !dbg !4684
  br i1 %9, label %10, label %11, !dbg !4685

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4667, metadata !DIExpression()), !dbg !4670
  br label %11, !dbg !4686

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4687
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4688 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4694
  call void @llvm.dbg.value(metadata i8* %1, metadata !4693, metadata !DIExpression()), !dbg !4695
  %2 = icmp eq i8* %1, null, !dbg !4696
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.223, i64 0, i64 0), i8* %1, !dbg !4698
  call void @llvm.dbg.value(metadata i8* %3, metadata !4693, metadata !DIExpression()), !dbg !4695
  %4 = load i8, i8* %3, align 1, !dbg !4699, !tbaa !996
  %5 = icmp eq i8 %4, 0, !dbg !4703
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.224, i64 0, i64 0), i8* %3, !dbg !4704
  call void @llvm.dbg.value(metadata i8* %6, metadata !4693, metadata !DIExpression()), !dbg !4695
  ret i8* %6, !dbg !4705
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !273, !368, !279, !374, !287, !377, !294, !301, !379, !351, !387, !404, !406, !408, !410, !412, !414, !416, !360, !419, !421, !423}
!llvm.ident = !{!812, !812, !812, !812, !812, !812, !812, !812, !812, !812, !812, !812, !812, !812, !812, !812, !812, !812, !812, !812, !812, !812, !812}
!llvm.module.flags = !{!813, !814, !815, !816, !817}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 80, type: !259, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !241, globals: !242)
!3 = !DIFile(filename: "src/dircolors.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !11, !212, !226}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Shell_syntax", file: !3, line: 42, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "SHELL_SYNTAX_BOURNE", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "SHELL_SYNTAX_C", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "SHELL_SYNTAX_UNKNOWN", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !12, file: !3, line: 250, baseType: !6, size: 32, elements: !207)
!12 = distinct !DISubprogram(name: "dc_parse_stream", scope: !3, file: !3, line: 239, type: !13, isLocal: true, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !81)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16, !79}
!15 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !19)
!18 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !21)
!20 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!21 = !{!22, !24, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !40, !42, !43, !44, !48, !50, !52, !56, !59, !61, !64, !67, !68, !70, !74, !75}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !19, file: !20, line: 51, baseType: !23, size: 32)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !19, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !19, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !19, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !19, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !19, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !19, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !19, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !19, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !19, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !19, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !19, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !19, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !20, line: 36, flags: DIFlagFwdDecl)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !19, file: !20, line: 70, baseType: !41, size: 64, offset: 832)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !19, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !19, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !19, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !46, line: 150, baseType: !47)
!46 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !19, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !19, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!51 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !19, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 1)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !19, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !20, line: 43, baseType: null)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !19, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !46, line: 151, baseType: !47)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !19, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !20, line: 37, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !19, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !20, line: 38, flags: DIFlagFwdDecl)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !19, file: !20, line: 93, baseType: !41, size: 64, offset: 1344)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !19, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !19, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 62, baseType: !73)
!72 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !19, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !19, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 20)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96, !154, !159, !161, !164, !166, !169, !173, !176, !178, !181, !184, !189, !192, !194, !197, !199, !202, !204}
!82 = !DILocalVariable(name: "fp", arg: 1, scope: !12, file: !3, line: 239, type: !16)
!83 = !DILocalVariable(name: "filename", arg: 2, scope: !12, file: !3, line: 239, type: !79)
!84 = !DILocalVariable(name: "line_number", scope: !12, file: !3, line: 241, type: !71)
!85 = !DILocalVariable(name: "next_G_line", scope: !12, file: !3, line: 242, type: !79)
!86 = !DILocalVariable(name: "input_line", scope: !12, file: !3, line: 243, type: !25)
!87 = !DILocalVariable(name: "input_line_size", scope: !12, file: !3, line: 244, type: !71)
!88 = !DILocalVariable(name: "line", scope: !12, file: !3, line: 245, type: !79)
!89 = !DILocalVariable(name: "term", scope: !12, file: !3, line: 246, type: !79)
!90 = !DILocalVariable(name: "ok", scope: !12, file: !3, line: 247, type: !15)
!91 = !DILocalVariable(name: "state", scope: !12, file: !3, line: 250, type: !11)
!92 = !DILocalVariable(name: "keywd", scope: !93, file: !3, line: 259, type: !25)
!93 = distinct !DILexicalBlock(scope: !12, file: !3, line: 258, column: 5)
!94 = !DILocalVariable(name: "arg", scope: !93, file: !3, line: 259, type: !25)
!95 = !DILocalVariable(name: "unrecognized", scope: !93, file: !3, line: 260, type: !15)
!96 = !DILocalVariable(name: "__o", scope: !97, file: !3, line: 312, type: !104)
!97 = distinct !DILexicalBlock(scope: !98, file: !3, line: 312, column: 19)
!98 = distinct !DILexicalBlock(scope: !99, file: !3, line: 311, column: 17)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 310, column: 19)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 309, column: 13)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 308, column: 15)
!102 = distinct !DILexicalBlock(scope: !103, file: !3, line: 304, column: 9)
!103 = distinct !DILexicalBlock(scope: !93, file: !3, line: 296, column: 11)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !106, line: 174, size: 704, elements: !107)
!106 = !DIFile(filename: "./lib/obstack.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!107 = !{!108, !109, !119, !120, !121, !122, !127, !128, !139, !150, !151, !152, !153}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !105, file: !106, line: 176, baseType: !71, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !105, file: !106, line: 177, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !106, line: 167, size: 128, elements: !112)
!112 = !{!113, !114, !115}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !111, file: !106, line: 169, baseType: !25, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !111, file: !106, line: 170, baseType: !110, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !111, file: !106, line: 171, baseType: !116, offset: 128)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: -1)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !105, file: !106, line: 178, baseType: !25, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !105, file: !106, line: 179, baseType: !25, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !105, file: !106, line: 180, baseType: !25, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !105, file: !106, line: 185, baseType: !123, size: 64, offset: 320)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !106, line: 181, size: 64, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !123, file: !106, line: 183, baseType: !71, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !123, file: !106, line: 184, baseType: !69, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !105, file: !106, line: 186, baseType: !71, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !105, file: !106, line: 193, baseType: !129, size: 64, offset: 448)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !106, line: 189, size: 64, elements: !130)
!130 = !{!131, !135}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !129, file: !106, line: 191, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!69, !71}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !129, file: !106, line: 192, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!69, !69, !71}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !105, file: !106, line: 198, baseType: !140, size: 64, offset: 512)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !106, line: 194, size: 64, elements: !141)
!141 = !{!142, !146}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !140, file: !106, line: 196, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !69}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !140, file: !106, line: 197, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !69, !69}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !105, file: !106, line: 200, baseType: !69, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !105, file: !106, line: 201, baseType: !6, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !105, file: !106, line: 202, baseType: !6, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !105, file: !106, line: 206, baseType: !6, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!154 = !DILocalVariable(name: "__o1", scope: !155, file: !3, line: 312, type: !157)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 312, column: 19)
!156 = distinct !DILexicalBlock(scope: !97, file: !3, line: 312, column: 19)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!159 = !DILocalVariable(name: "__o", scope: !160, file: !3, line: 314, type: !104)
!160 = distinct !DILexicalBlock(scope: !98, file: !3, line: 314, column: 19)
!161 = !DILocalVariable(name: "__o1", scope: !162, file: !3, line: 314, type: !157)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 314, column: 19)
!163 = distinct !DILexicalBlock(scope: !160, file: !3, line: 314, column: 19)
!164 = !DILocalVariable(name: "__o", scope: !165, file: !3, line: 316, type: !104)
!165 = distinct !DILexicalBlock(scope: !98, file: !3, line: 316, column: 19)
!166 = !DILocalVariable(name: "__o1", scope: !167, file: !3, line: 316, type: !157)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 316, column: 19)
!168 = distinct !DILexicalBlock(scope: !165, file: !3, line: 316, column: 19)
!169 = !DILocalVariable(name: "__o", scope: !170, file: !3, line: 321, type: !104)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 321, column: 19)
!171 = distinct !DILexicalBlock(scope: !172, file: !3, line: 319, column: 17)
!172 = distinct !DILexicalBlock(scope: !99, file: !3, line: 318, column: 24)
!173 = !DILocalVariable(name: "__o1", scope: !174, file: !3, line: 321, type: !157)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 321, column: 19)
!175 = distinct !DILexicalBlock(scope: !170, file: !3, line: 321, column: 19)
!176 = !DILocalVariable(name: "__o", scope: !177, file: !3, line: 323, type: !104)
!177 = distinct !DILexicalBlock(scope: !171, file: !3, line: 323, column: 19)
!178 = !DILocalVariable(name: "__o1", scope: !179, file: !3, line: 323, type: !157)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 323, column: 19)
!180 = distinct !DILexicalBlock(scope: !177, file: !3, line: 323, column: 19)
!181 = !DILocalVariable(name: "i", scope: !182, file: !3, line: 333, type: !23)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 332, column: 17)
!183 = distinct !DILexicalBlock(scope: !172, file: !3, line: 325, column: 24)
!184 = !DILocalVariable(name: "__o", scope: !185, file: !3, line: 341, type: !104)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 341, column: 23)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 341, column: 23)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 340, column: 21)
!188 = distinct !DILexicalBlock(scope: !182, file: !3, line: 339, column: 23)
!189 = !DILocalVariable(name: "__o1", scope: !190, file: !3, line: 341, type: !157)
!190 = distinct !DILexicalBlock(scope: !191, file: !3, line: 341, column: 23)
!191 = distinct !DILexicalBlock(scope: !185, file: !3, line: 341, column: 23)
!192 = !DILocalVariable(name: "__o", scope: !193, file: !3, line: 341, type: !104)
!193 = distinct !DILexicalBlock(scope: !186, file: !3, line: 341, column: 23)
!194 = !DILocalVariable(name: "__o1", scope: !195, file: !3, line: 341, type: !157)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 341, column: 23)
!196 = distinct !DILexicalBlock(scope: !193, file: !3, line: 341, column: 23)
!197 = !DILocalVariable(name: "__o", scope: !198, file: !3, line: 342, type: !104)
!198 = distinct !DILexicalBlock(scope: !187, file: !3, line: 342, column: 23)
!199 = !DILocalVariable(name: "__o1", scope: !200, file: !3, line: 342, type: !157)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 342, column: 23)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 342, column: 23)
!202 = !DILocalVariable(name: "__o", scope: !203, file: !3, line: 344, type: !104)
!203 = distinct !DILexicalBlock(scope: !187, file: !3, line: 344, column: 23)
!204 = !DILocalVariable(name: "__o1", scope: !205, file: !3, line: 344, type: !157)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 344, column: 23)
!206 = distinct !DILexicalBlock(scope: !203, file: !3, line: 344, column: 23)
!207 = !{!208, !209, !210, !211}
!208 = !DIEnumerator(name: "ST_TERMNO", value: 0, isUnsigned: true)
!209 = !DIEnumerator(name: "ST_TERMYES", value: 1, isUnsigned: true)
!210 = !DIEnumerator(name: "ST_TERMSURE", value: 2, isUnsigned: true)
!211 = !DIEnumerator(name: "ST_GLOBAL", value: 3, isUnsigned: true)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !213, line: 32, baseType: !6, size: 32, elements: !214)
!213 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225}
!215 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!216 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!217 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!218 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!219 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!220 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!221 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!222 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!223 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!224 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!225 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !227, line: 46, baseType: !6, size: 32, elements: !228)
!227 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!229 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!230 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!231 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!232 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!233 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!234 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!235 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!236 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!237 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!238 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!239 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!240 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!241 = !{!25, !69, !71, !73, !23, !49}
!242 = !{!243, !0, !245, !251, !257}
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "lsc_obstack", scope: !2, file: !3, line: 60, type: !105, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "G_line", scope: !2, file: !247, line: 1, type: !248, isLocal: true, isDefinition: true)
!247 = !DIFile(filename: "src/dircolors.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 33312, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 4164)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "slack_codes", scope: !2, file: !3, line: 62, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 2432, elements: !255)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!255 = !{!256}
!256 = !DISubrange(count: 38)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "ls_codes", scope: !2, file: !3, line: 72, type: !253, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 2048, elements: !269)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !262, line: 50, size: 256, elements: !263)
!262 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!263 = !{!264, !265, !266, !268}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !262, line: 52, baseType: !79, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !261, file: !262, line: 55, baseType: !23, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !261, file: !262, line: 56, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !261, file: !262, line: 57, baseType: !23, size: 32, offset: 192)
!269 = !{!270}
!270 = !DISubrange(count: 8)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "Version", scope: !273, file: !274, line: 2, type: !79, isLocal: false, isDefinition: true)
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, globals: !276)
!274 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!275 = !{}
!276 = !{!271}
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "file_name", scope: !279, file: !284, line: 46, type: !79, isLocal: true, isDefinition: true)
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, globals: !281)
!280 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!281 = !{!277, !282}
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !279, file: !284, line: 56, type: !15, isLocal: true, isDefinition: true)
!284 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "exit_failure", scope: !287, file: !290, line: 24, type: !291, isLocal: false, isDefinition: true)
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, globals: !289)
!288 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!289 = !{!285}
!290 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!291 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "program_name", scope: !294, file: !298, line: 33, type: !79, isLocal: false, isDefinition: true)
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, retainedTypes: !296, globals: !297)
!295 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!296 = !{!69, !25}
!297 = !{!292}
!298 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !301, file: !313, line: 85, type: !346, isLocal: false, isDefinition: true)
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !303, retainedTypes: !309, globals: !310)
!302 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!303 = !{!212, !304, !226}
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !213, line: 242, baseType: !6, size: 32, elements: !305)
!305 = !{!306, !307, !308}
!306 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!307 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!308 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!309 = !{!23, !49, !71, !25}
!310 = !{!299, !311, !318, !328, !330, !335, !342, !344}
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !301, file: !313, line: 101, type: !314, isLocal: false, isDefinition: true)
!313 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 320, elements: !316)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!316 = !{!317}
!317 = !DISubrange(count: 10)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !301, file: !313, line: 1052, type: !320, isLocal: false, isDefinition: true)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !313, line: 65, size: 448, elements: !321)
!321 = !{!322, !323, !324, !326, !327}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !320, file: !313, line: 68, baseType: !212, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !313, line: 71, baseType: !23, size: 32, offset: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !320, file: !313, line: 75, baseType: !325, size: 256, offset: 64)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !269)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !320, file: !313, line: 78, baseType: !79, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !320, file: !313, line: 81, baseType: !79, size: 64, offset: 384)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !301, file: !313, line: 116, type: !320, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "slot0", scope: !301, file: !313, line: 842, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 256)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "slotvec", scope: !301, file: !313, line: 845, type: !337, isLocal: true, isDefinition: true)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !313, line: 834, size: 128, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !338, file: !313, line: 836, baseType: !71, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !338, file: !313, line: 837, baseType: !25, size: 64, offset: 64)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "nslots", scope: !301, file: !313, line: 843, type: !23, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "slotvec0", scope: !301, file: !313, line: 844, type: !338, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 704, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 11)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !351, file: !354, line: 26, type: !355, isLocal: false, isDefinition: true)
!351 = distinct !DICompileUnit(language: DW_LANG_C99, file: !352, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, globals: !353)
!352 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!353 = !{!349}
!354 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 376, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 47)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !360, file: !364, line: 351, type: !365, isLocal: false, isDefinition: true)
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, retainedTypes: !362, globals: !363)
!361 = !DIFile(filename: "./lib/obstack.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!362 = !{!25, !69}
!363 = !{!358}
!364 = !DIFile(filename: "lib/obstack.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null}
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, retainedTypes: !370)
!369 = !DIFile(filename: "./lib/c-strcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!373 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!374 = distinct !DICompileUnit(language: DW_LANG_C99, file: !375, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, retainedTypes: !376)
!375 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!376 = !{!25}
!377 = distinct !DICompileUnit(language: DW_LANG_C99, file: !378, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275)
!378 = !DIFile(filename: "./lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!379 = distinct !DICompileUnit(language: DW_LANG_C99, file: !380, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !381, retainedTypes: !386)
!380 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!381 = !{!382}
!382 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !383, line: 41, baseType: !6, size: 32, elements: !384)
!383 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!384 = !{!385}
!385 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!386 = !{!69}
!387 = distinct !DICompileUnit(language: DW_LANG_C99, file: !388, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !389, retainedTypes: !403)
!388 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!389 = !{!390}
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !392, file: !391, line: 186, baseType: !6, size: 32, elements: !401)
!391 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!392 = distinct !DISubprogram(name: "x2nrealloc", scope: !391, file: !391, line: 174, type: !393, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !387, retainedNodes: !396)
!393 = !DISubroutineType(types: !394)
!394 = !{!69, !69, !395, !71}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!396 = !{!397, !398, !399, !400}
!397 = !DILocalVariable(name: "p", arg: 1, scope: !392, file: !391, line: 174, type: !69)
!398 = !DILocalVariable(name: "pn", arg: 2, scope: !392, file: !391, line: 174, type: !395)
!399 = !DILocalVariable(name: "s", arg: 3, scope: !392, file: !391, line: 174, type: !71)
!400 = !DILocalVariable(name: "n", scope: !392, file: !391, line: 176, type: !71)
!401 = !{!402}
!402 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!403 = !{!71, !25, !69}
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275)
!405 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275)
!407 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!408 = distinct !DICompileUnit(language: DW_LANG_C99, file: !409, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, retainedTypes: !386)
!409 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!410 = distinct !DICompileUnit(language: DW_LANG_C99, file: !411, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275)
!411 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!412 = distinct !DICompileUnit(language: DW_LANG_C99, file: !413, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, retainedTypes: !386)
!413 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, retainedTypes: !386)
!415 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, retainedTypes: !418)
!417 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!418 = !{!71}
!419 = distinct !DICompileUnit(language: DW_LANG_C99, file: !420, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275)
!420 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275)
!422 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!423 = distinct !DICompileUnit(language: DW_LANG_C99, file: !424, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !425, retainedTypes: !386)
!424 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!425 = !{!426}
!426 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !427, line: 41, baseType: !6, size: 32, elements: !428)
!427 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811}
!429 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!430 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!431 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!432 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!433 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!434 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!435 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!436 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!437 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!438 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!439 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!440 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!441 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!442 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!443 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!444 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!445 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!446 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!447 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!448 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!449 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!450 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!451 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!452 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!453 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!454 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!455 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!456 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!457 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!458 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!459 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!460 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!461 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!462 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!463 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!464 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!465 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!466 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!467 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!468 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!469 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!470 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!471 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!472 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!473 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!474 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!475 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!476 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!477 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!478 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!537 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!540 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!541 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!542 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!543 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!544 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!545 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!546 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!547 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!548 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!549 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!550 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!551 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!624 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!697 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!698 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!699 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!700 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!701 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!702 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!703 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!704 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!705 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!706 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!707 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!708 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!709 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!710 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!711 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!713 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!714 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!715 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!716 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!717 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!718 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!744 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!745 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!746 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!747 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!748 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!753 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!754 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!755 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!756 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!812 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!813 = !{i32 2, !"Dwarf Version", i32 4}
!814 = !{i32 2, !"Debug Info Version", i32 3}
!815 = !{i32 1, !"wchar_size", i32 4}
!816 = !{i32 7, !"PIC Level", i32 2}
!817 = !{i32 7, !"PIE Level", i32 2}
!818 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 93, type: !819, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !23}
!821 = !{!822}
!822 = !DILocalVariable(name: "status", arg: 1, scope: !818, file: !3, line: 93, type: !23)
!823 = !DILocalVariable(name: "infomap", scope: !824, file: !825, line: 632, type: !839)
!824 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !825, file: !825, line: 630, type: !826, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !828)
!825 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!826 = !DISubroutineType(types: !827)
!827 = !{null, !79}
!828 = !{!829, !823, !830, !831, !838}
!829 = !DILocalVariable(name: "program", arg: 1, scope: !824, file: !825, line: 630, type: !79)
!830 = !DILocalVariable(name: "node", scope: !824, file: !825, line: 642, type: !79)
!831 = !DILocalVariable(name: "map_prog", scope: !824, file: !825, line: 643, type: !832)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !824, file: !825, line: 632, size: 128, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !834, file: !825, line: 632, baseType: !79, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !834, file: !825, line: 632, baseType: !79, size: 64, offset: 64)
!838 = !DILocalVariable(name: "lc_messages", scope: !824, file: !825, line: 655, type: !79)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, size: 896, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 7)
!842 = !DILocation(line: 632, column: 67, scope: !824, inlinedAt: !843)
!843 = distinct !DILocation(line: 116, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 98, column: 5)
!845 = distinct !DILexicalBlock(scope: !818, file: !3, line: 95, column: 7)
!846 = !DILocation(line: 93, column: 12, scope: !818)
!847 = !DILocation(line: 95, column: 14, scope: !845)
!848 = !DILocation(line: 95, column: 7, scope: !818)
!849 = !DILocation(line: 96, column: 5, scope: !850)
!850 = distinct !DILexicalBlock(scope: !845, file: !3, line: 96, column: 5)
!851 = !{!852, !852, i64 0}
!852 = !{!"any pointer", !853, i64 0}
!853 = !{!"omnipotent char", !854, i64 0}
!854 = !{!"Simple C/C++ TBAA"}
!855 = !DILocation(line: 99, column: 7, scope: !844)
!856 = !DILocation(line: 100, column: 7, scope: !844)
!857 = !DILocation(line: 108, column: 7, scope: !844)
!858 = !DILocation(line: 109, column: 7, scope: !844)
!859 = !DILocation(line: 110, column: 7, scope: !844)
!860 = !DILocation(line: 632, column: 3, scope: !824, inlinedAt: !843)
!861 = !DILocation(line: 643, column: 36, scope: !824, inlinedAt: !843)
!862 = !DILocation(line: 643, column: 25, scope: !824, inlinedAt: !843)
!863 = !DILocation(line: 645, column: 33, scope: !824, inlinedAt: !843)
!864 = !DILocation(line: 645, column: 3, scope: !824, inlinedAt: !843)
!865 = !DILocation(line: 646, column: 13, scope: !824, inlinedAt: !843)
!866 = !DILocation(line: 645, column: 20, scope: !824, inlinedAt: !843)
!867 = !{!868, !852, i64 0}
!868 = !{!"infomap", !852, i64 0, !852, i64 8}
!869 = !DILocation(line: 645, column: 10, scope: !824, inlinedAt: !843)
!870 = !DILocation(line: 645, column: 28, scope: !824, inlinedAt: !843)
!871 = distinct !{!871, !872, !873}
!872 = !DILocation(line: 645, column: 3, scope: !824)
!873 = !DILocation(line: 646, column: 13, scope: !824)
!874 = !DILocation(line: 648, column: 17, scope: !875, inlinedAt: !843)
!875 = distinct !DILexicalBlock(scope: !824, file: !825, line: 648, column: 7)
!876 = !{!868, !852, i64 8}
!877 = !DILocation(line: 648, column: 7, scope: !875, inlinedAt: !843)
!878 = !DILocation(line: 648, column: 7, scope: !824, inlinedAt: !843)
!879 = !DILocation(line: 642, column: 15, scope: !824, inlinedAt: !843)
!880 = !DILocation(line: 651, column: 3, scope: !824, inlinedAt: !843)
!881 = !DILocation(line: 655, column: 29, scope: !824, inlinedAt: !843)
!882 = !DILocation(line: 655, column: 15, scope: !824, inlinedAt: !843)
!883 = !DILocation(line: 656, column: 7, scope: !884, inlinedAt: !843)
!884 = distinct !DILexicalBlock(scope: !824, file: !825, line: 656, column: 7)
!885 = !DILocation(line: 656, column: 19, scope: !884, inlinedAt: !843)
!886 = !DILocation(line: 656, column: 22, scope: !884, inlinedAt: !843)
!887 = !DILocation(line: 656, column: 7, scope: !824, inlinedAt: !843)
!888 = !DILocation(line: 662, column: 7, scope: !889, inlinedAt: !843)
!889 = distinct !DILexicalBlock(scope: !884, file: !825, line: 657, column: 5)
!890 = !DILocation(line: 664, column: 5, scope: !889, inlinedAt: !843)
!891 = !DILocation(line: 665, column: 3, scope: !824, inlinedAt: !843)
!892 = !DILocation(line: 667, column: 3, scope: !824, inlinedAt: !843)
!893 = !DILocation(line: 669, column: 1, scope: !824, inlinedAt: !843)
!894 = !DILocation(line: 119, column: 3, scope: !818)
!895 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 396, type: !896, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !899)
!896 = !DISubroutineType(types: !897)
!897 = !{!23, !23, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!899 = !{!900, !901, !902, !903, !904, !905, !906, !909, !913, !915, !916, !918, !919, !920}
!900 = !DILocalVariable(name: "argc", arg: 1, scope: !895, file: !3, line: 396, type: !23)
!901 = !DILocalVariable(name: "argv", arg: 2, scope: !895, file: !3, line: 396, type: !898)
!902 = !DILocalVariable(name: "ok", scope: !895, file: !3, line: 398, type: !15)
!903 = !DILocalVariable(name: "optc", scope: !895, file: !3, line: 399, type: !23)
!904 = !DILocalVariable(name: "syntax", scope: !895, file: !3, line: 400, type: !5)
!905 = !DILocalVariable(name: "print_database", scope: !895, file: !3, line: 401, type: !15)
!906 = !DILocalVariable(name: "p", scope: !907, file: !3, line: 459, type: !79)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 458, column: 5)
!908 = distinct !DILexicalBlock(scope: !895, file: !3, line: 457, column: 7)
!909 = !DILocalVariable(name: "len", scope: !910, file: !3, line: 487, type: !71)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 486, column: 9)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 485, column: 11)
!912 = distinct !DILexicalBlock(scope: !908, file: !3, line: 467, column: 5)
!913 = !DILocalVariable(name: "__o", scope: !914, file: !3, line: 487, type: !157)
!914 = distinct !DILexicalBlock(scope: !910, file: !3, line: 487, column: 24)
!915 = !DILocalVariable(name: "s", scope: !910, file: !3, line: 488, type: !25)
!916 = !DILocalVariable(name: "__o1", scope: !917, file: !3, line: 488, type: !104)
!917 = distinct !DILexicalBlock(scope: !910, file: !3, line: 488, column: 21)
!918 = !DILocalVariable(name: "__value", scope: !917, file: !3, line: 488, type: !69)
!919 = !DILocalVariable(name: "prefix", scope: !910, file: !3, line: 489, type: !79)
!920 = !DILocalVariable(name: "suffix", scope: !910, file: !3, line: 490, type: !79)
!921 = !DILocation(line: 396, column: 11, scope: !895)
!922 = !DILocation(line: 396, column: 24, scope: !895)
!923 = !DILocation(line: 398, column: 8, scope: !895)
!924 = !DILocation(line: 400, column: 21, scope: !895)
!925 = !DILocation(line: 401, column: 8, scope: !895)
!926 = !DILocation(line: 404, column: 21, scope: !895)
!927 = !DILocation(line: 404, column: 3, scope: !895)
!928 = !DILocation(line: 405, column: 3, scope: !895)
!929 = !DILocation(line: 406, column: 3, scope: !895)
!930 = !DILocation(line: 407, column: 3, scope: !895)
!931 = !DILocation(line: 409, column: 3, scope: !895)
!932 = !DILocation(line: 411, column: 3, scope: !895)
!933 = !DILocation(line: 411, column: 18, scope: !895)
!934 = !DILocation(line: 399, column: 7, scope: !895)
!935 = distinct !{!935, !932, !936}
!936 = !DILocation(line: 432, column: 7, scope: !895)
!937 = !DILocation(line: 420, column: 9, scope: !938)
!938 = distinct !DILexicalBlock(scope: !895, file: !3, line: 413, column: 7)
!939 = !DILocation(line: 426, column: 7, scope: !938)
!940 = !DILocation(line: 428, column: 7, scope: !938)
!941 = !DILocation(line: 431, column: 9, scope: !938)
!942 = !DILocation(line: 434, column: 11, scope: !895)
!943 = !{!944, !944, i64 0}
!944 = !{!"int", !853, i64 0}
!945 = !DILocation(line: 434, column: 8, scope: !895)
!946 = !DILocation(line: 435, column: 8, scope: !895)
!947 = !DILocation(line: 439, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !895, file: !3, line: 439, column: 7)
!949 = !DILocation(line: 439, column: 32, scope: !948)
!950 = !DILocation(line: 439, column: 22, scope: !948)
!951 = !DILocation(line: 442, column: 14, scope: !952)
!952 = distinct !DILexicalBlock(scope: !948, file: !3, line: 440, column: 5)
!953 = !DILocation(line: 441, column: 7, scope: !952)
!954 = !DILocation(line: 444, column: 7, scope: !952)
!955 = !DILocation(line: 447, column: 8, scope: !956)
!956 = distinct !DILexicalBlock(scope: !895, file: !3, line: 447, column: 7)
!957 = !DILocation(line: 447, column: 25, scope: !956)
!958 = !DILocation(line: 447, column: 7, scope: !895)
!959 = !DILocation(line: 449, column: 20, scope: !960)
!960 = distinct !DILexicalBlock(scope: !956, file: !3, line: 448, column: 5)
!961 = !DILocation(line: 449, column: 50, scope: !960)
!962 = !DILocation(line: 449, column: 43, scope: !960)
!963 = !DILocation(line: 449, column: 7, scope: !960)
!964 = !DILocation(line: 450, column: 11, scope: !960)
!965 = !DILocation(line: 451, column: 9, scope: !966)
!966 = distinct !DILexicalBlock(scope: !960, file: !3, line: 450, column: 11)
!967 = !DILocation(line: 454, column: 7, scope: !960)
!968 = !DILocation(line: 457, column: 7, scope: !895)
!969 = !DILocation(line: 459, column: 19, scope: !907)
!970 = !DILocation(line: 462, column: 11, scope: !971)
!971 = distinct !DILexicalBlock(scope: !907, file: !3, line: 461, column: 9)
!972 = !DILocation(line: 463, column: 16, scope: !971)
!973 = !DILocation(line: 463, column: 27, scope: !971)
!974 = !DILocation(line: 463, column: 13, scope: !971)
!975 = !DILocation(line: 460, column: 16, scope: !907)
!976 = !DILocation(line: 460, column: 25, scope: !907)
!977 = !DILocation(line: 460, column: 7, scope: !907)
!978 = distinct !{!978, !977, !979}
!979 = !DILocation(line: 464, column: 9, scope: !907)
!980 = !DILocation(line: 469, column: 18, scope: !981)
!981 = distinct !DILexicalBlock(scope: !912, file: !3, line: 469, column: 11)
!982 = !DILocation(line: 469, column: 11, scope: !912)
!983 = !DILocation(line: 130, column: 11, scope: !984, inlinedAt: !989)
!984 = distinct !DISubprogram(name: "guess_shell_syntax", scope: !3, file: !3, line: 126, type: !985, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!5}
!987 = !{!988}
!988 = !DILocalVariable(name: "shell", scope: !984, file: !3, line: 128, type: !25)
!989 = distinct !DILocation(line: 471, column: 20, scope: !990)
!990 = distinct !DILexicalBlock(scope: !981, file: !3, line: 470, column: 9)
!991 = !DILocation(line: 128, column: 9, scope: !984, inlinedAt: !989)
!992 = !DILocation(line: 131, column: 13, scope: !993, inlinedAt: !989)
!993 = distinct !DILexicalBlock(scope: !984, file: !3, line: 131, column: 7)
!994 = !DILocation(line: 131, column: 21, scope: !993, inlinedAt: !989)
!995 = !DILocation(line: 131, column: 24, scope: !993, inlinedAt: !989)
!996 = !{!853, !853, i64 0}
!997 = !DILocation(line: 131, column: 31, scope: !993, inlinedAt: !989)
!998 = !DILocation(line: 131, column: 7, scope: !984, inlinedAt: !989)
!999 = !DILocation(line: 134, column: 11, scope: !984, inlinedAt: !989)
!1000 = !DILocation(line: 136, column: 7, scope: !1001, inlinedAt: !989)
!1001 = distinct !DILexicalBlock(scope: !984, file: !3, line: 136, column: 7)
!1002 = !DILocation(line: 136, column: 28, scope: !1001, inlinedAt: !989)
!1003 = !DILocation(line: 136, column: 31, scope: !1001, inlinedAt: !989)
!1004 = !DILocation(line: 136, column: 7, scope: !984, inlinedAt: !989)
!1005 = !DILocation(line: 474, column: 15, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 473, column: 13)
!1007 = distinct !DILexicalBlock(scope: !990, file: !3, line: 472, column: 15)
!1008 = !DILocation(line: 0, scope: !895)
!1009 = !DILocation(line: 479, column: 7, scope: !912)
!1010 = !DILocation(line: 480, column: 16, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !912, file: !3, line: 480, column: 11)
!1012 = !DILocation(line: 480, column: 11, scope: !912)
!1013 = !DILocation(line: 481, column: 14, scope: !1011)
!1014 = !DILocation(line: 485, column: 11, scope: !912)
!1015 = !DILocation(line: 483, column: 29, scope: !1011)
!1016 = !DILocalVariable(name: "filename", arg: 1, scope: !1017, file: !3, line: 374, type: !79)
!1017 = distinct !DISubprogram(name: "dc_parse_file", scope: !3, file: !3, line: 374, type: !1018, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1020)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!15, !79}
!1020 = !{!1016, !1021}
!1021 = !DILocalVariable(name: "ok", scope: !1017, file: !3, line: 376, type: !15)
!1022 = !DILocation(line: 374, column: 28, scope: !1017, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 483, column: 14, scope: !1011)
!1024 = !DILocation(line: 378, column: 9, scope: !1025, inlinedAt: !1023)
!1025 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 378, column: 7)
!1026 = !DILocation(line: 378, column: 31, scope: !1025, inlinedAt: !1023)
!1027 = !DILocation(line: 378, column: 58, scope: !1025, inlinedAt: !1023)
!1028 = !DILocation(line: 378, column: 34, scope: !1025, inlinedAt: !1023)
!1029 = !DILocation(line: 378, column: 65, scope: !1025, inlinedAt: !1023)
!1030 = !DILocation(line: 378, column: 7, scope: !1017, inlinedAt: !1023)
!1031 = !DILocation(line: 380, column: 17, scope: !1032, inlinedAt: !1023)
!1032 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 379, column: 5)
!1033 = !DILocation(line: 380, column: 30, scope: !1032, inlinedAt: !1023)
!1034 = !DILocation(line: 380, column: 7, scope: !1032, inlinedAt: !1023)
!1035 = !DILocation(line: 381, column: 7, scope: !1032, inlinedAt: !1023)
!1036 = !DILocation(line: 384, column: 25, scope: !1017, inlinedAt: !1023)
!1037 = !DILocation(line: 384, column: 8, scope: !1017, inlinedAt: !1023)
!1038 = !DILocation(line: 386, column: 15, scope: !1039, inlinedAt: !1023)
!1039 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 386, column: 7)
!1040 = !DILocation(line: 386, column: 7, scope: !1039, inlinedAt: !1023)
!1041 = !DILocation(line: 386, column: 22, scope: !1039, inlinedAt: !1023)
!1042 = !DILocation(line: 386, column: 7, scope: !1017, inlinedAt: !1023)
!1043 = !DILocation(line: 388, column: 17, scope: !1044, inlinedAt: !1023)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 387, column: 5)
!1045 = !DILocation(line: 388, column: 30, scope: !1044, inlinedAt: !1023)
!1046 = !DILocation(line: 388, column: 7, scope: !1044, inlinedAt: !1023)
!1047 = !DILocation(line: 389, column: 7, scope: !1044, inlinedAt: !1023)
!1048 = !DILocation(line: 487, column: 24, scope: !914)
!1049 = !{!1050, !852, i64 24}
!1050 = !{!"obstack", !1051, i64 0, !852, i64 8, !852, i64 16, !852, i64 24, !852, i64 32, !853, i64 40, !1051, i64 48, !853, i64 56, !853, i64 64, !852, i64 72, !944, i64 80, !944, i64 80, !944, i64 80}
!1051 = !{!"long", !853, i64 0}
!1052 = !{!1050, !852, i64 16}
!1053 = !DILocation(line: 487, column: 18, scope: !910)
!1054 = !DILocation(line: 488, column: 21, scope: !917)
!1055 = !DILocation(line: 488, column: 21, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !917, file: !3, line: 488, column: 21)
!1057 = !{!1050, !1051, i64 48}
!1058 = !DILocation(line: 488, column: 21, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !917, file: !3, line: 488, column: 21)
!1060 = !{!1050, !852, i64 8}
!1061 = !{!1050, !852, i64 32}
!1062 = !DILocation(line: 488, column: 17, scope: !910)
!1063 = !DILocation(line: 492, column: 22, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !910, file: !3, line: 492, column: 15)
!1065 = !DILocation(line: 492, column: 15, scope: !910)
!1066 = !DILocation(line: 490, column: 23, scope: !910)
!1067 = !DILocation(line: 489, column: 23, scope: !910)
!1068 = !DILocation(line: 502, column: 11, scope: !910)
!1069 = !DILocation(line: 503, column: 11, scope: !910)
!1070 = !DILocation(line: 504, column: 11, scope: !910)
!1071 = !DILocation(line: 505, column: 9, scope: !910)
!1072 = !DILocation(line: 509, column: 1, scope: !895)
!1073 = !DILocation(line: 239, column: 24, scope: !12)
!1074 = !DILocation(line: 239, column: 40, scope: !12)
!1075 = !DILocation(line: 241, column: 10, scope: !12)
!1076 = !DILocation(line: 243, column: 3, scope: !12)
!1077 = !DILocation(line: 243, column: 9, scope: !12)
!1078 = !DILocation(line: 244, column: 3, scope: !12)
!1079 = !DILocation(line: 244, column: 10, scope: !12)
!1080 = !{!1051, !1051, i64 0}
!1081 = !DILocation(line: 247, column: 8, scope: !12)
!1082 = !DILocation(line: 250, column: 58, scope: !12)
!1083 = !DILocation(line: 253, column: 10, scope: !12)
!1084 = !DILocation(line: 246, column: 15, scope: !12)
!1085 = !DILocation(line: 254, column: 12, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !12, file: !3, line: 254, column: 7)
!1087 = !DILocation(line: 254, column: 20, scope: !1086)
!1088 = !DILocation(line: 254, column: 23, scope: !1086)
!1089 = !DILocation(line: 254, column: 29, scope: !1086)
!1090 = !DILocation(line: 254, column: 7, scope: !12)
!1091 = !DILocation(line: 255, column: 5, scope: !1086)
!1092 = !DILocation(line: 0, scope: !12)
!1093 = !DILocation(line: 257, column: 3, scope: !12)
!1094 = !DILocation(line: 262, column: 7, scope: !93)
!1095 = !DILocation(line: 242, column: 15, scope: !12)
!1096 = !DILocation(line: 0, scope: !93)
!1097 = !DILocation(line: 264, column: 11, scope: !93)
!1098 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1099, file: !1100, line: 118, type: !898)
!1099 = distinct !DISubprogram(name: "getline", scope: !1100, file: !1100, line: 118, type: !1101, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1104)
!1100 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!1103, !898, !395, !16}
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !46, line: 191, baseType: !47)
!1104 = !{!1098, !1105, !1106}
!1105 = !DILocalVariable(name: "__n", arg: 2, scope: !1099, file: !1100, line: 118, type: !395)
!1106 = !DILocalVariable(name: "__stream", arg: 3, scope: !1099, file: !1100, line: 118, type: !16)
!1107 = !DILocation(line: 118, column: 17, scope: !1099, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 266, column: 15, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 266, column: 15)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 265, column: 9)
!1111 = distinct !DILexicalBlock(scope: !93, file: !3, line: 264, column: 11)
!1112 = !DILocation(line: 118, column: 36, scope: !1099, inlinedAt: !1108)
!1113 = !DILocation(line: 118, column: 47, scope: !1099, inlinedAt: !1108)
!1114 = !DILocation(line: 120, column: 10, scope: !1099, inlinedAt: !1108)
!1115 = !DILocation(line: 266, column: 59, scope: !1109)
!1116 = !DILocation(line: 0, scope: !1110)
!1117 = !DILocation(line: 266, column: 15, scope: !1110)
!1118 = !DILocation(line: 268, column: 15, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 267, column: 13)
!1120 = !DILocation(line: 269, column: 15, scope: !1119)
!1121 = !DILocation(line: 275, column: 27, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 275, column: 15)
!1123 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 274, column: 9)
!1124 = !DILocation(line: 275, column: 15, scope: !1123)
!1125 = !DILocation(line: 245, column: 15, scope: !12)
!1126 = !DILocation(line: 278, column: 26, scope: !1123)
!1127 = !DILocation(line: 278, column: 47, scope: !1123)
!1128 = !DILocation(line: 278, column: 23, scope: !1123)
!1129 = !DILocation(line: 0, scope: !1123)
!1130 = !DILocalVariable(name: "line", arg: 1, scope: !1131, file: !3, line: 143, type: !79)
!1131 = distinct !DISubprogram(name: "parse_line", scope: !3, file: !3, line: 143, type: !1132, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1134)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !79, !898, !898}
!1134 = !{!1130, !1135, !1136, !1137, !1138, !1139}
!1135 = !DILocalVariable(name: "keyword", arg: 2, scope: !1131, file: !3, line: 143, type: !898)
!1136 = !DILocalVariable(name: "arg", arg: 3, scope: !1131, file: !3, line: 143, type: !898)
!1137 = !DILocalVariable(name: "p", scope: !1131, file: !3, line: 145, type: !79)
!1138 = !DILocalVariable(name: "keyword_start", scope: !1131, file: !3, line: 146, type: !79)
!1139 = !DILocalVariable(name: "arg_start", scope: !1131, file: !3, line: 147, type: !79)
!1140 = !DILocation(line: 143, column: 25, scope: !1131, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 281, column: 7, scope: !93)
!1142 = !DILocation(line: 145, column: 15, scope: !1131, inlinedAt: !1141)
!1143 = !DILocation(line: 152, column: 18, scope: !1144, inlinedAt: !1141)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 152, column: 3)
!1145 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 152, column: 3)
!1146 = !DILocation(line: 152, column: 8, scope: !1145, inlinedAt: !1141)
!1147 = !DILocation(line: 0, scope: !1144, inlinedAt: !1141)
!1148 = !{!1149, !1149, i64 0}
!1149 = !{!"short", !853, i64 0}
!1150 = !DILocation(line: 152, column: 3, scope: !1145, inlinedAt: !1141)
!1151 = !DILocation(line: 152, column: 43, scope: !1144, inlinedAt: !1141)
!1152 = distinct !{!1152, !1153, !1154}
!1153 = !DILocation(line: 152, column: 3, scope: !1145)
!1154 = !DILocation(line: 153, column: 5, scope: !1145)
!1155 = !DILocation(line: 156, column: 18, scope: !1156, inlinedAt: !1141)
!1156 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 156, column: 7)
!1157 = distinct !{!1157, !1093, !1158}
!1158 = !DILocation(line: 368, column: 5, scope: !12)
!1159 = !DILocation(line: 163, column: 7, scope: !1160, inlinedAt: !1141)
!1160 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 162, column: 5)
!1161 = !DILocation(line: 161, column: 11, scope: !1131, inlinedAt: !1141)
!1162 = !DILocation(line: 161, column: 41, scope: !1131, inlinedAt: !1141)
!1163 = !DILocation(line: 161, column: 35, scope: !1131, inlinedAt: !1141)
!1164 = distinct !{!1164, !1165, !1166}
!1165 = !DILocation(line: 161, column: 3, scope: !1131)
!1166 = !DILocation(line: 164, column: 5, scope: !1131)
!1167 = !DILocation(line: 166, column: 41, scope: !1131, inlinedAt: !1141)
!1168 = !DILocation(line: 166, column: 14, scope: !1131, inlinedAt: !1141)
!1169 = !DILocation(line: 167, column: 7, scope: !1170, inlinedAt: !1141)
!1170 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 167, column: 7)
!1171 = !DILocation(line: 167, column: 11, scope: !1170, inlinedAt: !1141)
!1172 = !DILocation(line: 167, column: 7, scope: !1131, inlinedAt: !1141)
!1173 = !DILocation(line: 172, column: 7, scope: !1174, inlinedAt: !1141)
!1174 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 171, column: 5)
!1175 = !DILocation(line: 0, scope: !1174, inlinedAt: !1141)
!1176 = !DILocation(line: 174, column: 10, scope: !1131, inlinedAt: !1141)
!1177 = !DILocation(line: 173, column: 5, scope: !1174, inlinedAt: !1141)
!1178 = distinct !{!1178, !1179, !1180}
!1179 = !DILocation(line: 170, column: 3, scope: !1131)
!1180 = !DILocation(line: 174, column: 33, scope: !1131)
!1181 = !DILocation(line: 176, column: 18, scope: !1182, inlinedAt: !1141)
!1182 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 176, column: 7)
!1183 = !DILocation(line: 181, column: 10, scope: !1131, inlinedAt: !1141)
!1184 = !DILocation(line: 0, scope: !1131, inlinedAt: !1141)
!1185 = !DILocation(line: 181, column: 3, scope: !1131, inlinedAt: !1141)
!1186 = !DILocation(line: 0, scope: !1187, inlinedAt: !1141)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 184, column: 3)
!1188 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 184, column: 3)
!1189 = !DILocation(line: 182, column: 5, scope: !1131, inlinedAt: !1141)
!1190 = distinct !{!1190, !1191, !1192}
!1191 = !DILocation(line: 181, column: 3, scope: !1131)
!1192 = !DILocation(line: 182, column: 7, scope: !1131)
!1193 = !DILocation(line: 184, column: 13, scope: !1187, inlinedAt: !1141)
!1194 = !DILocation(line: 184, column: 3, scope: !1188, inlinedAt: !1141)
!1195 = distinct !{!1195, !1196, !1197}
!1196 = !DILocation(line: 184, column: 3, scope: !1188)
!1197 = !DILocation(line: 185, column: 5, scope: !1188)
!1198 = !DILocation(line: 188, column: 33, scope: !1131, inlinedAt: !1141)
!1199 = !DILocation(line: 188, column: 10, scope: !1131, inlinedAt: !1141)
!1200 = !DILocation(line: 189, column: 1, scope: !1131, inlinedAt: !1141)
!1201 = !DILocation(line: 259, column: 13, scope: !93)
!1202 = !DILocation(line: 283, column: 17, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !93, file: !3, line: 283, column: 11)
!1204 = !DILocation(line: 283, column: 11, scope: !93)
!1205 = !DILocation(line: 259, column: 21, scope: !93)
!1206 = !DILocation(line: 286, column: 15, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !93, file: !3, line: 286, column: 11)
!1208 = !DILocation(line: 286, column: 11, scope: !93)
!1209 = !DILocation(line: 288, column: 24, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 287, column: 9)
!1211 = !DILocation(line: 289, column: 18, scope: !1210)
!1212 = !DILocation(line: 288, column: 11, scope: !1210)
!1213 = !DILocation(line: 291, column: 11, scope: !1210)
!1214 = !DILocation(line: 292, column: 11, scope: !1210)
!1215 = !DILocation(line: 260, column: 12, scope: !93)
!1216 = !DILocation(line: 296, column: 11, scope: !103)
!1217 = !DILocation(line: 296, column: 40, scope: !103)
!1218 = !DILocation(line: 296, column: 11, scope: !93)
!1219 = !DILocation(line: 298, column: 15, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 298, column: 15)
!1221 = distinct !DILexicalBlock(scope: !103, file: !3, line: 297, column: 9)
!1222 = !DILocation(line: 298, column: 38, scope: !1220)
!1223 = !DILocation(line: 298, column: 15, scope: !1221)
!1224 = !DILocation(line: 300, column: 26, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 300, column: 20)
!1226 = !DILocation(line: 300, column: 20, scope: !1220)
!1227 = !DILocation(line: 305, column: 21, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !102, file: !3, line: 305, column: 15)
!1229 = !DILocation(line: 305, column: 15, scope: !102)
!1230 = !DILocation(line: 308, column: 21, scope: !101)
!1231 = !DILocation(line: 308, column: 15, scope: !102)
!1232 = !DILocation(line: 310, column: 19, scope: !99)
!1233 = !DILocation(line: 310, column: 19, scope: !100)
!1234 = !DILocation(line: 312, column: 19, scope: !97)
!1235 = !DILocation(line: 312, column: 19, scope: !155)
!1236 = !DILocation(line: 312, column: 19, scope: !156)
!1237 = !DILocation(line: 313, column: 19, scope: !98)
!1238 = !DILocation(line: 314, column: 19, scope: !160)
!1239 = !DILocation(line: 314, column: 19, scope: !162)
!1240 = !DILocation(line: 314, column: 19, scope: !163)
!1241 = !DILocation(line: 315, column: 19, scope: !98)
!1242 = !DILocation(line: 316, column: 19, scope: !165)
!1243 = !DILocation(line: 316, column: 19, scope: !167)
!1244 = !DILocation(line: 316, column: 19, scope: !168)
!1245 = !DILocation(line: 317, column: 17, scope: !98)
!1246 = !DILocation(line: 320, column: 19, scope: !171)
!1247 = !DILocation(line: 321, column: 19, scope: !170)
!1248 = !DILocation(line: 321, column: 19, scope: !174)
!1249 = !DILocation(line: 321, column: 19, scope: !175)
!1250 = !DILocation(line: 322, column: 19, scope: !171)
!1251 = !DILocation(line: 323, column: 19, scope: !177)
!1252 = !DILocation(line: 323, column: 19, scope: !179)
!1253 = !DILocation(line: 323, column: 19, scope: !180)
!1254 = !DILocation(line: 324, column: 17, scope: !171)
!1255 = !DILocation(line: 325, column: 24, scope: !183)
!1256 = !DILocation(line: 325, column: 56, scope: !183)
!1257 = !DILocation(line: 326, column: 24, scope: !183)
!1258 = !DILocation(line: 326, column: 27, scope: !183)
!1259 = !DILocation(line: 326, column: 57, scope: !183)
!1260 = !DILocation(line: 327, column: 24, scope: !183)
!1261 = !DILocation(line: 327, column: 27, scope: !183)
!1262 = !DILocation(line: 327, column: 60, scope: !183)
!1263 = !DILocation(line: 325, column: 24, scope: !172)
!1264 = !DILocation(line: 333, column: 23, scope: !182)
!1265 = !DILocation(line: 335, column: 19, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !182, file: !3, line: 335, column: 19)
!1267 = distinct !{!1267, !1265, !1268}
!1268 = !DILocation(line: 337, column: 23, scope: !1266)
!1269 = !DILocation(line: 335, column: 31, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 335, column: 19)
!1271 = !DILocation(line: 336, column: 25, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 336, column: 25)
!1273 = !DILocation(line: 336, column: 62, scope: !1272)
!1274 = !DILocation(line: 335, column: 55, scope: !1270)
!1275 = !DILocation(line: 336, column: 25, scope: !1270)
!1276 = !DILocation(line: 341, column: 23, scope: !185)
!1277 = !DILocation(line: 341, column: 23, scope: !190)
!1278 = !DILocation(line: 341, column: 23, scope: !191)
!1279 = !DILocation(line: 341, column: 23, scope: !193)
!1280 = !DILocation(line: 341, column: 23, scope: !195)
!1281 = !DILocation(line: 341, column: 23, scope: !196)
!1282 = !DILocation(line: 342, column: 23, scope: !198)
!1283 = !DILocation(line: 342, column: 23, scope: !200)
!1284 = !DILocation(line: 342, column: 23, scope: !201)
!1285 = !DILocation(line: 343, column: 23, scope: !187)
!1286 = !DILocation(line: 344, column: 23, scope: !203)
!1287 = !DILocation(line: 344, column: 23, scope: !205)
!1288 = !DILocation(line: 344, column: 23, scope: !206)
!1289 = !DILocation(line: 345, column: 21, scope: !187)
!1290 = !DILocation(line: 358, column: 49, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !93, file: !3, line: 358, column: 11)
!1292 = !DILocation(line: 358, column: 24, scope: !1291)
!1293 = !DILocation(line: 360, column: 24, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 359, column: 9)
!1295 = !DILocation(line: 361, column: 19, scope: !1294)
!1296 = !DILocation(line: 361, column: 30, scope: !1294)
!1297 = !DILocation(line: 361, column: 50, scope: !1294)
!1298 = !DILocation(line: 360, column: 11, scope: !1294)
!1299 = !DILocation(line: 364, column: 9, scope: !1294)
!1300 = !DILocation(line: 366, column: 7, scope: !93)
!1301 = !DILocation(line: 367, column: 7, scope: !93)
!1302 = !DILocation(line: 370, column: 10, scope: !12)
!1303 = !DILocation(line: 371, column: 1, scope: !12)
!1304 = !DILocation(line: 370, column: 3, scope: !12)
!1305 = distinct !DISubprogram(name: "append_quoted", scope: !3, file: !3, line: 195, type: !826, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1306)
!1306 = !{!1307, !1308, !1309, !1313, !1316, !1318, !1321, !1323, !1326, !1329, !1332, !1334}
!1307 = !DILocalVariable(name: "str", arg: 1, scope: !1305, file: !3, line: 195, type: !79)
!1308 = !DILocalVariable(name: "need_backslash", scope: !1305, file: !3, line: 197, type: !15)
!1309 = !DILocalVariable(name: "__o", scope: !1310, file: !3, line: 204, type: !104)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 204, column: 11)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 202, column: 9)
!1312 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 200, column: 5)
!1313 = !DILocalVariable(name: "__o1", scope: !1314, file: !3, line: 204, type: !157)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 204, column: 11)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 204, column: 11)
!1316 = !DILocalVariable(name: "__o", scope: !1317, file: !3, line: 205, type: !104)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 205, column: 11)
!1318 = !DILocalVariable(name: "__o1", scope: !1319, file: !3, line: 205, type: !157)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 205, column: 11)
!1320 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 205, column: 11)
!1321 = !DILocalVariable(name: "__o", scope: !1322, file: !3, line: 206, type: !104)
!1322 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 206, column: 11)
!1323 = !DILocalVariable(name: "__o1", scope: !1324, file: !3, line: 206, type: !157)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 206, column: 11)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 206, column: 11)
!1326 = !DILocalVariable(name: "__o", scope: !1327, file: !3, line: 218, type: !104)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 218, column: 13)
!1328 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 217, column: 15)
!1329 = !DILocalVariable(name: "__o1", scope: !1330, file: !3, line: 218, type: !157)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 218, column: 13)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 218, column: 13)
!1332 = !DILocalVariable(name: "__o", scope: !1333, file: !3, line: 226, type: !104)
!1333 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 226, column: 7)
!1334 = !DILocalVariable(name: "__o1", scope: !1335, file: !3, line: 226, type: !157)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 226, column: 7)
!1336 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 226, column: 7)
!1337 = !DILocation(line: 195, column: 28, scope: !1305)
!1338 = !DILocation(line: 197, column: 8, scope: !1305)
!1339 = !DILocation(line: 199, column: 10, scope: !1305)
!1340 = !DILocation(line: 199, column: 15, scope: !1305)
!1341 = !DILocation(line: 199, column: 3, scope: !1305)
!1342 = !DILocation(line: 201, column: 7, scope: !1312)
!1343 = !DILocation(line: 204, column: 11, scope: !1310)
!1344 = !DILocation(line: 204, column: 11, scope: !1314)
!1345 = !DILocation(line: 204, column: 11, scope: !1315)
!1346 = !DILocation(line: 205, column: 11, scope: !1317)
!1347 = !DILocation(line: 205, column: 11, scope: !1319)
!1348 = !DILocation(line: 205, column: 11, scope: !1320)
!1349 = !DILocation(line: 206, column: 11, scope: !1322)
!1350 = !DILocation(line: 206, column: 11, scope: !1324)
!1351 = !DILocation(line: 206, column: 11, scope: !1325)
!1352 = !DILocation(line: 208, column: 11, scope: !1311)
!1353 = !DILocation(line: 212, column: 29, scope: !1311)
!1354 = !DILocation(line: 212, column: 26, scope: !1311)
!1355 = !DILocation(line: 213, column: 11, scope: !1311)
!1356 = !DILocation(line: 217, column: 15, scope: !1328)
!1357 = !DILocation(line: 217, column: 15, scope: !1311)
!1358 = !DILocation(line: 218, column: 13, scope: !1327)
!1359 = !DILocation(line: 218, column: 13, scope: !1330)
!1360 = !DILocation(line: 218, column: 13, scope: !1331)
!1361 = !DILocation(line: 218, column: 13, scope: !1328)
!1362 = !DILocation(line: 0, scope: !1311)
!1363 = !DILocation(line: 226, column: 7, scope: !1333)
!1364 = !DILocation(line: 226, column: 7, scope: !1335)
!1365 = !DILocation(line: 226, column: 7, scope: !1336)
!1366 = !DILocation(line: 227, column: 7, scope: !1312)
!1367 = distinct !{!1367, !1341, !1368}
!1368 = !DILocation(line: 228, column: 5, scope: !1305)
!1369 = !DILocation(line: 229, column: 1, scope: !1305)
!1370 = distinct !DISubprogram(name: "c_strcasecmp", scope: !1371, file: !1371, line: 27, type: !1372, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !368, retainedNodes: !1374)
!1371 = !DIFile(filename: "lib/c-strcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!23, !79, !79}
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1380}
!1375 = !DILocalVariable(name: "s1", arg: 1, scope: !1370, file: !1371, line: 27, type: !79)
!1376 = !DILocalVariable(name: "s2", arg: 2, scope: !1370, file: !1371, line: 27, type: !79)
!1377 = !DILocalVariable(name: "p1", scope: !1370, file: !1371, line: 29, type: !371)
!1378 = !DILocalVariable(name: "p2", scope: !1370, file: !1371, line: 30, type: !371)
!1379 = !DILocalVariable(name: "c1", scope: !1370, file: !1371, line: 31, type: !373)
!1380 = !DILocalVariable(name: "c2", scope: !1370, file: !1371, line: 31, type: !373)
!1381 = !DILocation(line: 27, column: 27, scope: !1370)
!1382 = !DILocation(line: 27, column: 43, scope: !1370)
!1383 = !DILocation(line: 29, column: 33, scope: !1370)
!1384 = !DILocation(line: 30, column: 33, scope: !1370)
!1385 = !DILocation(line: 33, column: 10, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1370, file: !1371, line: 33, column: 7)
!1387 = !DILocation(line: 33, column: 7, scope: !1370)
!1388 = !DILocation(line: 0, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1370, file: !1371, line: 37, column: 5)
!1390 = !DILocation(line: 38, column: 23, scope: !1389)
!1391 = !DILocalVariable(name: "c", arg: 1, scope: !1392, file: !1393, line: 337, type: !23)
!1392 = distinct !DISubprogram(name: "c_tolower", scope: !1393, file: !1393, line: 337, type: !1394, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !368, retainedNodes: !1396)
!1393 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!23, !23}
!1396 = !{!1391}
!1397 = !DILocation(line: 337, column: 16, scope: !1392, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 38, column: 12, scope: !1389)
!1399 = !DILocation(line: 339, column: 3, scope: !1392, inlinedAt: !1398)
!1400 = !DILocation(line: 342, column: 22, scope: !1401, inlinedAt: !1398)
!1401 = distinct !DILexicalBlock(scope: !1392, file: !1393, line: 340, column: 5)
!1402 = !DILocation(line: 39, column: 23, scope: !1389)
!1403 = !DILocation(line: 337, column: 16, scope: !1392, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 39, column: 12, scope: !1389)
!1405 = !DILocation(line: 339, column: 3, scope: !1392, inlinedAt: !1404)
!1406 = !DILocation(line: 342, column: 22, scope: !1401, inlinedAt: !1404)
!1407 = !DILocation(line: 41, column: 11, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1389, file: !1371, line: 41, column: 11)
!1409 = !DILocation(line: 41, column: 14, scope: !1408)
!1410 = !DILocation(line: 41, column: 11, scope: !1389)
!1411 = !DILocation(line: 50, column: 17, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1370, file: !1371, line: 49, column: 7)
!1413 = !DILocation(line: 44, column: 7, scope: !1389)
!1414 = !DILocation(line: 45, column: 7, scope: !1389)
!1415 = !DILocation(line: 47, column: 16, scope: !1370)
!1416 = !DILocation(line: 47, column: 13, scope: !1370)
!1417 = !DILocation(line: 46, column: 5, scope: !1389)
!1418 = distinct !{!1418, !1419, !1420}
!1419 = !DILocation(line: 36, column: 3, scope: !1370)
!1420 = !DILocation(line: 47, column: 18, scope: !1370)
!1421 = !DILocation(line: 50, column: 15, scope: !1412)
!1422 = !DILocation(line: 50, column: 5, scope: !1412)
!1423 = !DILocation(line: 0, scope: !1412)
!1424 = !DILocation(line: 56, column: 1, scope: !1370)
!1425 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !284, file: !284, line: 51, type: !826, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !279, retainedNodes: !1426)
!1426 = !{!1427}
!1427 = !DILocalVariable(name: "file", arg: 1, scope: !1425, file: !284, line: 51, type: !79)
!1428 = !DILocation(line: 51, column: 41, scope: !1425)
!1429 = !DILocation(line: 53, column: 13, scope: !1425)
!1430 = !DILocation(line: 54, column: 1, scope: !1425)
!1431 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !284, file: !284, line: 88, type: !1432, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !279, retainedNodes: !1434)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !15}
!1434 = !{!1435}
!1435 = !DILocalVariable(name: "ignore", arg: 1, scope: !1431, file: !284, line: 88, type: !15)
!1436 = !DILocation(line: 88, column: 37, scope: !1431)
!1437 = !DILocation(line: 90, column: 16, scope: !1431)
!1438 = !{!1439, !1439, i64 0}
!1439 = !{!"_Bool", !853, i64 0}
!1440 = !DILocation(line: 91, column: 1, scope: !1431)
!1441 = distinct !DISubprogram(name: "close_stdout", scope: !284, file: !284, line: 117, type: !366, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !279, retainedNodes: !1442)
!1442 = !{!1443}
!1443 = !DILocalVariable(name: "write_error", scope: !1444, file: !284, line: 122, type: !79)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !284, line: 121, column: 5)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !284, line: 119, column: 7)
!1446 = !DILocation(line: 119, column: 21, scope: !1445)
!1447 = !DILocation(line: 119, column: 7, scope: !1445)
!1448 = !DILocation(line: 119, column: 29, scope: !1445)
!1449 = !DILocation(line: 120, column: 7, scope: !1445)
!1450 = !DILocation(line: 120, column: 12, scope: !1445)
!1451 = !{i8 0, i8 2}
!1452 = !DILocation(line: 120, column: 25, scope: !1445)
!1453 = !DILocation(line: 120, column: 28, scope: !1445)
!1454 = !DILocation(line: 120, column: 34, scope: !1445)
!1455 = !DILocation(line: 119, column: 7, scope: !1441)
!1456 = !DILocation(line: 122, column: 33, scope: !1444)
!1457 = !DILocation(line: 122, column: 19, scope: !1444)
!1458 = !DILocation(line: 123, column: 11, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1444, file: !284, line: 123, column: 11)
!1460 = !DILocation(line: 0, scope: !1459)
!1461 = !DILocation(line: 123, column: 11, scope: !1444)
!1462 = !DILocation(line: 124, column: 36, scope: !1459)
!1463 = !DILocation(line: 124, column: 9, scope: !1459)
!1464 = !DILocation(line: 127, column: 9, scope: !1459)
!1465 = !DILocation(line: 129, column: 14, scope: !1444)
!1466 = !DILocation(line: 129, column: 7, scope: !1444)
!1467 = !DILocation(line: 134, column: 42, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1441, file: !284, line: 134, column: 7)
!1469 = !DILocation(line: 134, column: 28, scope: !1468)
!1470 = !DILocation(line: 134, column: 50, scope: !1468)
!1471 = !DILocation(line: 134, column: 7, scope: !1441)
!1472 = !DILocation(line: 135, column: 12, scope: !1468)
!1473 = !DILocation(line: 135, column: 5, scope: !1468)
!1474 = !DILocation(line: 136, column: 1, scope: !1441)
!1475 = distinct !DISubprogram(name: "last_component", scope: !1476, file: !1476, line: 30, type: !1477, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !374, retainedNodes: !1479)
!1476 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!25, !79}
!1479 = !{!1480, !1481, !1482, !1483}
!1480 = !DILocalVariable(name: "name", arg: 1, scope: !1475, file: !1476, line: 30, type: !79)
!1481 = !DILocalVariable(name: "base", scope: !1475, file: !1476, line: 32, type: !79)
!1482 = !DILocalVariable(name: "p", scope: !1475, file: !1476, line: 33, type: !79)
!1483 = !DILocalVariable(name: "saw_slash", scope: !1475, file: !1476, line: 34, type: !15)
!1484 = !DILocation(line: 30, column: 29, scope: !1475)
!1485 = !DILocation(line: 32, column: 15, scope: !1475)
!1486 = !DILocation(line: 34, column: 8, scope: !1475)
!1487 = !DILocation(line: 36, column: 3, scope: !1475)
!1488 = !DILocation(line: 0, scope: !1475)
!1489 = !DILocation(line: 36, column: 10, scope: !1475)
!1490 = !DILocation(line: 37, column: 9, scope: !1475)
!1491 = distinct !{!1491, !1487, !1490}
!1492 = !DILocation(line: 39, column: 18, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !1476, line: 39, column: 3)
!1494 = distinct !DILexicalBlock(scope: !1475, file: !1476, line: 39, column: 3)
!1495 = !DILocation(line: 0, scope: !1493)
!1496 = !DILocation(line: 0, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !1476, line: 41, column: 11)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !1476, line: 40, column: 5)
!1499 = !DILocation(line: 33, column: 15, scope: !1475)
!1500 = !DILocation(line: 39, column: 3, scope: !1494)
!1501 = !DILocation(line: 43, column: 16, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !1476, line: 43, column: 16)
!1503 = !DILocation(line: 43, column: 16, scope: !1497)
!1504 = !DILocation(line: 39, column: 23, scope: !1493)
!1505 = !DILocation(line: 39, column: 3, scope: !1493)
!1506 = distinct !{!1506, !1500, !1507}
!1507 = !DILocation(line: 48, column: 5, scope: !1494)
!1508 = !DILocation(line: 50, column: 3, scope: !1475)
!1509 = distinct !DISubprogram(name: "base_len", scope: !1476, file: !1476, line: 58, type: !1510, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !374, retainedNodes: !1512)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!71, !79}
!1512 = !{!1513, !1514, !1515}
!1513 = !DILocalVariable(name: "name", arg: 1, scope: !1509, file: !1476, line: 58, type: !79)
!1514 = !DILocalVariable(name: "len", scope: !1509, file: !1476, line: 60, type: !71)
!1515 = !DILocalVariable(name: "prefix_len", scope: !1509, file: !1476, line: 61, type: !71)
!1516 = !DILocation(line: 58, column: 23, scope: !1509)
!1517 = !DILocation(line: 61, column: 10, scope: !1509)
!1518 = !DILocation(line: 63, column: 14, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1509, file: !1476, line: 63, column: 3)
!1520 = !DILocation(line: 60, column: 10, scope: !1509)
!1521 = !DILocation(line: 63, column: 8, scope: !1519)
!1522 = !DILocation(line: 0, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !1476, line: 63, column: 3)
!1524 = !DILocation(line: 63, column: 32, scope: !1523)
!1525 = !DILocation(line: 63, column: 38, scope: !1523)
!1526 = !DILocation(line: 63, column: 41, scope: !1523)
!1527 = !DILocation(line: 63, column: 3, scope: !1519)
!1528 = distinct !{!1528, !1527, !1529}
!1529 = !DILocation(line: 64, column: 5, scope: !1519)
!1530 = !DILocation(line: 74, column: 3, scope: !1509)
!1531 = distinct !DISubprogram(name: "freopen_safer", scope: !1532, file: !1532, line: 62, type: !1533, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !377, retainedNodes: !1569)
!1532 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!1535, !79, !79, !1535}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1537, file: !20, line: 51, baseType: !23, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1537, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1537, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1537, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1537, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1537, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1537, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1537, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1537, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1537, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1537, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1537, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1537, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1537, file: !20, line: 70, baseType: !1553, size: 64, offset: 832)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1537, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1537, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1537, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1537, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1537, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1537, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1537, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1537, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1537, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1537, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1537, file: !20, line: 93, baseType: !1553, size: 64, offset: 1344)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1537, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1537, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1537, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1537, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1570 = !DILocalVariable(name: "name", arg: 1, scope: !1531, file: !1532, line: 62, type: !79)
!1571 = !DILocalVariable(name: "mode", arg: 2, scope: !1531, file: !1532, line: 62, type: !79)
!1572 = !DILocalVariable(name: "f", arg: 3, scope: !1531, file: !1532, line: 62, type: !1535)
!1573 = !DILocalVariable(name: "protect_in", scope: !1531, file: !1532, line: 70, type: !15)
!1574 = !DILocalVariable(name: "protect_out", scope: !1531, file: !1532, line: 71, type: !15)
!1575 = !DILocalVariable(name: "protect_err", scope: !1531, file: !1532, line: 72, type: !15)
!1576 = !DILocalVariable(name: "saved_errno", scope: !1531, file: !1532, line: 73, type: !23)
!1577 = !DILocation(line: 62, column: 28, scope: !1531)
!1578 = !DILocation(line: 62, column: 46, scope: !1531)
!1579 = !DILocation(line: 62, column: 58, scope: !1531)
!1580 = !DILocation(line: 70, column: 8, scope: !1531)
!1581 = !DILocation(line: 71, column: 8, scope: !1531)
!1582 = !DILocation(line: 72, column: 8, scope: !1531)
!1583 = !DILocation(line: 75, column: 11, scope: !1531)
!1584 = !DILocation(line: 75, column: 3, scope: !1531)
!1585 = !DILocation(line: 78, column: 11, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !1532, line: 78, column: 11)
!1587 = distinct !DILexicalBlock(scope: !1531, file: !1532, line: 76, column: 5)
!1588 = !DILocation(line: 78, column: 47, scope: !1586)
!1589 = !DILocation(line: 78, column: 11, scope: !1587)
!1590 = !DILocation(line: 0, scope: !1531)
!1591 = !DILocation(line: 82, column: 11, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1587, file: !1532, line: 82, column: 11)
!1593 = !DILocation(line: 82, column: 47, scope: !1592)
!1594 = !DILocation(line: 82, column: 11, scope: !1587)
!1595 = !DILocation(line: 86, column: 11, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1587, file: !1532, line: 86, column: 11)
!1597 = !DILocation(line: 86, column: 45, scope: !1596)
!1598 = !DILocation(line: 93, column: 18, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1531, file: !1532, line: 93, column: 7)
!1600 = !DILocalVariable(name: "fd", arg: 1, scope: !1601, file: !1532, line: 40, type: !23)
!1601 = distinct !DISubprogram(name: "protect_fd", scope: !1532, file: !1532, line: 40, type: !1602, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !377, retainedNodes: !1604)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!15, !23}
!1604 = !{!1600, !1605}
!1605 = !DILocalVariable(name: "value", scope: !1601, file: !1532, line: 42, type: !23)
!1606 = !DILocation(line: 40, column: 17, scope: !1601, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 93, column: 22, scope: !1599)
!1608 = !DILocation(line: 42, column: 15, scope: !1601, inlinedAt: !1607)
!1609 = !DILocation(line: 42, column: 7, scope: !1601, inlinedAt: !1607)
!1610 = !DILocation(line: 43, column: 13, scope: !1611, inlinedAt: !1607)
!1611 = distinct !DILexicalBlock(scope: !1601, file: !1532, line: 43, column: 7)
!1612 = !DILocation(line: 43, column: 7, scope: !1601, inlinedAt: !1607)
!1613 = !DILocation(line: 45, column: 13, scope: !1614, inlinedAt: !1607)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !1532, line: 45, column: 11)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !1532, line: 44, column: 5)
!1616 = !DILocation(line: 45, column: 11, scope: !1615, inlinedAt: !1607)
!1617 = !DILocation(line: 47, column: 11, scope: !1618, inlinedAt: !1607)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !1532, line: 46, column: 9)
!1619 = !DILocation(line: 48, column: 11, scope: !1618, inlinedAt: !1607)
!1620 = !DILocation(line: 48, column: 17, scope: !1618, inlinedAt: !1607)
!1621 = !DILocation(line: 49, column: 9, scope: !1618, inlinedAt: !1607)
!1622 = !DILocation(line: 95, column: 12, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1599, file: !1532, line: 95, column: 12)
!1624 = !DILocation(line: 95, column: 24, scope: !1623)
!1625 = !DILocation(line: 40, column: 17, scope: !1601, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 95, column: 28, scope: !1623)
!1627 = !DILocation(line: 42, column: 15, scope: !1601, inlinedAt: !1626)
!1628 = !DILocation(line: 42, column: 7, scope: !1601, inlinedAt: !1626)
!1629 = !DILocation(line: 43, column: 13, scope: !1611, inlinedAt: !1626)
!1630 = !DILocation(line: 43, column: 7, scope: !1601, inlinedAt: !1626)
!1631 = !DILocation(line: 45, column: 13, scope: !1614, inlinedAt: !1626)
!1632 = !DILocation(line: 45, column: 11, scope: !1615, inlinedAt: !1626)
!1633 = !DILocation(line: 47, column: 11, scope: !1618, inlinedAt: !1626)
!1634 = !DILocation(line: 48, column: 11, scope: !1618, inlinedAt: !1626)
!1635 = !DILocation(line: 48, column: 17, scope: !1618, inlinedAt: !1626)
!1636 = !DILocation(line: 49, column: 9, scope: !1618, inlinedAt: !1626)
!1637 = !DILocation(line: 97, column: 12, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1623, file: !1532, line: 97, column: 12)
!1639 = !DILocation(line: 97, column: 24, scope: !1638)
!1640 = !DILocation(line: 40, column: 17, scope: !1601, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 97, column: 28, scope: !1638)
!1642 = !DILocation(line: 42, column: 15, scope: !1601, inlinedAt: !1641)
!1643 = !DILocation(line: 42, column: 7, scope: !1601, inlinedAt: !1641)
!1644 = !DILocation(line: 43, column: 13, scope: !1611, inlinedAt: !1641)
!1645 = !DILocation(line: 43, column: 7, scope: !1601, inlinedAt: !1641)
!1646 = !DILocation(line: 45, column: 13, scope: !1614, inlinedAt: !1641)
!1647 = !DILocation(line: 45, column: 11, scope: !1615, inlinedAt: !1641)
!1648 = !DILocation(line: 47, column: 11, scope: !1618, inlinedAt: !1641)
!1649 = !DILocation(line: 48, column: 11, scope: !1618, inlinedAt: !1641)
!1650 = !DILocation(line: 48, column: 17, scope: !1618, inlinedAt: !1641)
!1651 = !DILocation(line: 49, column: 9, scope: !1618, inlinedAt: !1641)
!1652 = !DILocation(line: 100, column: 9, scope: !1638)
!1653 = !DILocation(line: 0, scope: !1599)
!1654 = !DILocation(line: 101, column: 17, scope: !1531)
!1655 = !DILocation(line: 73, column: 7, scope: !1531)
!1656 = !DILocation(line: 102, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1531, file: !1532, line: 102, column: 7)
!1658 = !DILocation(line: 102, column: 7, scope: !1531)
!1659 = !DILocation(line: 103, column: 5, scope: !1657)
!1660 = !DILocation(line: 104, column: 7, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1531, file: !1532, line: 104, column: 7)
!1662 = !DILocation(line: 104, column: 7, scope: !1531)
!1663 = !DILocation(line: 105, column: 5, scope: !1661)
!1664 = !DILocation(line: 106, column: 7, scope: !1531)
!1665 = !DILocation(line: 107, column: 5, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1531, file: !1532, line: 106, column: 7)
!1667 = !DILocation(line: 108, column: 8, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1531, file: !1532, line: 108, column: 7)
!1669 = !DILocation(line: 108, column: 7, scope: !1531)
!1670 = !DILocation(line: 109, column: 11, scope: !1668)
!1671 = !DILocation(line: 109, column: 5, scope: !1668)
!1672 = !DILocation(line: 110, column: 3, scope: !1531)
!1673 = distinct !DISubprogram(name: "set_program_name", scope: !298, file: !298, line: 39, type: !826, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !1674)
!1674 = !{!1675, !1676, !1677}
!1675 = !DILocalVariable(name: "argv0", arg: 1, scope: !1673, file: !298, line: 39, type: !79)
!1676 = !DILocalVariable(name: "slash", scope: !1673, file: !298, line: 46, type: !79)
!1677 = !DILocalVariable(name: "base", scope: !1673, file: !298, line: 47, type: !79)
!1678 = !DILocation(line: 39, column: 31, scope: !1673)
!1679 = !DILocation(line: 51, column: 13, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1673, file: !298, line: 51, column: 7)
!1681 = !DILocation(line: 51, column: 7, scope: !1673)
!1682 = !DILocation(line: 55, column: 14, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1680, file: !298, line: 52, column: 5)
!1684 = !DILocation(line: 54, column: 7, scope: !1683)
!1685 = !DILocation(line: 56, column: 7, scope: !1683)
!1686 = !DILocation(line: 59, column: 11, scope: !1673)
!1687 = !DILocation(line: 46, column: 15, scope: !1673)
!1688 = !DILocation(line: 60, column: 17, scope: !1673)
!1689 = !DILocation(line: 60, column: 33, scope: !1673)
!1690 = !DILocation(line: 60, column: 11, scope: !1673)
!1691 = !DILocation(line: 47, column: 15, scope: !1673)
!1692 = !DILocation(line: 61, column: 12, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1673, file: !298, line: 61, column: 7)
!1694 = !DILocation(line: 61, column: 20, scope: !1693)
!1695 = !DILocation(line: 61, column: 25, scope: !1693)
!1696 = !DILocation(line: 61, column: 42, scope: !1693)
!1697 = !DILocation(line: 61, column: 28, scope: !1693)
!1698 = !DILocation(line: 61, column: 61, scope: !1693)
!1699 = !DILocation(line: 61, column: 7, scope: !1673)
!1700 = !DILocation(line: 64, column: 11, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !298, line: 64, column: 11)
!1702 = distinct !DILexicalBlock(scope: !1693, file: !298, line: 62, column: 5)
!1703 = !DILocation(line: 64, column: 36, scope: !1701)
!1704 = !DILocation(line: 64, column: 11, scope: !1702)
!1705 = !DILocation(line: 66, column: 24, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1701, file: !298, line: 65, column: 9)
!1707 = !DILocation(line: 70, column: 41, scope: !1706)
!1708 = !DILocation(line: 72, column: 9, scope: !1706)
!1709 = !DILocation(line: 84, column: 16, scope: !1673)
!1710 = !DILocation(line: 90, column: 27, scope: !1673)
!1711 = !DILocation(line: 92, column: 1, scope: !1673)
!1712 = distinct !DISubprogram(name: "clone_quoting_options", scope: !313, file: !313, line: 122, type: !1713, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !1716)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!1715, !1715}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!1716 = !{!1717, !1718, !1719}
!1717 = !DILocalVariable(name: "o", arg: 1, scope: !1712, file: !313, line: 122, type: !1715)
!1718 = !DILocalVariable(name: "e", scope: !1712, file: !313, line: 124, type: !23)
!1719 = !DILocalVariable(name: "p", scope: !1712, file: !313, line: 125, type: !1715)
!1720 = !DILocation(line: 122, column: 48, scope: !1712)
!1721 = !DILocation(line: 124, column: 11, scope: !1712)
!1722 = !DILocation(line: 124, column: 7, scope: !1712)
!1723 = !DILocation(line: 125, column: 40, scope: !1712)
!1724 = !DILocation(line: 125, column: 31, scope: !1712)
!1725 = !DILocation(line: 125, column: 27, scope: !1712)
!1726 = !DILocation(line: 127, column: 9, scope: !1712)
!1727 = !DILocation(line: 128, column: 3, scope: !1712)
!1728 = distinct !DISubprogram(name: "get_quoting_style", scope: !313, file: !313, line: 133, type: !1729, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !1733)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!212, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!1733 = !{!1734}
!1734 = !DILocalVariable(name: "o", arg: 1, scope: !1728, file: !313, line: 133, type: !1731)
!1735 = !DILocation(line: 133, column: 50, scope: !1728)
!1736 = !DILocation(line: 135, column: 11, scope: !1728)
!1737 = !DILocation(line: 135, column: 46, scope: !1728)
!1738 = !{!1739, !853, i64 0}
!1739 = !{!"quoting_options", !853, i64 0, !944, i64 4, !853, i64 8, !852, i64 40, !852, i64 48}
!1740 = !DILocation(line: 135, column: 3, scope: !1728)
!1741 = distinct !DISubprogram(name: "set_quoting_style", scope: !313, file: !313, line: 141, type: !1742, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1715, !212}
!1744 = !{!1745, !1746}
!1745 = !DILocalVariable(name: "o", arg: 1, scope: !1741, file: !313, line: 141, type: !1715)
!1746 = !DILocalVariable(name: "s", arg: 2, scope: !1741, file: !313, line: 141, type: !212)
!1747 = !DILocation(line: 141, column: 44, scope: !1741)
!1748 = !DILocation(line: 141, column: 66, scope: !1741)
!1749 = !DILocation(line: 143, column: 4, scope: !1741)
!1750 = !DILocation(line: 143, column: 39, scope: !1741)
!1751 = !DILocation(line: 143, column: 45, scope: !1741)
!1752 = !DILocation(line: 144, column: 1, scope: !1741)
!1753 = distinct !DISubprogram(name: "set_char_quoting", scope: !313, file: !313, line: 152, type: !1754, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!23, !1715, !26, !23}
!1756 = !{!1757, !1758, !1759, !1760, !1761, !1763, !1764}
!1757 = !DILocalVariable(name: "o", arg: 1, scope: !1753, file: !313, line: 152, type: !1715)
!1758 = !DILocalVariable(name: "c", arg: 2, scope: !1753, file: !313, line: 152, type: !26)
!1759 = !DILocalVariable(name: "i", arg: 3, scope: !1753, file: !313, line: 152, type: !23)
!1760 = !DILocalVariable(name: "uc", scope: !1753, file: !313, line: 154, type: !373)
!1761 = !DILocalVariable(name: "p", scope: !1753, file: !313, line: 155, type: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1763 = !DILocalVariable(name: "shift", scope: !1753, file: !313, line: 157, type: !23)
!1764 = !DILocalVariable(name: "r", scope: !1753, file: !313, line: 158, type: !23)
!1765 = !DILocation(line: 152, column: 43, scope: !1753)
!1766 = !DILocation(line: 152, column: 51, scope: !1753)
!1767 = !DILocation(line: 152, column: 58, scope: !1753)
!1768 = !DILocation(line: 154, column: 17, scope: !1753)
!1769 = !DILocation(line: 156, column: 6, scope: !1753)
!1770 = !DILocation(line: 156, column: 62, scope: !1753)
!1771 = !DILocation(line: 156, column: 57, scope: !1753)
!1772 = !DILocation(line: 155, column: 17, scope: !1753)
!1773 = !DILocation(line: 157, column: 15, scope: !1753)
!1774 = !DILocation(line: 157, column: 7, scope: !1753)
!1775 = !DILocation(line: 158, column: 12, scope: !1753)
!1776 = !DILocation(line: 158, column: 15, scope: !1753)
!1777 = !DILocation(line: 158, column: 25, scope: !1753)
!1778 = !DILocation(line: 158, column: 7, scope: !1753)
!1779 = !DILocation(line: 159, column: 13, scope: !1753)
!1780 = !DILocation(line: 159, column: 18, scope: !1753)
!1781 = !DILocation(line: 159, column: 23, scope: !1753)
!1782 = !DILocation(line: 159, column: 6, scope: !1753)
!1783 = !DILocation(line: 160, column: 3, scope: !1753)
!1784 = distinct !DISubprogram(name: "set_quoting_flags", scope: !313, file: !313, line: 168, type: !1785, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !1787)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!23, !1715, !23}
!1787 = !{!1788, !1789, !1790}
!1788 = !DILocalVariable(name: "o", arg: 1, scope: !1784, file: !313, line: 168, type: !1715)
!1789 = !DILocalVariable(name: "i", arg: 2, scope: !1784, file: !313, line: 168, type: !23)
!1790 = !DILocalVariable(name: "r", scope: !1784, file: !313, line: 170, type: !23)
!1791 = !DILocation(line: 168, column: 44, scope: !1784)
!1792 = !DILocation(line: 168, column: 51, scope: !1784)
!1793 = !DILocation(line: 171, column: 8, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1784, file: !313, line: 171, column: 7)
!1795 = !DILocation(line: 171, column: 7, scope: !1784)
!1796 = !DILocation(line: 173, column: 10, scope: !1784)
!1797 = !{!1739, !944, i64 4}
!1798 = !DILocation(line: 170, column: 7, scope: !1784)
!1799 = !DILocation(line: 174, column: 12, scope: !1784)
!1800 = !DILocation(line: 175, column: 3, scope: !1784)
!1801 = distinct !DISubprogram(name: "set_custom_quoting", scope: !313, file: !313, line: 179, type: !1802, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !1804)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !1715, !79, !79}
!1804 = !{!1805, !1806, !1807}
!1805 = !DILocalVariable(name: "o", arg: 1, scope: !1801, file: !313, line: 179, type: !1715)
!1806 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1801, file: !313, line: 180, type: !79)
!1807 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1801, file: !313, line: 180, type: !79)
!1808 = !DILocation(line: 179, column: 45, scope: !1801)
!1809 = !DILocation(line: 180, column: 33, scope: !1801)
!1810 = !DILocation(line: 180, column: 57, scope: !1801)
!1811 = !DILocation(line: 182, column: 8, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1801, file: !313, line: 182, column: 7)
!1813 = !DILocation(line: 182, column: 7, scope: !1801)
!1814 = !DILocation(line: 184, column: 6, scope: !1801)
!1815 = !DILocation(line: 184, column: 12, scope: !1801)
!1816 = !DILocation(line: 185, column: 8, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1801, file: !313, line: 185, column: 7)
!1818 = !DILocation(line: 185, column: 23, scope: !1817)
!1819 = !DILocation(line: 185, column: 19, scope: !1817)
!1820 = !DILocation(line: 186, column: 5, scope: !1817)
!1821 = !DILocation(line: 187, column: 6, scope: !1801)
!1822 = !DILocation(line: 187, column: 17, scope: !1801)
!1823 = !{!1739, !852, i64 40}
!1824 = !DILocation(line: 188, column: 6, scope: !1801)
!1825 = !DILocation(line: 188, column: 18, scope: !1801)
!1826 = !{!1739, !852, i64 48}
!1827 = !DILocation(line: 189, column: 1, scope: !1801)
!1828 = distinct !DISubprogram(name: "quotearg_buffer", scope: !313, file: !313, line: 784, type: !1829, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !1831)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!71, !25, !71, !79, !71, !1731}
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839}
!1832 = !DILocalVariable(name: "buffer", arg: 1, scope: !1828, file: !313, line: 784, type: !25)
!1833 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1828, file: !313, line: 784, type: !71)
!1834 = !DILocalVariable(name: "arg", arg: 3, scope: !1828, file: !313, line: 785, type: !79)
!1835 = !DILocalVariable(name: "argsize", arg: 4, scope: !1828, file: !313, line: 785, type: !71)
!1836 = !DILocalVariable(name: "o", arg: 5, scope: !1828, file: !313, line: 786, type: !1731)
!1837 = !DILocalVariable(name: "p", scope: !1828, file: !313, line: 788, type: !1731)
!1838 = !DILocalVariable(name: "e", scope: !1828, file: !313, line: 789, type: !23)
!1839 = !DILocalVariable(name: "r", scope: !1828, file: !313, line: 790, type: !71)
!1840 = !DILocation(line: 784, column: 24, scope: !1828)
!1841 = !DILocation(line: 784, column: 39, scope: !1828)
!1842 = !DILocation(line: 785, column: 30, scope: !1828)
!1843 = !DILocation(line: 785, column: 42, scope: !1828)
!1844 = !DILocation(line: 786, column: 48, scope: !1828)
!1845 = !DILocation(line: 788, column: 37, scope: !1828)
!1846 = !DILocation(line: 788, column: 33, scope: !1828)
!1847 = !DILocation(line: 789, column: 11, scope: !1828)
!1848 = !DILocation(line: 789, column: 7, scope: !1828)
!1849 = !DILocation(line: 791, column: 43, scope: !1828)
!1850 = !DILocation(line: 791, column: 53, scope: !1828)
!1851 = !DILocation(line: 791, column: 60, scope: !1828)
!1852 = !DILocation(line: 792, column: 43, scope: !1828)
!1853 = !DILocation(line: 792, column: 58, scope: !1828)
!1854 = !DILocation(line: 790, column: 14, scope: !1828)
!1855 = !DILocation(line: 790, column: 10, scope: !1828)
!1856 = !DILocation(line: 793, column: 9, scope: !1828)
!1857 = !DILocation(line: 794, column: 3, scope: !1828)
!1858 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !313, file: !313, line: 256, type: !1859, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !1863)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!71, !25, !71, !79, !71, !212, !23, !1861, !79, !79}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1863 = !{!1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1888, !1889, !1890, !1891, !1892, !1895, !1896, !1914, !1917, !1918, !1925}
!1864 = !DILocalVariable(name: "buffer", arg: 1, scope: !1858, file: !313, line: 256, type: !25)
!1865 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1858, file: !313, line: 256, type: !71)
!1866 = !DILocalVariable(name: "arg", arg: 3, scope: !1858, file: !313, line: 257, type: !79)
!1867 = !DILocalVariable(name: "argsize", arg: 4, scope: !1858, file: !313, line: 257, type: !71)
!1868 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1858, file: !313, line: 258, type: !212)
!1869 = !DILocalVariable(name: "flags", arg: 6, scope: !1858, file: !313, line: 258, type: !23)
!1870 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1858, file: !313, line: 259, type: !1861)
!1871 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1858, file: !313, line: 260, type: !79)
!1872 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1858, file: !313, line: 261, type: !79)
!1873 = !DILocalVariable(name: "i", scope: !1858, file: !313, line: 263, type: !71)
!1874 = !DILocalVariable(name: "len", scope: !1858, file: !313, line: 264, type: !71)
!1875 = !DILocalVariable(name: "orig_buffersize", scope: !1858, file: !313, line: 265, type: !71)
!1876 = !DILocalVariable(name: "quote_string", scope: !1858, file: !313, line: 266, type: !79)
!1877 = !DILocalVariable(name: "quote_string_len", scope: !1858, file: !313, line: 267, type: !71)
!1878 = !DILocalVariable(name: "backslash_escapes", scope: !1858, file: !313, line: 268, type: !15)
!1879 = !DILocalVariable(name: "unibyte_locale", scope: !1858, file: !313, line: 269, type: !15)
!1880 = !DILocalVariable(name: "elide_outer_quotes", scope: !1858, file: !313, line: 270, type: !15)
!1881 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1858, file: !313, line: 271, type: !15)
!1882 = !DILocalVariable(name: "encountered_single_quote", scope: !1858, file: !313, line: 272, type: !15)
!1883 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1858, file: !313, line: 273, type: !15)
!1884 = !DILocalVariable(name: "c", scope: !1885, file: !313, line: 402, type: !373)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !313, line: 401, column: 5)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !313, line: 400, column: 3)
!1887 = distinct !DILexicalBlock(scope: !1858, file: !313, line: 400, column: 3)
!1888 = !DILocalVariable(name: "esc", scope: !1885, file: !313, line: 403, type: !373)
!1889 = !DILocalVariable(name: "is_right_quote", scope: !1885, file: !313, line: 404, type: !15)
!1890 = !DILocalVariable(name: "escaping", scope: !1885, file: !313, line: 405, type: !15)
!1891 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1885, file: !313, line: 406, type: !15)
!1892 = !DILocalVariable(name: "m", scope: !1893, file: !313, line: 610, type: !71)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !313, line: 608, column: 11)
!1894 = distinct !DILexicalBlock(scope: !1885, file: !313, line: 426, column: 9)
!1895 = !DILocalVariable(name: "printable", scope: !1893, file: !313, line: 612, type: !15)
!1896 = !DILocalVariable(name: "mbstate", scope: !1897, file: !313, line: 621, type: !1899)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !313, line: 620, column: 15)
!1898 = distinct !DILexicalBlock(scope: !1893, file: !313, line: 614, column: 17)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1900, line: 6, baseType: !1901)
!1900 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1902, line: 21, baseType: !1903)
!1902 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1902, line: 13, size: 64, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1903, file: !1902, line: 15, baseType: !23, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1903, file: !1902, line: 20, baseType: !1907, size: 32, offset: 32)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1903, file: !1902, line: 16, size: 32, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1907, file: !1902, line: 18, baseType: !6, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1907, file: !1902, line: 19, baseType: !1911, size: 32)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !1912)
!1912 = !{!1913}
!1913 = !DISubrange(count: 4)
!1914 = !DILocalVariable(name: "w", scope: !1915, file: !313, line: 631, type: !1916)
!1915 = distinct !DILexicalBlock(scope: !1897, file: !313, line: 630, column: 19)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !72, line: 90, baseType: !23)
!1917 = !DILocalVariable(name: "bytes", scope: !1915, file: !313, line: 632, type: !71)
!1918 = !DILocalVariable(name: "j", scope: !1919, file: !313, line: 657, type: !71)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !313, line: 656, column: 27)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !313, line: 654, column: 29)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !313, line: 649, column: 23)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !313, line: 641, column: 30)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !313, line: 636, column: 30)
!1924 = distinct !DILexicalBlock(scope: !1915, file: !313, line: 634, column: 25)
!1925 = !DILocalVariable(name: "ilim", scope: !1926, file: !313, line: 684, type: !71)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !313, line: 681, column: 15)
!1927 = distinct !DILexicalBlock(scope: !1893, file: !313, line: 680, column: 17)
!1928 = !DILocation(line: 256, column: 33, scope: !1858)
!1929 = !DILocation(line: 256, column: 48, scope: !1858)
!1930 = !DILocation(line: 257, column: 39, scope: !1858)
!1931 = !DILocation(line: 257, column: 51, scope: !1858)
!1932 = !DILocation(line: 258, column: 46, scope: !1858)
!1933 = !DILocation(line: 258, column: 65, scope: !1858)
!1934 = !DILocation(line: 259, column: 47, scope: !1858)
!1935 = !DILocation(line: 260, column: 39, scope: !1858)
!1936 = !DILocation(line: 261, column: 39, scope: !1858)
!1937 = !DILocation(line: 264, column: 10, scope: !1858)
!1938 = !DILocation(line: 265, column: 10, scope: !1858)
!1939 = !DILocation(line: 266, column: 15, scope: !1858)
!1940 = !DILocation(line: 267, column: 10, scope: !1858)
!1941 = !DILocation(line: 268, column: 8, scope: !1858)
!1942 = !DILocation(line: 269, column: 25, scope: !1858)
!1943 = !DILocation(line: 269, column: 36, scope: !1858)
!1944 = !DILocation(line: 270, column: 8, scope: !1858)
!1945 = !DILocation(line: 271, column: 8, scope: !1858)
!1946 = !DILocation(line: 272, column: 8, scope: !1858)
!1947 = !DILocation(line: 273, column: 8, scope: !1858)
!1948 = !DILocation(line: 273, column: 3, scope: !1858)
!1949 = !DILocation(line: 0, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1858, file: !313, line: 317, column: 5)
!1951 = !DILocation(line: 316, column: 3, scope: !1858)
!1952 = !DILocation(line: 323, column: 11, scope: !1950)
!1953 = !DILocation(line: 323, column: 12, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1950, file: !313, line: 323, column: 11)
!1955 = !DILocation(line: 324, column: 9, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !313, line: 324, column: 9)
!1957 = distinct !DILexicalBlock(scope: !1954, file: !313, line: 324, column: 9)
!1958 = !DILocation(line: 324, column: 9, scope: !1957)
!1959 = !DILocation(line: 362, column: 26, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !313, line: 340, column: 11)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !313, line: 339, column: 13)
!1962 = distinct !DILexicalBlock(scope: !1950, file: !313, line: 338, column: 7)
!1963 = !DILocation(line: 363, column: 27, scope: !1960)
!1964 = !DILocation(line: 364, column: 11, scope: !1960)
!1965 = !DILocation(line: 365, column: 14, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !313, line: 365, column: 13)
!1967 = !DILocation(line: 365, column: 13, scope: !1962)
!1968 = !DILocation(line: 366, column: 43, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !313, line: 366, column: 11)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !313, line: 366, column: 11)
!1971 = !DILocation(line: 366, column: 11, scope: !1970)
!1972 = !DILocation(line: 367, column: 13, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !313, line: 367, column: 13)
!1974 = distinct !DILexicalBlock(scope: !1969, file: !313, line: 367, column: 13)
!1975 = !DILocation(line: 367, column: 13, scope: !1974)
!1976 = !DILocation(line: 366, column: 70, scope: !1969)
!1977 = distinct !{!1977, !1971, !1978}
!1978 = !DILocation(line: 367, column: 13, scope: !1970)
!1979 = !DILocation(line: 370, column: 28, scope: !1962)
!1980 = !DILocation(line: 372, column: 7, scope: !1950)
!1981 = !DILocation(line: 376, column: 7, scope: !1950)
!1982 = !DILocation(line: 379, column: 7, scope: !1950)
!1983 = !DILocation(line: 381, column: 12, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1950, file: !313, line: 381, column: 11)
!1985 = !DILocation(line: 381, column: 11, scope: !1950)
!1986 = !DILocation(line: 0, scope: !1984)
!1987 = !DILocation(line: 386, column: 12, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1950, file: !313, line: 386, column: 11)
!1989 = !DILocation(line: 386, column: 11, scope: !1950)
!1990 = !DILocation(line: 387, column: 9, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !313, line: 387, column: 9)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !313, line: 387, column: 9)
!1993 = !DILocation(line: 387, column: 9, scope: !1992)
!1994 = !DILocation(line: 394, column: 7, scope: !1950)
!1995 = !DILocation(line: 397, column: 7, scope: !1950)
!1996 = !DILocation(line: 0, scope: !1858)
!1997 = !DILocation(line: 263, column: 10, scope: !1858)
!1998 = !DILocation(line: 400, column: 8, scope: !1887)
!1999 = !DILocation(line: 0, scope: !1886)
!2000 = !DILocation(line: 400, column: 27, scope: !1886)
!2001 = !DILocation(line: 400, column: 19, scope: !1886)
!2002 = !DILocation(line: 400, column: 41, scope: !1886)
!2003 = !DILocation(line: 400, column: 48, scope: !1886)
!2004 = !DILocation(line: 400, column: 3, scope: !1887)
!2005 = !DILocation(line: 400, column: 60, scope: !1886)
!2006 = !DILocation(line: 404, column: 12, scope: !1885)
!2007 = !DILocation(line: 405, column: 12, scope: !1885)
!2008 = !DILocation(line: 406, column: 12, scope: !1885)
!2009 = !DILocation(line: 409, column: 11, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1885, file: !313, line: 408, column: 11)
!2011 = !DILocation(line: 411, column: 17, scope: !2010)
!2012 = !DILocation(line: 412, column: 39, scope: !2010)
!2013 = !DILocation(line: 416, column: 32, scope: !2010)
!2014 = !DILocation(line: 412, column: 19, scope: !2010)
!2015 = !DILocation(line: 412, column: 15, scope: !2010)
!2016 = !DILocation(line: 417, column: 11, scope: !2010)
!2017 = !DILocation(line: 417, column: 26, scope: !2010)
!2018 = !DILocation(line: 417, column: 14, scope: !2010)
!2019 = !DILocation(line: 417, column: 63, scope: !2010)
!2020 = !DILocation(line: 408, column: 11, scope: !1885)
!2021 = !DILocation(line: 0, scope: !1885)
!2022 = !DILocation(line: 424, column: 11, scope: !1885)
!2023 = !DILocation(line: 402, column: 21, scope: !1885)
!2024 = !DILocation(line: 425, column: 7, scope: !1885)
!2025 = !DILocation(line: 428, column: 15, scope: !1894)
!2026 = !DILocation(line: 430, column: 15, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !313, line: 430, column: 15)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !313, line: 429, column: 13)
!2029 = distinct !DILexicalBlock(scope: !1894, file: !313, line: 428, column: 15)
!2030 = !DILocation(line: 430, column: 15, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2027, file: !313, line: 430, column: 15)
!2032 = !DILocation(line: 430, column: 15, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !313, line: 430, column: 15)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !313, line: 430, column: 15)
!2035 = distinct !DILexicalBlock(scope: !2031, file: !313, line: 430, column: 15)
!2036 = !DILocation(line: 430, column: 15, scope: !2034)
!2037 = !DILocation(line: 430, column: 15, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !313, line: 430, column: 15)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !313, line: 430, column: 15)
!2040 = !DILocation(line: 430, column: 15, scope: !2039)
!2041 = !DILocation(line: 430, column: 15, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !313, line: 430, column: 15)
!2043 = distinct !DILexicalBlock(scope: !2035, file: !313, line: 430, column: 15)
!2044 = !DILocation(line: 430, column: 15, scope: !2043)
!2045 = !DILocation(line: 430, column: 15, scope: !2035)
!2046 = !DILocation(line: 430, column: 15, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !313, line: 430, column: 15)
!2048 = distinct !DILexicalBlock(scope: !2027, file: !313, line: 430, column: 15)
!2049 = !DILocation(line: 430, column: 15, scope: !2048)
!2050 = !DILocation(line: 438, column: 19, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2028, file: !313, line: 437, column: 19)
!2052 = !DILocation(line: 438, column: 24, scope: !2051)
!2053 = !DILocation(line: 438, column: 28, scope: !2051)
!2054 = !DILocation(line: 438, column: 38, scope: !2051)
!2055 = !DILocation(line: 438, column: 48, scope: !2051)
!2056 = !DILocation(line: 438, column: 59, scope: !2051)
!2057 = !DILocation(line: 440, column: 19, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !313, line: 440, column: 19)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !313, line: 440, column: 19)
!2060 = distinct !DILexicalBlock(scope: !2051, file: !313, line: 439, column: 17)
!2061 = !DILocation(line: 440, column: 19, scope: !2059)
!2062 = !DILocation(line: 441, column: 19, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !313, line: 441, column: 19)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !313, line: 441, column: 19)
!2065 = !DILocation(line: 441, column: 19, scope: !2064)
!2066 = !DILocation(line: 442, column: 17, scope: !2060)
!2067 = !DILocation(line: 449, column: 20, scope: !2029)
!2068 = !DILocation(line: 454, column: 11, scope: !1894)
!2069 = !DILocation(line: 457, column: 19, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1894, file: !313, line: 455, column: 13)
!2071 = !DILocation(line: 463, column: 19, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2070, file: !313, line: 462, column: 19)
!2073 = !DILocation(line: 463, column: 24, scope: !2072)
!2074 = !DILocation(line: 463, column: 28, scope: !2072)
!2075 = !DILocation(line: 463, column: 38, scope: !2072)
!2076 = !DILocation(line: 463, column: 47, scope: !2072)
!2077 = !DILocation(line: 463, column: 41, scope: !2072)
!2078 = !DILocation(line: 463, column: 52, scope: !2072)
!2079 = !DILocation(line: 462, column: 19, scope: !2070)
!2080 = !DILocation(line: 464, column: 25, scope: !2072)
!2081 = !DILocation(line: 464, column: 17, scope: !2072)
!2082 = !DILocation(line: 471, column: 25, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2072, file: !313, line: 465, column: 19)
!2084 = !DILocation(line: 475, column: 21, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !313, line: 475, column: 21)
!2086 = distinct !DILexicalBlock(scope: !2083, file: !313, line: 475, column: 21)
!2087 = !DILocation(line: 475, column: 21, scope: !2086)
!2088 = !DILocation(line: 476, column: 21, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !313, line: 476, column: 21)
!2090 = distinct !DILexicalBlock(scope: !2083, file: !313, line: 476, column: 21)
!2091 = !DILocation(line: 476, column: 21, scope: !2090)
!2092 = !DILocation(line: 477, column: 21, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !313, line: 477, column: 21)
!2094 = distinct !DILexicalBlock(scope: !2083, file: !313, line: 477, column: 21)
!2095 = !DILocation(line: 477, column: 21, scope: !2094)
!2096 = !DILocation(line: 478, column: 21, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !313, line: 478, column: 21)
!2098 = distinct !DILexicalBlock(scope: !2083, file: !313, line: 478, column: 21)
!2099 = !DILocation(line: 478, column: 21, scope: !2098)
!2100 = !DILocation(line: 479, column: 21, scope: !2083)
!2101 = !DILocation(line: 403, column: 21, scope: !1885)
!2102 = !DILocation(line: 492, column: 31, scope: !1894)
!2103 = !DILocation(line: 493, column: 31, scope: !1894)
!2104 = !DILocation(line: 495, column: 31, scope: !1894)
!2105 = !DILocation(line: 496, column: 31, scope: !1894)
!2106 = !DILocation(line: 497, column: 31, scope: !1894)
!2107 = !DILocation(line: 500, column: 15, scope: !1894)
!2108 = !DILocation(line: 502, column: 19, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !313, line: 501, column: 13)
!2110 = distinct !DILexicalBlock(scope: !1894, file: !313, line: 500, column: 15)
!2111 = !DILocation(line: 509, column: 33, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1894, file: !313, line: 509, column: 15)
!2113 = !DILocation(line: 0, scope: !1894)
!2114 = !DILocation(line: 514, column: 15, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1894, file: !313, line: 513, column: 15)
!2116 = !DILocation(line: 518, column: 15, scope: !1894)
!2117 = !DILocation(line: 526, column: 26, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1894, file: !313, line: 526, column: 15)
!2119 = !DILocation(line: 526, column: 15, scope: !1894)
!2120 = !DILocation(line: 526, column: 40, scope: !2118)
!2121 = !DILocation(line: 526, column: 47, scope: !2118)
!2122 = !DILocation(line: 530, column: 17, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !1894, file: !313, line: 530, column: 15)
!2124 = !DILocation(line: 526, column: 18, scope: !2118)
!2125 = !DILocation(line: 526, column: 65, scope: !2118)
!2126 = !DILocation(line: 530, column: 15, scope: !1894)
!2127 = !DILocation(line: 535, column: 11, scope: !1894)
!2128 = !DILocation(line: 549, column: 15, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1894, file: !313, line: 548, column: 15)
!2130 = !DILocation(line: 556, column: 15, scope: !1894)
!2131 = !DILocation(line: 558, column: 19, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !313, line: 557, column: 13)
!2133 = distinct !DILexicalBlock(scope: !1894, file: !313, line: 556, column: 15)
!2134 = !DILocation(line: 561, column: 19, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !313, line: 561, column: 19)
!2136 = !DILocation(line: 561, column: 35, scope: !2135)
!2137 = !DILocation(line: 561, column: 30, scope: !2135)
!2138 = !DILocation(line: 570, column: 15, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !313, line: 570, column: 15)
!2140 = distinct !DILexicalBlock(scope: !2132, file: !313, line: 570, column: 15)
!2141 = !DILocation(line: 570, column: 15, scope: !2140)
!2142 = !DILocation(line: 571, column: 15, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !313, line: 571, column: 15)
!2144 = distinct !DILexicalBlock(scope: !2132, file: !313, line: 571, column: 15)
!2145 = !DILocation(line: 571, column: 15, scope: !2144)
!2146 = !DILocation(line: 572, column: 15, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !313, line: 572, column: 15)
!2148 = distinct !DILexicalBlock(scope: !2132, file: !313, line: 572, column: 15)
!2149 = !DILocation(line: 572, column: 15, scope: !2148)
!2150 = !DILocation(line: 574, column: 13, scope: !2132)
!2151 = !DILocation(line: 614, column: 17, scope: !1893)
!2152 = !DILocation(line: 610, column: 20, scope: !1893)
!2153 = !DILocation(line: 617, column: 29, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !1898, file: !313, line: 615, column: 15)
!2155 = !DILocation(line: 617, column: 27, scope: !2154)
!2156 = !DILocation(line: 612, column: 18, scope: !1893)
!2157 = !DILocation(line: 618, column: 15, scope: !2154)
!2158 = !DILocation(line: 621, column: 17, scope: !1897)
!2159 = !DILocation(line: 622, column: 17, scope: !1897)
!2160 = !DILocation(line: 626, column: 29, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1897, file: !313, line: 626, column: 21)
!2162 = !DILocation(line: 626, column: 21, scope: !1897)
!2163 = !DILocation(line: 627, column: 29, scope: !2161)
!2164 = !DILocation(line: 627, column: 19, scope: !2161)
!2165 = !DILocation(line: 0, scope: !2010)
!2166 = !DILocation(line: 629, column: 17, scope: !1897)
!2167 = !DILocation(line: 624, column: 19, scope: !1897)
!2168 = !DILocation(line: 625, column: 27, scope: !1897)
!2169 = !DILocation(line: 631, column: 21, scope: !1915)
!2170 = !DILocation(line: 632, column: 56, scope: !1915)
!2171 = !DILocation(line: 632, column: 50, scope: !1915)
!2172 = !DILocation(line: 633, column: 53, scope: !1915)
!2173 = !DILocation(line: 621, column: 27, scope: !1897)
!2174 = !DILocation(line: 631, column: 29, scope: !1915)
!2175 = !DILocation(line: 632, column: 36, scope: !1915)
!2176 = !DILocation(line: 632, column: 28, scope: !1915)
!2177 = !DILocation(line: 634, column: 25, scope: !1915)
!2178 = !DILocation(line: 644, column: 38, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !1922, file: !313, line: 642, column: 23)
!2180 = !DILocation(line: 644, column: 48, scope: !2179)
!2181 = !DILocation(line: 644, column: 51, scope: !2179)
!2182 = !DILocation(line: 644, column: 25, scope: !2179)
!2183 = !DILocation(line: 645, column: 28, scope: !2179)
!2184 = !DILocation(line: 644, column: 34, scope: !2179)
!2185 = distinct !{!2185, !2182, !2183}
!2186 = !DILocation(line: 658, column: 43, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !313, line: 658, column: 29)
!2188 = distinct !DILexicalBlock(scope: !1919, file: !313, line: 658, column: 29)
!2189 = !DILocation(line: 655, column: 29, scope: !1920)
!2190 = !DILocation(line: 657, column: 36, scope: !1919)
!2191 = !DILocation(line: 659, column: 49, scope: !2187)
!2192 = !DILocation(line: 659, column: 39, scope: !2187)
!2193 = !DILocation(line: 659, column: 31, scope: !2187)
!2194 = !DILocation(line: 658, column: 53, scope: !2187)
!2195 = !DILocation(line: 658, column: 29, scope: !2188)
!2196 = distinct !{!2196, !2195, !2197}
!2197 = !DILocation(line: 667, column: 33, scope: !2188)
!2198 = !DILocation(line: 674, column: 19, scope: !1897)
!2199 = !DILocation(line: 670, column: 41, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1921, file: !313, line: 670, column: 29)
!2201 = !DILocation(line: 670, column: 31, scope: !2200)
!2202 = !DILocation(line: 670, column: 29, scope: !1921)
!2203 = !DILocation(line: 672, column: 27, scope: !1921)
!2204 = !DILocation(line: 675, column: 26, scope: !1897)
!2205 = !DILocation(line: 675, column: 24, scope: !1897)
!2206 = !DILocation(line: 674, column: 19, scope: !1915)
!2207 = distinct !{!2207, !2166, !2208}
!2208 = !DILocation(line: 675, column: 44, scope: !1897)
!2209 = !DILocation(line: 676, column: 15, scope: !1898)
!2210 = !DILocation(line: 0, scope: !2161)
!2211 = !DILocation(line: 0, scope: !1897)
!2212 = !DILocation(line: 678, column: 40, scope: !1893)
!2213 = !DILocation(line: 680, column: 19, scope: !1927)
!2214 = !DILocation(line: 680, column: 45, scope: !1927)
!2215 = !DILocation(line: 680, column: 23, scope: !1927)
!2216 = !DILocation(line: 684, column: 33, scope: !1926)
!2217 = !DILocation(line: 684, column: 24, scope: !1926)
!2218 = !DILocation(line: 686, column: 17, scope: !1926)
!2219 = !DILocation(line: 0, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !313, line: 687, column: 19)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !313, line: 686, column: 17)
!2222 = distinct !DILexicalBlock(scope: !1926, file: !313, line: 686, column: 17)
!2223 = !DILocation(line: 0, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !313, line: 703, column: 21)
!2225 = !DILocation(line: 0, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !313, line: 696, column: 23)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !313, line: 695, column: 30)
!2228 = distinct !DILexicalBlock(scope: !2220, file: !313, line: 688, column: 25)
!2229 = !DILocation(line: 688, column: 43, scope: !2228)
!2230 = !DILocation(line: 690, column: 25, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !313, line: 690, column: 25)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !313, line: 689, column: 23)
!2233 = !DILocation(line: 690, column: 25, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2231, file: !313, line: 690, column: 25)
!2235 = !DILocation(line: 690, column: 25, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !313, line: 690, column: 25)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !313, line: 690, column: 25)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !313, line: 690, column: 25)
!2239 = !DILocation(line: 690, column: 25, scope: !2237)
!2240 = !DILocation(line: 690, column: 25, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !313, line: 690, column: 25)
!2242 = distinct !DILexicalBlock(scope: !2238, file: !313, line: 690, column: 25)
!2243 = !DILocation(line: 690, column: 25, scope: !2242)
!2244 = !DILocation(line: 690, column: 25, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !313, line: 690, column: 25)
!2246 = distinct !DILexicalBlock(scope: !2238, file: !313, line: 690, column: 25)
!2247 = !DILocation(line: 690, column: 25, scope: !2246)
!2248 = !DILocation(line: 690, column: 25, scope: !2238)
!2249 = !DILocation(line: 690, column: 25, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !313, line: 690, column: 25)
!2251 = distinct !DILexicalBlock(scope: !2231, file: !313, line: 690, column: 25)
!2252 = !DILocation(line: 690, column: 25, scope: !2251)
!2253 = !DILocation(line: 691, column: 25, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !313, line: 691, column: 25)
!2255 = distinct !DILexicalBlock(scope: !2232, file: !313, line: 691, column: 25)
!2256 = !DILocation(line: 691, column: 25, scope: !2255)
!2257 = !DILocation(line: 692, column: 25, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !313, line: 692, column: 25)
!2259 = distinct !DILexicalBlock(scope: !2232, file: !313, line: 692, column: 25)
!2260 = !DILocation(line: 692, column: 25, scope: !2259)
!2261 = !DILocation(line: 693, column: 38, scope: !2232)
!2262 = !DILocation(line: 693, column: 33, scope: !2232)
!2263 = !DILocation(line: 694, column: 23, scope: !2232)
!2264 = !DILocation(line: 695, column: 30, scope: !2227)
!2265 = !DILocation(line: 695, column: 30, scope: !2228)
!2266 = !DILocation(line: 697, column: 25, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !313, line: 697, column: 25)
!2268 = distinct !DILexicalBlock(scope: !2226, file: !313, line: 697, column: 25)
!2269 = !DILocation(line: 697, column: 25, scope: !2268)
!2270 = !DILocation(line: 699, column: 23, scope: !2226)
!2271 = !DILocation(line: 0, scope: !2259)
!2272 = !DILocation(line: 0, scope: !2232)
!2273 = !DILocation(line: 0, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2010, file: !313, line: 418, column: 9)
!2275 = !DILocation(line: 0, scope: !2231)
!2276 = !DILocation(line: 700, column: 35, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2220, file: !313, line: 700, column: 25)
!2278 = !DILocation(line: 700, column: 30, scope: !2277)
!2279 = !DILocation(line: 700, column: 25, scope: !2220)
!2280 = !DILocation(line: 702, column: 21, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !313, line: 702, column: 21)
!2282 = distinct !DILexicalBlock(scope: !2220, file: !313, line: 702, column: 21)
!2283 = !DILocation(line: 702, column: 21, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !313, line: 702, column: 21)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !313, line: 702, column: 21)
!2286 = distinct !DILexicalBlock(scope: !2281, file: !313, line: 702, column: 21)
!2287 = !DILocation(line: 702, column: 21, scope: !2285)
!2288 = !DILocation(line: 702, column: 21, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !313, line: 702, column: 21)
!2290 = distinct !DILexicalBlock(scope: !2286, file: !313, line: 702, column: 21)
!2291 = !DILocation(line: 702, column: 21, scope: !2290)
!2292 = !DILocation(line: 702, column: 21, scope: !2286)
!2293 = !DILocation(line: 0, scope: !2268)
!2294 = !DILocation(line: 703, column: 21, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2224, file: !313, line: 703, column: 21)
!2296 = !DILocation(line: 703, column: 21, scope: !2224)
!2297 = !DILocation(line: 704, column: 25, scope: !2220)
!2298 = !DILocation(line: 686, column: 17, scope: !2221)
!2299 = distinct !{!2299, !2300, !2301}
!2300 = !DILocation(line: 686, column: 17, scope: !2222)
!2301 = !DILocation(line: 705, column: 19, scope: !2222)
!2302 = !DILocation(line: 0, scope: !1887)
!2303 = !DILocation(line: 416, column: 30, scope: !2010)
!2304 = !DILocation(line: 712, column: 34, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !1885, file: !313, line: 712, column: 11)
!2306 = !DILocation(line: 714, column: 14, scope: !2305)
!2307 = !DILocation(line: 715, column: 14, scope: !2305)
!2308 = !DILocation(line: 715, column: 35, scope: !2305)
!2309 = !DILocation(line: 715, column: 17, scope: !2305)
!2310 = !DILocation(line: 715, column: 47, scope: !2305)
!2311 = !DILocation(line: 715, column: 65, scope: !2305)
!2312 = !DILocation(line: 716, column: 15, scope: !2305)
!2313 = !DILocation(line: 716, column: 11, scope: !2305)
!2314 = !DILocation(line: 712, column: 11, scope: !1885)
!2315 = !DILocation(line: 400, column: 10, scope: !1887)
!2316 = !DILocation(line: 0, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !313, line: 519, column: 13)
!2318 = distinct !DILexicalBlock(scope: !1894, file: !313, line: 518, column: 15)
!2319 = !DILocation(line: 720, column: 7, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !1885, file: !313, line: 720, column: 7)
!2321 = !DILocation(line: 720, column: 7, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2320, file: !313, line: 720, column: 7)
!2323 = !DILocation(line: 720, column: 7, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !313, line: 720, column: 7)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !313, line: 720, column: 7)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !313, line: 720, column: 7)
!2327 = !DILocation(line: 720, column: 7, scope: !2325)
!2328 = !DILocation(line: 720, column: 7, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !313, line: 720, column: 7)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !313, line: 720, column: 7)
!2331 = !DILocation(line: 720, column: 7, scope: !2330)
!2332 = !DILocation(line: 720, column: 7, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !313, line: 720, column: 7)
!2334 = distinct !DILexicalBlock(scope: !2326, file: !313, line: 720, column: 7)
!2335 = !DILocation(line: 720, column: 7, scope: !2334)
!2336 = !DILocation(line: 720, column: 7, scope: !2326)
!2337 = !DILocation(line: 720, column: 7, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !313, line: 720, column: 7)
!2339 = distinct !DILexicalBlock(scope: !2320, file: !313, line: 720, column: 7)
!2340 = !DILocation(line: 720, column: 7, scope: !2339)
!2341 = !DILocation(line: 723, column: 7, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !313, line: 723, column: 7)
!2343 = distinct !DILexicalBlock(scope: !1885, file: !313, line: 723, column: 7)
!2344 = !DILocation(line: 424, column: 9, scope: !1885)
!2345 = !DILocation(line: 723, column: 7, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !313, line: 723, column: 7)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !313, line: 723, column: 7)
!2348 = distinct !DILexicalBlock(scope: !2342, file: !313, line: 723, column: 7)
!2349 = !DILocation(line: 723, column: 7, scope: !2347)
!2350 = !DILocation(line: 723, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !313, line: 723, column: 7)
!2352 = distinct !DILexicalBlock(scope: !2348, file: !313, line: 723, column: 7)
!2353 = !DILocation(line: 723, column: 7, scope: !2352)
!2354 = !DILocation(line: 723, column: 7, scope: !2348)
!2355 = !DILocation(line: 724, column: 7, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !313, line: 724, column: 7)
!2357 = distinct !DILexicalBlock(scope: !1885, file: !313, line: 724, column: 7)
!2358 = !DILocation(line: 724, column: 7, scope: !2357)
!2359 = !DILocation(line: 726, column: 13, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !1885, file: !313, line: 726, column: 11)
!2361 = !DILocation(line: 726, column: 11, scope: !1885)
!2362 = !DILocation(line: 728, column: 5, scope: !1886)
!2363 = !DILocation(line: 400, column: 75, scope: !1886)
!2364 = !DILocation(line: 400, column: 3, scope: !1886)
!2365 = distinct !{!2365, !2004, !2366}
!2366 = !DILocation(line: 728, column: 5, scope: !1887)
!2367 = !DILocation(line: 730, column: 11, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !1858, file: !313, line: 730, column: 7)
!2369 = !DILocation(line: 730, column: 16, scope: !2368)
!2370 = !DILocation(line: 738, column: 51, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !1858, file: !313, line: 738, column: 7)
!2372 = !DILocation(line: 739, column: 10, scope: !2371)
!2373 = !DILocation(line: 741, column: 11, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !313, line: 741, column: 11)
!2375 = distinct !DILexicalBlock(scope: !2371, file: !313, line: 740, column: 5)
!2376 = !DILocation(line: 741, column: 11, scope: !2375)
!2377 = !DILocation(line: 742, column: 16, scope: !2374)
!2378 = !DILocation(line: 742, column: 9, scope: !2374)
!2379 = !DILocation(line: 746, column: 18, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2374, file: !313, line: 746, column: 16)
!2381 = !DILocation(line: 746, column: 32, scope: !2380)
!2382 = !DILocation(line: 746, column: 29, scope: !2380)
!2383 = !DILocation(line: 755, column: 7, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !1858, file: !313, line: 755, column: 7)
!2385 = !DILocation(line: 755, column: 20, scope: !2384)
!2386 = !DILocation(line: 756, column: 12, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !313, line: 756, column: 5)
!2388 = distinct !DILexicalBlock(scope: !2384, file: !313, line: 756, column: 5)
!2389 = !DILocation(line: 756, column: 5, scope: !2388)
!2390 = !DILocation(line: 757, column: 7, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !313, line: 757, column: 7)
!2392 = distinct !DILexicalBlock(scope: !2387, file: !313, line: 757, column: 7)
!2393 = !DILocation(line: 757, column: 7, scope: !2392)
!2394 = !DILocation(line: 756, column: 39, scope: !2387)
!2395 = distinct !{!2395, !2389, !2396}
!2396 = !DILocation(line: 757, column: 7, scope: !2388)
!2397 = !DILocation(line: 759, column: 11, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !1858, file: !313, line: 759, column: 7)
!2399 = !DILocation(line: 759, column: 7, scope: !1858)
!2400 = !DILocation(line: 760, column: 5, scope: !2398)
!2401 = !DILocation(line: 760, column: 17, scope: !2398)
!2402 = !DILocation(line: 766, column: 21, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !1858, file: !313, line: 766, column: 7)
!2404 = !DILocation(line: 766, column: 54, scope: !2403)
!2405 = !DILocation(line: 766, column: 51, scope: !2403)
!2406 = !DILocation(line: 770, column: 42, scope: !1858)
!2407 = !DILocation(line: 768, column: 10, scope: !1858)
!2408 = !DILocation(line: 768, column: 3, scope: !1858)
!2409 = !DILocation(line: 772, column: 1, scope: !1858)
!2410 = distinct !DISubprogram(name: "gettext_quote", scope: !313, file: !313, line: 207, type: !2411, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!79, !79, !212}
!2413 = !{!2414, !2415, !2416, !2417}
!2414 = !DILocalVariable(name: "msgid", arg: 1, scope: !2410, file: !313, line: 207, type: !79)
!2415 = !DILocalVariable(name: "s", arg: 2, scope: !2410, file: !313, line: 207, type: !212)
!2416 = !DILocalVariable(name: "translation", scope: !2410, file: !313, line: 209, type: !79)
!2417 = !DILocalVariable(name: "locale_code", scope: !2410, file: !313, line: 210, type: !79)
!2418 = !DILocation(line: 207, column: 28, scope: !2410)
!2419 = !DILocation(line: 207, column: 54, scope: !2410)
!2420 = !DILocation(line: 209, column: 29, scope: !2410)
!2421 = !DILocation(line: 209, column: 15, scope: !2410)
!2422 = !DILocation(line: 212, column: 19, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2410, file: !313, line: 212, column: 7)
!2424 = !DILocation(line: 212, column: 7, scope: !2410)
!2425 = !DILocation(line: 233, column: 17, scope: !2410)
!2426 = !DILocation(line: 210, column: 15, scope: !2410)
!2427 = !DILocalVariable(name: "s1", arg: 1, scope: !2428, file: !2429, line: 160, type: !79)
!2428 = distinct !DISubprogram(name: "strcaseeq0", scope: !2429, file: !2429, line: 160, type: !2430, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2432)
!2429 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!23, !79, !79, !26, !26, !26, !26, !26, !26, !26, !26, !26}
!2432 = !{!2427, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442}
!2433 = !DILocalVariable(name: "s2", arg: 2, scope: !2428, file: !2429, line: 160, type: !79)
!2434 = !DILocalVariable(name: "s20", arg: 3, scope: !2428, file: !2429, line: 160, type: !26)
!2435 = !DILocalVariable(name: "s21", arg: 4, scope: !2428, file: !2429, line: 160, type: !26)
!2436 = !DILocalVariable(name: "s22", arg: 5, scope: !2428, file: !2429, line: 160, type: !26)
!2437 = !DILocalVariable(name: "s23", arg: 6, scope: !2428, file: !2429, line: 160, type: !26)
!2438 = !DILocalVariable(name: "s24", arg: 7, scope: !2428, file: !2429, line: 160, type: !26)
!2439 = !DILocalVariable(name: "s25", arg: 8, scope: !2428, file: !2429, line: 160, type: !26)
!2440 = !DILocalVariable(name: "s26", arg: 9, scope: !2428, file: !2429, line: 160, type: !26)
!2441 = !DILocalVariable(name: "s27", arg: 10, scope: !2428, file: !2429, line: 160, type: !26)
!2442 = !DILocalVariable(name: "s28", arg: 11, scope: !2428, file: !2429, line: 160, type: !26)
!2443 = !DILocation(line: 160, column: 25, scope: !2428, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 234, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2410, file: !313, line: 234, column: 7)
!2446 = !DILocation(line: 160, column: 41, scope: !2428, inlinedAt: !2444)
!2447 = !DILocation(line: 160, column: 50, scope: !2428, inlinedAt: !2444)
!2448 = !DILocation(line: 160, column: 60, scope: !2428, inlinedAt: !2444)
!2449 = !DILocation(line: 160, column: 70, scope: !2428, inlinedAt: !2444)
!2450 = !DILocation(line: 160, column: 80, scope: !2428, inlinedAt: !2444)
!2451 = !DILocation(line: 160, column: 90, scope: !2428, inlinedAt: !2444)
!2452 = !DILocation(line: 160, column: 100, scope: !2428, inlinedAt: !2444)
!2453 = !DILocation(line: 160, column: 110, scope: !2428, inlinedAt: !2444)
!2454 = !DILocation(line: 160, column: 120, scope: !2428, inlinedAt: !2444)
!2455 = !DILocation(line: 160, column: 130, scope: !2428, inlinedAt: !2444)
!2456 = !DILocation(line: 162, column: 7, scope: !2457, inlinedAt: !2444)
!2457 = distinct !DILexicalBlock(scope: !2428, file: !2429, line: 162, column: 7)
!2458 = !DILocalVariable(name: "s1", arg: 1, scope: !2459, file: !2429, line: 146, type: !79)
!2459 = distinct !DISubprogram(name: "strcaseeq1", scope: !2429, file: !2429, line: 146, type: !2460, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!23, !79, !79, !26, !26, !26, !26, !26, !26, !26, !26}
!2462 = !{!2458, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471}
!2463 = !DILocalVariable(name: "s2", arg: 2, scope: !2459, file: !2429, line: 146, type: !79)
!2464 = !DILocalVariable(name: "s21", arg: 3, scope: !2459, file: !2429, line: 146, type: !26)
!2465 = !DILocalVariable(name: "s22", arg: 4, scope: !2459, file: !2429, line: 146, type: !26)
!2466 = !DILocalVariable(name: "s23", arg: 5, scope: !2459, file: !2429, line: 146, type: !26)
!2467 = !DILocalVariable(name: "s24", arg: 6, scope: !2459, file: !2429, line: 146, type: !26)
!2468 = !DILocalVariable(name: "s25", arg: 7, scope: !2459, file: !2429, line: 146, type: !26)
!2469 = !DILocalVariable(name: "s26", arg: 8, scope: !2459, file: !2429, line: 146, type: !26)
!2470 = !DILocalVariable(name: "s27", arg: 9, scope: !2459, file: !2429, line: 146, type: !26)
!2471 = !DILocalVariable(name: "s28", arg: 10, scope: !2459, file: !2429, line: 146, type: !26)
!2472 = !DILocation(line: 146, column: 25, scope: !2459, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 167, column: 16, scope: !2474, inlinedAt: !2444)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !2429, line: 164, column: 11)
!2475 = distinct !DILexicalBlock(scope: !2457, file: !2429, line: 163, column: 5)
!2476 = !DILocation(line: 146, column: 41, scope: !2459, inlinedAt: !2473)
!2477 = !DILocation(line: 146, column: 50, scope: !2459, inlinedAt: !2473)
!2478 = !DILocation(line: 146, column: 60, scope: !2459, inlinedAt: !2473)
!2479 = !DILocation(line: 146, column: 70, scope: !2459, inlinedAt: !2473)
!2480 = !DILocation(line: 146, column: 80, scope: !2459, inlinedAt: !2473)
!2481 = !DILocation(line: 146, column: 90, scope: !2459, inlinedAt: !2473)
!2482 = !DILocation(line: 146, column: 100, scope: !2459, inlinedAt: !2473)
!2483 = !DILocation(line: 146, column: 110, scope: !2459, inlinedAt: !2473)
!2484 = !DILocation(line: 146, column: 120, scope: !2459, inlinedAt: !2473)
!2485 = !DILocation(line: 148, column: 7, scope: !2486, inlinedAt: !2473)
!2486 = distinct !DILexicalBlock(scope: !2459, file: !2429, line: 148, column: 7)
!2487 = !DILocalVariable(name: "s1", arg: 1, scope: !2488, file: !2429, line: 132, type: !79)
!2488 = distinct !DISubprogram(name: "strcaseeq2", scope: !2429, file: !2429, line: 132, type: !2489, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!23, !79, !79, !26, !26, !26, !26, !26, !26, !26}
!2491 = !{!2487, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499}
!2492 = !DILocalVariable(name: "s2", arg: 2, scope: !2488, file: !2429, line: 132, type: !79)
!2493 = !DILocalVariable(name: "s22", arg: 3, scope: !2488, file: !2429, line: 132, type: !26)
!2494 = !DILocalVariable(name: "s23", arg: 4, scope: !2488, file: !2429, line: 132, type: !26)
!2495 = !DILocalVariable(name: "s24", arg: 5, scope: !2488, file: !2429, line: 132, type: !26)
!2496 = !DILocalVariable(name: "s25", arg: 6, scope: !2488, file: !2429, line: 132, type: !26)
!2497 = !DILocalVariable(name: "s26", arg: 7, scope: !2488, file: !2429, line: 132, type: !26)
!2498 = !DILocalVariable(name: "s27", arg: 8, scope: !2488, file: !2429, line: 132, type: !26)
!2499 = !DILocalVariable(name: "s28", arg: 9, scope: !2488, file: !2429, line: 132, type: !26)
!2500 = !DILocation(line: 132, column: 25, scope: !2488, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 153, column: 16, scope: !2502, inlinedAt: !2473)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !2429, line: 150, column: 11)
!2503 = distinct !DILexicalBlock(scope: !2486, file: !2429, line: 149, column: 5)
!2504 = !DILocation(line: 132, column: 41, scope: !2488, inlinedAt: !2501)
!2505 = !DILocation(line: 132, column: 50, scope: !2488, inlinedAt: !2501)
!2506 = !DILocation(line: 132, column: 60, scope: !2488, inlinedAt: !2501)
!2507 = !DILocation(line: 132, column: 70, scope: !2488, inlinedAt: !2501)
!2508 = !DILocation(line: 132, column: 80, scope: !2488, inlinedAt: !2501)
!2509 = !DILocation(line: 132, column: 90, scope: !2488, inlinedAt: !2501)
!2510 = !DILocation(line: 132, column: 100, scope: !2488, inlinedAt: !2501)
!2511 = !DILocation(line: 132, column: 110, scope: !2488, inlinedAt: !2501)
!2512 = !DILocation(line: 134, column: 7, scope: !2513, inlinedAt: !2501)
!2513 = distinct !DILexicalBlock(scope: !2488, file: !2429, line: 134, column: 7)
!2514 = !DILocalVariable(name: "s1", arg: 1, scope: !2515, file: !2429, line: 118, type: !79)
!2515 = distinct !DISubprogram(name: "strcaseeq3", scope: !2429, file: !2429, line: 118, type: !2516, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!23, !79, !79, !26, !26, !26, !26, !26, !26}
!2518 = !{!2514, !2519, !2520, !2521, !2522, !2523, !2524, !2525}
!2519 = !DILocalVariable(name: "s2", arg: 2, scope: !2515, file: !2429, line: 118, type: !79)
!2520 = !DILocalVariable(name: "s23", arg: 3, scope: !2515, file: !2429, line: 118, type: !26)
!2521 = !DILocalVariable(name: "s24", arg: 4, scope: !2515, file: !2429, line: 118, type: !26)
!2522 = !DILocalVariable(name: "s25", arg: 5, scope: !2515, file: !2429, line: 118, type: !26)
!2523 = !DILocalVariable(name: "s26", arg: 6, scope: !2515, file: !2429, line: 118, type: !26)
!2524 = !DILocalVariable(name: "s27", arg: 7, scope: !2515, file: !2429, line: 118, type: !26)
!2525 = !DILocalVariable(name: "s28", arg: 8, scope: !2515, file: !2429, line: 118, type: !26)
!2526 = !DILocation(line: 118, column: 25, scope: !2515, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 139, column: 16, scope: !2528, inlinedAt: !2501)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !2429, line: 136, column: 11)
!2529 = distinct !DILexicalBlock(scope: !2513, file: !2429, line: 135, column: 5)
!2530 = !DILocation(line: 118, column: 41, scope: !2515, inlinedAt: !2527)
!2531 = !DILocation(line: 118, column: 50, scope: !2515, inlinedAt: !2527)
!2532 = !DILocation(line: 118, column: 60, scope: !2515, inlinedAt: !2527)
!2533 = !DILocation(line: 118, column: 70, scope: !2515, inlinedAt: !2527)
!2534 = !DILocation(line: 118, column: 80, scope: !2515, inlinedAt: !2527)
!2535 = !DILocation(line: 118, column: 90, scope: !2515, inlinedAt: !2527)
!2536 = !DILocation(line: 118, column: 100, scope: !2515, inlinedAt: !2527)
!2537 = !DILocation(line: 120, column: 7, scope: !2538, inlinedAt: !2527)
!2538 = distinct !DILexicalBlock(scope: !2515, file: !2429, line: 120, column: 7)
!2539 = !DILocation(line: 120, column: 7, scope: !2515, inlinedAt: !2527)
!2540 = !DILocalVariable(name: "s1", arg: 1, scope: !2541, file: !2429, line: 104, type: !79)
!2541 = distinct !DISubprogram(name: "strcaseeq4", scope: !2429, file: !2429, line: 104, type: !2542, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!23, !79, !79, !26, !26, !26, !26, !26}
!2544 = !{!2540, !2545, !2546, !2547, !2548, !2549, !2550}
!2545 = !DILocalVariable(name: "s2", arg: 2, scope: !2541, file: !2429, line: 104, type: !79)
!2546 = !DILocalVariable(name: "s24", arg: 3, scope: !2541, file: !2429, line: 104, type: !26)
!2547 = !DILocalVariable(name: "s25", arg: 4, scope: !2541, file: !2429, line: 104, type: !26)
!2548 = !DILocalVariable(name: "s26", arg: 5, scope: !2541, file: !2429, line: 104, type: !26)
!2549 = !DILocalVariable(name: "s27", arg: 6, scope: !2541, file: !2429, line: 104, type: !26)
!2550 = !DILocalVariable(name: "s28", arg: 7, scope: !2541, file: !2429, line: 104, type: !26)
!2551 = !DILocation(line: 104, column: 25, scope: !2541, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 125, column: 16, scope: !2553, inlinedAt: !2527)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !2429, line: 122, column: 11)
!2554 = distinct !DILexicalBlock(scope: !2538, file: !2429, line: 121, column: 5)
!2555 = !DILocation(line: 104, column: 41, scope: !2541, inlinedAt: !2552)
!2556 = !DILocation(line: 104, column: 50, scope: !2541, inlinedAt: !2552)
!2557 = !DILocation(line: 104, column: 60, scope: !2541, inlinedAt: !2552)
!2558 = !DILocation(line: 104, column: 70, scope: !2541, inlinedAt: !2552)
!2559 = !DILocation(line: 104, column: 80, scope: !2541, inlinedAt: !2552)
!2560 = !DILocation(line: 104, column: 90, scope: !2541, inlinedAt: !2552)
!2561 = !DILocation(line: 106, column: 7, scope: !2562, inlinedAt: !2552)
!2562 = distinct !DILexicalBlock(scope: !2541, file: !2429, line: 106, column: 7)
!2563 = !DILocation(line: 106, column: 7, scope: !2541, inlinedAt: !2552)
!2564 = !DILocalVariable(name: "s1", arg: 1, scope: !2565, file: !2429, line: 90, type: !79)
!2565 = distinct !DISubprogram(name: "strcaseeq5", scope: !2429, file: !2429, line: 90, type: !2566, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!23, !79, !79, !26, !26, !26, !26}
!2568 = !{!2564, !2569, !2570, !2571, !2572, !2573}
!2569 = !DILocalVariable(name: "s2", arg: 2, scope: !2565, file: !2429, line: 90, type: !79)
!2570 = !DILocalVariable(name: "s25", arg: 3, scope: !2565, file: !2429, line: 90, type: !26)
!2571 = !DILocalVariable(name: "s26", arg: 4, scope: !2565, file: !2429, line: 90, type: !26)
!2572 = !DILocalVariable(name: "s27", arg: 5, scope: !2565, file: !2429, line: 90, type: !26)
!2573 = !DILocalVariable(name: "s28", arg: 6, scope: !2565, file: !2429, line: 90, type: !26)
!2574 = !DILocation(line: 90, column: 25, scope: !2565, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 111, column: 16, scope: !2576, inlinedAt: !2552)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !2429, line: 108, column: 11)
!2577 = distinct !DILexicalBlock(scope: !2562, file: !2429, line: 107, column: 5)
!2578 = !DILocation(line: 90, column: 41, scope: !2565, inlinedAt: !2575)
!2579 = !DILocation(line: 90, column: 50, scope: !2565, inlinedAt: !2575)
!2580 = !DILocation(line: 90, column: 60, scope: !2565, inlinedAt: !2575)
!2581 = !DILocation(line: 90, column: 70, scope: !2565, inlinedAt: !2575)
!2582 = !DILocation(line: 90, column: 80, scope: !2565, inlinedAt: !2575)
!2583 = !DILocation(line: 92, column: 7, scope: !2584, inlinedAt: !2575)
!2584 = distinct !DILexicalBlock(scope: !2565, file: !2429, line: 92, column: 7)
!2585 = !DILocation(line: 92, column: 7, scope: !2565, inlinedAt: !2575)
!2586 = !DILocation(line: 235, column: 12, scope: !2445)
!2587 = !DILocation(line: 235, column: 21, scope: !2445)
!2588 = !DILocation(line: 235, column: 5, scope: !2445)
!2589 = !DILocation(line: 146, column: 25, scope: !2459, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 167, column: 16, scope: !2474, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 236, column: 7, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2410, file: !313, line: 236, column: 7)
!2593 = !DILocation(line: 146, column: 41, scope: !2459, inlinedAt: !2590)
!2594 = !DILocation(line: 146, column: 50, scope: !2459, inlinedAt: !2590)
!2595 = !DILocation(line: 146, column: 60, scope: !2459, inlinedAt: !2590)
!2596 = !DILocation(line: 146, column: 70, scope: !2459, inlinedAt: !2590)
!2597 = !DILocation(line: 146, column: 80, scope: !2459, inlinedAt: !2590)
!2598 = !DILocation(line: 146, column: 90, scope: !2459, inlinedAt: !2590)
!2599 = !DILocation(line: 146, column: 100, scope: !2459, inlinedAt: !2590)
!2600 = !DILocation(line: 146, column: 110, scope: !2459, inlinedAt: !2590)
!2601 = !DILocation(line: 146, column: 120, scope: !2459, inlinedAt: !2590)
!2602 = !DILocation(line: 148, column: 7, scope: !2486, inlinedAt: !2590)
!2603 = !DILocation(line: 132, column: 25, scope: !2488, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 153, column: 16, scope: !2502, inlinedAt: !2590)
!2605 = !DILocation(line: 132, column: 41, scope: !2488, inlinedAt: !2604)
!2606 = !DILocation(line: 132, column: 50, scope: !2488, inlinedAt: !2604)
!2607 = !DILocation(line: 132, column: 60, scope: !2488, inlinedAt: !2604)
!2608 = !DILocation(line: 132, column: 70, scope: !2488, inlinedAt: !2604)
!2609 = !DILocation(line: 132, column: 80, scope: !2488, inlinedAt: !2604)
!2610 = !DILocation(line: 132, column: 90, scope: !2488, inlinedAt: !2604)
!2611 = !DILocation(line: 132, column: 100, scope: !2488, inlinedAt: !2604)
!2612 = !DILocation(line: 132, column: 110, scope: !2488, inlinedAt: !2604)
!2613 = !DILocation(line: 134, column: 7, scope: !2513, inlinedAt: !2604)
!2614 = !DILocation(line: 134, column: 7, scope: !2488, inlinedAt: !2604)
!2615 = !DILocation(line: 118, column: 25, scope: !2515, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 139, column: 16, scope: !2528, inlinedAt: !2604)
!2617 = !DILocation(line: 118, column: 41, scope: !2515, inlinedAt: !2616)
!2618 = !DILocation(line: 118, column: 50, scope: !2515, inlinedAt: !2616)
!2619 = !DILocation(line: 118, column: 60, scope: !2515, inlinedAt: !2616)
!2620 = !DILocation(line: 118, column: 70, scope: !2515, inlinedAt: !2616)
!2621 = !DILocation(line: 118, column: 80, scope: !2515, inlinedAt: !2616)
!2622 = !DILocation(line: 118, column: 90, scope: !2515, inlinedAt: !2616)
!2623 = !DILocation(line: 118, column: 100, scope: !2515, inlinedAt: !2616)
!2624 = !DILocation(line: 120, column: 7, scope: !2538, inlinedAt: !2616)
!2625 = !DILocation(line: 120, column: 7, scope: !2515, inlinedAt: !2616)
!2626 = !DILocation(line: 104, column: 25, scope: !2541, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 125, column: 16, scope: !2553, inlinedAt: !2616)
!2628 = !DILocation(line: 104, column: 41, scope: !2541, inlinedAt: !2627)
!2629 = !DILocation(line: 104, column: 50, scope: !2541, inlinedAt: !2627)
!2630 = !DILocation(line: 104, column: 60, scope: !2541, inlinedAt: !2627)
!2631 = !DILocation(line: 104, column: 70, scope: !2541, inlinedAt: !2627)
!2632 = !DILocation(line: 104, column: 80, scope: !2541, inlinedAt: !2627)
!2633 = !DILocation(line: 104, column: 90, scope: !2541, inlinedAt: !2627)
!2634 = !DILocation(line: 106, column: 7, scope: !2562, inlinedAt: !2627)
!2635 = !DILocation(line: 106, column: 7, scope: !2541, inlinedAt: !2627)
!2636 = !DILocation(line: 90, column: 25, scope: !2565, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 111, column: 16, scope: !2576, inlinedAt: !2627)
!2638 = !DILocation(line: 90, column: 41, scope: !2565, inlinedAt: !2637)
!2639 = !DILocation(line: 90, column: 50, scope: !2565, inlinedAt: !2637)
!2640 = !DILocation(line: 90, column: 60, scope: !2565, inlinedAt: !2637)
!2641 = !DILocation(line: 90, column: 70, scope: !2565, inlinedAt: !2637)
!2642 = !DILocation(line: 90, column: 80, scope: !2565, inlinedAt: !2637)
!2643 = !DILocation(line: 92, column: 7, scope: !2584, inlinedAt: !2637)
!2644 = !DILocation(line: 92, column: 7, scope: !2565, inlinedAt: !2637)
!2645 = !DILocalVariable(name: "s1", arg: 1, scope: !2646, file: !2429, line: 76, type: !79)
!2646 = distinct !DISubprogram(name: "strcaseeq6", scope: !2429, file: !2429, line: 76, type: !2647, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!23, !79, !79, !26, !26, !26}
!2649 = !{!2645, !2650, !2651, !2652, !2653}
!2650 = !DILocalVariable(name: "s2", arg: 2, scope: !2646, file: !2429, line: 76, type: !79)
!2651 = !DILocalVariable(name: "s26", arg: 3, scope: !2646, file: !2429, line: 76, type: !26)
!2652 = !DILocalVariable(name: "s27", arg: 4, scope: !2646, file: !2429, line: 76, type: !26)
!2653 = !DILocalVariable(name: "s28", arg: 5, scope: !2646, file: !2429, line: 76, type: !26)
!2654 = !DILocation(line: 76, column: 25, scope: !2646, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 97, column: 16, scope: !2656, inlinedAt: !2637)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !2429, line: 94, column: 11)
!2657 = distinct !DILexicalBlock(scope: !2584, file: !2429, line: 93, column: 5)
!2658 = !DILocation(line: 76, column: 41, scope: !2646, inlinedAt: !2655)
!2659 = !DILocation(line: 76, column: 50, scope: !2646, inlinedAt: !2655)
!2660 = !DILocation(line: 76, column: 60, scope: !2646, inlinedAt: !2655)
!2661 = !DILocation(line: 76, column: 70, scope: !2646, inlinedAt: !2655)
!2662 = !DILocation(line: 78, column: 7, scope: !2663, inlinedAt: !2655)
!2663 = distinct !DILexicalBlock(scope: !2646, file: !2429, line: 78, column: 7)
!2664 = !DILocation(line: 78, column: 7, scope: !2646, inlinedAt: !2655)
!2665 = !DILocalVariable(name: "s1", arg: 1, scope: !2666, file: !2429, line: 62, type: !79)
!2666 = distinct !DISubprogram(name: "strcaseeq7", scope: !2429, file: !2429, line: 62, type: !2667, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!23, !79, !79, !26, !26}
!2669 = !{!2665, !2670, !2671, !2672}
!2670 = !DILocalVariable(name: "s2", arg: 2, scope: !2666, file: !2429, line: 62, type: !79)
!2671 = !DILocalVariable(name: "s27", arg: 3, scope: !2666, file: !2429, line: 62, type: !26)
!2672 = !DILocalVariable(name: "s28", arg: 4, scope: !2666, file: !2429, line: 62, type: !26)
!2673 = !DILocation(line: 62, column: 25, scope: !2666, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 83, column: 16, scope: !2675, inlinedAt: !2655)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !2429, line: 80, column: 11)
!2676 = distinct !DILexicalBlock(scope: !2663, file: !2429, line: 79, column: 5)
!2677 = !DILocation(line: 62, column: 41, scope: !2666, inlinedAt: !2674)
!2678 = !DILocation(line: 62, column: 50, scope: !2666, inlinedAt: !2674)
!2679 = !DILocation(line: 62, column: 60, scope: !2666, inlinedAt: !2674)
!2680 = !DILocation(line: 64, column: 7, scope: !2681, inlinedAt: !2674)
!2681 = distinct !DILexicalBlock(scope: !2666, file: !2429, line: 64, column: 7)
!2682 = !DILocation(line: 236, column: 7, scope: !2410)
!2683 = !DILocation(line: 237, column: 12, scope: !2592)
!2684 = !DILocation(line: 237, column: 21, scope: !2592)
!2685 = !DILocation(line: 237, column: 5, scope: !2592)
!2686 = !DILocation(line: 239, column: 13, scope: !2410)
!2687 = !DILocation(line: 239, column: 11, scope: !2410)
!2688 = !DILocation(line: 239, column: 3, scope: !2410)
!2689 = !DILocation(line: 0, scope: !2410)
!2690 = !DILocation(line: 240, column: 1, scope: !2410)
!2691 = distinct !DISubprogram(name: "quotearg_alloc", scope: !313, file: !313, line: 799, type: !2692, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!25, !79, !71, !1731}
!2694 = !{!2695, !2696, !2697}
!2695 = !DILocalVariable(name: "arg", arg: 1, scope: !2691, file: !313, line: 799, type: !79)
!2696 = !DILocalVariable(name: "argsize", arg: 2, scope: !2691, file: !313, line: 799, type: !71)
!2697 = !DILocalVariable(name: "o", arg: 3, scope: !2691, file: !313, line: 800, type: !1731)
!2698 = !DILocation(line: 799, column: 29, scope: !2691)
!2699 = !DILocation(line: 799, column: 41, scope: !2691)
!2700 = !DILocation(line: 800, column: 47, scope: !2691)
!2701 = !DILocalVariable(name: "arg", arg: 1, scope: !2702, file: !313, line: 812, type: !79)
!2702 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !313, file: !313, line: 812, type: !2703, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!25, !79, !71, !395, !1731}
!2705 = !{!2701, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713}
!2706 = !DILocalVariable(name: "argsize", arg: 2, scope: !2702, file: !313, line: 812, type: !71)
!2707 = !DILocalVariable(name: "size", arg: 3, scope: !2702, file: !313, line: 812, type: !395)
!2708 = !DILocalVariable(name: "o", arg: 4, scope: !2702, file: !313, line: 813, type: !1731)
!2709 = !DILocalVariable(name: "p", scope: !2702, file: !313, line: 815, type: !1731)
!2710 = !DILocalVariable(name: "e", scope: !2702, file: !313, line: 816, type: !23)
!2711 = !DILocalVariable(name: "flags", scope: !2702, file: !313, line: 818, type: !23)
!2712 = !DILocalVariable(name: "bufsize", scope: !2702, file: !313, line: 819, type: !71)
!2713 = !DILocalVariable(name: "buf", scope: !2702, file: !313, line: 823, type: !25)
!2714 = !DILocation(line: 812, column: 33, scope: !2702, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 802, column: 10, scope: !2691)
!2716 = !DILocation(line: 812, column: 45, scope: !2702, inlinedAt: !2715)
!2717 = !DILocation(line: 812, column: 62, scope: !2702, inlinedAt: !2715)
!2718 = !DILocation(line: 813, column: 51, scope: !2702, inlinedAt: !2715)
!2719 = !DILocation(line: 815, column: 37, scope: !2702, inlinedAt: !2715)
!2720 = !DILocation(line: 815, column: 33, scope: !2702, inlinedAt: !2715)
!2721 = !DILocation(line: 816, column: 11, scope: !2702, inlinedAt: !2715)
!2722 = !DILocation(line: 816, column: 7, scope: !2702, inlinedAt: !2715)
!2723 = !DILocation(line: 818, column: 18, scope: !2702, inlinedAt: !2715)
!2724 = !DILocation(line: 818, column: 24, scope: !2702, inlinedAt: !2715)
!2725 = !DILocation(line: 818, column: 7, scope: !2702, inlinedAt: !2715)
!2726 = !DILocation(line: 819, column: 69, scope: !2702, inlinedAt: !2715)
!2727 = !DILocation(line: 820, column: 53, scope: !2702, inlinedAt: !2715)
!2728 = !DILocation(line: 821, column: 49, scope: !2702, inlinedAt: !2715)
!2729 = !DILocation(line: 822, column: 49, scope: !2702, inlinedAt: !2715)
!2730 = !DILocation(line: 819, column: 20, scope: !2702, inlinedAt: !2715)
!2731 = !DILocation(line: 822, column: 62, scope: !2702, inlinedAt: !2715)
!2732 = !DILocation(line: 819, column: 10, scope: !2702, inlinedAt: !2715)
!2733 = !DILocalVariable(name: "n", arg: 1, scope: !2734, file: !391, line: 216, type: !71)
!2734 = distinct !DISubprogram(name: "xcharalloc", scope: !391, file: !391, line: 216, type: !2735, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2737)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!25, !71}
!2737 = !{!2733}
!2738 = !DILocation(line: 216, column: 20, scope: !2734, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 823, column: 15, scope: !2702, inlinedAt: !2715)
!2740 = !DILocation(line: 218, column: 10, scope: !2734, inlinedAt: !2739)
!2741 = !DILocation(line: 823, column: 9, scope: !2702, inlinedAt: !2715)
!2742 = !DILocation(line: 824, column: 60, scope: !2702, inlinedAt: !2715)
!2743 = !DILocation(line: 826, column: 32, scope: !2702, inlinedAt: !2715)
!2744 = !DILocation(line: 826, column: 47, scope: !2702, inlinedAt: !2715)
!2745 = !DILocation(line: 824, column: 3, scope: !2702, inlinedAt: !2715)
!2746 = !DILocation(line: 827, column: 9, scope: !2702, inlinedAt: !2715)
!2747 = !DILocation(line: 802, column: 3, scope: !2691)
!2748 = !DILocation(line: 812, column: 33, scope: !2702)
!2749 = !DILocation(line: 812, column: 45, scope: !2702)
!2750 = !DILocation(line: 812, column: 62, scope: !2702)
!2751 = !DILocation(line: 813, column: 51, scope: !2702)
!2752 = !DILocation(line: 815, column: 37, scope: !2702)
!2753 = !DILocation(line: 815, column: 33, scope: !2702)
!2754 = !DILocation(line: 816, column: 11, scope: !2702)
!2755 = !DILocation(line: 816, column: 7, scope: !2702)
!2756 = !DILocation(line: 818, column: 18, scope: !2702)
!2757 = !DILocation(line: 818, column: 27, scope: !2702)
!2758 = !DILocation(line: 818, column: 24, scope: !2702)
!2759 = !DILocation(line: 818, column: 7, scope: !2702)
!2760 = !DILocation(line: 819, column: 69, scope: !2702)
!2761 = !DILocation(line: 820, column: 53, scope: !2702)
!2762 = !DILocation(line: 821, column: 49, scope: !2702)
!2763 = !DILocation(line: 822, column: 49, scope: !2702)
!2764 = !DILocation(line: 819, column: 20, scope: !2702)
!2765 = !DILocation(line: 822, column: 62, scope: !2702)
!2766 = !DILocation(line: 819, column: 10, scope: !2702)
!2767 = !DILocation(line: 216, column: 20, scope: !2734, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 823, column: 15, scope: !2702)
!2769 = !DILocation(line: 218, column: 10, scope: !2734, inlinedAt: !2768)
!2770 = !DILocation(line: 823, column: 9, scope: !2702)
!2771 = !DILocation(line: 824, column: 60, scope: !2702)
!2772 = !DILocation(line: 826, column: 32, scope: !2702)
!2773 = !DILocation(line: 826, column: 47, scope: !2702)
!2774 = !DILocation(line: 824, column: 3, scope: !2702)
!2775 = !DILocation(line: 827, column: 9, scope: !2702)
!2776 = !DILocation(line: 828, column: 7, scope: !2702)
!2777 = !DILocation(line: 829, column: 11, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2702, file: !313, line: 828, column: 7)
!2779 = !DILocation(line: 829, column: 5, scope: !2778)
!2780 = !DILocation(line: 830, column: 3, scope: !2702)
!2781 = distinct !DISubprogram(name: "quotearg_free", scope: !313, file: !313, line: 848, type: !366, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2782)
!2782 = !{!2783, !2784}
!2783 = !DILocalVariable(name: "sv", scope: !2781, file: !313, line: 850, type: !337)
!2784 = !DILocalVariable(name: "i", scope: !2781, file: !313, line: 851, type: !23)
!2785 = !DILocation(line: 850, column: 24, scope: !2781)
!2786 = !DILocation(line: 850, column: 19, scope: !2781)
!2787 = !DILocation(line: 851, column: 7, scope: !2781)
!2788 = !DILocation(line: 852, column: 19, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !313, line: 852, column: 3)
!2790 = distinct !DILexicalBlock(scope: !2781, file: !313, line: 852, column: 3)
!2791 = !DILocation(line: 852, column: 17, scope: !2789)
!2792 = !DILocation(line: 852, column: 3, scope: !2790)
!2793 = !DILocation(line: 853, column: 17, scope: !2789)
!2794 = !{!2795, !852, i64 8}
!2795 = !{!"slotvec", !1051, i64 0, !852, i64 8}
!2796 = !DILocation(line: 853, column: 5, scope: !2789)
!2797 = !DILocation(line: 852, column: 28, scope: !2789)
!2798 = distinct !{!2798, !2792, !2799}
!2799 = !DILocation(line: 853, column: 20, scope: !2790)
!2800 = !DILocation(line: 854, column: 13, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2781, file: !313, line: 854, column: 7)
!2802 = !DILocation(line: 854, column: 17, scope: !2801)
!2803 = !DILocation(line: 854, column: 7, scope: !2781)
!2804 = !DILocation(line: 856, column: 7, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2801, file: !313, line: 855, column: 5)
!2806 = !DILocation(line: 857, column: 21, scope: !2805)
!2807 = !{!2795, !1051, i64 0}
!2808 = !DILocation(line: 858, column: 20, scope: !2805)
!2809 = !DILocation(line: 859, column: 5, scope: !2805)
!2810 = !DILocation(line: 860, column: 10, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2781, file: !313, line: 860, column: 7)
!2812 = !DILocation(line: 860, column: 7, scope: !2781)
!2813 = !DILocation(line: 862, column: 13, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2811, file: !313, line: 861, column: 5)
!2815 = !DILocation(line: 862, column: 7, scope: !2814)
!2816 = !DILocation(line: 863, column: 15, scope: !2814)
!2817 = !DILocation(line: 864, column: 5, scope: !2814)
!2818 = !DILocation(line: 865, column: 10, scope: !2781)
!2819 = !DILocation(line: 866, column: 1, scope: !2781)
!2820 = distinct !DISubprogram(name: "quotearg_n", scope: !313, file: !313, line: 931, type: !2821, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!25, !23, !79}
!2823 = !{!2824, !2825}
!2824 = !DILocalVariable(name: "n", arg: 1, scope: !2820, file: !313, line: 931, type: !23)
!2825 = !DILocalVariable(name: "arg", arg: 2, scope: !2820, file: !313, line: 931, type: !79)
!2826 = !DILocation(line: 931, column: 17, scope: !2820)
!2827 = !DILocation(line: 931, column: 32, scope: !2820)
!2828 = !DILocation(line: 933, column: 10, scope: !2820)
!2829 = !DILocation(line: 933, column: 3, scope: !2820)
!2830 = distinct !DISubprogram(name: "quotearg_n_options", scope: !313, file: !313, line: 877, type: !2831, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2833)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!25, !23, !79, !71, !1731}
!2833 = !{!2834, !2835, !2836, !2837, !2838, !2839, !2840, !2843, !2844, !2846, !2847, !2848}
!2834 = !DILocalVariable(name: "n", arg: 1, scope: !2830, file: !313, line: 877, type: !23)
!2835 = !DILocalVariable(name: "arg", arg: 2, scope: !2830, file: !313, line: 877, type: !79)
!2836 = !DILocalVariable(name: "argsize", arg: 3, scope: !2830, file: !313, line: 877, type: !71)
!2837 = !DILocalVariable(name: "options", arg: 4, scope: !2830, file: !313, line: 878, type: !1731)
!2838 = !DILocalVariable(name: "e", scope: !2830, file: !313, line: 880, type: !23)
!2839 = !DILocalVariable(name: "sv", scope: !2830, file: !313, line: 882, type: !337)
!2840 = !DILocalVariable(name: "preallocated", scope: !2841, file: !313, line: 889, type: !15)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !313, line: 888, column: 5)
!2842 = distinct !DILexicalBlock(scope: !2830, file: !313, line: 887, column: 7)
!2843 = !DILocalVariable(name: "nmax", scope: !2841, file: !313, line: 890, type: !23)
!2844 = !DILocalVariable(name: "size", scope: !2845, file: !313, line: 903, type: !71)
!2845 = distinct !DILexicalBlock(scope: !2830, file: !313, line: 902, column: 3)
!2846 = !DILocalVariable(name: "val", scope: !2845, file: !313, line: 904, type: !25)
!2847 = !DILocalVariable(name: "flags", scope: !2845, file: !313, line: 906, type: !23)
!2848 = !DILocalVariable(name: "qsize", scope: !2845, file: !313, line: 907, type: !71)
!2849 = !DILocation(line: 877, column: 25, scope: !2830)
!2850 = !DILocation(line: 877, column: 40, scope: !2830)
!2851 = !DILocation(line: 877, column: 52, scope: !2830)
!2852 = !DILocation(line: 878, column: 51, scope: !2830)
!2853 = !DILocation(line: 880, column: 11, scope: !2830)
!2854 = !DILocation(line: 880, column: 7, scope: !2830)
!2855 = !DILocation(line: 882, column: 24, scope: !2830)
!2856 = !DILocation(line: 882, column: 19, scope: !2830)
!2857 = !DILocation(line: 884, column: 9, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2830, file: !313, line: 884, column: 7)
!2859 = !DILocation(line: 884, column: 7, scope: !2830)
!2860 = !DILocation(line: 885, column: 5, scope: !2858)
!2861 = !DILocation(line: 887, column: 7, scope: !2842)
!2862 = !DILocation(line: 887, column: 14, scope: !2842)
!2863 = !DILocation(line: 887, column: 7, scope: !2830)
!2864 = !DILocation(line: 889, column: 31, scope: !2841)
!2865 = !DILocation(line: 890, column: 11, scope: !2841)
!2866 = !DILocation(line: 892, column: 16, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2841, file: !313, line: 892, column: 11)
!2868 = !DILocation(line: 892, column: 11, scope: !2841)
!2869 = !DILocation(line: 893, column: 9, scope: !2867)
!2870 = !DILocation(line: 895, column: 32, scope: !2841)
!2871 = !DILocation(line: 895, column: 61, scope: !2841)
!2872 = !DILocation(line: 895, column: 58, scope: !2841)
!2873 = !DILocation(line: 895, column: 66, scope: !2841)
!2874 = !DILocation(line: 895, column: 22, scope: !2841)
!2875 = !DILocation(line: 895, column: 15, scope: !2841)
!2876 = !DILocation(line: 896, column: 11, scope: !2841)
!2877 = !DILocation(line: 897, column: 15, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2841, file: !313, line: 896, column: 11)
!2879 = !{i64 0, i64 8, !1080, i64 8, i64 8, !851}
!2880 = !DILocation(line: 897, column: 9, scope: !2878)
!2881 = !DILocation(line: 898, column: 20, scope: !2841)
!2882 = !DILocation(line: 898, column: 18, scope: !2841)
!2883 = !DILocation(line: 898, column: 7, scope: !2841)
!2884 = !DILocation(line: 898, column: 38, scope: !2841)
!2885 = !DILocation(line: 898, column: 31, scope: !2841)
!2886 = !DILocation(line: 898, column: 48, scope: !2841)
!2887 = !DILocation(line: 899, column: 14, scope: !2841)
!2888 = !DILocation(line: 900, column: 5, scope: !2841)
!2889 = !DILocation(line: 0, scope: !2830)
!2890 = !DILocation(line: 903, column: 19, scope: !2845)
!2891 = !DILocation(line: 903, column: 25, scope: !2845)
!2892 = !DILocation(line: 903, column: 12, scope: !2845)
!2893 = !DILocation(line: 904, column: 23, scope: !2845)
!2894 = !DILocation(line: 904, column: 11, scope: !2845)
!2895 = !DILocation(line: 906, column: 26, scope: !2845)
!2896 = !DILocation(line: 906, column: 32, scope: !2845)
!2897 = !DILocation(line: 906, column: 9, scope: !2845)
!2898 = !DILocation(line: 908, column: 55, scope: !2845)
!2899 = !DILocation(line: 909, column: 46, scope: !2845)
!2900 = !DILocation(line: 910, column: 55, scope: !2845)
!2901 = !DILocation(line: 911, column: 55, scope: !2845)
!2902 = !DILocation(line: 907, column: 20, scope: !2845)
!2903 = !DILocation(line: 907, column: 12, scope: !2845)
!2904 = !DILocation(line: 913, column: 14, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2845, file: !313, line: 913, column: 9)
!2906 = !DILocation(line: 913, column: 9, scope: !2845)
!2907 = !DILocation(line: 915, column: 35, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2905, file: !313, line: 914, column: 7)
!2909 = !DILocation(line: 915, column: 20, scope: !2908)
!2910 = !DILocation(line: 916, column: 17, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2908, file: !313, line: 916, column: 13)
!2912 = !DILocation(line: 916, column: 13, scope: !2908)
!2913 = !DILocation(line: 917, column: 11, scope: !2911)
!2914 = !DILocation(line: 216, column: 20, scope: !2734, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 918, column: 27, scope: !2908)
!2916 = !DILocation(line: 218, column: 10, scope: !2734, inlinedAt: !2915)
!2917 = !DILocation(line: 918, column: 19, scope: !2908)
!2918 = !DILocation(line: 919, column: 69, scope: !2908)
!2919 = !DILocation(line: 921, column: 44, scope: !2908)
!2920 = !DILocation(line: 922, column: 44, scope: !2908)
!2921 = !DILocation(line: 919, column: 9, scope: !2908)
!2922 = !DILocation(line: 923, column: 7, scope: !2908)
!2923 = !DILocation(line: 0, scope: !2845)
!2924 = !DILocation(line: 925, column: 11, scope: !2845)
!2925 = !DILocation(line: 926, column: 5, scope: !2845)
!2926 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !313, file: !313, line: 937, type: !2927, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!25, !23, !79, !71}
!2929 = !{!2930, !2931, !2932}
!2930 = !DILocalVariable(name: "n", arg: 1, scope: !2926, file: !313, line: 937, type: !23)
!2931 = !DILocalVariable(name: "arg", arg: 2, scope: !2926, file: !313, line: 937, type: !79)
!2932 = !DILocalVariable(name: "argsize", arg: 3, scope: !2926, file: !313, line: 937, type: !71)
!2933 = !DILocation(line: 937, column: 21, scope: !2926)
!2934 = !DILocation(line: 937, column: 36, scope: !2926)
!2935 = !DILocation(line: 937, column: 48, scope: !2926)
!2936 = !DILocation(line: 939, column: 10, scope: !2926)
!2937 = !DILocation(line: 939, column: 3, scope: !2926)
!2938 = distinct !DISubprogram(name: "quotearg", scope: !313, file: !313, line: 943, type: !1477, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2939)
!2939 = !{!2940}
!2940 = !DILocalVariable(name: "arg", arg: 1, scope: !2938, file: !313, line: 943, type: !79)
!2941 = !DILocation(line: 943, column: 23, scope: !2938)
!2942 = !DILocation(line: 931, column: 17, scope: !2820, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 945, column: 10, scope: !2938)
!2944 = !DILocation(line: 931, column: 32, scope: !2820, inlinedAt: !2943)
!2945 = !DILocation(line: 933, column: 10, scope: !2820, inlinedAt: !2943)
!2946 = !DILocation(line: 945, column: 3, scope: !2938)
!2947 = distinct !DISubprogram(name: "quotearg_mem", scope: !313, file: !313, line: 949, type: !2948, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!25, !79, !71}
!2950 = !{!2951, !2952}
!2951 = !DILocalVariable(name: "arg", arg: 1, scope: !2947, file: !313, line: 949, type: !79)
!2952 = !DILocalVariable(name: "argsize", arg: 2, scope: !2947, file: !313, line: 949, type: !71)
!2953 = !DILocation(line: 949, column: 27, scope: !2947)
!2954 = !DILocation(line: 949, column: 39, scope: !2947)
!2955 = !DILocation(line: 937, column: 21, scope: !2926, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 951, column: 10, scope: !2947)
!2957 = !DILocation(line: 937, column: 36, scope: !2926, inlinedAt: !2956)
!2958 = !DILocation(line: 937, column: 48, scope: !2926, inlinedAt: !2956)
!2959 = !DILocation(line: 939, column: 10, scope: !2926, inlinedAt: !2956)
!2960 = !DILocation(line: 951, column: 3, scope: !2947)
!2961 = distinct !DISubprogram(name: "quotearg_n_style", scope: !313, file: !313, line: 955, type: !2962, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!25, !23, !212, !79}
!2964 = !{!2965, !2966, !2967, !2968}
!2965 = !DILocalVariable(name: "n", arg: 1, scope: !2961, file: !313, line: 955, type: !23)
!2966 = !DILocalVariable(name: "s", arg: 2, scope: !2961, file: !313, line: 955, type: !212)
!2967 = !DILocalVariable(name: "arg", arg: 3, scope: !2961, file: !313, line: 955, type: !79)
!2968 = !DILocalVariable(name: "o", scope: !2961, file: !313, line: 957, type: !1732)
!2969 = !DILocation(line: 955, column: 23, scope: !2961)
!2970 = !DILocation(line: 955, column: 45, scope: !2961)
!2971 = !DILocation(line: 955, column: 60, scope: !2961)
!2972 = !DILocation(line: 957, column: 3, scope: !2961)
!2973 = !DILocation(line: 957, column: 32, scope: !2961)
!2974 = !DILocalVariable(name: "style", arg: 1, scope: !2975, file: !313, line: 193, type: !212)
!2975 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !313, file: !313, line: 193, type: !2976, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!320, !212}
!2978 = !{!2974, !2979}
!2979 = !DILocalVariable(name: "o", scope: !2975, file: !313, line: 195, type: !320)
!2980 = !DILocation(line: 193, column: 48, scope: !2975, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 957, column: 36, scope: !2961)
!2982 = !DILocation(line: 195, column: 26, scope: !2975, inlinedAt: !2981)
!2983 = !{!2984}
!2984 = distinct !{!2984, !2985, !"quoting_options_from_style: argument 0"}
!2985 = distinct !{!2985, !"quoting_options_from_style"}
!2986 = !DILocation(line: 196, column: 13, scope: !2987, inlinedAt: !2981)
!2987 = distinct !DILexicalBlock(scope: !2975, file: !313, line: 196, column: 7)
!2988 = !DILocation(line: 196, column: 7, scope: !2975, inlinedAt: !2981)
!2989 = !DILocation(line: 197, column: 5, scope: !2987, inlinedAt: !2981)
!2990 = !DILocation(line: 198, column: 5, scope: !2975, inlinedAt: !2981)
!2991 = !DILocation(line: 198, column: 11, scope: !2975, inlinedAt: !2981)
!2992 = !DILocation(line: 958, column: 10, scope: !2961)
!2993 = !DILocation(line: 959, column: 1, scope: !2961)
!2994 = !DILocation(line: 958, column: 3, scope: !2961)
!2995 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !313, file: !313, line: 962, type: !2996, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!25, !23, !212, !79, !71}
!2998 = !{!2999, !3000, !3001, !3002, !3003}
!2999 = !DILocalVariable(name: "n", arg: 1, scope: !2995, file: !313, line: 962, type: !23)
!3000 = !DILocalVariable(name: "s", arg: 2, scope: !2995, file: !313, line: 962, type: !212)
!3001 = !DILocalVariable(name: "arg", arg: 3, scope: !2995, file: !313, line: 963, type: !79)
!3002 = !DILocalVariable(name: "argsize", arg: 4, scope: !2995, file: !313, line: 963, type: !71)
!3003 = !DILocalVariable(name: "o", scope: !2995, file: !313, line: 965, type: !1732)
!3004 = !DILocation(line: 962, column: 27, scope: !2995)
!3005 = !DILocation(line: 962, column: 49, scope: !2995)
!3006 = !DILocation(line: 963, column: 35, scope: !2995)
!3007 = !DILocation(line: 963, column: 47, scope: !2995)
!3008 = !DILocation(line: 965, column: 3, scope: !2995)
!3009 = !DILocation(line: 965, column: 32, scope: !2995)
!3010 = !DILocation(line: 193, column: 48, scope: !2975, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 965, column: 36, scope: !2995)
!3012 = !DILocation(line: 195, column: 26, scope: !2975, inlinedAt: !3011)
!3013 = !{!3014}
!3014 = distinct !{!3014, !3015, !"quoting_options_from_style: argument 0"}
!3015 = distinct !{!3015, !"quoting_options_from_style"}
!3016 = !DILocation(line: 196, column: 13, scope: !2987, inlinedAt: !3011)
!3017 = !DILocation(line: 196, column: 7, scope: !2975, inlinedAt: !3011)
!3018 = !DILocation(line: 197, column: 5, scope: !2987, inlinedAt: !3011)
!3019 = !DILocation(line: 198, column: 5, scope: !2975, inlinedAt: !3011)
!3020 = !DILocation(line: 198, column: 11, scope: !2975, inlinedAt: !3011)
!3021 = !DILocation(line: 966, column: 10, scope: !2995)
!3022 = !DILocation(line: 967, column: 1, scope: !2995)
!3023 = !DILocation(line: 966, column: 3, scope: !2995)
!3024 = distinct !DISubprogram(name: "quotearg_style", scope: !313, file: !313, line: 970, type: !3025, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!25, !212, !79}
!3027 = !{!3028, !3029}
!3028 = !DILocalVariable(name: "s", arg: 1, scope: !3024, file: !313, line: 970, type: !212)
!3029 = !DILocalVariable(name: "arg", arg: 2, scope: !3024, file: !313, line: 970, type: !79)
!3030 = !DILocation(line: 970, column: 36, scope: !3024)
!3031 = !DILocation(line: 970, column: 51, scope: !3024)
!3032 = !DILocation(line: 955, column: 23, scope: !2961, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 972, column: 10, scope: !3024)
!3034 = !DILocation(line: 955, column: 45, scope: !2961, inlinedAt: !3033)
!3035 = !DILocation(line: 955, column: 60, scope: !2961, inlinedAt: !3033)
!3036 = !DILocation(line: 957, column: 3, scope: !2961, inlinedAt: !3033)
!3037 = !DILocation(line: 957, column: 32, scope: !2961, inlinedAt: !3033)
!3038 = !DILocation(line: 193, column: 48, scope: !2975, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 957, column: 36, scope: !2961, inlinedAt: !3033)
!3040 = !DILocation(line: 195, column: 26, scope: !2975, inlinedAt: !3039)
!3041 = !{!3042}
!3042 = distinct !{!3042, !3043, !"quoting_options_from_style: argument 0"}
!3043 = distinct !{!3043, !"quoting_options_from_style"}
!3044 = !DILocation(line: 196, column: 13, scope: !2987, inlinedAt: !3039)
!3045 = !DILocation(line: 196, column: 7, scope: !2975, inlinedAt: !3039)
!3046 = !DILocation(line: 197, column: 5, scope: !2987, inlinedAt: !3039)
!3047 = !DILocation(line: 198, column: 5, scope: !2975, inlinedAt: !3039)
!3048 = !DILocation(line: 198, column: 11, scope: !2975, inlinedAt: !3039)
!3049 = !DILocation(line: 958, column: 10, scope: !2961, inlinedAt: !3033)
!3050 = !DILocation(line: 959, column: 1, scope: !2961, inlinedAt: !3033)
!3051 = !DILocation(line: 972, column: 3, scope: !3024)
!3052 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !313, file: !313, line: 976, type: !3053, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!25, !212, !79, !71}
!3055 = !{!3056, !3057, !3058}
!3056 = !DILocalVariable(name: "s", arg: 1, scope: !3052, file: !313, line: 976, type: !212)
!3057 = !DILocalVariable(name: "arg", arg: 2, scope: !3052, file: !313, line: 976, type: !79)
!3058 = !DILocalVariable(name: "argsize", arg: 3, scope: !3052, file: !313, line: 976, type: !71)
!3059 = !DILocation(line: 976, column: 40, scope: !3052)
!3060 = !DILocation(line: 976, column: 55, scope: !3052)
!3061 = !DILocation(line: 976, column: 67, scope: !3052)
!3062 = !DILocation(line: 962, column: 27, scope: !2995, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 978, column: 10, scope: !3052)
!3064 = !DILocation(line: 962, column: 49, scope: !2995, inlinedAt: !3063)
!3065 = !DILocation(line: 963, column: 35, scope: !2995, inlinedAt: !3063)
!3066 = !DILocation(line: 963, column: 47, scope: !2995, inlinedAt: !3063)
!3067 = !DILocation(line: 965, column: 3, scope: !2995, inlinedAt: !3063)
!3068 = !DILocation(line: 965, column: 32, scope: !2995, inlinedAt: !3063)
!3069 = !DILocation(line: 193, column: 48, scope: !2975, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 965, column: 36, scope: !2995, inlinedAt: !3063)
!3071 = !DILocation(line: 195, column: 26, scope: !2975, inlinedAt: !3070)
!3072 = !{!3073}
!3073 = distinct !{!3073, !3074, !"quoting_options_from_style: argument 0"}
!3074 = distinct !{!3074, !"quoting_options_from_style"}
!3075 = !DILocation(line: 196, column: 13, scope: !2987, inlinedAt: !3070)
!3076 = !DILocation(line: 196, column: 7, scope: !2975, inlinedAt: !3070)
!3077 = !DILocation(line: 197, column: 5, scope: !2987, inlinedAt: !3070)
!3078 = !DILocation(line: 198, column: 5, scope: !2975, inlinedAt: !3070)
!3079 = !DILocation(line: 198, column: 11, scope: !2975, inlinedAt: !3070)
!3080 = !DILocation(line: 966, column: 10, scope: !2995, inlinedAt: !3063)
!3081 = !DILocation(line: 967, column: 1, scope: !2995, inlinedAt: !3063)
!3082 = !DILocation(line: 978, column: 3, scope: !3052)
!3083 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !313, file: !313, line: 982, type: !3084, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!25, !79, !71, !26}
!3086 = !{!3087, !3088, !3089, !3090}
!3087 = !DILocalVariable(name: "arg", arg: 1, scope: !3083, file: !313, line: 982, type: !79)
!3088 = !DILocalVariable(name: "argsize", arg: 2, scope: !3083, file: !313, line: 982, type: !71)
!3089 = !DILocalVariable(name: "ch", arg: 3, scope: !3083, file: !313, line: 982, type: !26)
!3090 = !DILocalVariable(name: "options", scope: !3083, file: !313, line: 984, type: !320)
!3091 = !DILocation(line: 982, column: 32, scope: !3083)
!3092 = !DILocation(line: 982, column: 44, scope: !3083)
!3093 = !DILocation(line: 982, column: 58, scope: !3083)
!3094 = !DILocation(line: 984, column: 3, scope: !3083)
!3095 = !DILocation(line: 985, column: 13, scope: !3083)
!3096 = !{i64 0, i64 4, !996, i64 4, i64 4, !943, i64 8, i64 32, !996, i64 40, i64 8, !851, i64 48, i64 8, !851}
!3097 = !DILocation(line: 984, column: 26, scope: !3083)
!3098 = !DILocation(line: 152, column: 43, scope: !1753, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 986, column: 3, scope: !3083)
!3100 = !DILocation(line: 152, column: 51, scope: !1753, inlinedAt: !3099)
!3101 = !DILocation(line: 152, column: 58, scope: !1753, inlinedAt: !3099)
!3102 = !DILocation(line: 154, column: 17, scope: !1753, inlinedAt: !3099)
!3103 = !DILocation(line: 156, column: 62, scope: !1753, inlinedAt: !3099)
!3104 = !DILocation(line: 156, column: 57, scope: !1753, inlinedAt: !3099)
!3105 = !DILocation(line: 155, column: 17, scope: !1753, inlinedAt: !3099)
!3106 = !DILocation(line: 157, column: 15, scope: !1753, inlinedAt: !3099)
!3107 = !DILocation(line: 157, column: 7, scope: !1753, inlinedAt: !3099)
!3108 = !DILocation(line: 158, column: 12, scope: !1753, inlinedAt: !3099)
!3109 = !DILocation(line: 158, column: 15, scope: !1753, inlinedAt: !3099)
!3110 = !DILocation(line: 158, column: 25, scope: !1753, inlinedAt: !3099)
!3111 = !DILocation(line: 158, column: 7, scope: !1753, inlinedAt: !3099)
!3112 = !DILocation(line: 159, column: 18, scope: !1753, inlinedAt: !3099)
!3113 = !DILocation(line: 159, column: 23, scope: !1753, inlinedAt: !3099)
!3114 = !DILocation(line: 159, column: 6, scope: !1753, inlinedAt: !3099)
!3115 = !DILocation(line: 987, column: 10, scope: !3083)
!3116 = !DILocation(line: 988, column: 1, scope: !3083)
!3117 = !DILocation(line: 987, column: 3, scope: !3083)
!3118 = distinct !DISubprogram(name: "quotearg_char", scope: !313, file: !313, line: 991, type: !3119, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3121)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!25, !79, !26}
!3121 = !{!3122, !3123}
!3122 = !DILocalVariable(name: "arg", arg: 1, scope: !3118, file: !313, line: 991, type: !79)
!3123 = !DILocalVariable(name: "ch", arg: 2, scope: !3118, file: !313, line: 991, type: !26)
!3124 = !DILocation(line: 991, column: 28, scope: !3118)
!3125 = !DILocation(line: 991, column: 38, scope: !3118)
!3126 = !DILocation(line: 982, column: 32, scope: !3083, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 993, column: 10, scope: !3118)
!3128 = !DILocation(line: 982, column: 44, scope: !3083, inlinedAt: !3127)
!3129 = !DILocation(line: 982, column: 58, scope: !3083, inlinedAt: !3127)
!3130 = !DILocation(line: 984, column: 3, scope: !3083, inlinedAt: !3127)
!3131 = !DILocation(line: 985, column: 13, scope: !3083, inlinedAt: !3127)
!3132 = !DILocation(line: 984, column: 26, scope: !3083, inlinedAt: !3127)
!3133 = !DILocation(line: 152, column: 43, scope: !1753, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 986, column: 3, scope: !3083, inlinedAt: !3127)
!3135 = !DILocation(line: 152, column: 51, scope: !1753, inlinedAt: !3134)
!3136 = !DILocation(line: 152, column: 58, scope: !1753, inlinedAt: !3134)
!3137 = !DILocation(line: 154, column: 17, scope: !1753, inlinedAt: !3134)
!3138 = !DILocation(line: 156, column: 62, scope: !1753, inlinedAt: !3134)
!3139 = !DILocation(line: 156, column: 57, scope: !1753, inlinedAt: !3134)
!3140 = !DILocation(line: 155, column: 17, scope: !1753, inlinedAt: !3134)
!3141 = !DILocation(line: 157, column: 15, scope: !1753, inlinedAt: !3134)
!3142 = !DILocation(line: 157, column: 7, scope: !1753, inlinedAt: !3134)
!3143 = !DILocation(line: 158, column: 12, scope: !1753, inlinedAt: !3134)
!3144 = !DILocation(line: 158, column: 15, scope: !1753, inlinedAt: !3134)
!3145 = !DILocation(line: 158, column: 25, scope: !1753, inlinedAt: !3134)
!3146 = !DILocation(line: 158, column: 7, scope: !1753, inlinedAt: !3134)
!3147 = !DILocation(line: 159, column: 18, scope: !1753, inlinedAt: !3134)
!3148 = !DILocation(line: 159, column: 23, scope: !1753, inlinedAt: !3134)
!3149 = !DILocation(line: 159, column: 6, scope: !1753, inlinedAt: !3134)
!3150 = !DILocation(line: 987, column: 10, scope: !3083, inlinedAt: !3127)
!3151 = !DILocation(line: 988, column: 1, scope: !3083, inlinedAt: !3127)
!3152 = !DILocation(line: 993, column: 3, scope: !3118)
!3153 = distinct !DISubprogram(name: "quotearg_colon", scope: !313, file: !313, line: 997, type: !1477, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3154)
!3154 = !{!3155}
!3155 = !DILocalVariable(name: "arg", arg: 1, scope: !3153, file: !313, line: 997, type: !79)
!3156 = !DILocation(line: 997, column: 29, scope: !3153)
!3157 = !DILocation(line: 991, column: 28, scope: !3118, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 999, column: 10, scope: !3153)
!3159 = !DILocation(line: 991, column: 38, scope: !3118, inlinedAt: !3158)
!3160 = !DILocation(line: 982, column: 32, scope: !3083, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 993, column: 10, scope: !3118, inlinedAt: !3158)
!3162 = !DILocation(line: 982, column: 44, scope: !3083, inlinedAt: !3161)
!3163 = !DILocation(line: 982, column: 58, scope: !3083, inlinedAt: !3161)
!3164 = !DILocation(line: 984, column: 3, scope: !3083, inlinedAt: !3161)
!3165 = !DILocation(line: 985, column: 13, scope: !3083, inlinedAt: !3161)
!3166 = !DILocation(line: 984, column: 26, scope: !3083, inlinedAt: !3161)
!3167 = !DILocation(line: 152, column: 43, scope: !1753, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 986, column: 3, scope: !3083, inlinedAt: !3161)
!3169 = !DILocation(line: 152, column: 51, scope: !1753, inlinedAt: !3168)
!3170 = !DILocation(line: 152, column: 58, scope: !1753, inlinedAt: !3168)
!3171 = !DILocation(line: 154, column: 17, scope: !1753, inlinedAt: !3168)
!3172 = !DILocation(line: 156, column: 57, scope: !1753, inlinedAt: !3168)
!3173 = !DILocation(line: 155, column: 17, scope: !1753, inlinedAt: !3168)
!3174 = !DILocation(line: 157, column: 7, scope: !1753, inlinedAt: !3168)
!3175 = !DILocation(line: 158, column: 12, scope: !1753, inlinedAt: !3168)
!3176 = !DILocation(line: 159, column: 6, scope: !1753, inlinedAt: !3168)
!3177 = !DILocation(line: 987, column: 10, scope: !3083, inlinedAt: !3161)
!3178 = !DILocation(line: 988, column: 1, scope: !3083, inlinedAt: !3161)
!3179 = !DILocation(line: 999, column: 3, scope: !3153)
!3180 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !313, file: !313, line: 1003, type: !2948, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3181)
!3181 = !{!3182, !3183}
!3182 = !DILocalVariable(name: "arg", arg: 1, scope: !3180, file: !313, line: 1003, type: !79)
!3183 = !DILocalVariable(name: "argsize", arg: 2, scope: !3180, file: !313, line: 1003, type: !71)
!3184 = !DILocation(line: 1003, column: 33, scope: !3180)
!3185 = !DILocation(line: 1003, column: 45, scope: !3180)
!3186 = !DILocation(line: 982, column: 32, scope: !3083, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 1005, column: 10, scope: !3180)
!3188 = !DILocation(line: 982, column: 44, scope: !3083, inlinedAt: !3187)
!3189 = !DILocation(line: 982, column: 58, scope: !3083, inlinedAt: !3187)
!3190 = !DILocation(line: 984, column: 3, scope: !3083, inlinedAt: !3187)
!3191 = !DILocation(line: 985, column: 13, scope: !3083, inlinedAt: !3187)
!3192 = !DILocation(line: 984, column: 26, scope: !3083, inlinedAt: !3187)
!3193 = !DILocation(line: 152, column: 43, scope: !1753, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 986, column: 3, scope: !3083, inlinedAt: !3187)
!3195 = !DILocation(line: 152, column: 51, scope: !1753, inlinedAt: !3194)
!3196 = !DILocation(line: 152, column: 58, scope: !1753, inlinedAt: !3194)
!3197 = !DILocation(line: 154, column: 17, scope: !1753, inlinedAt: !3194)
!3198 = !DILocation(line: 156, column: 57, scope: !1753, inlinedAt: !3194)
!3199 = !DILocation(line: 155, column: 17, scope: !1753, inlinedAt: !3194)
!3200 = !DILocation(line: 157, column: 7, scope: !1753, inlinedAt: !3194)
!3201 = !DILocation(line: 158, column: 12, scope: !1753, inlinedAt: !3194)
!3202 = !DILocation(line: 159, column: 6, scope: !1753, inlinedAt: !3194)
!3203 = !DILocation(line: 987, column: 10, scope: !3083, inlinedAt: !3187)
!3204 = !DILocation(line: 988, column: 1, scope: !3083, inlinedAt: !3187)
!3205 = !DILocation(line: 1005, column: 3, scope: !3180)
!3206 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !313, file: !313, line: 1009, type: !2962, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3207)
!3207 = !{!3208, !3209, !3210, !3211}
!3208 = !DILocalVariable(name: "n", arg: 1, scope: !3206, file: !313, line: 1009, type: !23)
!3209 = !DILocalVariable(name: "s", arg: 2, scope: !3206, file: !313, line: 1009, type: !212)
!3210 = !DILocalVariable(name: "arg", arg: 3, scope: !3206, file: !313, line: 1009, type: !79)
!3211 = !DILocalVariable(name: "options", scope: !3206, file: !313, line: 1011, type: !320)
!3212 = !DILocation(line: 195, column: 26, scope: !2975, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 1012, column: 13, scope: !3206)
!3214 = !DILocation(line: 1009, column: 29, scope: !3206)
!3215 = !DILocation(line: 1009, column: 51, scope: !3206)
!3216 = !DILocation(line: 1009, column: 66, scope: !3206)
!3217 = !DILocation(line: 1011, column: 3, scope: !3206)
!3218 = !DILocation(line: 1012, column: 13, scope: !3206)
!3219 = !DILocation(line: 193, column: 48, scope: !2975, inlinedAt: !3213)
!3220 = !{!3221}
!3221 = distinct !{!3221, !3222, !"quoting_options_from_style: argument 0"}
!3222 = distinct !{!3222, !"quoting_options_from_style"}
!3223 = !DILocation(line: 196, column: 13, scope: !2987, inlinedAt: !3213)
!3224 = !DILocation(line: 196, column: 7, scope: !2975, inlinedAt: !3213)
!3225 = !DILocation(line: 197, column: 5, scope: !2987, inlinedAt: !3213)
!3226 = !DILocation(line: 1011, column: 26, scope: !3206)
!3227 = !DILocation(line: 152, column: 43, scope: !1753, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 1013, column: 3, scope: !3206)
!3229 = !DILocation(line: 152, column: 51, scope: !1753, inlinedAt: !3228)
!3230 = !DILocation(line: 152, column: 58, scope: !1753, inlinedAt: !3228)
!3231 = !DILocation(line: 154, column: 17, scope: !1753, inlinedAt: !3228)
!3232 = !DILocation(line: 156, column: 57, scope: !1753, inlinedAt: !3228)
!3233 = !DILocation(line: 155, column: 17, scope: !1753, inlinedAt: !3228)
!3234 = !DILocation(line: 157, column: 7, scope: !1753, inlinedAt: !3228)
!3235 = !DILocation(line: 158, column: 12, scope: !1753, inlinedAt: !3228)
!3236 = !DILocation(line: 159, column: 6, scope: !1753, inlinedAt: !3228)
!3237 = !DILocation(line: 1014, column: 10, scope: !3206)
!3238 = !DILocation(line: 1015, column: 1, scope: !3206)
!3239 = !DILocation(line: 1014, column: 3, scope: !3206)
!3240 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !313, file: !313, line: 1018, type: !3241, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3243)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!25, !23, !79, !79, !79}
!3243 = !{!3244, !3245, !3246, !3247}
!3244 = !DILocalVariable(name: "n", arg: 1, scope: !3240, file: !313, line: 1018, type: !23)
!3245 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3240, file: !313, line: 1018, type: !79)
!3246 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3240, file: !313, line: 1019, type: !79)
!3247 = !DILocalVariable(name: "arg", arg: 4, scope: !3240, file: !313, line: 1019, type: !79)
!3248 = !DILocation(line: 1018, column: 24, scope: !3240)
!3249 = !DILocation(line: 1018, column: 39, scope: !3240)
!3250 = !DILocation(line: 1019, column: 32, scope: !3240)
!3251 = !DILocation(line: 1019, column: 57, scope: !3240)
!3252 = !DILocalVariable(name: "n", arg: 1, scope: !3253, file: !313, line: 1026, type: !23)
!3253 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !313, file: !313, line: 1026, type: !3254, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3256)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!25, !23, !79, !79, !79, !71}
!3256 = !{!3252, !3257, !3258, !3259, !3260, !3261}
!3257 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3253, file: !313, line: 1026, type: !79)
!3258 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3253, file: !313, line: 1027, type: !79)
!3259 = !DILocalVariable(name: "arg", arg: 4, scope: !3253, file: !313, line: 1028, type: !79)
!3260 = !DILocalVariable(name: "argsize", arg: 5, scope: !3253, file: !313, line: 1028, type: !71)
!3261 = !DILocalVariable(name: "o", scope: !3253, file: !313, line: 1030, type: !320)
!3262 = !DILocation(line: 1026, column: 28, scope: !3253, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 1021, column: 10, scope: !3240)
!3264 = !DILocation(line: 1026, column: 43, scope: !3253, inlinedAt: !3263)
!3265 = !DILocation(line: 1027, column: 36, scope: !3253, inlinedAt: !3263)
!3266 = !DILocation(line: 1028, column: 36, scope: !3253, inlinedAt: !3263)
!3267 = !DILocation(line: 1028, column: 48, scope: !3253, inlinedAt: !3263)
!3268 = !DILocation(line: 1030, column: 3, scope: !3253, inlinedAt: !3263)
!3269 = !DILocation(line: 1030, column: 30, scope: !3253, inlinedAt: !3263)
!3270 = !DILocation(line: 1030, column: 26, scope: !3253, inlinedAt: !3263)
!3271 = !DILocation(line: 179, column: 45, scope: !1801, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 1031, column: 3, scope: !3253, inlinedAt: !3263)
!3273 = !DILocation(line: 180, column: 33, scope: !1801, inlinedAt: !3272)
!3274 = !DILocation(line: 180, column: 57, scope: !1801, inlinedAt: !3272)
!3275 = !DILocation(line: 184, column: 6, scope: !1801, inlinedAt: !3272)
!3276 = !DILocation(line: 184, column: 12, scope: !1801, inlinedAt: !3272)
!3277 = !DILocation(line: 185, column: 8, scope: !1817, inlinedAt: !3272)
!3278 = !DILocation(line: 185, column: 23, scope: !1817, inlinedAt: !3272)
!3279 = !DILocation(line: 185, column: 19, scope: !1817, inlinedAt: !3272)
!3280 = !DILocation(line: 186, column: 5, scope: !1817, inlinedAt: !3272)
!3281 = !DILocation(line: 187, column: 6, scope: !1801, inlinedAt: !3272)
!3282 = !DILocation(line: 187, column: 17, scope: !1801, inlinedAt: !3272)
!3283 = !DILocation(line: 188, column: 6, scope: !1801, inlinedAt: !3272)
!3284 = !DILocation(line: 188, column: 18, scope: !1801, inlinedAt: !3272)
!3285 = !DILocation(line: 1032, column: 10, scope: !3253, inlinedAt: !3263)
!3286 = !DILocation(line: 1033, column: 1, scope: !3253, inlinedAt: !3263)
!3287 = !DILocation(line: 1021, column: 3, scope: !3240)
!3288 = !DILocation(line: 1026, column: 28, scope: !3253)
!3289 = !DILocation(line: 1026, column: 43, scope: !3253)
!3290 = !DILocation(line: 1027, column: 36, scope: !3253)
!3291 = !DILocation(line: 1028, column: 36, scope: !3253)
!3292 = !DILocation(line: 1028, column: 48, scope: !3253)
!3293 = !DILocation(line: 1030, column: 3, scope: !3253)
!3294 = !DILocation(line: 1030, column: 30, scope: !3253)
!3295 = !DILocation(line: 1030, column: 26, scope: !3253)
!3296 = !DILocation(line: 179, column: 45, scope: !1801, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 1031, column: 3, scope: !3253)
!3298 = !DILocation(line: 180, column: 33, scope: !1801, inlinedAt: !3297)
!3299 = !DILocation(line: 180, column: 57, scope: !1801, inlinedAt: !3297)
!3300 = !DILocation(line: 184, column: 6, scope: !1801, inlinedAt: !3297)
!3301 = !DILocation(line: 184, column: 12, scope: !1801, inlinedAt: !3297)
!3302 = !DILocation(line: 185, column: 8, scope: !1817, inlinedAt: !3297)
!3303 = !DILocation(line: 185, column: 23, scope: !1817, inlinedAt: !3297)
!3304 = !DILocation(line: 185, column: 19, scope: !1817, inlinedAt: !3297)
!3305 = !DILocation(line: 186, column: 5, scope: !1817, inlinedAt: !3297)
!3306 = !DILocation(line: 187, column: 6, scope: !1801, inlinedAt: !3297)
!3307 = !DILocation(line: 187, column: 17, scope: !1801, inlinedAt: !3297)
!3308 = !DILocation(line: 188, column: 6, scope: !1801, inlinedAt: !3297)
!3309 = !DILocation(line: 188, column: 18, scope: !1801, inlinedAt: !3297)
!3310 = !DILocation(line: 1032, column: 10, scope: !3253)
!3311 = !DILocation(line: 1033, column: 1, scope: !3253)
!3312 = !DILocation(line: 1032, column: 3, scope: !3253)
!3313 = distinct !DISubprogram(name: "quotearg_custom", scope: !313, file: !313, line: 1036, type: !3314, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!25, !79, !79, !79}
!3316 = !{!3317, !3318, !3319}
!3317 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3313, file: !313, line: 1036, type: !79)
!3318 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3313, file: !313, line: 1036, type: !79)
!3319 = !DILocalVariable(name: "arg", arg: 3, scope: !3313, file: !313, line: 1037, type: !79)
!3320 = !DILocation(line: 1036, column: 30, scope: !3313)
!3321 = !DILocation(line: 1036, column: 54, scope: !3313)
!3322 = !DILocation(line: 1037, column: 30, scope: !3313)
!3323 = !DILocation(line: 1018, column: 24, scope: !3240, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 1039, column: 10, scope: !3313)
!3325 = !DILocation(line: 1018, column: 39, scope: !3240, inlinedAt: !3324)
!3326 = !DILocation(line: 1019, column: 32, scope: !3240, inlinedAt: !3324)
!3327 = !DILocation(line: 1019, column: 57, scope: !3240, inlinedAt: !3324)
!3328 = !DILocation(line: 1026, column: 28, scope: !3253, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 1021, column: 10, scope: !3240, inlinedAt: !3324)
!3330 = !DILocation(line: 1026, column: 43, scope: !3253, inlinedAt: !3329)
!3331 = !DILocation(line: 1027, column: 36, scope: !3253, inlinedAt: !3329)
!3332 = !DILocation(line: 1028, column: 36, scope: !3253, inlinedAt: !3329)
!3333 = !DILocation(line: 1028, column: 48, scope: !3253, inlinedAt: !3329)
!3334 = !DILocation(line: 1030, column: 3, scope: !3253, inlinedAt: !3329)
!3335 = !DILocation(line: 1030, column: 30, scope: !3253, inlinedAt: !3329)
!3336 = !DILocation(line: 1030, column: 26, scope: !3253, inlinedAt: !3329)
!3337 = !DILocation(line: 179, column: 45, scope: !1801, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 1031, column: 3, scope: !3253, inlinedAt: !3329)
!3339 = !DILocation(line: 180, column: 33, scope: !1801, inlinedAt: !3338)
!3340 = !DILocation(line: 180, column: 57, scope: !1801, inlinedAt: !3338)
!3341 = !DILocation(line: 184, column: 6, scope: !1801, inlinedAt: !3338)
!3342 = !DILocation(line: 184, column: 12, scope: !1801, inlinedAt: !3338)
!3343 = !DILocation(line: 185, column: 8, scope: !1817, inlinedAt: !3338)
!3344 = !DILocation(line: 185, column: 23, scope: !1817, inlinedAt: !3338)
!3345 = !DILocation(line: 185, column: 19, scope: !1817, inlinedAt: !3338)
!3346 = !DILocation(line: 186, column: 5, scope: !1817, inlinedAt: !3338)
!3347 = !DILocation(line: 187, column: 6, scope: !1801, inlinedAt: !3338)
!3348 = !DILocation(line: 187, column: 17, scope: !1801, inlinedAt: !3338)
!3349 = !DILocation(line: 188, column: 6, scope: !1801, inlinedAt: !3338)
!3350 = !DILocation(line: 188, column: 18, scope: !1801, inlinedAt: !3338)
!3351 = !DILocation(line: 1032, column: 10, scope: !3253, inlinedAt: !3329)
!3352 = !DILocation(line: 1033, column: 1, scope: !3253, inlinedAt: !3329)
!3353 = !DILocation(line: 1039, column: 3, scope: !3313)
!3354 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !313, file: !313, line: 1043, type: !3355, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3357)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!25, !79, !79, !79, !71}
!3357 = !{!3358, !3359, !3360, !3361}
!3358 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3354, file: !313, line: 1043, type: !79)
!3359 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3354, file: !313, line: 1043, type: !79)
!3360 = !DILocalVariable(name: "arg", arg: 3, scope: !3354, file: !313, line: 1044, type: !79)
!3361 = !DILocalVariable(name: "argsize", arg: 4, scope: !3354, file: !313, line: 1044, type: !71)
!3362 = !DILocation(line: 1043, column: 34, scope: !3354)
!3363 = !DILocation(line: 1043, column: 58, scope: !3354)
!3364 = !DILocation(line: 1044, column: 34, scope: !3354)
!3365 = !DILocation(line: 1044, column: 46, scope: !3354)
!3366 = !DILocation(line: 1026, column: 28, scope: !3253, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 1046, column: 10, scope: !3354)
!3368 = !DILocation(line: 1026, column: 43, scope: !3253, inlinedAt: !3367)
!3369 = !DILocation(line: 1027, column: 36, scope: !3253, inlinedAt: !3367)
!3370 = !DILocation(line: 1028, column: 36, scope: !3253, inlinedAt: !3367)
!3371 = !DILocation(line: 1028, column: 48, scope: !3253, inlinedAt: !3367)
!3372 = !DILocation(line: 1030, column: 3, scope: !3253, inlinedAt: !3367)
!3373 = !DILocation(line: 1030, column: 30, scope: !3253, inlinedAt: !3367)
!3374 = !DILocation(line: 1030, column: 26, scope: !3253, inlinedAt: !3367)
!3375 = !DILocation(line: 179, column: 45, scope: !1801, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 1031, column: 3, scope: !3253, inlinedAt: !3367)
!3377 = !DILocation(line: 180, column: 33, scope: !1801, inlinedAt: !3376)
!3378 = !DILocation(line: 180, column: 57, scope: !1801, inlinedAt: !3376)
!3379 = !DILocation(line: 184, column: 6, scope: !1801, inlinedAt: !3376)
!3380 = !DILocation(line: 184, column: 12, scope: !1801, inlinedAt: !3376)
!3381 = !DILocation(line: 185, column: 8, scope: !1817, inlinedAt: !3376)
!3382 = !DILocation(line: 185, column: 23, scope: !1817, inlinedAt: !3376)
!3383 = !DILocation(line: 185, column: 19, scope: !1817, inlinedAt: !3376)
!3384 = !DILocation(line: 186, column: 5, scope: !1817, inlinedAt: !3376)
!3385 = !DILocation(line: 187, column: 6, scope: !1801, inlinedAt: !3376)
!3386 = !DILocation(line: 187, column: 17, scope: !1801, inlinedAt: !3376)
!3387 = !DILocation(line: 188, column: 6, scope: !1801, inlinedAt: !3376)
!3388 = !DILocation(line: 188, column: 18, scope: !1801, inlinedAt: !3376)
!3389 = !DILocation(line: 1032, column: 10, scope: !3253, inlinedAt: !3367)
!3390 = !DILocation(line: 1033, column: 1, scope: !3253, inlinedAt: !3367)
!3391 = !DILocation(line: 1046, column: 3, scope: !3354)
!3392 = distinct !DISubprogram(name: "quote_n_mem", scope: !313, file: !313, line: 1061, type: !3393, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3395)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!79, !23, !79, !71}
!3395 = !{!3396, !3397, !3398}
!3396 = !DILocalVariable(name: "n", arg: 1, scope: !3392, file: !313, line: 1061, type: !23)
!3397 = !DILocalVariable(name: "arg", arg: 2, scope: !3392, file: !313, line: 1061, type: !79)
!3398 = !DILocalVariable(name: "argsize", arg: 3, scope: !3392, file: !313, line: 1061, type: !71)
!3399 = !DILocation(line: 1061, column: 18, scope: !3392)
!3400 = !DILocation(line: 1061, column: 33, scope: !3392)
!3401 = !DILocation(line: 1061, column: 45, scope: !3392)
!3402 = !DILocation(line: 1063, column: 10, scope: !3392)
!3403 = !DILocation(line: 1063, column: 3, scope: !3392)
!3404 = distinct !DISubprogram(name: "quote_mem", scope: !313, file: !313, line: 1067, type: !3405, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!79, !79, !71}
!3407 = !{!3408, !3409}
!3408 = !DILocalVariable(name: "arg", arg: 1, scope: !3404, file: !313, line: 1067, type: !79)
!3409 = !DILocalVariable(name: "argsize", arg: 2, scope: !3404, file: !313, line: 1067, type: !71)
!3410 = !DILocation(line: 1067, column: 24, scope: !3404)
!3411 = !DILocation(line: 1067, column: 36, scope: !3404)
!3412 = !DILocation(line: 1061, column: 18, scope: !3392, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 1069, column: 10, scope: !3404)
!3414 = !DILocation(line: 1061, column: 33, scope: !3392, inlinedAt: !3413)
!3415 = !DILocation(line: 1061, column: 45, scope: !3392, inlinedAt: !3413)
!3416 = !DILocation(line: 1063, column: 10, scope: !3392, inlinedAt: !3413)
!3417 = !DILocation(line: 1069, column: 3, scope: !3404)
!3418 = distinct !DISubprogram(name: "quote_n", scope: !313, file: !313, line: 1073, type: !3419, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!79, !23, !79}
!3421 = !{!3422, !3423}
!3422 = !DILocalVariable(name: "n", arg: 1, scope: !3418, file: !313, line: 1073, type: !23)
!3423 = !DILocalVariable(name: "arg", arg: 2, scope: !3418, file: !313, line: 1073, type: !79)
!3424 = !DILocation(line: 1073, column: 14, scope: !3418)
!3425 = !DILocation(line: 1073, column: 29, scope: !3418)
!3426 = !DILocation(line: 1061, column: 18, scope: !3392, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 1075, column: 10, scope: !3418)
!3428 = !DILocation(line: 1061, column: 33, scope: !3392, inlinedAt: !3427)
!3429 = !DILocation(line: 1061, column: 45, scope: !3392, inlinedAt: !3427)
!3430 = !DILocation(line: 1063, column: 10, scope: !3392, inlinedAt: !3427)
!3431 = !DILocation(line: 1075, column: 3, scope: !3418)
!3432 = distinct !DISubprogram(name: "quote", scope: !313, file: !313, line: 1079, type: !3433, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!79, !79}
!3435 = !{!3436}
!3436 = !DILocalVariable(name: "arg", arg: 1, scope: !3432, file: !313, line: 1079, type: !79)
!3437 = !DILocation(line: 1079, column: 20, scope: !3432)
!3438 = !DILocation(line: 1073, column: 14, scope: !3418, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 1081, column: 10, scope: !3432)
!3440 = !DILocation(line: 1073, column: 29, scope: !3418, inlinedAt: !3439)
!3441 = !DILocation(line: 1061, column: 18, scope: !3392, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 1075, column: 10, scope: !3418, inlinedAt: !3439)
!3443 = !DILocation(line: 1061, column: 33, scope: !3392, inlinedAt: !3442)
!3444 = !DILocation(line: 1061, column: 45, scope: !3392, inlinedAt: !3442)
!3445 = !DILocation(line: 1063, column: 10, scope: !3392, inlinedAt: !3442)
!3446 = !DILocation(line: 1081, column: 3, scope: !3432)
!3447 = distinct !DISubprogram(name: "version_etc_arn", scope: !383, file: !383, line: 62, type: !3448, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3485)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{null, !3450, !79, !79, !79, !3484, !71}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !3452)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !3453)
!3453 = !{!3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3452, file: !20, line: 51, baseType: !23, size: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3452, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3452, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3452, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3452, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3452, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3452, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3452, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3452, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3452, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3452, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3452, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3452, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3452, file: !20, line: 70, baseType: !3468, size: 64, offset: 832)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3452, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3452, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3452, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3452, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3452, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3452, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3452, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3452, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3452, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3452, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3452, file: !20, line: 93, baseType: !3468, size: 64, offset: 1344)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3452, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3452, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3452, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3452, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491}
!3486 = !DILocalVariable(name: "stream", arg: 1, scope: !3447, file: !383, line: 62, type: !3450)
!3487 = !DILocalVariable(name: "command_name", arg: 2, scope: !3447, file: !383, line: 63, type: !79)
!3488 = !DILocalVariable(name: "package", arg: 3, scope: !3447, file: !383, line: 63, type: !79)
!3489 = !DILocalVariable(name: "version", arg: 4, scope: !3447, file: !383, line: 64, type: !79)
!3490 = !DILocalVariable(name: "authors", arg: 5, scope: !3447, file: !383, line: 65, type: !3484)
!3491 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3447, file: !383, line: 65, type: !71)
!3492 = !DILocation(line: 62, column: 24, scope: !3447)
!3493 = !DILocation(line: 63, column: 30, scope: !3447)
!3494 = !DILocation(line: 63, column: 56, scope: !3447)
!3495 = !DILocation(line: 64, column: 30, scope: !3447)
!3496 = !DILocation(line: 65, column: 39, scope: !3447)
!3497 = !DILocation(line: 65, column: 55, scope: !3447)
!3498 = !DILocation(line: 67, column: 7, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3447, file: !383, line: 67, column: 7)
!3500 = !DILocation(line: 67, column: 7, scope: !3447)
!3501 = !DILocation(line: 68, column: 5, scope: !3499)
!3502 = !DILocation(line: 70, column: 5, scope: !3499)
!3503 = !DILocation(line: 84, column: 3, scope: !3447)
!3504 = !DILocation(line: 86, column: 3, scope: !3447)
!3505 = !DILocation(line: 95, column: 3, scope: !3447)
!3506 = !DILocation(line: 99, column: 7, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3447, file: !383, line: 96, column: 5)
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
!3528 = !DILocation(line: 173, column: 1, scope: !3447)
!3529 = distinct !DISubprogram(name: "version_etc_ar", scope: !383, file: !383, line: 180, type: !3530, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{null, !3450, !79, !79, !79, !3484}
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538}
!3533 = !DILocalVariable(name: "stream", arg: 1, scope: !3529, file: !383, line: 180, type: !3450)
!3534 = !DILocalVariable(name: "command_name", arg: 2, scope: !3529, file: !383, line: 181, type: !79)
!3535 = !DILocalVariable(name: "package", arg: 3, scope: !3529, file: !383, line: 181, type: !79)
!3536 = !DILocalVariable(name: "version", arg: 4, scope: !3529, file: !383, line: 182, type: !79)
!3537 = !DILocalVariable(name: "authors", arg: 5, scope: !3529, file: !383, line: 182, type: !3484)
!3538 = !DILocalVariable(name: "n_authors", scope: !3529, file: !383, line: 184, type: !71)
!3539 = !DILocation(line: 180, column: 23, scope: !3529)
!3540 = !DILocation(line: 181, column: 29, scope: !3529)
!3541 = !DILocation(line: 181, column: 55, scope: !3529)
!3542 = !DILocation(line: 182, column: 29, scope: !3529)
!3543 = !DILocation(line: 182, column: 59, scope: !3529)
!3544 = !DILocation(line: 184, column: 10, scope: !3529)
!3545 = !DILocation(line: 186, column: 8, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3529, file: !383, line: 186, column: 3)
!3547 = !DILocation(line: 0, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3546, file: !383, line: 186, column: 3)
!3549 = !DILocation(line: 186, column: 23, scope: !3548)
!3550 = !DILocation(line: 186, column: 3, scope: !3546)
!3551 = !DILocation(line: 186, column: 52, scope: !3548)
!3552 = distinct !{!3552, !3550, !3553}
!3553 = !DILocation(line: 187, column: 5, scope: !3546)
!3554 = !DILocation(line: 188, column: 3, scope: !3529)
!3555 = !DILocation(line: 189, column: 1, scope: !3529)
!3556 = distinct !DISubprogram(name: "version_etc_va", scope: !383, file: !383, line: 196, type: !3557, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3566)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{null, !3450, !79, !79, !79, !3559}
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !380, line: 189, size: 192, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3565}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3560, file: !380, line: 189, baseType: !6, size: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3560, file: !380, line: 189, baseType: !6, size: 32, offset: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3560, file: !380, line: 189, baseType: !69, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3560, file: !380, line: 189, baseType: !69, size: 64, offset: 128)
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572, !3573}
!3567 = !DILocalVariable(name: "stream", arg: 1, scope: !3556, file: !383, line: 196, type: !3450)
!3568 = !DILocalVariable(name: "command_name", arg: 2, scope: !3556, file: !383, line: 197, type: !79)
!3569 = !DILocalVariable(name: "package", arg: 3, scope: !3556, file: !383, line: 197, type: !79)
!3570 = !DILocalVariable(name: "version", arg: 4, scope: !3556, file: !383, line: 198, type: !79)
!3571 = !DILocalVariable(name: "authors", arg: 5, scope: !3556, file: !383, line: 198, type: !3559)
!3572 = !DILocalVariable(name: "n_authors", scope: !3556, file: !383, line: 200, type: !71)
!3573 = !DILocalVariable(name: "authtab", scope: !3556, file: !383, line: 201, type: !3574)
!3574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 640, elements: !316)
!3575 = !DILocation(line: 196, column: 23, scope: !3556)
!3576 = !DILocation(line: 197, column: 29, scope: !3556)
!3577 = !DILocation(line: 197, column: 55, scope: !3556)
!3578 = !DILocation(line: 198, column: 29, scope: !3556)
!3579 = !DILocation(line: 198, column: 46, scope: !3556)
!3580 = !DILocation(line: 201, column: 3, scope: !3556)
!3581 = !DILocation(line: 201, column: 15, scope: !3556)
!3582 = !DILocation(line: 200, column: 10, scope: !3556)
!3583 = !DILocation(line: 205, column: 35, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !383, line: 203, column: 3)
!3585 = distinct !DILexicalBlock(scope: !3556, file: !383, line: 203, column: 3)
!3586 = !DILocation(line: 205, column: 14, scope: !3584)
!3587 = !DILocation(line: 205, column: 33, scope: !3584)
!3588 = !DILocation(line: 205, column: 67, scope: !3584)
!3589 = !DILocation(line: 203, column: 3, scope: !3585)
!3590 = !DILocation(line: 0, scope: !3584)
!3591 = !DILocation(line: 208, column: 3, scope: !3556)
!3592 = !DILocation(line: 210, column: 1, scope: !3556)
!3593 = distinct !DISubprogram(name: "version_etc", scope: !383, file: !383, line: 227, type: !3594, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3596)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{null, !3450, !79, !79, !79, null}
!3596 = !{!3597, !3598, !3599, !3600, !3601}
!3597 = !DILocalVariable(name: "stream", arg: 1, scope: !3593, file: !383, line: 227, type: !3450)
!3598 = !DILocalVariable(name: "command_name", arg: 2, scope: !3593, file: !383, line: 228, type: !79)
!3599 = !DILocalVariable(name: "package", arg: 3, scope: !3593, file: !383, line: 228, type: !79)
!3600 = !DILocalVariable(name: "version", arg: 4, scope: !3593, file: !383, line: 229, type: !79)
!3601 = !DILocalVariable(name: "authors", scope: !3593, file: !383, line: 231, type: !3602)
!3602 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3603, line: 52, baseType: !3604)
!3603 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3605, line: 48, baseType: !3606)
!3605 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !380, line: 231, baseType: !3607)
!3607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3560, size: 192, elements: !54)
!3608 = !DILocation(line: 227, column: 20, scope: !3593)
!3609 = !DILocation(line: 228, column: 26, scope: !3593)
!3610 = !DILocation(line: 228, column: 52, scope: !3593)
!3611 = !DILocation(line: 229, column: 26, scope: !3593)
!3612 = !DILocation(line: 231, column: 3, scope: !3593)
!3613 = !DILocation(line: 231, column: 11, scope: !3593)
!3614 = !DILocation(line: 233, column: 3, scope: !3593)
!3615 = !DILocation(line: 234, column: 3, scope: !3593)
!3616 = !DILocation(line: 235, column: 3, scope: !3593)
!3617 = !DILocation(line: 236, column: 1, scope: !3593)
!3618 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !383, file: !383, line: 239, type: !366, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !275)
!3619 = !DILocation(line: 245, column: 3, scope: !3618)
!3620 = !DILocation(line: 251, column: 3, scope: !3618)
!3621 = !DILocation(line: 256, column: 3, scope: !3618)
!3622 = !DILocation(line: 258, column: 1, scope: !3618)
!3623 = distinct !DISubprogram(name: "xnmalloc", scope: !391, file: !391, line: 99, type: !3624, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !387, retainedNodes: !3626)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!69, !71, !71}
!3626 = !{!3627, !3628}
!3627 = !DILocalVariable(name: "n", arg: 1, scope: !3623, file: !391, line: 99, type: !71)
!3628 = !DILocalVariable(name: "s", arg: 2, scope: !3623, file: !391, line: 99, type: !71)
!3629 = !DILocation(line: 99, column: 18, scope: !3623)
!3630 = !DILocation(line: 99, column: 28, scope: !3623)
!3631 = !DILocation(line: 101, column: 7, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3623, file: !391, line: 101, column: 7)
!3633 = !DILocation(line: 101, column: 7, scope: !3623)
!3634 = !DILocation(line: 102, column: 5, scope: !3632)
!3635 = !DILocation(line: 103, column: 21, scope: !3623)
!3636 = !DILocalVariable(name: "n", arg: 1, scope: !3637, file: !3638, line: 39, type: !71)
!3637 = distinct !DISubprogram(name: "xmalloc", scope: !3638, file: !3638, line: 39, type: !133, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !387, retainedNodes: !3639)
!3638 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3639 = !{!3636, !3640}
!3640 = !DILocalVariable(name: "p", scope: !3637, file: !3638, line: 41, type: !69)
!3641 = !DILocation(line: 39, column: 17, scope: !3637, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 103, column: 10, scope: !3623)
!3643 = !DILocation(line: 41, column: 13, scope: !3637, inlinedAt: !3642)
!3644 = !DILocation(line: 41, column: 9, scope: !3637, inlinedAt: !3642)
!3645 = !DILocation(line: 42, column: 8, scope: !3646, inlinedAt: !3642)
!3646 = distinct !DILexicalBlock(scope: !3637, file: !3638, line: 42, column: 7)
!3647 = !DILocation(line: 42, column: 15, scope: !3646, inlinedAt: !3642)
!3648 = !DILocation(line: 42, column: 10, scope: !3646, inlinedAt: !3642)
!3649 = !DILocation(line: 43, column: 5, scope: !3646, inlinedAt: !3642)
!3650 = !DILocation(line: 103, column: 3, scope: !3623)
!3651 = !DILocation(line: 39, column: 17, scope: !3637)
!3652 = !DILocation(line: 41, column: 13, scope: !3637)
!3653 = !DILocation(line: 41, column: 9, scope: !3637)
!3654 = !DILocation(line: 42, column: 8, scope: !3646)
!3655 = !DILocation(line: 42, column: 15, scope: !3646)
!3656 = !DILocation(line: 42, column: 10, scope: !3646)
!3657 = !DILocation(line: 43, column: 5, scope: !3646)
!3658 = !DILocation(line: 44, column: 3, scope: !3637)
!3659 = distinct !DISubprogram(name: "xnrealloc", scope: !391, file: !391, line: 112, type: !3660, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !387, retainedNodes: !3662)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!69, !69, !71, !71}
!3662 = !{!3663, !3664, !3665}
!3663 = !DILocalVariable(name: "p", arg: 1, scope: !3659, file: !391, line: 112, type: !69)
!3664 = !DILocalVariable(name: "n", arg: 2, scope: !3659, file: !391, line: 112, type: !71)
!3665 = !DILocalVariable(name: "s", arg: 3, scope: !3659, file: !391, line: 112, type: !71)
!3666 = !DILocation(line: 112, column: 18, scope: !3659)
!3667 = !DILocation(line: 112, column: 28, scope: !3659)
!3668 = !DILocation(line: 112, column: 38, scope: !3659)
!3669 = !DILocation(line: 114, column: 7, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3659, file: !391, line: 114, column: 7)
!3671 = !DILocation(line: 114, column: 7, scope: !3659)
!3672 = !DILocation(line: 115, column: 5, scope: !3670)
!3673 = !DILocation(line: 116, column: 25, scope: !3659)
!3674 = !DILocalVariable(name: "p", arg: 1, scope: !3675, file: !3638, line: 51, type: !69)
!3675 = distinct !DISubprogram(name: "xrealloc", scope: !3638, file: !3638, line: 51, type: !137, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !387, retainedNodes: !3676)
!3676 = !{!3674, !3677}
!3677 = !DILocalVariable(name: "n", arg: 2, scope: !3675, file: !3638, line: 51, type: !71)
!3678 = !DILocation(line: 51, column: 17, scope: !3675, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 116, column: 10, scope: !3659)
!3680 = !DILocation(line: 51, column: 27, scope: !3675, inlinedAt: !3679)
!3681 = !DILocation(line: 53, column: 8, scope: !3682, inlinedAt: !3679)
!3682 = distinct !DILexicalBlock(scope: !3675, file: !3638, line: 53, column: 7)
!3683 = !DILocation(line: 53, column: 13, scope: !3682, inlinedAt: !3679)
!3684 = !DILocation(line: 53, column: 10, scope: !3682, inlinedAt: !3679)
!3685 = !DILocation(line: 57, column: 7, scope: !3686, inlinedAt: !3679)
!3686 = distinct !DILexicalBlock(scope: !3682, file: !3638, line: 54, column: 5)
!3687 = !DILocation(line: 58, column: 7, scope: !3686, inlinedAt: !3679)
!3688 = !DILocation(line: 61, column: 7, scope: !3675, inlinedAt: !3679)
!3689 = !DILocation(line: 62, column: 8, scope: !3690, inlinedAt: !3679)
!3690 = distinct !DILexicalBlock(scope: !3675, file: !3638, line: 62, column: 7)
!3691 = !DILocation(line: 62, column: 13, scope: !3690, inlinedAt: !3679)
!3692 = !DILocation(line: 62, column: 10, scope: !3690, inlinedAt: !3679)
!3693 = !DILocation(line: 63, column: 5, scope: !3690, inlinedAt: !3679)
!3694 = !DILocation(line: 0, scope: !3675, inlinedAt: !3679)
!3695 = !DILocation(line: 116, column: 3, scope: !3659)
!3696 = !DILocation(line: 51, column: 17, scope: !3675)
!3697 = !DILocation(line: 51, column: 27, scope: !3675)
!3698 = !DILocation(line: 53, column: 8, scope: !3682)
!3699 = !DILocation(line: 53, column: 13, scope: !3682)
!3700 = !DILocation(line: 53, column: 10, scope: !3682)
!3701 = !DILocation(line: 57, column: 7, scope: !3686)
!3702 = !DILocation(line: 58, column: 7, scope: !3686)
!3703 = !DILocation(line: 61, column: 7, scope: !3675)
!3704 = !DILocation(line: 62, column: 8, scope: !3690)
!3705 = !DILocation(line: 62, column: 13, scope: !3690)
!3706 = !DILocation(line: 62, column: 10, scope: !3690)
!3707 = !DILocation(line: 63, column: 5, scope: !3690)
!3708 = !DILocation(line: 0, scope: !3675)
!3709 = !DILocation(line: 65, column: 1, scope: !3675)
!3710 = !DILocation(line: 174, column: 19, scope: !392)
!3711 = !DILocation(line: 174, column: 30, scope: !392)
!3712 = !DILocation(line: 174, column: 41, scope: !392)
!3713 = !DILocation(line: 176, column: 14, scope: !392)
!3714 = !DILocation(line: 176, column: 10, scope: !392)
!3715 = !DILocation(line: 178, column: 9, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !392, file: !391, line: 178, column: 7)
!3717 = !DILocation(line: 178, column: 7, scope: !392)
!3718 = !DILocation(line: 180, column: 13, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3720, file: !391, line: 180, column: 11)
!3720 = distinct !DILexicalBlock(scope: !3716, file: !391, line: 179, column: 5)
!3721 = !DILocation(line: 180, column: 11, scope: !3720)
!3722 = !DILocation(line: 188, column: 30, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3719, file: !391, line: 181, column: 9)
!3724 = !DILocation(line: 189, column: 16, scope: !3723)
!3725 = !DILocation(line: 189, column: 13, scope: !3723)
!3726 = !DILocation(line: 190, column: 9, scope: !3723)
!3727 = !DILocation(line: 0, scope: !3723)
!3728 = !DILocation(line: 191, column: 11, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3720, file: !391, line: 191, column: 11)
!3730 = !DILocation(line: 191, column: 11, scope: !3720)
!3731 = !DILocation(line: 206, column: 7, scope: !392)
!3732 = !DILocation(line: 207, column: 25, scope: !392)
!3733 = !DILocation(line: 51, column: 17, scope: !3675, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 207, column: 10, scope: !392)
!3735 = !DILocation(line: 51, column: 27, scope: !3675, inlinedAt: !3734)
!3736 = !DILocation(line: 53, column: 10, scope: !3682, inlinedAt: !3734)
!3737 = !DILocation(line: 192, column: 9, scope: !3729)
!3738 = !DILocation(line: 200, column: 69, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !391, line: 200, column: 11)
!3740 = distinct !DILexicalBlock(scope: !3716, file: !391, line: 195, column: 5)
!3741 = !DILocation(line: 201, column: 11, scope: !3739)
!3742 = !DILocation(line: 200, column: 11, scope: !3740)
!3743 = !DILocation(line: 202, column: 9, scope: !3739)
!3744 = !DILocation(line: 203, column: 14, scope: !3740)
!3745 = !DILocation(line: 203, column: 18, scope: !3740)
!3746 = !DILocation(line: 203, column: 9, scope: !3740)
!3747 = !DILocation(line: 53, column: 8, scope: !3682, inlinedAt: !3734)
!3748 = !DILocation(line: 57, column: 7, scope: !3686, inlinedAt: !3734)
!3749 = !DILocation(line: 58, column: 7, scope: !3686, inlinedAt: !3734)
!3750 = !DILocation(line: 61, column: 7, scope: !3675, inlinedAt: !3734)
!3751 = !DILocation(line: 62, column: 8, scope: !3690, inlinedAt: !3734)
!3752 = !DILocation(line: 62, column: 13, scope: !3690, inlinedAt: !3734)
!3753 = !DILocation(line: 62, column: 10, scope: !3690, inlinedAt: !3734)
!3754 = !DILocation(line: 63, column: 5, scope: !3690, inlinedAt: !3734)
!3755 = !DILocation(line: 0, scope: !3675, inlinedAt: !3734)
!3756 = !DILocation(line: 207, column: 3, scope: !392)
!3757 = distinct !DISubprogram(name: "xcharalloc", scope: !391, file: !391, line: 216, type: !2735, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !387, retainedNodes: !3758)
!3758 = !{!3759}
!3759 = !DILocalVariable(name: "n", arg: 1, scope: !3757, file: !391, line: 216, type: !71)
!3760 = !DILocation(line: 216, column: 20, scope: !3757)
!3761 = !DILocation(line: 39, column: 17, scope: !3637, inlinedAt: !3762)
!3762 = distinct !DILocation(line: 218, column: 10, scope: !3757)
!3763 = !DILocation(line: 41, column: 13, scope: !3637, inlinedAt: !3762)
!3764 = !DILocation(line: 41, column: 9, scope: !3637, inlinedAt: !3762)
!3765 = !DILocation(line: 42, column: 8, scope: !3646, inlinedAt: !3762)
!3766 = !DILocation(line: 42, column: 15, scope: !3646, inlinedAt: !3762)
!3767 = !DILocation(line: 42, column: 10, scope: !3646, inlinedAt: !3762)
!3768 = !DILocation(line: 43, column: 5, scope: !3646, inlinedAt: !3762)
!3769 = !DILocation(line: 218, column: 3, scope: !3757)
!3770 = distinct !DISubprogram(name: "x2realloc", scope: !3638, file: !3638, line: 74, type: !3771, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !387, retainedNodes: !3773)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!69, !69, !395}
!3773 = !{!3774, !3775}
!3774 = !DILocalVariable(name: "p", arg: 1, scope: !3770, file: !3638, line: 74, type: !69)
!3775 = !DILocalVariable(name: "pn", arg: 2, scope: !3770, file: !3638, line: 74, type: !395)
!3776 = !DILocation(line: 74, column: 18, scope: !3770)
!3777 = !DILocation(line: 74, column: 29, scope: !3770)
!3778 = !DILocation(line: 174, column: 19, scope: !392, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 76, column: 10, scope: !3770)
!3780 = !DILocation(line: 174, column: 30, scope: !392, inlinedAt: !3779)
!3781 = !DILocation(line: 174, column: 41, scope: !392, inlinedAt: !3779)
!3782 = !DILocation(line: 176, column: 14, scope: !392, inlinedAt: !3779)
!3783 = !DILocation(line: 176, column: 10, scope: !392, inlinedAt: !3779)
!3784 = !DILocation(line: 178, column: 9, scope: !3716, inlinedAt: !3779)
!3785 = !DILocation(line: 178, column: 7, scope: !392, inlinedAt: !3779)
!3786 = !DILocation(line: 180, column: 13, scope: !3719, inlinedAt: !3779)
!3787 = !DILocation(line: 180, column: 11, scope: !3720, inlinedAt: !3779)
!3788 = !DILocation(line: 191, column: 11, scope: !3729, inlinedAt: !3779)
!3789 = !DILocation(line: 191, column: 11, scope: !3720, inlinedAt: !3779)
!3790 = !DILocation(line: 206, column: 7, scope: !392, inlinedAt: !3779)
!3791 = !DILocation(line: 51, column: 17, scope: !3675, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 207, column: 10, scope: !392, inlinedAt: !3779)
!3793 = !DILocation(line: 51, column: 27, scope: !3675, inlinedAt: !3792)
!3794 = !DILocation(line: 53, column: 10, scope: !3682, inlinedAt: !3792)
!3795 = !DILocation(line: 192, column: 9, scope: !3729, inlinedAt: !3779)
!3796 = !DILocation(line: 201, column: 11, scope: !3739, inlinedAt: !3779)
!3797 = !DILocation(line: 200, column: 11, scope: !3740, inlinedAt: !3779)
!3798 = !DILocation(line: 202, column: 9, scope: !3739, inlinedAt: !3779)
!3799 = !DILocation(line: 203, column: 14, scope: !3740, inlinedAt: !3779)
!3800 = !DILocation(line: 203, column: 18, scope: !3740, inlinedAt: !3779)
!3801 = !DILocation(line: 203, column: 9, scope: !3740, inlinedAt: !3779)
!3802 = !DILocation(line: 53, column: 8, scope: !3682, inlinedAt: !3792)
!3803 = !DILocation(line: 57, column: 7, scope: !3686, inlinedAt: !3792)
!3804 = !DILocation(line: 58, column: 7, scope: !3686, inlinedAt: !3792)
!3805 = !DILocation(line: 61, column: 7, scope: !3675, inlinedAt: !3792)
!3806 = !DILocation(line: 62, column: 8, scope: !3690, inlinedAt: !3792)
!3807 = !DILocation(line: 62, column: 13, scope: !3690, inlinedAt: !3792)
!3808 = !DILocation(line: 62, column: 10, scope: !3690, inlinedAt: !3792)
!3809 = !DILocation(line: 63, column: 5, scope: !3690, inlinedAt: !3792)
!3810 = !DILocation(line: 0, scope: !3675, inlinedAt: !3792)
!3811 = !DILocation(line: 76, column: 3, scope: !3770)
!3812 = distinct !DISubprogram(name: "xzalloc", scope: !3638, file: !3638, line: 84, type: !133, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !387, retainedNodes: !3813)
!3813 = !{!3814}
!3814 = !DILocalVariable(name: "s", arg: 1, scope: !3812, file: !3638, line: 84, type: !71)
!3815 = !DILocation(line: 84, column: 17, scope: !3812)
!3816 = !DILocation(line: 39, column: 17, scope: !3637, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 86, column: 18, scope: !3812)
!3818 = !DILocation(line: 41, column: 13, scope: !3637, inlinedAt: !3817)
!3819 = !DILocation(line: 41, column: 9, scope: !3637, inlinedAt: !3817)
!3820 = !DILocation(line: 42, column: 8, scope: !3646, inlinedAt: !3817)
!3821 = !DILocation(line: 42, column: 15, scope: !3646, inlinedAt: !3817)
!3822 = !DILocation(line: 42, column: 10, scope: !3646, inlinedAt: !3817)
!3823 = !DILocation(line: 43, column: 5, scope: !3646, inlinedAt: !3817)
!3824 = !DILocation(line: 86, column: 10, scope: !3812)
!3825 = !DILocation(line: 86, column: 3, scope: !3812)
!3826 = distinct !DISubprogram(name: "xcalloc", scope: !3638, file: !3638, line: 93, type: !3624, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !387, retainedNodes: !3827)
!3827 = !{!3828, !3829, !3830}
!3828 = !DILocalVariable(name: "n", arg: 1, scope: !3826, file: !3638, line: 93, type: !71)
!3829 = !DILocalVariable(name: "s", arg: 2, scope: !3826, file: !3638, line: 93, type: !71)
!3830 = !DILocalVariable(name: "p", scope: !3826, file: !3638, line: 95, type: !69)
!3831 = !DILocation(line: 93, column: 17, scope: !3826)
!3832 = !DILocation(line: 93, column: 27, scope: !3826)
!3833 = !DILocation(line: 100, column: 7, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3826, file: !3638, line: 100, column: 7)
!3835 = !DILocation(line: 101, column: 7, scope: !3834)
!3836 = !DILocation(line: 101, column: 18, scope: !3834)
!3837 = !DILocation(line: 95, column: 9, scope: !3826)
!3838 = !DILocation(line: 101, column: 16, scope: !3834)
!3839 = !DILocation(line: 100, column: 7, scope: !3826)
!3840 = !DILocation(line: 102, column: 5, scope: !3834)
!3841 = !DILocation(line: 103, column: 3, scope: !3826)
!3842 = distinct !DISubprogram(name: "xmemdup", scope: !3638, file: !3638, line: 111, type: !3843, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !387, retainedNodes: !3847)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!69, !3845, !71}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3847 = !{!3848, !3849}
!3848 = !DILocalVariable(name: "p", arg: 1, scope: !3842, file: !3638, line: 111, type: !3845)
!3849 = !DILocalVariable(name: "s", arg: 2, scope: !3842, file: !3638, line: 111, type: !71)
!3850 = !DILocation(line: 111, column: 22, scope: !3842)
!3851 = !DILocation(line: 111, column: 32, scope: !3842)
!3852 = !DILocation(line: 39, column: 17, scope: !3637, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 113, column: 18, scope: !3842)
!3854 = !DILocation(line: 41, column: 13, scope: !3637, inlinedAt: !3853)
!3855 = !DILocation(line: 41, column: 9, scope: !3637, inlinedAt: !3853)
!3856 = !DILocation(line: 42, column: 8, scope: !3646, inlinedAt: !3853)
!3857 = !DILocation(line: 42, column: 15, scope: !3646, inlinedAt: !3853)
!3858 = !DILocation(line: 42, column: 10, scope: !3646, inlinedAt: !3853)
!3859 = !DILocation(line: 43, column: 5, scope: !3646, inlinedAt: !3853)
!3860 = !DILocation(line: 113, column: 10, scope: !3842)
!3861 = !DILocation(line: 113, column: 3, scope: !3842)
!3862 = distinct !DISubprogram(name: "xstrdup", scope: !3638, file: !3638, line: 119, type: !1477, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !387, retainedNodes: !3863)
!3863 = !{!3864}
!3864 = !DILocalVariable(name: "string", arg: 1, scope: !3862, file: !3638, line: 119, type: !79)
!3865 = !DILocation(line: 119, column: 22, scope: !3862)
!3866 = !DILocation(line: 121, column: 27, scope: !3862)
!3867 = !DILocation(line: 121, column: 43, scope: !3862)
!3868 = !DILocation(line: 111, column: 22, scope: !3842, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 121, column: 10, scope: !3862)
!3870 = !DILocation(line: 111, column: 32, scope: !3842, inlinedAt: !3869)
!3871 = !DILocation(line: 39, column: 17, scope: !3637, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 113, column: 18, scope: !3842, inlinedAt: !3869)
!3873 = !DILocation(line: 41, column: 13, scope: !3637, inlinedAt: !3872)
!3874 = !DILocation(line: 41, column: 9, scope: !3637, inlinedAt: !3872)
!3875 = !DILocation(line: 42, column: 8, scope: !3646, inlinedAt: !3872)
!3876 = !DILocation(line: 42, column: 15, scope: !3646, inlinedAt: !3872)
!3877 = !DILocation(line: 42, column: 10, scope: !3646, inlinedAt: !3872)
!3878 = !DILocation(line: 43, column: 5, scope: !3646, inlinedAt: !3872)
!3879 = !DILocation(line: 113, column: 10, scope: !3842, inlinedAt: !3869)
!3880 = !DILocation(line: 121, column: 3, scope: !3862)
!3881 = distinct !DISubprogram(name: "xalloc_die", scope: !3882, file: !3882, line: 32, type: !366, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !404, retainedNodes: !275)
!3882 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3883 = !DILocation(line: 34, column: 10, scope: !3881)
!3884 = !DILocation(line: 34, column: 33, scope: !3881)
!3885 = !DILocation(line: 34, column: 3, scope: !3881)
!3886 = !DILocation(line: 40, column: 3, scope: !3881)
!3887 = distinct !DISubprogram(name: "xstrndup", scope: !3888, file: !3888, line: 30, type: !2948, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !406, retainedNodes: !3889)
!3888 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3889 = !{!3890, !3891, !3892}
!3890 = !DILocalVariable(name: "string", arg: 1, scope: !3887, file: !3888, line: 30, type: !79)
!3891 = !DILocalVariable(name: "n", arg: 2, scope: !3887, file: !3888, line: 30, type: !71)
!3892 = !DILocalVariable(name: "s", scope: !3887, file: !3888, line: 32, type: !25)
!3893 = !DILocation(line: 30, column: 23, scope: !3887)
!3894 = !DILocation(line: 30, column: 38, scope: !3887)
!3895 = !DILocation(line: 32, column: 13, scope: !3887)
!3896 = !DILocation(line: 32, column: 9, scope: !3887)
!3897 = !DILocation(line: 33, column: 9, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3887, file: !3888, line: 33, column: 7)
!3899 = !DILocation(line: 33, column: 7, scope: !3887)
!3900 = !DILocation(line: 34, column: 5, scope: !3898)
!3901 = !DILocation(line: 35, column: 3, scope: !3887)
!3902 = distinct !DISubprogram(name: "rpl_calloc", scope: !3903, file: !3903, line: 42, type: !3624, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !408, retainedNodes: !3904)
!3903 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3904 = !{!3905, !3906, !3907, !3908}
!3905 = !DILocalVariable(name: "n", arg: 1, scope: !3902, file: !3903, line: 42, type: !71)
!3906 = !DILocalVariable(name: "s", arg: 2, scope: !3902, file: !3903, line: 42, type: !71)
!3907 = !DILocalVariable(name: "result", scope: !3902, file: !3903, line: 44, type: !69)
!3908 = !DILocalVariable(name: "bytes", scope: !3909, file: !3903, line: 56, type: !71)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !3903, line: 53, column: 5)
!3910 = distinct !DILexicalBlock(scope: !3902, file: !3903, line: 47, column: 7)
!3911 = !DILocation(line: 42, column: 20, scope: !3902)
!3912 = !DILocation(line: 42, column: 30, scope: !3902)
!3913 = !DILocation(line: 47, column: 9, scope: !3910)
!3914 = !DILocation(line: 47, column: 19, scope: !3910)
!3915 = !DILocation(line: 47, column: 14, scope: !3910)
!3916 = !DILocation(line: 56, column: 24, scope: !3909)
!3917 = !DILocation(line: 56, column: 14, scope: !3909)
!3918 = !DILocation(line: 57, column: 17, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3909, file: !3903, line: 57, column: 11)
!3920 = !DILocation(line: 57, column: 21, scope: !3919)
!3921 = !DILocation(line: 57, column: 11, scope: !3909)
!3922 = !DILocation(line: 59, column: 11, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3919, file: !3903, line: 58, column: 9)
!3924 = !DILocation(line: 59, column: 17, scope: !3923)
!3925 = !DILocation(line: 65, column: 12, scope: !3902)
!3926 = !DILocation(line: 44, column: 9, scope: !3902)
!3927 = !DILocation(line: 72, column: 3, scope: !3902)
!3928 = !DILocation(line: 0, scope: !3923)
!3929 = !DILocation(line: 73, column: 1, scope: !3902)
!3930 = distinct !DISubprogram(name: "rpl_fclose", scope: !3931, file: !3931, line: 58, type: !3932, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !410, retainedNodes: !3968)
!3931 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!23, !3934}
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !3936)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !3937)
!3937 = !{!3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3936, file: !20, line: 51, baseType: !23, size: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3936, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3936, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3936, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3936, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3936, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3936, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3936, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3936, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3936, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3936, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3936, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3936, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3936, file: !20, line: 70, baseType: !3952, size: 64, offset: 832)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3936, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3936, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3936, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3936, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3936, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3936, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3936, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3936, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3936, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3936, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3936, file: !20, line: 93, baseType: !3952, size: 64, offset: 1344)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3936, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3936, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3936, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3936, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!3968 = !{!3969, !3970, !3971, !3972}
!3969 = !DILocalVariable(name: "fp", arg: 1, scope: !3930, file: !3931, line: 58, type: !3934)
!3970 = !DILocalVariable(name: "saved_errno", scope: !3930, file: !3931, line: 60, type: !23)
!3971 = !DILocalVariable(name: "fd", scope: !3930, file: !3931, line: 61, type: !23)
!3972 = !DILocalVariable(name: "result", scope: !3930, file: !3931, line: 62, type: !23)
!3973 = !DILocation(line: 58, column: 19, scope: !3930)
!3974 = !DILocation(line: 60, column: 7, scope: !3930)
!3975 = !DILocation(line: 62, column: 7, scope: !3930)
!3976 = !DILocation(line: 65, column: 8, scope: !3930)
!3977 = !DILocation(line: 61, column: 7, scope: !3930)
!3978 = !DILocation(line: 66, column: 10, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3930, file: !3931, line: 66, column: 7)
!3980 = !DILocation(line: 66, column: 7, scope: !3930)
!3981 = !DILocation(line: 67, column: 12, scope: !3979)
!3982 = !DILocation(line: 67, column: 5, scope: !3979)
!3983 = !DILocation(line: 72, column: 9, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3930, file: !3931, line: 72, column: 7)
!3985 = !DILocation(line: 72, column: 23, scope: !3984)
!3986 = !DILocation(line: 72, column: 33, scope: !3984)
!3987 = !DILocation(line: 72, column: 26, scope: !3984)
!3988 = !DILocation(line: 72, column: 59, scope: !3984)
!3989 = !DILocation(line: 73, column: 7, scope: !3984)
!3990 = !DILocation(line: 73, column: 10, scope: !3984)
!3991 = !DILocation(line: 72, column: 7, scope: !3930)
!3992 = !DILocation(line: 100, column: 12, scope: !3930)
!3993 = !DILocation(line: 105, column: 7, scope: !3930)
!3994 = !DILocation(line: 74, column: 19, scope: !3984)
!3995 = !DILocation(line: 105, column: 19, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3930, file: !3931, line: 105, column: 7)
!3997 = !DILocation(line: 107, column: 13, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3996, file: !3931, line: 106, column: 5)
!3999 = !DILocation(line: 109, column: 5, scope: !3998)
!4000 = !DILocation(line: 0, scope: !3930)
!4001 = !DILocation(line: 112, column: 1, scope: !3930)
!4002 = distinct !DISubprogram(name: "rpl_fflush", scope: !4003, file: !4003, line: 129, type: !4004, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !412, retainedNodes: !4040)
!4003 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!23, !4006}
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !4008)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4008, file: !20, line: 51, baseType: !23, size: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4008, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4008, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4008, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4008, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4008, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4008, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4008, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4008, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4008, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4008, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4008, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4008, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4008, file: !20, line: 70, baseType: !4024, size: 64, offset: 832)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4008, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4008, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4008, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4008, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4008, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4008, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4008, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4008, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4008, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4008, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4008, file: !20, line: 93, baseType: !4024, size: 64, offset: 1344)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4008, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4008, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4008, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4008, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!4040 = !{!4041}
!4041 = !DILocalVariable(name: "stream", arg: 1, scope: !4002, file: !4003, line: 129, type: !4006)
!4042 = !DILocation(line: 129, column: 19, scope: !4002)
!4043 = !DILocation(line: 150, column: 14, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4002, file: !4003, line: 150, column: 7)
!4045 = !DILocation(line: 150, column: 22, scope: !4044)
!4046 = !DILocation(line: 150, column: 27, scope: !4044)
!4047 = !DILocation(line: 150, column: 7, scope: !4002)
!4048 = !DILocation(line: 151, column: 12, scope: !4044)
!4049 = !DILocation(line: 151, column: 5, scope: !4044)
!4050 = !DILocalVariable(name: "fp", arg: 1, scope: !4051, file: !4003, line: 41, type: !4006)
!4051 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4003, file: !4003, line: 41, type: !4052, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !412, retainedNodes: !4054)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{null, !4006}
!4054 = !{!4050}
!4055 = !DILocation(line: 41, column: 48, scope: !4051, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 156, column: 3, scope: !4002)
!4057 = !DILocation(line: 43, column: 11, scope: !4058, inlinedAt: !4056)
!4058 = distinct !DILexicalBlock(scope: !4051, file: !4003, line: 43, column: 7)
!4059 = !{!4060, !944, i64 0}
!4060 = !{!"_IO_FILE", !944, i64 0, !852, i64 8, !852, i64 16, !852, i64 24, !852, i64 32, !852, i64 40, !852, i64 48, !852, i64 56, !852, i64 64, !852, i64 72, !852, i64 80, !852, i64 88, !852, i64 96, !852, i64 104, !944, i64 112, !944, i64 116, !1051, i64 120, !1149, i64 128, !853, i64 130, !853, i64 131, !852, i64 136, !1051, i64 144, !852, i64 152, !852, i64 160, !852, i64 168, !852, i64 176, !1051, i64 184, !944, i64 192, !853, i64 196}
!4061 = !DILocation(line: 43, column: 18, scope: !4058, inlinedAt: !4056)
!4062 = !DILocation(line: 43, column: 7, scope: !4051, inlinedAt: !4056)
!4063 = !DILocation(line: 45, column: 5, scope: !4058, inlinedAt: !4056)
!4064 = !DILocation(line: 158, column: 10, scope: !4002)
!4065 = !DILocation(line: 158, column: 3, scope: !4002)
!4066 = !DILocation(line: 0, scope: !4002)
!4067 = !DILocation(line: 232, column: 1, scope: !4002)
!4068 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4069, file: !4069, line: 28, type: !4070, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !414, retainedNodes: !4107)
!4069 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!23, !4072, !4106, !23}
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !4074)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !4075)
!4075 = !{!4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4074, file: !20, line: 51, baseType: !23, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4074, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4074, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4074, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4074, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4074, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4074, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4074, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4074, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4074, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4074, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4074, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4074, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4074, file: !20, line: 70, baseType: !4090, size: 64, offset: 832)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4074, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4074, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4074, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4074, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4074, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4074, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4074, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4074, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4074, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4074, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4074, file: !20, line: 93, baseType: !4090, size: 64, offset: 1344)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4074, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4074, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4074, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4074, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!4106 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3603, line: 63, baseType: !45)
!4107 = !{!4108, !4109, !4110, !4111}
!4108 = !DILocalVariable(name: "fp", arg: 1, scope: !4068, file: !4069, line: 28, type: !4072)
!4109 = !DILocalVariable(name: "offset", arg: 2, scope: !4068, file: !4069, line: 28, type: !4106)
!4110 = !DILocalVariable(name: "whence", arg: 3, scope: !4068, file: !4069, line: 28, type: !23)
!4111 = !DILocalVariable(name: "pos", scope: !4112, file: !4069, line: 117, type: !4106)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !4069, line: 113, column: 5)
!4113 = distinct !DILexicalBlock(scope: !4068, file: !4069, line: 52, column: 7)
!4114 = !DILocation(line: 28, column: 15, scope: !4068)
!4115 = !DILocation(line: 28, column: 25, scope: !4068)
!4116 = !DILocation(line: 28, column: 37, scope: !4068)
!4117 = !DILocation(line: 52, column: 11, scope: !4113)
!4118 = !{!4060, !852, i64 16}
!4119 = !DILocation(line: 52, column: 31, scope: !4113)
!4120 = !{!4060, !852, i64 8}
!4121 = !DILocation(line: 52, column: 24, scope: !4113)
!4122 = !DILocation(line: 53, column: 7, scope: !4113)
!4123 = !DILocation(line: 53, column: 14, scope: !4113)
!4124 = !{!4060, !852, i64 40}
!4125 = !DILocation(line: 53, column: 35, scope: !4113)
!4126 = !{!4060, !852, i64 32}
!4127 = !DILocation(line: 53, column: 28, scope: !4113)
!4128 = !DILocation(line: 54, column: 7, scope: !4113)
!4129 = !DILocation(line: 54, column: 14, scope: !4113)
!4130 = !{!4060, !852, i64 72}
!4131 = !DILocation(line: 54, column: 28, scope: !4113)
!4132 = !DILocation(line: 52, column: 7, scope: !4068)
!4133 = !DILocation(line: 117, column: 26, scope: !4112)
!4134 = !DILocation(line: 117, column: 19, scope: !4112)
!4135 = !DILocation(line: 117, column: 13, scope: !4112)
!4136 = !DILocation(line: 118, column: 15, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4112, file: !4069, line: 118, column: 11)
!4138 = !DILocation(line: 118, column: 11, scope: !4112)
!4139 = !DILocation(line: 129, column: 11, scope: !4112)
!4140 = !DILocation(line: 129, column: 18, scope: !4112)
!4141 = !DILocation(line: 130, column: 11, scope: !4112)
!4142 = !DILocation(line: 130, column: 19, scope: !4112)
!4143 = !{!4060, !1051, i64 144}
!4144 = !DILocation(line: 161, column: 7, scope: !4112)
!4145 = !DILocation(line: 163, column: 10, scope: !4068)
!4146 = !DILocation(line: 163, column: 3, scope: !4068)
!4147 = !DILocation(line: 0, scope: !4068)
!4148 = !DILocation(line: 164, column: 1, scope: !4068)
!4149 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4150, file: !4150, line: 385, type: !4151, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !416, retainedNodes: !4165)
!4150 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!71, !4153, !79, !71, !4154}
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1900, line: 6, baseType: !4156)
!4156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1902, line: 21, baseType: !4157)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1902, line: 13, size: 64, elements: !4158)
!4158 = !{!4159, !4160}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4157, file: !1902, line: 15, baseType: !23, size: 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4157, file: !1902, line: 20, baseType: !4161, size: 32, offset: 32)
!4161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4157, file: !1902, line: 16, size: 32, elements: !4162)
!4162 = !{!4163, !4164}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4161, file: !1902, line: 18, baseType: !6, size: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4161, file: !1902, line: 19, baseType: !1911, size: 32)
!4165 = !{!4166, !4167, !4168, !4169, !4170, !4171, !4172}
!4166 = !DILocalVariable(name: "pwc", arg: 1, scope: !4149, file: !4150, line: 385, type: !4153)
!4167 = !DILocalVariable(name: "s", arg: 2, scope: !4149, file: !4150, line: 385, type: !79)
!4168 = !DILocalVariable(name: "n", arg: 3, scope: !4149, file: !4150, line: 385, type: !71)
!4169 = !DILocalVariable(name: "ps", arg: 4, scope: !4149, file: !4150, line: 385, type: !4154)
!4170 = !DILocalVariable(name: "ret", scope: !4149, file: !4150, line: 387, type: !71)
!4171 = !DILocalVariable(name: "wc", scope: !4149, file: !4150, line: 388, type: !1916)
!4172 = !DILocalVariable(name: "uc", scope: !4173, file: !4150, line: 449, type: !373)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !4150, line: 448, column: 5)
!4174 = distinct !DILexicalBlock(scope: !4149, file: !4150, line: 447, column: 7)
!4175 = !DILocation(line: 385, column: 23, scope: !4149)
!4176 = !DILocation(line: 385, column: 40, scope: !4149)
!4177 = !DILocation(line: 385, column: 50, scope: !4149)
!4178 = !DILocation(line: 385, column: 64, scope: !4149)
!4179 = !DILocation(line: 388, column: 3, scope: !4149)
!4180 = !DILocation(line: 404, column: 9, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4149, file: !4150, line: 404, column: 7)
!4182 = !DILocation(line: 404, column: 7, scope: !4149)
!4183 = !DILocation(line: 439, column: 9, scope: !4149)
!4184 = !DILocation(line: 387, column: 10, scope: !4149)
!4185 = !DILocation(line: 447, column: 19, scope: !4174)
!4186 = !DILocation(line: 447, column: 31, scope: !4174)
!4187 = !DILocation(line: 447, column: 26, scope: !4174)
!4188 = !DILocation(line: 447, column: 41, scope: !4174)
!4189 = !DILocation(line: 447, column: 7, scope: !4149)
!4190 = !DILocation(line: 449, column: 26, scope: !4173)
!4191 = !DILocation(line: 449, column: 21, scope: !4173)
!4192 = !DILocation(line: 450, column: 14, scope: !4173)
!4193 = !DILocation(line: 450, column: 12, scope: !4173)
!4194 = !DILocation(line: 0, scope: !4173)
!4195 = !DILocation(line: 456, column: 1, scope: !4149)
!4196 = distinct !DISubprogram(name: "print_and_abort", scope: !364, file: !364, line: 330, type: !366, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !360, retainedNodes: !275)
!4197 = !DILocation(line: 340, column: 3, scope: !4196)
!4198 = !DILocation(line: 342, column: 9, scope: !4196)
!4199 = !DILocation(line: 342, column: 3, scope: !4196)
!4200 = distinct !DISubprogram(name: "_obstack_begin", scope: !364, file: !364, line: 150, type: !4201, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !4237)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!23, !4203, !71, !71, !132, !143}
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !106, line: 174, size: 704, elements: !4205)
!4205 = !{!4206, !4207, !4214, !4215, !4216, !4217, !4222, !4223, !4228, !4233, !4234, !4235, !4236}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !4204, file: !106, line: 176, baseType: !71, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !4204, file: !106, line: 177, baseType: !4208, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !106, line: 167, size: 128, elements: !4210)
!4210 = !{!4211, !4212, !4213}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !4209, file: !106, line: 169, baseType: !25, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4209, file: !106, line: 170, baseType: !4208, size: 64, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !4209, file: !106, line: 171, baseType: !116, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !4204, file: !106, line: 178, baseType: !25, size: 64, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !4204, file: !106, line: 179, baseType: !25, size: 64, offset: 192)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !4204, file: !106, line: 180, baseType: !25, size: 64, offset: 256)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4204, file: !106, line: 185, baseType: !4218, size: 64, offset: 320)
!4218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4204, file: !106, line: 181, size: 64, elements: !4219)
!4219 = !{!4220, !4221}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !4218, file: !106, line: 183, baseType: !71, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4218, file: !106, line: 184, baseType: !69, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !4204, file: !106, line: 186, baseType: !71, size: 64, offset: 384)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !4204, file: !106, line: 193, baseType: !4224, size: 64, offset: 448)
!4224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4204, file: !106, line: 189, size: 64, elements: !4225)
!4225 = !{!4226, !4227}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4224, file: !106, line: 191, baseType: !132, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4224, file: !106, line: 192, baseType: !136, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !4204, file: !106, line: 198, baseType: !4229, size: 64, offset: 512)
!4229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4204, file: !106, line: 194, size: 64, elements: !4230)
!4230 = !{!4231, !4232}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4229, file: !106, line: 196, baseType: !143, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4229, file: !106, line: 197, baseType: !147, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !4204, file: !106, line: 200, baseType: !69, size: 64, offset: 576)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !4204, file: !106, line: 201, baseType: !6, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !4204, file: !106, line: 202, baseType: !6, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !4204, file: !106, line: 206, baseType: !6, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!4237 = !{!4238, !4239, !4240, !4241, !4242}
!4238 = !DILocalVariable(name: "h", arg: 1, scope: !4200, file: !364, line: 150, type: !4203)
!4239 = !DILocalVariable(name: "size", arg: 2, scope: !4200, file: !364, line: 151, type: !71)
!4240 = !DILocalVariable(name: "alignment", arg: 3, scope: !4200, file: !364, line: 151, type: !71)
!4241 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !4200, file: !364, line: 152, type: !132)
!4242 = !DILocalVariable(name: "freefun", arg: 5, scope: !4200, file: !364, line: 153, type: !143)
!4243 = !DILocation(line: 150, column: 33, scope: !4200)
!4244 = !DILocation(line: 151, column: 33, scope: !4200)
!4245 = !DILocation(line: 151, column: 55, scope: !4200)
!4246 = !DILocation(line: 152, column: 25, scope: !4200)
!4247 = !DILocation(line: 153, column: 24, scope: !4200)
!4248 = !DILocation(line: 155, column: 15, scope: !4200)
!4249 = !DILocation(line: 155, column: 21, scope: !4200)
!4250 = !DILocation(line: 156, column: 14, scope: !4200)
!4251 = !DILocation(line: 156, column: 20, scope: !4200)
!4252 = !DILocation(line: 157, column: 6, scope: !4200)
!4253 = !DILocation(line: 157, column: 20, scope: !4200)
!4254 = !DILocalVariable(name: "h", arg: 1, scope: !4255, file: !364, line: 109, type: !4203)
!4255 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !364, file: !364, line: 109, type: !4256, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!23, !4203, !71, !71}
!4258 = !{!4254, !4259, !4260, !4261, !4262}
!4259 = !DILocalVariable(name: "size", arg: 2, scope: !4255, file: !364, line: 110, type: !71)
!4260 = !DILocalVariable(name: "alignment", arg: 3, scope: !4255, file: !364, line: 110, type: !71)
!4261 = !DILocalVariable(name: "chunk", scope: !4255, file: !364, line: 112, type: !4208)
!4262 = !DILocalVariable(name: "extra", scope: !4263, file: !364, line: 127, type: !23)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !364, line: 118, column: 5)
!4264 = distinct !DILexicalBlock(scope: !4255, file: !364, line: 116, column: 7)
!4265 = !DILocation(line: 109, column: 40, scope: !4255, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 158, column: 10, scope: !4200)
!4267 = !DILocation(line: 110, column: 40, scope: !4255, inlinedAt: !4266)
!4268 = !DILocation(line: 110, column: 62, scope: !4255, inlinedAt: !4266)
!4269 = !DILocation(line: 114, column: 17, scope: !4270, inlinedAt: !4266)
!4270 = distinct !DILexicalBlock(scope: !4255, file: !364, line: 114, column: 7)
!4271 = !DILocation(line: 114, column: 7, scope: !4255, inlinedAt: !4266)
!4272 = !DILocation(line: 116, column: 12, scope: !4264, inlinedAt: !4266)
!4273 = !DILocation(line: 116, column: 7, scope: !4255, inlinedAt: !4266)
!4274 = !DILocation(line: 133, column: 6, scope: !4255, inlinedAt: !4266)
!4275 = !DILocation(line: 133, column: 17, scope: !4255, inlinedAt: !4266)
!4276 = !{!1050, !1051, i64 0}
!4277 = !DILocation(line: 134, column: 33, scope: !4255, inlinedAt: !4266)
!4278 = !DILocation(line: 134, column: 6, scope: !4255, inlinedAt: !4266)
!4279 = !DILocation(line: 134, column: 21, scope: !4255, inlinedAt: !4266)
!4280 = !DILocalVariable(name: "h", arg: 1, scope: !4281, file: !364, line: 84, type: !4203)
!4281 = distinct !DISubprogram(name: "call_chunkfun", scope: !364, file: !364, line: 84, type: !4282, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !4284)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!69, !4203, !71}
!4284 = !{!4280, !4285}
!4285 = !DILocalVariable(name: "size", arg: 2, scope: !4281, file: !364, line: 84, type: !71)
!4286 = !DILocation(line: 84, column: 32, scope: !4281, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 136, column: 22, scope: !4255, inlinedAt: !4266)
!4288 = !DILocation(line: 84, column: 42, scope: !4281, inlinedAt: !4287)
!4289 = !DILocation(line: 89, column: 12, scope: !4290, inlinedAt: !4287)
!4290 = distinct !DILexicalBlock(scope: !4281, file: !364, line: 86, column: 7)
!4291 = !DILocation(line: 136, column: 14, scope: !4255, inlinedAt: !4266)
!4292 = !DILocation(line: 136, column: 20, scope: !4255, inlinedAt: !4266)
!4293 = !DILocation(line: 137, column: 8, scope: !4294, inlinedAt: !4266)
!4294 = distinct !DILexicalBlock(scope: !4255, file: !364, line: 137, column: 7)
!4295 = !DILocation(line: 137, column: 7, scope: !4255, inlinedAt: !4266)
!4296 = !DILocation(line: 138, column: 7, scope: !4294, inlinedAt: !4266)
!4297 = !DILocation(line: 138, column: 5, scope: !4294, inlinedAt: !4266)
!4298 = !DILocation(line: 112, column: 26, scope: !4255, inlinedAt: !4266)
!4299 = !DILocation(line: 139, column: 35, scope: !4255, inlinedAt: !4266)
!4300 = !DILocation(line: 139, column: 21, scope: !4255, inlinedAt: !4266)
!4301 = !DILocation(line: 139, column: 33, scope: !4255, inlinedAt: !4266)
!4302 = !DILocation(line: 139, column: 6, scope: !4255, inlinedAt: !4266)
!4303 = !DILocation(line: 139, column: 16, scope: !4255, inlinedAt: !4266)
!4304 = !DILocation(line: 141, column: 55, scope: !4255, inlinedAt: !4266)
!4305 = !DILocation(line: 141, column: 50, scope: !4255, inlinedAt: !4266)
!4306 = !DILocation(line: 141, column: 27, scope: !4255, inlinedAt: !4266)
!4307 = !DILocation(line: 141, column: 33, scope: !4255, inlinedAt: !4266)
!4308 = !DILocation(line: 141, column: 6, scope: !4255, inlinedAt: !4266)
!4309 = !DILocation(line: 141, column: 18, scope: !4255, inlinedAt: !4266)
!4310 = !DILocation(line: 142, column: 10, scope: !4255, inlinedAt: !4266)
!4311 = !DILocation(line: 142, column: 15, scope: !4255, inlinedAt: !4266)
!4312 = !DILocation(line: 144, column: 25, scope: !4255, inlinedAt: !4266)
!4313 = !DILocation(line: 145, column: 19, scope: !4255, inlinedAt: !4266)
!4314 = !DILocation(line: 158, column: 3, scope: !4200)
!4315 = distinct !DISubprogram(name: "_obstack_begin_1", scope: !364, file: !364, line: 162, type: !4316, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !4318)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!23, !4203, !71, !71, !136, !147, !69}
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324}
!4319 = !DILocalVariable(name: "h", arg: 1, scope: !4315, file: !364, line: 162, type: !4203)
!4320 = !DILocalVariable(name: "size", arg: 2, scope: !4315, file: !364, line: 163, type: !71)
!4321 = !DILocalVariable(name: "alignment", arg: 3, scope: !4315, file: !364, line: 163, type: !71)
!4322 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !4315, file: !364, line: 164, type: !136)
!4323 = !DILocalVariable(name: "freefun", arg: 5, scope: !4315, file: !364, line: 165, type: !147)
!4324 = !DILocalVariable(name: "arg", arg: 6, scope: !4315, file: !364, line: 166, type: !69)
!4325 = !DILocation(line: 162, column: 35, scope: !4315)
!4326 = !DILocation(line: 163, column: 35, scope: !4315)
!4327 = !DILocation(line: 163, column: 57, scope: !4315)
!4328 = !DILocation(line: 164, column: 27, scope: !4315)
!4329 = !DILocation(line: 165, column: 26, scope: !4315)
!4330 = !DILocation(line: 166, column: 25, scope: !4315)
!4331 = !DILocation(line: 168, column: 6, scope: !4315)
!4332 = !DILocation(line: 168, column: 15, scope: !4315)
!4333 = !DILocation(line: 168, column: 21, scope: !4315)
!4334 = !DILocation(line: 169, column: 6, scope: !4315)
!4335 = !DILocation(line: 169, column: 14, scope: !4315)
!4336 = !DILocation(line: 169, column: 20, scope: !4315)
!4337 = !DILocation(line: 170, column: 6, scope: !4315)
!4338 = !DILocation(line: 170, column: 16, scope: !4315)
!4339 = !{!1050, !852, i64 72}
!4340 = !DILocation(line: 171, column: 6, scope: !4315)
!4341 = !DILocation(line: 171, column: 20, scope: !4315)
!4342 = !DILocation(line: 109, column: 40, scope: !4255, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 172, column: 10, scope: !4315)
!4344 = !DILocation(line: 110, column: 40, scope: !4255, inlinedAt: !4343)
!4345 = !DILocation(line: 110, column: 62, scope: !4255, inlinedAt: !4343)
!4346 = !DILocation(line: 114, column: 17, scope: !4270, inlinedAt: !4343)
!4347 = !DILocation(line: 114, column: 7, scope: !4255, inlinedAt: !4343)
!4348 = !DILocation(line: 116, column: 12, scope: !4264, inlinedAt: !4343)
!4349 = !DILocation(line: 116, column: 7, scope: !4255, inlinedAt: !4343)
!4350 = !DILocation(line: 133, column: 6, scope: !4255, inlinedAt: !4343)
!4351 = !DILocation(line: 133, column: 17, scope: !4255, inlinedAt: !4343)
!4352 = !DILocation(line: 134, column: 33, scope: !4255, inlinedAt: !4343)
!4353 = !DILocation(line: 134, column: 6, scope: !4255, inlinedAt: !4343)
!4354 = !DILocation(line: 134, column: 21, scope: !4255, inlinedAt: !4343)
!4355 = !DILocation(line: 84, column: 32, scope: !4281, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 136, column: 22, scope: !4255, inlinedAt: !4343)
!4357 = !DILocation(line: 84, column: 42, scope: !4281, inlinedAt: !4356)
!4358 = !DILocation(line: 87, column: 12, scope: !4290, inlinedAt: !4356)
!4359 = !DILocation(line: 136, column: 14, scope: !4255, inlinedAt: !4343)
!4360 = !DILocation(line: 136, column: 20, scope: !4255, inlinedAt: !4343)
!4361 = !DILocation(line: 137, column: 8, scope: !4294, inlinedAt: !4343)
!4362 = !DILocation(line: 137, column: 7, scope: !4255, inlinedAt: !4343)
!4363 = !DILocation(line: 138, column: 7, scope: !4294, inlinedAt: !4343)
!4364 = !DILocation(line: 138, column: 5, scope: !4294, inlinedAt: !4343)
!4365 = !DILocation(line: 112, column: 26, scope: !4255, inlinedAt: !4343)
!4366 = !DILocation(line: 139, column: 35, scope: !4255, inlinedAt: !4343)
!4367 = !DILocation(line: 139, column: 21, scope: !4255, inlinedAt: !4343)
!4368 = !DILocation(line: 139, column: 33, scope: !4255, inlinedAt: !4343)
!4369 = !DILocation(line: 139, column: 6, scope: !4255, inlinedAt: !4343)
!4370 = !DILocation(line: 139, column: 16, scope: !4255, inlinedAt: !4343)
!4371 = !DILocation(line: 141, column: 55, scope: !4255, inlinedAt: !4343)
!4372 = !DILocation(line: 141, column: 50, scope: !4255, inlinedAt: !4343)
!4373 = !DILocation(line: 141, column: 27, scope: !4255, inlinedAt: !4343)
!4374 = !DILocation(line: 141, column: 33, scope: !4255, inlinedAt: !4343)
!4375 = !DILocation(line: 141, column: 6, scope: !4255, inlinedAt: !4343)
!4376 = !DILocation(line: 141, column: 18, scope: !4255, inlinedAt: !4343)
!4377 = !DILocation(line: 142, column: 10, scope: !4255, inlinedAt: !4343)
!4378 = !DILocation(line: 142, column: 15, scope: !4255, inlinedAt: !4343)
!4379 = !DILocation(line: 144, column: 25, scope: !4255, inlinedAt: !4343)
!4380 = !DILocation(line: 145, column: 19, scope: !4255, inlinedAt: !4343)
!4381 = !DILocation(line: 172, column: 3, scope: !4315)
!4382 = distinct !DISubprogram(name: "_obstack_newchunk", scope: !364, file: !364, line: 182, type: !4383, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !4385)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{null, !4203, !71}
!4385 = !{!4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394}
!4386 = !DILocalVariable(name: "h", arg: 1, scope: !4382, file: !364, line: 182, type: !4203)
!4387 = !DILocalVariable(name: "length", arg: 2, scope: !4382, file: !364, line: 182, type: !71)
!4388 = !DILocalVariable(name: "old_chunk", scope: !4382, file: !364, line: 184, type: !4208)
!4389 = !DILocalVariable(name: "new_chunk", scope: !4382, file: !364, line: 185, type: !4208)
!4390 = !DILocalVariable(name: "obj_size", scope: !4382, file: !364, line: 186, type: !71)
!4391 = !DILocalVariable(name: "object_base", scope: !4382, file: !364, line: 187, type: !25)
!4392 = !DILocalVariable(name: "sum1", scope: !4382, file: !364, line: 190, type: !71)
!4393 = !DILocalVariable(name: "sum2", scope: !4382, file: !364, line: 191, type: !71)
!4394 = !DILocalVariable(name: "new_size", scope: !4382, file: !364, line: 192, type: !71)
!4395 = !DILocation(line: 182, column: 36, scope: !4382)
!4396 = !DILocation(line: 182, column: 55, scope: !4382)
!4397 = !DILocation(line: 184, column: 41, scope: !4382)
!4398 = !DILocation(line: 184, column: 26, scope: !4382)
!4399 = !DILocation(line: 185, column: 26, scope: !4382)
!4400 = !DILocation(line: 186, column: 24, scope: !4382)
!4401 = !DILocation(line: 186, column: 39, scope: !4382)
!4402 = !DILocation(line: 186, column: 34, scope: !4382)
!4403 = !DILocation(line: 186, column: 10, scope: !4382)
!4404 = !DILocation(line: 190, column: 26, scope: !4382)
!4405 = !DILocation(line: 190, column: 10, scope: !4382)
!4406 = !DILocation(line: 191, column: 27, scope: !4382)
!4407 = !DILocation(line: 191, column: 22, scope: !4382)
!4408 = !DILocation(line: 191, column: 10, scope: !4382)
!4409 = !DILocation(line: 192, column: 38, scope: !4382)
!4410 = !DILocation(line: 192, column: 26, scope: !4382)
!4411 = !DILocation(line: 192, column: 44, scope: !4382)
!4412 = !DILocation(line: 192, column: 10, scope: !4382)
!4413 = !DILocation(line: 193, column: 16, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4382, file: !364, line: 193, column: 7)
!4415 = !DILocation(line: 193, column: 7, scope: !4382)
!4416 = !DILocation(line: 195, column: 21, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4382, file: !364, line: 195, column: 7)
!4418 = !DILocation(line: 195, column: 16, scope: !4417)
!4419 = !DILocation(line: 195, column: 7, scope: !4382)
!4420 = !DILocation(line: 199, column: 16, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4382, file: !364, line: 199, column: 7)
!4422 = !DILocation(line: 199, column: 32, scope: !4421)
!4423 = !DILocation(line: 199, column: 24, scope: !4421)
!4424 = !DILocation(line: 84, column: 32, scope: !4281, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 200, column: 17, scope: !4421)
!4426 = !DILocation(line: 84, column: 42, scope: !4281, inlinedAt: !4425)
!4427 = !DILocation(line: 86, column: 10, scope: !4290, inlinedAt: !4425)
!4428 = !DILocation(line: 86, column: 7, scope: !4290, inlinedAt: !4425)
!4429 = !DILocation(line: 0, scope: !4290, inlinedAt: !4425)
!4430 = !DILocation(line: 86, column: 7, scope: !4281, inlinedAt: !4425)
!4431 = !DILocation(line: 87, column: 24, scope: !4290, inlinedAt: !4425)
!4432 = !DILocation(line: 87, column: 34, scope: !4290, inlinedAt: !4425)
!4433 = !DILocation(line: 87, column: 12, scope: !4290, inlinedAt: !4425)
!4434 = !DILocation(line: 87, column: 5, scope: !4290, inlinedAt: !4425)
!4435 = !DILocation(line: 89, column: 24, scope: !4290, inlinedAt: !4425)
!4436 = !DILocation(line: 89, column: 12, scope: !4290, inlinedAt: !4425)
!4437 = !DILocation(line: 89, column: 5, scope: !4290, inlinedAt: !4425)
!4438 = !DILocation(line: 201, column: 8, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4382, file: !364, line: 201, column: 7)
!4440 = !DILocation(line: 201, column: 7, scope: !4382)
!4441 = !DILocation(line: 202, column: 7, scope: !4439)
!4442 = !DILocation(line: 202, column: 5, scope: !4439)
!4443 = !DILocation(line: 203, column: 12, scope: !4382)
!4444 = !DILocation(line: 204, column: 14, scope: !4382)
!4445 = !DILocation(line: 204, column: 19, scope: !4382)
!4446 = !DILocation(line: 205, column: 58, scope: !4382)
!4447 = !DILocation(line: 205, column: 25, scope: !4382)
!4448 = !DILocation(line: 205, column: 37, scope: !4382)
!4449 = !DILocation(line: 205, column: 14, scope: !4382)
!4450 = !DILocation(line: 205, column: 20, scope: !4382)
!4451 = !DILocation(line: 209, column: 5, scope: !4382)
!4452 = !DILocation(line: 187, column: 9, scope: !4382)
!4453 = !DILocation(line: 212, column: 27, scope: !4382)
!4454 = !DILocation(line: 212, column: 3, scope: !4382)
!4455 = !DILocation(line: 217, column: 11, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4382, file: !364, line: 217, column: 7)
!4457 = !DILocation(line: 217, column: 8, scope: !4456)
!4458 = !DILocation(line: 218, column: 7, scope: !4456)
!4459 = !DILocation(line: 219, column: 14, scope: !4456)
!4460 = !DILocation(line: 219, column: 11, scope: !4456)
!4461 = !DILocation(line: 217, column: 7, scope: !4382)
!4462 = !DILocation(line: 222, column: 36, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4456, file: !364, line: 221, column: 5)
!4464 = !DILocation(line: 222, column: 23, scope: !4463)
!4465 = !DILocation(line: 223, column: 24, scope: !4463)
!4466 = !DILocalVariable(name: "h", arg: 1, scope: !4467, file: !364, line: 93, type: !4203)
!4467 = distinct !DISubprogram(name: "call_freefun", scope: !364, file: !364, line: 93, type: !4468, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !4470)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{null, !4203, !69}
!4470 = !{!4466, !4471}
!4471 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !4467, file: !364, line: 93, type: !69)
!4472 = !DILocation(line: 93, column: 31, scope: !4467, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 223, column: 7, scope: !4463)
!4474 = !DILocation(line: 93, column: 40, scope: !4467, inlinedAt: !4473)
!4475 = !DILocation(line: 95, column: 10, scope: !4476, inlinedAt: !4473)
!4476 = distinct !DILexicalBlock(scope: !4467, file: !364, line: 95, column: 7)
!4477 = !DILocation(line: 95, column: 7, scope: !4476, inlinedAt: !4473)
!4478 = !DILocation(line: 0, scope: !4476, inlinedAt: !4473)
!4479 = !DILocation(line: 95, column: 7, scope: !4467, inlinedAt: !4473)
!4480 = !DILocation(line: 96, column: 16, scope: !4476, inlinedAt: !4473)
!4481 = !DILocation(line: 96, column: 26, scope: !4476, inlinedAt: !4473)
!4482 = !DILocation(line: 96, column: 5, scope: !4476, inlinedAt: !4473)
!4483 = !DILocation(line: 98, column: 16, scope: !4476, inlinedAt: !4473)
!4484 = !DILocation(line: 98, column: 5, scope: !4476, inlinedAt: !4473)
!4485 = !DILocation(line: 226, column: 18, scope: !4382)
!4486 = !DILocation(line: 227, column: 33, scope: !4382)
!4487 = !DILocation(line: 227, column: 16, scope: !4382)
!4488 = !DILocation(line: 229, column: 25, scope: !4382)
!4489 = !DILocation(line: 230, column: 1, scope: !4382)
!4490 = distinct !DISubprogram(name: "_obstack_allocated_p", scope: !364, file: !364, line: 241, type: !4491, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !4493)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!23, !4203, !69}
!4493 = !{!4494, !4495, !4496, !4497}
!4494 = !DILocalVariable(name: "h", arg: 1, scope: !4490, file: !364, line: 241, type: !4203)
!4495 = !DILocalVariable(name: "obj", arg: 2, scope: !4490, file: !364, line: 241, type: !69)
!4496 = !DILocalVariable(name: "lp", scope: !4490, file: !364, line: 243, type: !4208)
!4497 = !DILocalVariable(name: "plp", scope: !4490, file: !364, line: 244, type: !4208)
!4498 = !DILocation(line: 241, column: 39, scope: !4490)
!4499 = !DILocation(line: 241, column: 48, scope: !4490)
!4500 = !DILocation(line: 246, column: 13, scope: !4490)
!4501 = !DILocation(line: 243, column: 26, scope: !4490)
!4502 = !DILocation(line: 0, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4490, file: !364, line: 251, column: 5)
!4504 = !DILocation(line: 250, column: 13, scope: !4490)
!4505 = !DILocation(line: 250, column: 18, scope: !4490)
!4506 = !DILocation(line: 250, column: 22, scope: !4490)
!4507 = !DILocation(line: 250, column: 34, scope: !4490)
!4508 = !DILocation(line: 250, column: 41, scope: !4490)
!4509 = !DILocation(line: 250, column: 59, scope: !4490)
!4510 = !DILocation(line: 250, column: 65, scope: !4490)
!4511 = !DILocation(line: 250, column: 3, scope: !4490)
!4512 = !DILocation(line: 252, column: 17, scope: !4503)
!4513 = !DILocation(line: 244, column: 26, scope: !4490)
!4514 = distinct !{!4514, !4511, !4515}
!4515 = !DILocation(line: 254, column: 5, scope: !4490)
!4516 = !DILocation(line: 255, column: 3, scope: !4490)
!4517 = distinct !DISubprogram(name: "_obstack_free", scope: !364, file: !364, line: 262, type: !4468, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !4518)
!4518 = !{!4519, !4520, !4521, !4522}
!4519 = !DILocalVariable(name: "h", arg: 1, scope: !4517, file: !364, line: 262, type: !4203)
!4520 = !DILocalVariable(name: "obj", arg: 2, scope: !4517, file: !364, line: 262, type: !69)
!4521 = !DILocalVariable(name: "lp", scope: !4517, file: !364, line: 264, type: !4208)
!4522 = !DILocalVariable(name: "plp", scope: !4517, file: !364, line: 265, type: !4208)
!4523 = !DILocation(line: 262, column: 32, scope: !4517)
!4524 = !DILocation(line: 262, column: 41, scope: !4517)
!4525 = !DILocation(line: 267, column: 11, scope: !4517)
!4526 = !DILocation(line: 264, column: 26, scope: !4517)
!4527 = !DILocation(line: 271, column: 13, scope: !4517)
!4528 = !DILocation(line: 271, column: 18, scope: !4517)
!4529 = !DILocation(line: 271, column: 22, scope: !4517)
!4530 = !DILocation(line: 271, column: 34, scope: !4517)
!4531 = !DILocation(line: 271, column: 41, scope: !4517)
!4532 = !DILocation(line: 271, column: 59, scope: !4517)
!4533 = !DILocation(line: 271, column: 65, scope: !4517)
!4534 = !DILocation(line: 271, column: 3, scope: !4517)
!4535 = !DILocation(line: 273, column: 17, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4517, file: !364, line: 272, column: 5)
!4537 = !DILocation(line: 265, column: 26, scope: !4517)
!4538 = !DILocation(line: 93, column: 31, scope: !4467, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 274, column: 7, scope: !4536)
!4540 = !DILocation(line: 93, column: 40, scope: !4467, inlinedAt: !4539)
!4541 = !DILocation(line: 95, column: 10, scope: !4476, inlinedAt: !4539)
!4542 = !DILocation(line: 95, column: 7, scope: !4476, inlinedAt: !4539)
!4543 = !DILocation(line: 95, column: 7, scope: !4467, inlinedAt: !4539)
!4544 = !DILocation(line: 96, column: 16, scope: !4476, inlinedAt: !4539)
!4545 = !DILocation(line: 96, column: 26, scope: !4476, inlinedAt: !4539)
!4546 = !DILocation(line: 96, column: 5, scope: !4476, inlinedAt: !4539)
!4547 = !DILocation(line: 98, column: 16, scope: !4476, inlinedAt: !4539)
!4548 = !DILocation(line: 98, column: 5, scope: !4476, inlinedAt: !4539)
!4549 = !DILocation(line: 278, column: 29, scope: !4536)
!4550 = distinct !{!4550, !4534, !4551}
!4551 = !DILocation(line: 279, column: 5, scope: !4517)
!4552 = !DILocation(line: 0, scope: !4517)
!4553 = !DILocation(line: 282, column: 27, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4555, file: !364, line: 281, column: 5)
!4555 = distinct !DILexicalBlock(scope: !4517, file: !364, line: 280, column: 7)
!4556 = !DILocation(line: 282, column: 37, scope: !4554)
!4557 = !DILocation(line: 282, column: 10, scope: !4554)
!4558 = !DILocation(line: 282, column: 22, scope: !4554)
!4559 = !DILocation(line: 283, column: 28, scope: !4554)
!4560 = !DILocation(line: 283, column: 10, scope: !4554)
!4561 = !DILocation(line: 283, column: 22, scope: !4554)
!4562 = !DILocation(line: 284, column: 16, scope: !4554)
!4563 = !DILocation(line: 285, column: 5, scope: !4554)
!4564 = !DILocation(line: 286, column: 16, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4555, file: !364, line: 286, column: 12)
!4566 = !DILocation(line: 286, column: 12, scope: !4555)
!4567 = !DILocation(line: 288, column: 5, scope: !4565)
!4568 = !DILocation(line: 289, column: 1, scope: !4517)
!4569 = distinct !DISubprogram(name: "_obstack_memory_used", scope: !364, file: !364, line: 292, type: !4570, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !4572)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!71, !4203}
!4572 = !{!4573, !4574, !4575}
!4573 = !DILocalVariable(name: "h", arg: 1, scope: !4569, file: !364, line: 292, type: !4203)
!4574 = !DILocalVariable(name: "lp", scope: !4569, file: !364, line: 294, type: !4208)
!4575 = !DILocalVariable(name: "nbytes", scope: !4569, file: !364, line: 295, type: !71)
!4576 = !DILocation(line: 292, column: 39, scope: !4569)
!4577 = !DILocation(line: 295, column: 19, scope: !4569)
!4578 = !DILocation(line: 297, column: 16, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4569, file: !364, line: 297, column: 3)
!4580 = !DILocation(line: 294, column: 26, scope: !4569)
!4581 = !DILocation(line: 0, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4579, file: !364, line: 297, column: 3)
!4583 = !DILocation(line: 297, column: 26, scope: !4582)
!4584 = !DILocation(line: 297, column: 3, scope: !4579)
!4585 = !DILocation(line: 299, column: 21, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4582, file: !364, line: 298, column: 5)
!4587 = !DILocation(line: 299, column: 27, scope: !4586)
!4588 = !DILocation(line: 299, column: 14, scope: !4586)
!4589 = !DILocation(line: 297, column: 41, scope: !4582)
!4590 = distinct !{!4590, !4584, !4591}
!4591 = !DILocation(line: 300, column: 5, scope: !4579)
!4592 = !DILocation(line: 0, scope: !4586)
!4593 = !DILocation(line: 301, column: 3, scope: !4569)
!4594 = distinct !DISubprogram(name: "close_stream", scope: !4595, file: !4595, line: 56, type: !4596, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !419, retainedNodes: !4632)
!4595 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!23, !4598}
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !4600)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !4601)
!4601 = !{!4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4600, file: !20, line: 51, baseType: !23, size: 32)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4600, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4600, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4600, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4600, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4600, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4600, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4600, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4600, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4600, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4600, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4600, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4600, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4600, file: !20, line: 70, baseType: !4616, size: 64, offset: 832)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4600, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4600, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4600, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4600, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4600, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4600, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4600, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4600, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4600, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4600, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4600, file: !20, line: 93, baseType: !4616, size: 64, offset: 1344)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4600, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4600, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4600, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4600, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!4632 = !{!4633, !4634, !4636, !4637}
!4633 = !DILocalVariable(name: "stream", arg: 1, scope: !4594, file: !4595, line: 56, type: !4598)
!4634 = !DILocalVariable(name: "some_pending", scope: !4594, file: !4595, line: 58, type: !4635)
!4635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!4636 = !DILocalVariable(name: "prev_fail", scope: !4594, file: !4595, line: 59, type: !4635)
!4637 = !DILocalVariable(name: "fclose_fail", scope: !4594, file: !4595, line: 60, type: !4635)
!4638 = !DILocation(line: 56, column: 21, scope: !4594)
!4639 = !DILocation(line: 58, column: 30, scope: !4594)
!4640 = !DILocalVariable(name: "__stream", arg: 1, scope: !4641, file: !1100, line: 135, type: !4598)
!4641 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1100, file: !1100, line: 135, type: !4596, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !419, retainedNodes: !4642)
!4642 = !{!4640}
!4643 = !DILocation(line: 135, column: 1, scope: !4641, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 59, column: 27, scope: !4594)
!4645 = !DILocation(line: 137, column: 10, scope: !4641, inlinedAt: !4644)
!4646 = !DILocation(line: 59, column: 43, scope: !4594)
!4647 = !DILocation(line: 60, column: 29, scope: !4594)
!4648 = !DILocation(line: 60, column: 45, scope: !4594)
!4649 = !DILocation(line: 70, column: 17, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4594, file: !4595, line: 70, column: 7)
!4651 = !DILocation(line: 58, column: 50, scope: !4594)
!4652 = !DILocation(line: 70, column: 33, scope: !4650)
!4653 = !DILocation(line: 70, column: 53, scope: !4650)
!4654 = !DILocation(line: 70, column: 59, scope: !4650)
!4655 = !DILocation(line: 70, column: 7, scope: !4594)
!4656 = !DILocation(line: 72, column: 11, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4650, file: !4595, line: 71, column: 5)
!4658 = !DILocation(line: 73, column: 9, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4657, file: !4595, line: 72, column: 11)
!4660 = !DILocation(line: 73, column: 15, scope: !4659)
!4661 = !DILocation(line: 0, scope: !4594)
!4662 = !DILocation(line: 78, column: 1, scope: !4594)
!4663 = distinct !DISubprogram(name: "hard_locale", scope: !4664, file: !4664, line: 38, type: !1602, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !421, retainedNodes: !4665)
!4664 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4665 = !{!4666, !4667, !4668}
!4666 = !DILocalVariable(name: "category", arg: 1, scope: !4663, file: !4664, line: 38, type: !23)
!4667 = !DILocalVariable(name: "hard", scope: !4663, file: !4664, line: 40, type: !15)
!4668 = !DILocalVariable(name: "p", scope: !4663, file: !4664, line: 41, type: !79)
!4669 = !DILocation(line: 38, column: 18, scope: !4663)
!4670 = !DILocation(line: 40, column: 8, scope: !4663)
!4671 = !DILocation(line: 41, column: 19, scope: !4663)
!4672 = !DILocation(line: 41, column: 15, scope: !4663)
!4673 = !DILocation(line: 43, column: 7, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4663, file: !4664, line: 43, column: 7)
!4675 = !DILocation(line: 43, column: 7, scope: !4663)
!4676 = !DILocation(line: 47, column: 15, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4678, file: !4664, line: 47, column: 15)
!4678 = distinct !DILexicalBlock(scope: !4679, file: !4664, line: 46, column: 9)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !4664, line: 45, column: 11)
!4680 = distinct !DILexicalBlock(scope: !4674, file: !4664, line: 44, column: 5)
!4681 = !DILocation(line: 47, column: 31, scope: !4677)
!4682 = !DILocation(line: 47, column: 36, scope: !4677)
!4683 = !DILocation(line: 47, column: 39, scope: !4677)
!4684 = !DILocation(line: 47, column: 59, scope: !4677)
!4685 = !DILocation(line: 47, column: 15, scope: !4678)
!4686 = !DILocation(line: 48, column: 13, scope: !4677)
!4687 = !DILocation(line: 71, column: 3, scope: !4663)
!4688 = distinct !DISubprogram(name: "locale_charset", scope: !4689, file: !4689, line: 687, type: !4690, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !423, retainedNodes: !4692)
!4689 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!79}
!4692 = !{!4693}
!4693 = !DILocalVariable(name: "codeset", scope: !4688, file: !4689, line: 689, type: !79)
!4694 = !DILocation(line: 696, column: 13, scope: !4688)
!4695 = !DILocation(line: 689, column: 15, scope: !4688)
!4696 = !DILocation(line: 754, column: 15, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4688, file: !4689, line: 754, column: 7)
!4698 = !DILocation(line: 754, column: 7, scope: !4688)
!4699 = !DILocation(line: 907, column: 13, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4701, file: !4689, line: 907, column: 13)
!4701 = distinct !DILexicalBlock(scope: !4702, file: !4689, line: 897, column: 7)
!4702 = distinct !DILexicalBlock(scope: !4688, file: !4689, line: 856, column: 3)
!4703 = !DILocation(line: 907, column: 24, scope: !4700)
!4704 = !DILocation(line: 907, column: 13, scope: !4701)
!4705 = !DILocation(line: 995, column: 3, scope: !4688)
