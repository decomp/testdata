; ModuleID = 'coreutils-8.27/src/dircolors.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, %union.anon, i64, %union.anon.0, %union.anon.1, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [0 x i8] }
%union.anon = type { i64 }
%union.anon.0 = type { i8* (i64)* }
%union.anon.1 = type { void (i8*)* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [274 x i8] c"Output commands to set the LS_COLORS environment variable.\0A\0ADetermine format of output:\0A  -b, --sh, --bourne-shell    output Bourne shell code to set LS_COLORS\0A  -c, --csh, --c-shell        output C shell code to set LS_COLORS\0A  -p, --print-database        output defaults\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [222 x i8] c"\0AIf FILE is specified, read it to determine which colors to use for which\0Afile types and extensions.  Otherwise, a precompiled database is used.\0AFor details on the format of these files, run 'dircolors --print-database'.\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dircolors\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"bcp\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [15 x i8] c"H. Peter Anvin\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [103 x i8] c"the options to output dircolors' internal database and\0Ato select a shell syntax are mutually exclusive\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"file operands cannot be combined with --print-database (-p)\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@G_line = internal constant [4173 x i8] c"# Configuration file for dircolors, a utility to help you set the\00# LS_COLORS environment variable used by GNU ls with the --color option.\00# Copyright (C) 1996-2017 Free Software Foundation, Inc.\00# Copying and distribution of this file, with or without modification,\00# are permitted provided the copyright notice and this notice are preserved.\00# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the\00# slackware version of dircolors) are recognized but ignored.\00# Below are TERM entries, which can be a glob patterns, to match\00# against the TERM environment variable to determine if it is colorizable.\00TERM Eterm\00TERM ansi\00TERM *color*\00TERM con[0-9]*x[0-9]*\00TERM cons25\00TERM console\00TERM cygwin\00TERM dtterm\00TERM gnome\00TERM hurd\00TERM jfbterm\00TERM konsole\00TERM kterm\00TERM linux\00TERM linux-c\00TERM mlterm\00TERM putty\00TERM rxvt*\00TERM screen*\00TERM st\00TERM terminator\00TERM tmux*\00TERM vt100\00TERM xterm*\00# Below are the color init strings for the basic file types. A color init\00# string consists of one or more of the following numeric codes:\00# Attribute codes:\00# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed\00# Text color codes:\00# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white\00# Background color codes:\00# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white\00#NORMAL 00 # no color code at all\00#FILE 00 # regular file: use no color at all\00RESET 0 # reset to \22normal\22 color\00DIR 01;34 # directory\00LINK 01;36 # symbolic link. (If you set this to 'target' instead of a\00 # numerical value, the color is as for the file pointed to.)\00MULTIHARDLINK 00 # regular file with more than one link\00FIFO 40;33 # pipe\00SOCK 01;35 # socket\00DOOR 01;35 # door\00BLK 40;33;01 # block device driver\00CHR 40;33;01 # character device driver\00ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ...\00MISSING 00 # ... and the files they point to\00SETUID 37;41 # file that is setuid (u+s)\00SETGID 30;43 # file that is setgid (g+s)\00CAPABILITY 30;41 # file with capability\00STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)\00OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky\00STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable\00# This is for files with execute permission:\00EXEC 01;32\00# List any file extensions like '.gz' or '.tar' that you would like ls\00# to colorize below. Put the extension, a space, and the color init string.\00# (and any comments you want to add after a '#')\00# If you use DOS-style suffixes, you may want to uncomment the following:\00#.cmd 01;32 # executables (bright green)\00#.exe 01;32\00#.com 01;32\00#.btm 01;32\00#.bat 01;32\00# Or if you want to colorize scripts even if they do not have the\00# executable bit actually set.\00#.sh 01;32\00#.csh 01;32\00 # archives or compressed (bright red)\00.tar 01;31\00.tgz 01;31\00.arc 01;31\00.arj 01;31\00.taz 01;31\00.lha 01;31\00.lz4 01;31\00.lzh 01;31\00.lzma 01;31\00.tlz 01;31\00.txz 01;31\00.tzo 01;31\00.t7z 01;31\00.zip 01;31\00.z 01;31\00.Z 01;31\00.dz 01;31\00.gz 01;31\00.lrz 01;31\00.lz 01;31\00.lzo 01;31\00.xz 01;31\00.zst 01;31\00.tzst 01;31\00.bz2 01;31\00.bz 01;31\00.tbz 01;31\00.tbz2 01;31\00.tz 01;31\00.deb 01;31\00.rpm 01;31\00.jar 01;31\00.war 01;31\00.ear 01;31\00.sar 01;31\00.rar 01;31\00.alz 01;31\00.ace 01;31\00.zoo 01;31\00.cpio 01;31\00.7z 01;31\00.rz 01;31\00.cab 01;31\00.wim 01;31\00.swm 01;31\00.dwm 01;31\00.esd 01;31\00# image formats\00.jpg 01;35\00.jpeg 01;35\00.mjpg 01;35\00.mjpeg 01;35\00.gif 01;35\00.bmp 01;35\00.pbm 01;35\00.pgm 01;35\00.ppm 01;35\00.tga 01;35\00.xbm 01;35\00.xpm 01;35\00.tif 01;35\00.tiff 01;35\00.png 01;35\00.svg 01;35\00.svgz 01;35\00.mng 01;35\00.pcx 01;35\00.mov 01;35\00.mpg 01;35\00.mpeg 01;35\00.m2v 01;35\00.mkv 01;35\00.webm 01;35\00.ogm 01;35\00.mp4 01;35\00.m4v 01;35\00.mp4v 01;35\00.vob 01;35\00.qt 01;35\00.nuv 01;35\00.wmv 01;35\00.asf 01;35\00.rm 01;35\00.rmvb 01;35\00.flc 01;35\00.avi 01;35\00.fli 01;35\00.flv 01;35\00.gl 01;35\00.dl 01;35\00.xcf 01;35\00.xwd 01;35\00.yuv 01;35\00.cgm 01;35\00.emf 01;35\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.ogv 01;35\00.ogx 01;35\00# audio formats\00.aac 00;36\00.au 00;36\00.flac 00;36\00.m4a 00;36\00.mid 00;36\00.midi 00;36\00.mka 00;36\00.mp3 00;36\00.mpc 00;36\00.ogg 00;36\00.ra 00;36\00.wav 00;36\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.oga 00;36\00.opus 00;36\00.spx 00;36\00.xspf 00;36\00", align 16, !dbg !265
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
@slack_codes = internal unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* null], align 16, !dbg !271
@ls_codes = internal unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0), i8* null], align 16, !dbg !277
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
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), align 8, !dbg !291
@.str.22 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !297
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !302
@.str.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !305
@.str.118 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !312
@.str.123 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.124 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.125 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.128, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.129, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.130, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.131, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.132, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.133, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.134, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.135, i32 0, i32 0), i8* null], align 16, !dbg !319
@.str.126 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.127 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.128 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.129 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.130 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.131 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.132 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.133 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.134 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.135 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !331
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !338
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !348
@.str.11.136 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.137 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.138 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.139 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.140 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.141 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.142 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !355
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !362
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !350
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !364
@.str.149 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.150 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.151 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.152 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.153 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.154 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.155 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.156 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.157 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.158 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.159 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.160 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.161 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.162 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.165 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.166 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.167 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.168 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.169 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.170 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !369
@.str.1.181 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.182 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@obstack_alloc_failed_handler = local_unnamed_addr global void ()* @print_and_abort, align 8, !dbg !378
@.str.1.195 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.205 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.206 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.209 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !388
@.str.3.210 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.211 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.212 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.213 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.214 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.215 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !797 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !801, metadata !802), !dbg !803
  %2 = icmp eq i32 %0, 0, !dbg !804
  br i1 %2, label %8, label %3, !dbg !806

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !807, !tbaa !809
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !807
  %6 = load i8*, i8** @program_name, align 8, !dbg !807, !tbaa !809
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !807
  br label %39, !dbg !807

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !813
  %10 = load i8*, i8** @program_name, align 8, !dbg !813, !tbaa !809
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #12, !dbg !813
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !815
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !815, !tbaa !809
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !815
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !816
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !816, !tbaa !809
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !816
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !817
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !817, !tbaa !809
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12, !dbg !817
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !818
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !818, !tbaa !809
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12, !dbg !818
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !253, metadata !802) #12, !dbg !819
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !253, metadata !802) #12, !dbg !819
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #12, !dbg !821
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !821
  %26 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !822
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !261, metadata !802) #12, !dbg !823
  %27 = icmp eq i8* %26, null, !dbg !824
  br i1 %27, label %34, label %28, !dbg !826

; <label>:28:                                     ; preds = %8
  %29 = tail call i32 @strncmp(i8* nonnull %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #14, !dbg !827
  %30 = icmp eq i32 %29, 0, !dbg !827
  br i1 %30, label %34, label %31, !dbg !828

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 5) #12, !dbg !829
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !829
  br label %34, !dbg !831

; <label>:34:                                     ; preds = %8, %28, %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #12, !dbg !832
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !832
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #12, !dbg !833
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #12, !dbg !833
  br label %39

; <label>:39:                                     ; preds = %34, %3
  tail call void @exit(i32 %0) #15, !dbg !834
  unreachable, !dbg !834
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !835 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !840, metadata !802), !dbg !861
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !841, metadata !802), !dbg !862
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !842, metadata !802), !dbg !863
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !844, metadata !802), !dbg !864
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !845, metadata !802), !dbg !865
  %3 = load i8*, i8** %1, align 8, !dbg !866, !tbaa !809
  tail call void @set_program_name(i8* %3) #12, !dbg !867
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !868
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !869
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !870
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !871
  br label %8, !dbg !872

; <label>:8:                                      ; preds = %17, %2
  %9 = phi i8 [ 1, %17 ], [ 0, %2 ]
  %10 = phi i32 [ %12, %17 ], [ 2, %2 ]
  br label %11, !dbg !873

; <label>:11:                                     ; preds = %14, %8
  %12 = phi i32 [ %10, %8 ], [ %15, %14 ]
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !844, metadata !802), !dbg !864
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !845, metadata !802), !dbg !865
  %13 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !873
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !843, metadata !802), !dbg !874
  switch i32 %13, label %22 [
    i32 -1, label %23
    i32 98, label %14
    i32 99, label %16
    i32 112, label %17
    i32 -130, label %18
    i32 -131, label %19
  ], !dbg !872

; <label>:14:                                     ; preds = %11, %16
  %15 = phi i32 [ 1, %16 ], [ 0, %11 ]
  br label %11, !dbg !864, !llvm.loop !875

; <label>:16:                                     ; preds = %11
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !844, metadata !802), !dbg !864
  br label %14, !dbg !877

; <label>:17:                                     ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !845, metadata !802), !dbg !865
  br label %8, !dbg !879, !llvm.loop !875

; <label>:18:                                     ; preds = %11
  tail call void @usage(i32 0) #16, !dbg !880
  unreachable, !dbg !880

; <label>:19:                                     ; preds = %11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !881, !tbaa !809
  %21 = load i8*, i8** @Version, align 8, !dbg !881, !tbaa !809
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* null) #12, !dbg !881
  tail call void @exit(i32 0) #15, !dbg !881
  unreachable, !dbg !881

; <label>:22:                                     ; preds = %11
  tail call void @usage(i32 1) #16, !dbg !882
  unreachable, !dbg !882

; <label>:23:                                     ; preds = %11
  %24 = load i32, i32* @optind, align 4, !dbg !883, !tbaa !884
  %25 = sub nsw i32 %0, %24, !dbg !886
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !840, metadata !802), !dbg !861
  %26 = sext i32 %24 to i64, !dbg !887
  %27 = getelementptr inbounds i8*, i8** %1, i64 %26, !dbg !887
  tail call void @llvm.dbg.value(metadata i8** %27, i64 0, metadata !841, metadata !802), !dbg !862
  %28 = icmp ne i8 %9, 0, !dbg !888
  %29 = icmp ne i32 %12, 2, !dbg !890
  %30 = and i1 %28, %29, !dbg !891
  br i1 %30, label %31, label %33, !dbg !891

; <label>:31:                                     ; preds = %23
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.13, i64 0, i64 0), i32 5) #12, !dbg !892
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #12, !dbg !894
  tail call void @usage(i32 1) #16, !dbg !895
  unreachable, !dbg !895

; <label>:33:                                     ; preds = %23
  %34 = xor i1 %28, true, !dbg !896
  %35 = zext i1 %34 to i32, !dbg !896
  %36 = icmp sgt i32 %25, %35, !dbg !898
  br i1 %36, label %37, label %48, !dbg !899

; <label>:37:                                     ; preds = %33
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #12, !dbg !900
  %39 = zext i1 %34 to i64, !dbg !902
  %40 = getelementptr inbounds i8*, i8** %27, i64 %39, !dbg !902
  %41 = load i8*, i8** %40, align 8, !dbg !902, !tbaa !809
  %42 = tail call i8* @quote(i8* %41) #12, !dbg !903
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %38, i8* %42) #12, !dbg !904
  br i1 %28, label %43, label %47, !dbg !905

; <label>:43:                                     ; preds = %37
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !906, !tbaa !809
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0), i32 5) #12, !dbg !906
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %44, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %45) #12, !dbg !906
  br label %47, !dbg !906

; <label>:47:                                     ; preds = %43, %37
  tail call void @usage(i32 1) #16, !dbg !908
  unreachable, !dbg !908

; <label>:48:                                     ; preds = %33
  br i1 %28, label %49, label %59, !dbg !909

; <label>:49:                                     ; preds = %48
  br label %50, !dbg !910

; <label>:50:                                     ; preds = %49, %50
  %51 = phi i8* [ %55, %50 ], [ getelementptr inbounds ([4173 x i8], [4173 x i8]* @G_line, i64 0, i64 0), %49 ]
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !846, metadata !802), !dbg !912
  %52 = tail call i32 @puts(i8* %51), !dbg !910
  %53 = tail call i64 @strlen(i8* %51) #14, !dbg !913
  %54 = add i64 %53, 1, !dbg !914
  %55 = getelementptr inbounds i8, i8* %51, i64 %54, !dbg !915
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !846, metadata !802), !dbg !912
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !846, metadata !802), !dbg !912
  %56 = ptrtoint i8* %55 to i64, !dbg !916
  %57 = sub i64 %56, ptrtoint ([4173 x i8]* @G_line to i64), !dbg !916
  %58 = icmp ult i64 %57, 4173, !dbg !917
  br i1 %58, label %50, label %140, !dbg !918, !llvm.loop !919

; <label>:59:                                     ; preds = %48
  %60 = icmp eq i32 %12, 2, !dbg !921
  br i1 %60, label %61, label %77, !dbg !923

; <label>:61:                                     ; preds = %59
  %62 = tail call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #12, !dbg !924
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !929, metadata !802) #12, !dbg !932
  %63 = icmp eq i8* %62, null, !dbg !933
  br i1 %63, label %75, label %64, !dbg !935

; <label>:64:                                     ; preds = %61
  %65 = load i8, i8* %62, align 1, !dbg !936, !tbaa !937
  %66 = icmp eq i8 %65, 0, !dbg !938
  br i1 %66, label %75, label %67, !dbg !939

; <label>:67:                                     ; preds = %64
  %68 = tail call i8* @last_component(i8* nonnull %62) #14, !dbg !940
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !929, metadata !802) #12, !dbg !932
  %69 = tail call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #14, !dbg !941
  %70 = icmp eq i32 %69, 0, !dbg !941
  br i1 %70, label %77, label %71, !dbg !943

; <label>:71:                                     ; preds = %67
  %72 = tail call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #14, !dbg !944
  %73 = icmp eq i32 %72, 0, !dbg !944
  %74 = zext i1 %73 to i32, !dbg !945
  br label %77, !dbg !945

; <label>:75:                                     ; preds = %64, %61
  %76 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !946
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %76) #12, !dbg !946
  unreachable, !dbg !946

; <label>:77:                                     ; preds = %71, %67, %59
  %78 = phi i32 [ %12, %59 ], [ %74, %71 ], [ 1, %67 ]
  tail call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !844, metadata !802), !dbg !864
  %79 = tail call i32 @_obstack_begin(%struct.obstack* nonnull @lsc_obstack, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #12, !dbg !949
  %80 = icmp eq i32 %25, 0, !dbg !950
  br i1 %80, label %81, label %83, !dbg !952

; <label>:81:                                     ; preds = %77
  %82 = tail call fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE* null, i8* null), !dbg !953
  br i1 %82, label %106, label %140, !dbg !954

; <label>:83:                                     ; preds = %77
  %84 = load i8*, i8** %27, align 8, !dbg !955, !tbaa !809
  tail call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !956, metadata !802) #12, !dbg !962
  %85 = tail call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i64 0, i64 0)) #14, !dbg !964
  %86 = icmp eq i32 %85, 0, !dbg !964
  br i1 %86, label %95, label %87, !dbg !966

; <label>:87:                                     ; preds = %83
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !967, !tbaa !809
  %89 = tail call %struct._IO_FILE* @freopen_safer(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0), %struct._IO_FILE* %88) #12, !dbg !968
  %90 = icmp eq %struct._IO_FILE* %89, null, !dbg !969
  br i1 %90, label %91, label %95, !dbg !970

; <label>:91:                                     ; preds = %87
  %92 = tail call i32* @__errno_location() #17, !dbg !971
  %93 = load i32, i32* %92, align 4, !dbg !971, !tbaa !884
  %94 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %84) #12, !dbg !973
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %94) #12, !dbg !974
  br label %140, !dbg !975

; <label>:95:                                     ; preds = %87, %83
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !976, !tbaa !809
  %97 = tail call fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE* %96, i8* %84) #12, !dbg !977
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !978, !tbaa !809
  %99 = tail call i32 @rpl_fclose(%struct._IO_FILE* %98) #12, !dbg !980
  %100 = icmp eq i32 %99, 0, !dbg !981
  br i1 %100, label %105, label %101, !dbg !982

; <label>:101:                                    ; preds = %95
  %102 = tail call i32* @__errno_location() #17, !dbg !983
  %103 = load i32, i32* %102, align 4, !dbg !983, !tbaa !884
  %104 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %84) #12, !dbg !985
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %104) #12, !dbg !986
  br label %140, !dbg !987

; <label>:105:                                    ; preds = %95
  br i1 %97, label %106, label %140, !dbg !954

; <label>:106:                                    ; preds = %81, %105
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !853, metadata !802), !dbg !988
  %107 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !988, !tbaa !989
  %108 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 2), align 8, !dbg !988, !tbaa !992
  %109 = ptrtoint i8* %107 to i64, !dbg !988
  %110 = ptrtoint i8* %108 to i64, !dbg !988
  %111 = sub i64 %109, %110, !dbg !988
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !849, metadata !802), !dbg !993
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !856, metadata !802), !dbg !994
  tail call void @llvm.dbg.value(metadata i8* %108, i64 0, metadata !858, metadata !802), !dbg !994
  %112 = icmp eq i8* %107, %108, !dbg !995
  br i1 %112, label %113, label %116, !dbg !994

; <label>:113:                                    ; preds = %106
  %114 = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 10), align 8, !dbg !995
  %115 = or i8 %114, 2, !dbg !995
  store i8 %115, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 10), align 8, !dbg !995
  br label %116, !dbg !995

; <label>:116:                                    ; preds = %113, %106
  %117 = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 6), align 8, !dbg !994, !tbaa !997
  %118 = add i64 %117, %109, !dbg !994
  %119 = xor i64 %117, -1, !dbg !994
  %120 = and i64 %118, %119, !dbg !994
  %121 = getelementptr inbounds i8, i8* null, i64 %120, !dbg !994
  %122 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 1) to i64*), align 8, !dbg !998, !tbaa !1000
  %123 = ptrtoint i8* %121 to i64, !dbg !998
  %124 = sub i64 %123, %122, !dbg !998
  %125 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !998, !tbaa !1001
  %126 = ptrtoint i8* %125 to i64, !dbg !998
  %127 = sub i64 %126, %122, !dbg !998
  %128 = icmp ugt i64 %124, %127, !dbg !998
  %129 = select i1 %128, i8* %125, i8* %121, !dbg !994
  store i8* %129, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !994
  %130 = ptrtoint i8* %129 to i64, !dbg !994
  store i64 %130, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 2) to i64*), align 8, !dbg !994, !tbaa !992
  tail call void @llvm.dbg.value(metadata i8* %108, i64 0, metadata !855, metadata !802), !dbg !1002
  %131 = icmp eq i32 %78, 0, !dbg !1003
  %132 = select i1 %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), !dbg !1005
  %133 = select i1 %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), !dbg !1005
  tail call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !860, metadata !802), !dbg !1006
  tail call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !859, metadata !802), !dbg !1007
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1008, !tbaa !809
  %135 = tail call i32 @fputs_unlocked(i8* %132, %struct._IO_FILE* %134) #12, !dbg !1008
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1009, !tbaa !809
  %137 = tail call i64 @fwrite_unlocked(i8* %108, i64 1, i64 %111, %struct._IO_FILE* %136) #12, !dbg !1009
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1010, !tbaa !809
  %139 = tail call i32 @fputs_unlocked(i8* %133, %struct._IO_FILE* %138) #12, !dbg !1010
  br label %140, !dbg !1011

; <label>:140:                                    ; preds = %50, %91, %101, %81, %105, %116
  %141 = phi i32 [ 0, %116 ], [ 1, %105 ], [ 1, %81 ], [ 1, %101 ], [ 1, %91 ], [ 0, %50 ]
  ret i32 %141, !dbg !1012
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
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE*, i8*) unnamed_addr #6 !dbg !11 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !81, metadata !802), !dbg !1013
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !82, metadata !802), !dbg !1014
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !83, metadata !802), !dbg !1015
  %5 = bitcast i8** %3 to i8*, !dbg !1016
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12, !dbg !1016
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !85, metadata !802), !dbg !1017
  store i8* null, i8** %3, align 8, !dbg !1017, !tbaa !809
  %6 = bitcast i64* %4 to i8*, !dbg !1018
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12, !dbg !1018
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !86, metadata !802), !dbg !1019
  store i64 0, i64* %4, align 8, !dbg !1019, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !89, metadata !802), !dbg !1021
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !90, metadata !802), !dbg !1022
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #12, !dbg !1023
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !88, metadata !802), !dbg !1024
  %8 = icmp eq i8* %7, null, !dbg !1025
  br i1 %8, label %12, label %9, !dbg !1027

; <label>:9:                                      ; preds = %2
  %10 = load i8, i8* %7, align 1, !dbg !1028, !tbaa !937
  %11 = icmp eq i8 %10, 0, !dbg !1029
  br i1 %11, label %12, label %13, !dbg !1030

; <label>:12:                                     ; preds = %9, %2
  br label %13, !dbg !1031

; <label>:13:                                     ; preds = %12, %9
  %14 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %12 ], [ %7, %9 ]
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !88, metadata !802), !dbg !1024
  %15 = icmp eq %struct._IO_FILE* %0, null
  %16 = icmp eq i8* %1, null
  br label %17, !dbg !1032

; <label>:17:                                     ; preds = %252, %13
  %18 = phi i32 [ %253, %252 ], [ 3, %13 ]
  %19 = phi i8 [ %254, %252 ], [ 1, %13 ]
  %20 = phi i8* [ %43, %252 ], [ getelementptr inbounds ([4173 x i8], [4173 x i8]* @G_line, i64 0, i64 0), %13 ]
  %21 = phi i64 [ %29, %252 ], [ 0, %13 ]
  br label %22, !dbg !1033

; <label>:22:                                     ; preds = %115, %17
  %23 = phi i8 [ 0, %115 ], [ %19, %17 ]
  %24 = phi i8* [ %43, %115 ], [ %20, %17 ]
  %25 = phi i64 [ %29, %115 ], [ %21, %17 ]
  br label %26, !dbg !1033

; <label>:26:                                     ; preds = %112, %22
  %27 = phi i8* [ %24, %22 ], [ %43, %112 ]
  %28 = phi i64 [ %25, %22 ], [ %29, %112 ]
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !83, metadata !802), !dbg !1015
  call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !84, metadata !802), !dbg !1034
  call void @llvm.dbg.value(metadata i8 %23, i64 0, metadata !89, metadata !802), !dbg !1021
  call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !90, metadata !802), !dbg !1022
  %29 = add i64 %28, 1, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !83, metadata !802), !dbg !1015
  br i1 %15, label %35, label %30, !dbg !1035

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !85, metadata !802), !dbg !1017
  call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !86, metadata !802), !dbg !1019
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !1036, metadata !802) #12, !dbg !1045
  call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !1043, metadata !802) #12, !dbg !1050
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1044, metadata !802) #12, !dbg !1051
  %31 = call i64 @__getdelim(i8** nonnull %3, i64* nonnull %4, i32 10, %struct._IO_FILE* nonnull %0) #12, !dbg !1052
  %32 = icmp slt i64 %31, 1, !dbg !1053
  %33 = load i8*, i8** %3, align 8, !tbaa !809
  call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !85, metadata !802), !dbg !1017
  br i1 %32, label %34, label %41, !dbg !1054

; <label>:34:                                     ; preds = %30
  call void @free(i8* %33) #12, !dbg !1055
  br label %255, !dbg !1057

; <label>:35:                                     ; preds = %26
  %36 = icmp eq i8* %27, getelementptr inbounds ([4173 x i8], [4173 x i8]* @G_line, i64 1, i64 0), !dbg !1058
  br i1 %36, label %255, label %37, !dbg !1061

; <label>:37:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !87, metadata !802), !dbg !1062
  %38 = call i64 @strlen(i8* %27) #14, !dbg !1063
  %39 = add i64 %38, 1, !dbg !1064
  %40 = getelementptr inbounds i8, i8* %27, i64 %39, !dbg !1065
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !84, metadata !802), !dbg !1034
  br label %41

; <label>:41:                                     ; preds = %30, %37
  %42 = phi i8* [ %27, %37 ], [ %33, %30 ]
  %43 = phi i8* [ %40, %37 ], [ %27, %30 ]
  call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !84, metadata !802), !dbg !1034
  call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !87, metadata !802), !dbg !1062
  call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !1066, metadata !802) #12, !dbg !1076
  call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !1073, metadata !802) #12, !dbg !1078
  %44 = tail call i16** @__ctype_b_loc() #17, !dbg !1079
  %45 = load i16*, i16** %44, align 8, !tbaa !809
  br label %46, !dbg !1082

; <label>:46:                                     ; preds = %46, %41
  %47 = phi i8* [ %42, %41 ], [ %54, %46 ]
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1073, metadata !802) #12, !dbg !1078
  %48 = load i8, i8* %47, align 1, !dbg !1079, !tbaa !937
  %49 = zext i8 %48 to i64, !dbg !1079
  %50 = getelementptr inbounds i16, i16* %45, i64 %49, !dbg !1079
  %51 = load i16, i16* %50, align 2, !dbg !1079, !tbaa !1083
  %52 = and i16 %51, 8192, !dbg !1079
  %53 = icmp eq i16 %52, 0, !dbg !1085
  %54 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1086
  call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !1073, metadata !802) #12, !dbg !1078
  br i1 %53, label %55, label %46, !dbg !1085, !llvm.loop !1087

; <label>:55:                                     ; preds = %46
  switch i8 %48, label %56 [
    i8 0, label %112
    i8 35, label %112
  ], !dbg !1090

; <label>:56:                                     ; preds = %55
  br label %57, !dbg !1092

; <label>:57:                                     ; preds = %56, %57
  %58 = phi i8* [ %59, %57 ], [ %47, %56 ]
  %59 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1092
  %60 = load i8, i8* %59, align 1, !dbg !1094, !tbaa !937
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i16, i16* %45, i64 %61
  %63 = load i16, i16* %62, align 2, !dbg !1094, !tbaa !1083
  call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1073, metadata !802) #12, !dbg !1078
  %64 = and i16 %63, 8192, !dbg !1094
  %65 = icmp ne i16 %64, 0, !dbg !1094
  %66 = icmp eq i8 %60, 0, !dbg !1095
  %67 = or i1 %66, %65, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1073, metadata !1097) #12, !dbg !1078
  br i1 %67, label %68, label %57, !dbg !1096, !llvm.loop !1098

; <label>:68:                                     ; preds = %57
  %69 = ptrtoint i8* %59 to i64, !dbg !1101
  %70 = ptrtoint i8* %47 to i64, !dbg !1101
  %71 = sub i64 %69, %70, !dbg !1101
  %72 = call i8* @xstrndup(i8* %47, i64 %71) #12, !dbg !1102
  %73 = load i8, i8* %59, align 1, !dbg !1103, !tbaa !937
  %74 = icmp eq i8 %73, 0, !dbg !1105
  br i1 %74, label %109, label %75, !dbg !1106

; <label>:75:                                     ; preds = %68
  %76 = load i16*, i16** %44, align 8, !tbaa !809
  br label %77, !dbg !1107, !llvm.loop !1108

; <label>:77:                                     ; preds = %77, %75
  %78 = phi i8* [ %59, %75 ], [ %79, %77 ]
  call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !1073, metadata !802) #12, !dbg !1078
  %79 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !1111
  call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !1073, metadata !802) #12, !dbg !1078
  %80 = load i8, i8* %79, align 1, !dbg !1113, !tbaa !937
  %81 = zext i8 %80 to i64, !dbg !1113
  %82 = getelementptr inbounds i16, i16* %76, i64 %81, !dbg !1113
  %83 = load i16, i16* %82, align 2, !dbg !1113, !tbaa !1083
  %84 = and i16 %83, 8192, !dbg !1113
  %85 = icmp eq i16 %84, 0, !dbg !1114
  br i1 %85, label %86, label %77, !dbg !1114, !llvm.loop !1108

; <label>:86:                                     ; preds = %77
  switch i8 %80, label %87 [
    i8 0, label %109
    i8 35, label %109
  ], !dbg !1115

; <label>:87:                                     ; preds = %86
  br label %88, !dbg !1117

; <label>:88:                                     ; preds = %87, %92
  %89 = phi i8 [ %94, %92 ], [ %80, %87 ], !dbg !1118
  %90 = phi i8* [ %93, %92 ], [ %79, %87 ]
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !1073, metadata !802) #12, !dbg !1078
  switch i8 %89, label %92 [
    i8 35, label %91
    i8 0, label %91
  ], !dbg !1117

; <label>:91:                                     ; preds = %88, %88
  br label %95

; <label>:92:                                     ; preds = %88
  %93 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !1119
  call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !1073, metadata !802) #12, !dbg !1078
  %94 = load i8, i8* %93, align 1, !dbg !1118, !tbaa !937
  br label %88, !dbg !1117, !llvm.loop !1120

; <label>:95:                                     ; preds = %91, %95
  %96 = phi i8* [ %97, %95 ], [ %90, %91 ]
  %97 = getelementptr inbounds i8, i8* %96, i64 -1
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1073, metadata !802) #12, !dbg !1078
  %98 = load i8, i8* %97, align 1, !dbg !1123, !tbaa !937
  %99 = zext i8 %98 to i64, !dbg !1123
  %100 = getelementptr inbounds i16, i16* %76, i64 %99, !dbg !1123
  %101 = load i16, i16* %100, align 2, !dbg !1123, !tbaa !1083
  %102 = and i16 %101, 8192, !dbg !1123
  %103 = icmp eq i16 %102, 0, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1073, metadata !1127) #12, !dbg !1078
  br i1 %103, label %104, label %95, !dbg !1126, !llvm.loop !1128

; <label>:104:                                    ; preds = %95
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1073, metadata !802) #12, !dbg !1078
  %105 = ptrtoint i8* %96 to i64, !dbg !1131
  %106 = ptrtoint i8* %79 to i64, !dbg !1131
  %107 = sub i64 %105, %106, !dbg !1131
  %108 = call i8* @xstrndup(i8* %79, i64 %107) #12, !dbg !1132
  br label %109, !dbg !1133

; <label>:109:                                    ; preds = %68, %86, %86, %104
  %110 = phi i8* [ null, %68 ], [ %108, %104 ], [ null, %86 ], [ null, %86 ]
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !802), !dbg !1134
  %111 = icmp eq i8* %72, null, !dbg !1135
  br i1 %111, label %112, label %113, !dbg !1137

; <label>:112:                                    ; preds = %109, %55, %55
  br label %26, !dbg !1015, !llvm.loop !1138

; <label>:113:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !93, metadata !802), !dbg !1140
  %114 = icmp eq i8* %110, null, !dbg !1141
  br i1 %114, label %115, label %118, !dbg !1143

; <label>:115:                                    ; preds = %113
  %116 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i64 0, i64 0), i32 5) #12, !dbg !1144
  %117 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #12, !dbg !1146
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %116, i8* %117, i64 %29) #12, !dbg !1147
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !89, metadata !802), !dbg !1021
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !802), !dbg !1134
  call void @free(i8* nonnull %72) #12, !dbg !1148
  br label %22, !dbg !1149, !llvm.loop !1138

; <label>:118:                                    ; preds = %113
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !94, metadata !802), !dbg !1150
  %119 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #14, !dbg !1151
  %120 = icmp eq i32 %119, 0, !dbg !1152
  br i1 %120, label %121, label %127, !dbg !1153

; <label>:121:                                    ; preds = %118
  %122 = call i32 @fnmatch(i8* nonnull %110, i8* %14, i32 0) #12, !dbg !1154
  %123 = icmp eq i32 %122, 0, !dbg !1157
  br i1 %123, label %252, label %124, !dbg !1158

; <label>:124:                                    ; preds = %121
  %125 = icmp eq i32 %18, 2, !dbg !1159
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !90, metadata !802), !dbg !1022
  %126 = select i1 %125, i32 2, i32 0, !dbg !1161
  br label %252, !dbg !1161

; <label>:127:                                    ; preds = %118
  %128 = icmp eq i32 %18, 2, !dbg !1162
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !90, metadata !802), !dbg !1022
  %129 = select i1 %128, i32 1, i32 %18, !dbg !1164
  call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !90, metadata !802), !dbg !1022
  %130 = icmp eq i32 %129, 0, !dbg !1165
  br i1 %130, label %252, label %131, !dbg !1166

; <label>:131:                                    ; preds = %127
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !802), !dbg !1134
  %132 = load i8, i8* %72, align 1, !dbg !1167, !tbaa !937
  switch i8 %132, label %180 [
    i8 46, label %133
    i8 42, label %161
  ], !dbg !1168

; <label>:133:                                    ; preds = %131
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !95, metadata !802), !dbg !1169
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !154, metadata !802), !dbg !1170
  %134 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1170, !tbaa !1001
  %135 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1170, !tbaa !989
  %136 = icmp eq i64 %134, %135, !dbg !1171
  %137 = inttoptr i64 %135 to i8*, !dbg !1169
  br i1 %136, label %138, label %140, !dbg !1169

; <label>:138:                                    ; preds = %133
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1171
  %139 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1169, !tbaa !989
  br label %140, !dbg !1171

; <label>:140:                                    ; preds = %138, %133
  %141 = phi i8* [ %139, %138 ], [ %137, %133 ], !dbg !1169
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !1169
  store i8* %142, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1169, !tbaa !989
  store i8 42, i8* %141, align 1, !dbg !1169, !tbaa !937
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !802), !dbg !1134
  call fastcc void @append_quoted(i8* nonnull %72), !dbg !1172
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !159, metadata !802), !dbg !1173
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !161, metadata !802), !dbg !1174
  %143 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1174, !tbaa !1001
  %144 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1174, !tbaa !989
  %145 = icmp eq i64 %143, %144, !dbg !1175
  %146 = inttoptr i64 %144 to i8*, !dbg !1173
  br i1 %145, label %147, label %149, !dbg !1173

; <label>:147:                                    ; preds = %140
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1175
  %148 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1173, !tbaa !989
  br label %149, !dbg !1175

; <label>:149:                                    ; preds = %147, %140
  %150 = phi i8* [ %148, %147 ], [ %146, %140 ], !dbg !1173
  %151 = getelementptr inbounds i8, i8* %150, i64 1, !dbg !1173
  store i8* %151, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1173, !tbaa !989
  store i8 61, i8* %150, align 1, !dbg !1173, !tbaa !937
  call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !93, metadata !802), !dbg !1140
  call fastcc void @append_quoted(i8* nonnull %110), !dbg !1176
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !164, metadata !802), !dbg !1177
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !166, metadata !802), !dbg !1178
  %152 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1178, !tbaa !1001
  %153 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1178, !tbaa !989
  %154 = icmp eq i64 %152, %153, !dbg !1179
  %155 = inttoptr i64 %153 to i8*, !dbg !1177
  br i1 %154, label %156, label %158, !dbg !1177

; <label>:156:                                    ; preds = %149
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1179
  %157 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1177, !tbaa !989
  br label %158, !dbg !1179

; <label>:158:                                    ; preds = %156, %149
  %159 = phi i8* [ %157, %156 ], [ %155, %149 ], !dbg !1177
  %160 = getelementptr inbounds i8, i8* %159, i64 1, !dbg !1177
  store i8* %160, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1177, !tbaa !989
  store i8 58, i8* %159, align 1, !dbg !1177, !tbaa !937
  br label %252, !dbg !1180

; <label>:161:                                    ; preds = %131
  call fastcc void @append_quoted(i8* nonnull %72), !dbg !1181
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !169, metadata !802), !dbg !1182
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !173, metadata !802), !dbg !1183
  %162 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1183, !tbaa !1001
  %163 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1183, !tbaa !989
  %164 = icmp eq i64 %162, %163, !dbg !1184
  %165 = inttoptr i64 %163 to i8*, !dbg !1182
  br i1 %164, label %166, label %168, !dbg !1182

; <label>:166:                                    ; preds = %161
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1184
  %167 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1182, !tbaa !989
  br label %168, !dbg !1184

; <label>:168:                                    ; preds = %166, %161
  %169 = phi i8* [ %167, %166 ], [ %165, %161 ], !dbg !1182
  %170 = getelementptr inbounds i8, i8* %169, i64 1, !dbg !1182
  store i8* %170, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1182, !tbaa !989
  store i8 61, i8* %169, align 1, !dbg !1182, !tbaa !937
  call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !93, metadata !802), !dbg !1140
  call fastcc void @append_quoted(i8* nonnull %110), !dbg !1185
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !176, metadata !802), !dbg !1186
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !178, metadata !802), !dbg !1187
  %171 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1187, !tbaa !1001
  %172 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1187, !tbaa !989
  %173 = icmp eq i64 %171, %172, !dbg !1188
  %174 = inttoptr i64 %172 to i8*, !dbg !1186
  br i1 %173, label %175, label %177, !dbg !1186

; <label>:175:                                    ; preds = %168
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1188
  %176 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1186, !tbaa !989
  br label %177, !dbg !1188

; <label>:177:                                    ; preds = %175, %168
  %178 = phi i8* [ %176, %175 ], [ %174, %168 ], !dbg !1186
  %179 = getelementptr inbounds i8, i8* %178, i64 1, !dbg !1186
  store i8* %179, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1186, !tbaa !989
  store i8 58, i8* %178, align 1, !dbg !1186, !tbaa !937
  br label %252, !dbg !1189

; <label>:180:                                    ; preds = %131
  %181 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0)) #14, !dbg !1190
  %182 = icmp eq i32 %181, 0, !dbg !1191
  br i1 %182, label %252, label %183, !dbg !1192

; <label>:183:                                    ; preds = %180
  %184 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0)) #14, !dbg !1193
  %185 = icmp eq i32 %184, 0, !dbg !1194
  br i1 %185, label %252, label %186, !dbg !1195

; <label>:186:                                    ; preds = %183
  %187 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0)) #14, !dbg !1196
  %188 = icmp eq i32 %187, 0, !dbg !1197
  br i1 %188, label %252, label %189, !dbg !1198

; <label>:189:                                    ; preds = %186
  br label %192, !dbg !1199

; <label>:190:                                    ; preds = %192
  %191 = icmp eq i64 %198, 37, !dbg !1202
  br i1 %191, label %241, label %192, !dbg !1202, !llvm.loop !1203

; <label>:192:                                    ; preds = %189, %190
  %193 = phi i64 [ %198, %190 ], [ 0, %189 ]
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !181, metadata !802), !dbg !1205
  %194 = getelementptr inbounds [38 x i8*], [38 x i8*]* @slack_codes, i64 0, i64 %193, !dbg !1199
  %195 = load i8*, i8** %194, align 8, !dbg !1199, !tbaa !809
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !802), !dbg !1134
  %196 = call i32 @c_strcasecmp(i8* nonnull %72, i8* %195) #14, !dbg !1206
  %197 = icmp eq i32 %196, 0, !dbg !1208
  %198 = add nuw nsw i64 %193, 1, !dbg !1209
  br i1 %197, label %199, label %190, !dbg !1210

; <label>:199:                                    ; preds = %192
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !184, metadata !802), !dbg !1211
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !189, metadata !802), !dbg !1212
  %200 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1212, !tbaa !1001
  %201 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1212, !tbaa !989
  %202 = icmp eq i64 %200, %201, !dbg !1213
  %203 = inttoptr i64 %201 to i8*, !dbg !1211
  br i1 %202, label %204, label %206, !dbg !1211

; <label>:204:                                    ; preds = %199
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1213
  %205 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1211, !tbaa !989
  br label %206, !dbg !1213

; <label>:206:                                    ; preds = %204, %199
  %207 = phi i8* [ %205, %204 ], [ %203, %199 ], !dbg !1211
  %208 = getelementptr inbounds [38 x i8*], [38 x i8*]* @ls_codes, i64 0, i64 %193, !dbg !1211
  %209 = load i8*, i8** %208, align 8, !dbg !1211, !tbaa !809
  %210 = load i8, i8* %209, align 1, !dbg !1211, !tbaa !937
  %211 = getelementptr inbounds i8, i8* %207, i64 1, !dbg !1211
  store i8* %211, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1211, !tbaa !989
  store i8 %210, i8* %207, align 1, !dbg !1211, !tbaa !937
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !192, metadata !802), !dbg !1214
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !194, metadata !802), !dbg !1215
  %212 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1215, !tbaa !1001
  %213 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1215, !tbaa !989
  %214 = icmp eq i64 %212, %213, !dbg !1216
  %215 = inttoptr i64 %213 to i8*, !dbg !1214
  br i1 %214, label %216, label %218, !dbg !1214

; <label>:216:                                    ; preds = %206
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1216
  %217 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1214, !tbaa !989
  br label %218, !dbg !1216

; <label>:218:                                    ; preds = %216, %206
  %219 = phi i8* [ %217, %216 ], [ %215, %206 ], !dbg !1214
  %220 = getelementptr inbounds i8, i8* %209, i64 1, !dbg !1214
  %221 = load i8, i8* %220, align 1, !dbg !1214, !tbaa !937
  %222 = getelementptr inbounds i8, i8* %219, i64 1, !dbg !1214
  store i8* %222, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1214, !tbaa !989
  store i8 %221, i8* %219, align 1, !dbg !1214, !tbaa !937
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !197, metadata !802), !dbg !1217
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !199, metadata !802), !dbg !1218
  %223 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1218, !tbaa !1001
  %224 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1218, !tbaa !989
  %225 = icmp eq i64 %223, %224, !dbg !1219
  %226 = inttoptr i64 %224 to i8*, !dbg !1217
  br i1 %225, label %227, label %229, !dbg !1217

; <label>:227:                                    ; preds = %218
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1219
  %228 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1217, !tbaa !989
  br label %229, !dbg !1219

; <label>:229:                                    ; preds = %227, %218
  %230 = phi i8* [ %228, %227 ], [ %226, %218 ], !dbg !1217
  %231 = getelementptr inbounds i8, i8* %230, i64 1, !dbg !1217
  store i8* %231, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1217, !tbaa !989
  store i8 61, i8* %230, align 1, !dbg !1217, !tbaa !937
  call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !93, metadata !802), !dbg !1140
  call fastcc void @append_quoted(i8* nonnull %110), !dbg !1220
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !202, metadata !802), !dbg !1221
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !204, metadata !802), !dbg !1222
  %232 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1222, !tbaa !1001
  %233 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1222, !tbaa !989
  %234 = icmp eq i64 %232, %233, !dbg !1223
  %235 = inttoptr i64 %233 to i8*, !dbg !1221
  br i1 %234, label %236, label %238, !dbg !1221

; <label>:236:                                    ; preds = %229
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1223
  %237 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1221, !tbaa !989
  br label %238, !dbg !1223

; <label>:238:                                    ; preds = %236, %229
  %239 = phi i8* [ %237, %236 ], [ %235, %229 ], !dbg !1221
  %240 = getelementptr inbounds i8, i8* %239, i64 1, !dbg !1221
  store i8* %240, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1221, !tbaa !989
  store i8 58, i8* %239, align 1, !dbg !1221, !tbaa !937
  br label %252, !dbg !1224

; <label>:241:                                    ; preds = %190
  call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !90, metadata !802), !dbg !1022
  %242 = add i32 %129, -1, !dbg !1225
  %243 = icmp ult i32 %242, 2, !dbg !1225
  br i1 %243, label %244, label %252, !dbg !1227

; <label>:244:                                    ; preds = %241
  %245 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0), i32 5) #12, !dbg !1228
  br i1 %16, label %248, label %246, !dbg !1230

; <label>:246:                                    ; preds = %244
  %247 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %1) #12, !dbg !1231
  br label %250, !dbg !1230

; <label>:248:                                    ; preds = %244
  %249 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i32 5) #12, !dbg !1232
  br label %250, !dbg !1230

; <label>:250:                                    ; preds = %248, %246
  %251 = phi i8* [ %247, %246 ], [ %249, %248 ], !dbg !1230
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !802), !dbg !1134
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %245, i8* %251, i64 %29, i8* nonnull %72) #12, !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !89, metadata !802), !dbg !1021
  br label %252, !dbg !1234

; <label>:252:                                    ; preds = %127, %238, %124, %121, %186, %183, %180, %177, %158, %250, %241
  %253 = phi i32 [ %129, %250 ], [ %129, %241 ], [ 0, %127 ], [ %129, %238 ], [ %126, %124 ], [ 2, %121 ], [ %129, %186 ], [ %129, %183 ], [ %129, %180 ], [ %129, %177 ], [ %129, %158 ]
  %254 = phi i8 [ 0, %250 ], [ %23, %241 ], [ %23, %127 ], [ %23, %238 ], [ %23, %124 ], [ %23, %121 ], [ %23, %186 ], [ %23, %183 ], [ %23, %180 ], [ %23, %177 ], [ %23, %158 ]
  call void @llvm.dbg.value(metadata i8 %254, i64 0, metadata !89, metadata !802), !dbg !1021
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !802), !dbg !1134
  call void @free(i8* %72) #12, !dbg !1235
  call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !93, metadata !802), !dbg !1140
  call void @free(i8* %110) #12, !dbg !1236
  call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !84, metadata !802), !dbg !1034
  call void @llvm.dbg.value(metadata i8 %254, i64 0, metadata !89, metadata !802), !dbg !1021
  call void @llvm.dbg.value(metadata i32 %253, i64 0, metadata !90, metadata !802), !dbg !1022
  br label %17, !dbg !1032, !llvm.loop !1138

; <label>:255:                                    ; preds = %35, %34
  call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !84, metadata !802), !dbg !1034
  call void @llvm.dbg.value(metadata i8 %254, i64 0, metadata !89, metadata !802), !dbg !1021
  call void @llvm.dbg.value(metadata i32 %253, i64 0, metadata !90, metadata !802), !dbg !1022
  %256 = and i8 %23, 1, !dbg !1237
  %257 = icmp ne i8 %256, 0, !dbg !1237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12, !dbg !1238
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12, !dbg !1238
  ret i1 %257, !dbg !1239
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #9

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

declare i32 @fnmatch(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @append_quoted(i8* nocapture readonly) unnamed_addr #6 !dbg !1240 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1242, metadata !802), !dbg !1272
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1243, metadata !802), !dbg !1273
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1242, metadata !802), !dbg !1272
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1243, metadata !802), !dbg !1273
  %2 = load i8, i8* %0, align 1, !dbg !1274, !tbaa !937
  %3 = icmp eq i8 %2, 0, !dbg !1275
  br i1 %3, label %69, label %4, !dbg !1276

; <label>:4:                                      ; preds = %1
  br label %5, !dbg !1274

; <label>:5:                                      ; preds = %4, %62
  %6 = phi i8 [ %67, %62 ], [ %2, %4 ]
  %7 = phi i8* [ %66, %62 ], [ %0, %4 ]
  %8 = phi i8 [ %55, %62 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i8 %8, i64 0, metadata !1243, metadata !802), !dbg !1273
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1242, metadata !802), !dbg !1272
  %9 = sext i8 %6 to i32, !dbg !1274
  switch i32 %9, label %54 [
    i32 39, label %10
    i32 92, label %38
    i32 94, label %38
    i32 58, label %41
    i32 61, label %41
  ], !dbg !1277

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1244, metadata !802), !dbg !1278
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1248, metadata !802), !dbg !1279
  %11 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1279, !tbaa !1001
  %12 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1279, !tbaa !989
  %13 = icmp eq i64 %11, %12, !dbg !1280
  %14 = inttoptr i64 %12 to i8*, !dbg !1278
  br i1 %13, label %15, label %17, !dbg !1278

; <label>:15:                                     ; preds = %10
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1280
  %16 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1278, !tbaa !989
  br label %17, !dbg !1280

; <label>:17:                                     ; preds = %15, %10
  %18 = phi i8* [ %16, %15 ], [ %14, %10 ], !dbg !1278
  %19 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1278
  store i8* %19, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1278, !tbaa !989
  store i8 39, i8* %18, align 1, !dbg !1278, !tbaa !937
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1251, metadata !802), !dbg !1281
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1253, metadata !802), !dbg !1282
  %20 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1282, !tbaa !1001
  %21 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1282, !tbaa !989
  %22 = icmp eq i64 %20, %21, !dbg !1283
  %23 = inttoptr i64 %21 to i8*, !dbg !1281
  br i1 %22, label %24, label %26, !dbg !1281

; <label>:24:                                     ; preds = %17
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1283
  %25 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1281, !tbaa !989
  br label %26, !dbg !1283

; <label>:26:                                     ; preds = %24, %17
  %27 = phi i8* [ %25, %24 ], [ %23, %17 ], !dbg !1281
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1281
  store i8* %28, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1281, !tbaa !989
  store i8 92, i8* %27, align 1, !dbg !1281, !tbaa !937
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1256, metadata !802), !dbg !1284
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1258, metadata !802), !dbg !1285
  %29 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1285, !tbaa !1001
  %30 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1285, !tbaa !989
  %31 = icmp eq i64 %29, %30, !dbg !1286
  %32 = inttoptr i64 %30 to i8*, !dbg !1284
  br i1 %31, label %33, label %35, !dbg !1284

; <label>:33:                                     ; preds = %26
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1286
  %34 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1284, !tbaa !989
  br label %35, !dbg !1286

; <label>:35:                                     ; preds = %33, %26
  %36 = phi i8* [ %34, %33 ], [ %32, %26 ], !dbg !1284
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1284
  store i8* %37, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1284, !tbaa !989
  store i8 39, i8* %36, align 1, !dbg !1284, !tbaa !937
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1243, metadata !802), !dbg !1273
  br label %54, !dbg !1287

; <label>:38:                                     ; preds = %5, %5
  %39 = and i8 %8, 1, !dbg !1288
  %40 = xor i8 %39, 1, !dbg !1289
  tail call void @llvm.dbg.value(metadata i8 %40, i64 0, metadata !1243, metadata !802), !dbg !1273
  br label %54, !dbg !1290

; <label>:41:                                     ; preds = %5, %5
  %42 = and i8 %8, 1, !dbg !1291
  %43 = icmp eq i8 %42, 0, !dbg !1291
  br i1 %43, label %54, label %44, !dbg !1292

; <label>:44:                                     ; preds = %41
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1261, metadata !802), !dbg !1293
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1264, metadata !802), !dbg !1294
  %45 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1294, !tbaa !1001
  %46 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1294, !tbaa !989
  %47 = icmp eq i64 %45, %46, !dbg !1295
  %48 = inttoptr i64 %46 to i8*, !dbg !1293
  br i1 %47, label %49, label %51, !dbg !1293

; <label>:49:                                     ; preds = %44
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1295
  %50 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1293, !tbaa !989
  br label %51, !dbg !1295

; <label>:51:                                     ; preds = %49, %44
  %52 = phi i8* [ %50, %49 ], [ %48, %44 ], !dbg !1293
  %53 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1293
  store i8* %53, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1293, !tbaa !989
  store i8 92, i8* %52, align 1, !dbg !1293, !tbaa !937
  br label %54, !dbg !1296

; <label>:54:                                     ; preds = %5, %51, %41, %38, %35
  %55 = phi i8 [ %40, %38 ], [ 1, %35 ], [ 1, %41 ], [ 1, %51 ], [ 1, %5 ]
  tail call void @llvm.dbg.value(metadata i8 %55, i64 0, metadata !1243, metadata !802), !dbg !1273
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1267, metadata !802), !dbg !1297
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1269, metadata !802), !dbg !1298
  %56 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1298, !tbaa !1001
  %57 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1298, !tbaa !989
  %58 = icmp eq i64 %56, %57, !dbg !1299
  %59 = inttoptr i64 %57 to i8*, !dbg !1297
  br i1 %58, label %60, label %62, !dbg !1297

; <label>:60:                                     ; preds = %54
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #12, !dbg !1299
  %61 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1297, !tbaa !989
  br label %62, !dbg !1299

; <label>:62:                                     ; preds = %60, %54
  %63 = phi i8* [ %61, %60 ], [ %59, %54 ], !dbg !1297
  %64 = load i8, i8* %7, align 1, !dbg !1297, !tbaa !937
  %65 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !1297
  store i8* %65, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1297, !tbaa !989
  store i8 %64, i8* %63, align 1, !dbg !1297, !tbaa !937
  %66 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1300
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1242, metadata !802), !dbg !1272
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1242, metadata !802), !dbg !1272
  tail call void @llvm.dbg.value(metadata i8 %55, i64 0, metadata !1243, metadata !802), !dbg !1273
  %67 = load i8, i8* %66, align 1, !dbg !1274, !tbaa !937
  %68 = icmp eq i8 %67, 0, !dbg !1275
  br i1 %68, label %69, label %5, !dbg !1276, !llvm.loop !1301

; <label>:69:                                     ; preds = %62, %1
  ret void, !dbg !1303
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #9

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @c_strcasecmp(i8* readonly, i8* readonly) local_unnamed_addr #10 !dbg !1304 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1309, metadata !802), !dbg !1315
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1310, metadata !802), !dbg !1316
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1311, metadata !802), !dbg !1317
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1312, metadata !802), !dbg !1318
  %3 = icmp eq i8* %0, %1, !dbg !1319
  br i1 %3, label %33, label %4, !dbg !1321, !llvm.loop !1322

; <label>:4:                                      ; preds = %2
  br label %5, !dbg !1325

; <label>:5:                                      ; preds = %4, %24
  %6 = phi i8* [ %26, %24 ], [ %1, %4 ]
  %7 = phi i8* [ %25, %24 ], [ %0, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1311, metadata !802), !dbg !1317
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1312, metadata !802), !dbg !1318
  %8 = load i8, i8* %7, align 1, !dbg !1325, !tbaa !937
  %9 = zext i8 %8 to i32, !dbg !1325
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1327, metadata !802), !dbg !1333
  %10 = add nsw i32 %9, -65, !dbg !1335
  %11 = icmp ult i32 %10, 26, !dbg !1335
  %12 = add nuw nsw i32 %9, 32, !dbg !1336
  %13 = select i1 %11, i32 %12, i32 %9, !dbg !1335
  %14 = load i8, i8* %6, align 1, !dbg !1338, !tbaa !937
  %15 = zext i8 %14 to i32, !dbg !1338
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1327, metadata !802), !dbg !1339
  %16 = add nsw i32 %15, -65, !dbg !1341
  %17 = icmp ult i32 %16, 26, !dbg !1341
  %18 = add nuw nsw i32 %15, 32, !dbg !1342
  %19 = select i1 %17, i32 %18, i32 %15, !dbg !1341
  %20 = and i32 %13, 255, !dbg !1343
  %21 = icmp eq i32 %20, 0, !dbg !1345
  br i1 %21, label %22, label %24, !dbg !1346

; <label>:22:                                     ; preds = %5
  %23 = and i32 %19, 255, !dbg !1347
  br label %29, !dbg !1346

; <label>:24:                                     ; preds = %5
  %25 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1349
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1311, metadata !802), !dbg !1317
  %26 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1350
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1312, metadata !802), !dbg !1318
  %27 = and i32 %19, 255, !dbg !1351
  %28 = icmp eq i32 %20, %27, !dbg !1352
  br i1 %28, label %5, label %29, !dbg !1353, !llvm.loop !1322

; <label>:29:                                     ; preds = %24, %22
  %30 = phi i32 [ %23, %22 ], [ %27, %24 ], !dbg !1347
  %31 = phi i32 [ 0, %22 ], [ %20, %24 ]
  %32 = sub nsw i32 %31, %30, !dbg !1354
  br label %33, !dbg !1355

; <label>:33:                                     ; preds = %2, %29
  %34 = phi i32 [ %32, %29 ], [ 0, %2 ]
  ret i32 %34, !dbg !1356
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1357 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1359, metadata !802), !dbg !1360
  store i8* %0, i8** @file_name, align 8, !dbg !1361, !tbaa !809
  ret void, !dbg !1362
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1363 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1367, metadata !802), !dbg !1368
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1369, !tbaa !1370
  ret void, !dbg !1372
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1373 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1378, !tbaa !809
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1379
  %3 = icmp eq i32 %2, 0, !dbg !1380
  br i1 %3, label %21, label %4, !dbg !1381

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1382, !tbaa !1370, !range !1383
  %6 = icmp eq i8 %5, 0, !dbg !1382
  %7 = tail call i32* @__errno_location() #17, !dbg !1384
  br i1 %6, label %11, label %8, !dbg !1386

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1387, !tbaa !884
  %10 = icmp eq i32 %9, 32, !dbg !1388
  br i1 %10, label %21, label %11, !dbg !1389

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !1390
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1375, metadata !802), !dbg !1391
  %13 = load i8*, i8** @file_name, align 8, !dbg !1392, !tbaa !809
  %14 = icmp eq i8* %13, null, !dbg !1392
  %15 = load i32, i32* %7, align 4, !tbaa !884
  br i1 %14, label %18, label %16, !dbg !1393

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1394
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.28, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !1395
  br label %19, !dbg !1395

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.29, i64 0, i64 0), i8* %12) #12, !dbg !1396
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1397, !tbaa !884
  tail call void @_exit(i32 %20) #15, !dbg !1398
  unreachable, !dbg !1398

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1399, !tbaa !809
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !1401
  %24 = icmp eq i32 %23, 0, !dbg !1402
  br i1 %24, label %27, label %25, !dbg !1403

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1404, !tbaa !884
  tail call void @_exit(i32 %26) #15, !dbg !1405
  unreachable, !dbg !1405

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1406
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #10 !dbg !1407 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1412, metadata !802), !dbg !1416
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1413, metadata !802), !dbg !1417
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1415, metadata !802), !dbg !1418
  br label %2, !dbg !1419

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1413, metadata !802), !dbg !1417
  %4 = load i8, i8* %3, align 1, !dbg !1420, !tbaa !937
  %5 = icmp eq i8 %4, 47, !dbg !1420
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1421
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1413, metadata !802), !dbg !1417
  br i1 %5, label %2, label %7, !dbg !1419, !llvm.loop !1422

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !1423

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !1425
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !1415, metadata !802), !dbg !1418
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1414, metadata !802), !dbg !1427
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1413, metadata !802), !dbg !1417
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !1423

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !1428
  %15 = icmp eq i8 %14, 0, !dbg !1428
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1413, metadata !802), !dbg !1417
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1415, metadata !802), !dbg !1418
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !1432
  %17 = select i1 %15, i8 %12, i8 0, !dbg !1432
  br label %18, !dbg !1432

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !1415, metadata !802), !dbg !1418
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1413, metadata !802), !dbg !1417
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1433
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1414, metadata !802), !dbg !1427
  %22 = load i8, i8* %21, align 1, !dbg !1425, !tbaa !937
  br label %8, !dbg !1434, !llvm.loop !1435

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !1437
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #10 !dbg !1438 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1442, metadata !802), !dbg !1445
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1444, metadata !802), !dbg !1446
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !1447
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1443, metadata !802), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1443, metadata !802), !dbg !1449
  %3 = icmp ugt i64 %2, 1, !dbg !1450
  br i1 %3, label %4, label %13, !dbg !1452

; <label>:4:                                      ; preds = %1
  br label %7, !dbg !1453

; <label>:5:                                      ; preds = %7
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1443, metadata !802), !dbg !1449
  %6 = icmp ugt i64 %9, 1, !dbg !1450
  br i1 %6, label %7, label %13, !dbg !1452, !llvm.loop !1454

; <label>:7:                                      ; preds = %4, %5
  %8 = phi i64 [ %9, %5 ], [ %2, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1443, metadata !802), !dbg !1449
  %9 = add i64 %8, -1, !dbg !1453
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !1453
  %11 = load i8, i8* %10, align 1, !dbg !1453, !tbaa !937
  %12 = icmp eq i8 %11, 47, !dbg !1453
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1443, metadata !802), !dbg !1449
  br i1 %12, label %5, label %13, !dbg !1455

; <label>:13:                                     ; preds = %7, %5, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %5 ], [ %8, %7 ]
  ret i64 %14, !dbg !1457
}

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1458 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1503, metadata !802), !dbg !1510
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1504, metadata !802), !dbg !1511
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, i64 0, metadata !1505, metadata !802), !dbg !1512
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1506, metadata !802), !dbg !1513
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1507, metadata !802), !dbg !1514
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1508, metadata !802), !dbg !1515
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #12, !dbg !1516
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ], !dbg !1517

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #12, !dbg !1518
  %7 = icmp ne i32 %6, 2, !dbg !1521
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1508, metadata !802), !dbg !1515
  %8 = zext i1 %7 to i8, !dbg !1522
  br label %9, !dbg !1522

; <label>:9:                                      ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ]
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !1508, metadata !802), !dbg !1515
  %11 = tail call i32 @dup2(i32 1, i32 1) #12, !dbg !1523
  %12 = icmp ne i32 %11, 1, !dbg !1525
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1507, metadata !802), !dbg !1514
  %13 = zext i1 %12 to i8, !dbg !1526
  br label %14, !dbg !1526

; <label>:14:                                     ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ]
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ]
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !1508, metadata !802), !dbg !1515
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1507, metadata !802), !dbg !1514
  %17 = tail call i32 @dup2(i32 0, i32 0) #12, !dbg !1527
  %18 = icmp eq i32 %17, 0, !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1506, metadata !802), !dbg !1513
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !1508, metadata !802), !dbg !1515
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1507, metadata !802), !dbg !1514
  br i1 %18, label %27, label %19, !dbg !1530

; <label>:19:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1532, metadata !802) #12, !dbg !1538
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i64 0, i64 0), i32 0) #12, !dbg !1540
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !1537, metadata !802) #12, !dbg !1541
  %21 = icmp eq i32 %20, 0, !dbg !1542
  br i1 %21, label %27, label %22, !dbg !1544

; <label>:22:                                     ; preds = %19
  %23 = icmp sgt i32 %20, -1, !dbg !1545
  br i1 %23, label %24, label %54, !dbg !1548

; <label>:24:                                     ; preds = %22
  %25 = tail call i32 @close(i32 %20) #12, !dbg !1549
  %26 = tail call i32* @__errno_location() #17, !dbg !1551
  store i32 9, i32* %26, align 4, !dbg !1552, !tbaa !884
  br label %54, !dbg !1553

; <label>:27:                                     ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0, !dbg !1554
  br i1 %29, label %38, label %30, !dbg !1556

; <label>:30:                                     ; preds = %27
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1532, metadata !802) #12, !dbg !1557
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i64 0, i64 0), i32 0) #12, !dbg !1559
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !1537, metadata !802) #12, !dbg !1560
  %32 = icmp eq i32 %31, 1, !dbg !1561
  br i1 %32, label %38, label %33, !dbg !1562

; <label>:33:                                     ; preds = %30
  %34 = icmp sgt i32 %31, -1, !dbg !1563
  br i1 %34, label %35, label %54, !dbg !1564

; <label>:35:                                     ; preds = %33
  %36 = tail call i32 @close(i32 %31) #12, !dbg !1565
  %37 = tail call i32* @__errno_location() #17, !dbg !1566
  store i32 9, i32* %37, align 4, !dbg !1567, !tbaa !884
  br label %54, !dbg !1568

; <label>:38:                                     ; preds = %30, %27
  %39 = and i8 %16, 1, !dbg !1569
  %40 = icmp eq i8 %39, 0, !dbg !1569
  br i1 %40, label %49, label %41, !dbg !1571

; <label>:41:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1532, metadata !802) #12, !dbg !1572
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i64 0, i64 0), i32 0) #12, !dbg !1574
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1537, metadata !802) #12, !dbg !1575
  %43 = icmp eq i32 %42, 2, !dbg !1576
  br i1 %43, label %49, label %44, !dbg !1577

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i32 %42, -1, !dbg !1578
  br i1 %45, label %46, label %54, !dbg !1579

; <label>:46:                                     ; preds = %44
  %47 = tail call i32 @close(i32 %42) #12, !dbg !1580
  %48 = tail call i32* @__errno_location() #17, !dbg !1581
  store i32 9, i32* %48, align 4, !dbg !1582, !tbaa !884
  br label %54, !dbg !1583

; <label>:49:                                     ; preds = %3, %41, %38
  %50 = phi i8 [ %16, %38 ], [ %16, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %15, %38 ], [ %15, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #12, !dbg !1584
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %53, i64 0, metadata !1505, metadata !802), !dbg !1512
  br label %54

; <label>:54:                                     ; preds = %44, %46, %33, %35, %22, %24, %49
  %55 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ], [ %16, %46 ], [ %16, %44 ]
  %56 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ], [ %15, %46 ], [ %15, %44 ]
  %57 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ], [ %28, %46 ], [ %28, %44 ]
  %58 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], [ null, %46 ], [ null, %44 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %58, i64 0, metadata !1505, metadata !802), !dbg !1512
  %59 = tail call i32* @__errno_location() #17, !dbg !1585
  %60 = load i32, i32* %59, align 4, !dbg !1585, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !1509, metadata !802), !dbg !1586
  %61 = and i8 %55, 1, !dbg !1587
  %62 = icmp eq i8 %61, 0, !dbg !1587
  br i1 %62, label %65, label %63, !dbg !1589

; <label>:63:                                     ; preds = %54
  %64 = tail call i32 @close(i32 2) #12, !dbg !1590
  br label %65, !dbg !1590

; <label>:65:                                     ; preds = %54, %63
  %66 = and i8 %56, 1, !dbg !1591
  %67 = icmp eq i8 %66, 0, !dbg !1591
  br i1 %67, label %70, label %68, !dbg !1593

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @close(i32 1) #12, !dbg !1594
  br label %70, !dbg !1594

; <label>:70:                                     ; preds = %65, %68
  br i1 %57, label %71, label %73, !dbg !1595

; <label>:71:                                     ; preds = %70
  %72 = tail call i32 @close(i32 0) #12, !dbg !1596
  br label %73, !dbg !1596

; <label>:73:                                     ; preds = %71, %70
  %74 = icmp eq %struct._IO_FILE* %58, null, !dbg !1598
  br i1 %74, label %75, label %76, !dbg !1600

; <label>:75:                                     ; preds = %73
  store i32 %60, i32* %59, align 4, !dbg !1601, !tbaa !884
  br label %76, !dbg !1602

; <label>:76:                                     ; preds = %73, %75
  ret %struct._IO_FILE* %58, !dbg !1603
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1604 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1606, metadata !802), !dbg !1609
  %2 = icmp eq i8* %0, null, !dbg !1610
  br i1 %2, label %3, label %6, !dbg !1612

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1613, !tbaa !809
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.123, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1615
  tail call void @abort() #15, !dbg !1616
  unreachable, !dbg !1616

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1617
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1607, metadata !802), !dbg !1618
  %8 = icmp eq i8* %7, null, !dbg !1619
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1620
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1621
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1608, metadata !802), !dbg !1622
  %11 = ptrtoint i8* %10 to i64, !dbg !1623
  %12 = ptrtoint i8* %0 to i64, !dbg !1623
  %13 = sub i64 %11, %12, !dbg !1623
  %14 = icmp sgt i64 %13, 6, !dbg !1625
  br i1 %14, label %15, label %24, !dbg !1626

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1627
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.124, i64 0, i64 0), i64 7) #14, !dbg !1628
  %18 = icmp eq i32 %17, 0, !dbg !1629
  br i1 %18, label %19, label %24, !dbg !1630

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1606, metadata !802), !dbg !1609
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.125, i64 0, i64 0), i64 3) #14, !dbg !1631
  %21 = icmp eq i32 %20, 0, !dbg !1634
  br i1 %21, label %22, label %24, !dbg !1635

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1636
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1606, metadata !802), !dbg !1609
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1638, !tbaa !809
  br label %24, !dbg !1639

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1606, metadata !802), !dbg !1609
  store i8* %25, i8** @program_name, align 8, !dbg !1640, !tbaa !809
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1641, !tbaa !809
  ret void, !dbg !1642
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1643 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1648, metadata !802), !dbg !1651
  %2 = tail call i32* @__errno_location() #17, !dbg !1652
  %3 = load i32, i32* %2, align 4, !dbg !1652, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1649, metadata !802), !dbg !1653
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1654
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1654
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1654
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1655
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1655
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1650, metadata !802), !dbg !1656
  store i32 %3, i32* %2, align 4, !dbg !1657, !tbaa !884
  ret %struct.quoting_options* %8, !dbg !1658
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !1659 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1665, metadata !802), !dbg !1666
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1667
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1667
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1668
  %5 = load i32, i32* %4, align 8, !dbg !1668, !tbaa !1669
  ret i32 %5, !dbg !1671
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1672 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1676, metadata !802), !dbg !1678
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1677, metadata !802), !dbg !1679
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1680
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1680
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1681
  store i32 %1, i32* %5, align 8, !dbg !1682, !tbaa !1669
  ret void, !dbg !1683
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1684 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1688, metadata !802), !dbg !1696
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1689, metadata !802), !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1690, metadata !802), !dbg !1698
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1691, metadata !802), !dbg !1699
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1700
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1700
  %6 = lshr i8 %1, 5, !dbg !1701
  %7 = zext i8 %6 to i64, !dbg !1701
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1702
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1692, metadata !802), !dbg !1703
  %9 = and i8 %1, 31, !dbg !1704
  %10 = zext i8 %9 to i32, !dbg !1705
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1694, metadata !802), !dbg !1706
  %11 = load i32, i32* %8, align 4, !dbg !1707, !tbaa !884
  %12 = lshr i32 %11, %10, !dbg !1708
  %13 = and i32 %12, 1, !dbg !1709
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1695, metadata !802), !dbg !1710
  %14 = and i32 %2, 1, !dbg !1711
  %15 = xor i32 %13, %14, !dbg !1712
  %16 = shl i32 %15, %10, !dbg !1713
  %17 = xor i32 %16, %11, !dbg !1714
  store i32 %17, i32* %8, align 4, !dbg !1714, !tbaa !884
  ret i32 %13, !dbg !1715
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1716 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1720, metadata !802), !dbg !1723
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1721, metadata !802), !dbg !1724
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1720, metadata !802), !dbg !1723
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1720, metadata !802), !dbg !1723
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1728
  %6 = load i32, i32* %5, align 4, !dbg !1728, !tbaa !1729
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1722, metadata !802), !dbg !1730
  store i32 %1, i32* %5, align 4, !dbg !1731, !tbaa !1729
  ret i32 %6, !dbg !1732
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1733 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1737, metadata !802), !dbg !1740
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1738, metadata !802), !dbg !1741
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1739, metadata !802), !dbg !1742
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1743
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1737, metadata !802), !dbg !1740
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1745
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1737, metadata !802), !dbg !1740
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1746
  store i32 10, i32* %6, align 8, !dbg !1747, !tbaa !1669
  %7 = icmp ne i8* %1, null, !dbg !1748
  %8 = icmp ne i8* %2, null, !dbg !1750
  %9 = and i1 %7, %8, !dbg !1751
  br i1 %9, label %11, label %10, !dbg !1751

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1752
  unreachable, !dbg !1752

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1753
  store i8* %1, i8** %12, align 8, !dbg !1754, !tbaa !1755
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1756
  store i8* %2, i8** %13, align 8, !dbg !1757, !tbaa !1758
  ret void, !dbg !1759
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1760 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1764, metadata !802), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1765, metadata !802), !dbg !1773
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1766, metadata !802), !dbg !1774
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1767, metadata !802), !dbg !1775
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1768, metadata !802), !dbg !1776
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1777
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1777
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1769, metadata !802), !dbg !1778
  %8 = tail call i32* @__errno_location() #17, !dbg !1779
  %9 = load i32, i32* %8, align 4, !dbg !1779, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1770, metadata !802), !dbg !1780
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1781
  %11 = load i32, i32* %10, align 8, !dbg !1781, !tbaa !1669
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1782
  %13 = load i32, i32* %12, align 4, !dbg !1782, !tbaa !1729
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1783
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1784
  %16 = load i8*, i8** %15, align 8, !dbg !1784, !tbaa !1755
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1785
  %18 = load i8*, i8** %17, align 8, !dbg !1785, !tbaa !1758
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1786
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1771, metadata !802), !dbg !1787
  store i32 %9, i32* %8, align 4, !dbg !1788, !tbaa !884
  ret i64 %19, !dbg !1789
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1790 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1796, metadata !802), !dbg !1860
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1797, metadata !802), !dbg !1861
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1798, metadata !802), !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1799, metadata !802), !dbg !1863
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1800, metadata !802), !dbg !1864
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1801, metadata !802), !dbg !1865
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1802, metadata !802), !dbg !1866
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1803, metadata !802), !dbg !1867
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1804, metadata !802), !dbg !1868
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1806, metadata !802), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1807, metadata !802), !dbg !1870
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1808, metadata !802), !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1809, metadata !802), !dbg !1872
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1810, metadata !802), !dbg !1873
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1874
  %14 = icmp eq i64 %13, 1, !dbg !1875
  %15 = lshr i32 %5, 1, !dbg !1876
  %16 = trunc i32 %15 to i8, !dbg !1876
  %17 = and i8 %16, 1, !dbg !1876
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1812, metadata !802), !dbg !1876
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1813, metadata !802), !dbg !1877
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1814, metadata !802), !dbg !1878
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1815, metadata !802), !dbg !1879
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1880

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1797, metadata !802), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1815, metadata !802), !dbg !1879
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1814, metadata !802), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1812, metadata !802), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1799, metadata !802), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1810, metadata !802), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1809, metadata !802), !dbg !1872
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1808, metadata !802), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1807, metadata !802), !dbg !1870
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1804, metadata !802), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1803, metadata !802), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1800, metadata !802), !dbg !1864
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
  ], !dbg !1881

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1800, metadata !802), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1812, metadata !802), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1812, metadata !802), !dbg !1876
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1800, metadata !802), !dbg !1864
  br label %94, !dbg !1882

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1812, metadata !802), !dbg !1876
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1800, metadata !802), !dbg !1864
  %43 = and i8 %36, 1, !dbg !1884
  %44 = icmp eq i8 %43, 0, !dbg !1884
  br i1 %44, label %45, label %94, !dbg !1882

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1886
  br i1 %46, label %94, label %47, !dbg !1889

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1886, !tbaa !937
  br label %94, !dbg !1886

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.136, i64 0, i64 0), i32 %28), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1803, metadata !802), !dbg !1867
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.137, i64 0, i64 0), i32 %28), !dbg !1894
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1804, metadata !802), !dbg !1868
  br label %51, !dbg !1895

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1804, metadata !802), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1803, metadata !802), !dbg !1867
  %54 = and i8 %36, 1, !dbg !1896
  %55 = icmp eq i8 %54, 0, !dbg !1896
  br i1 %55, label %56, label %72, !dbg !1898

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1808, metadata !802), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1808, metadata !802), !dbg !1871
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1806, metadata !802), !dbg !1869
  %57 = load i8, i8* %52, align 1, !dbg !1899, !tbaa !937
  %58 = icmp eq i8 %57, 0, !dbg !1902
  br i1 %58, label %72, label %59, !dbg !1902

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1903

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1808, metadata !802), !dbg !1871
  %64 = icmp ult i64 %63, %40, !dbg !1903
  br i1 %64, label %65, label %67, !dbg !1906

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1903
  store i8 %61, i8* %66, align 1, !dbg !1903, !tbaa !937
  br label %67, !dbg !1903

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1806, metadata !802), !dbg !1869
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1907
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1808, metadata !802), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1808, metadata !802), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1806, metadata !802), !dbg !1869
  %70 = load i8, i8* %69, align 1, !dbg !1899, !tbaa !937
  %71 = icmp eq i8 %70, 0, !dbg !1902
  br i1 %71, label %72, label %60, !dbg !1902, !llvm.loop !1908

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1810, metadata !802), !dbg !1873
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1808, metadata !802), !dbg !1871
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1809, metadata !802), !dbg !1872
  br label %94, !dbg !1911

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1810, metadata !802), !dbg !1873
  br label %76, !dbg !1912

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1810, metadata !802), !dbg !1873
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1812, metadata !802), !dbg !1876
  br label %78, !dbg !1913

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1812, metadata !802), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1810, metadata !802), !dbg !1873
  %81 = and i8 %80, 1, !dbg !1914
  %82 = icmp eq i8 %81, 0, !dbg !1914
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1810, metadata !802), !dbg !1873
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1916
  br label %84, !dbg !1916

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1812, metadata !802), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1810, metadata !802), !dbg !1873
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1800, metadata !802), !dbg !1864
  %87 = and i8 %86, 1, !dbg !1917
  %88 = icmp eq i8 %87, 0, !dbg !1917
  br i1 %88, label %89, label %94, !dbg !1919

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1920
  br i1 %90, label %94, label %91, !dbg !1923

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1920, !tbaa !937
  br label %94, !dbg !1920

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1812, metadata !802), !dbg !1876
  br label %94, !dbg !1924

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1925
  unreachable, !dbg !1925

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.138, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.138, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.138, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.137, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.137, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.137, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.138, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1812, metadata !802), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1810, metadata !802), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1809, metadata !802), !dbg !1872
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1808, metadata !802), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1804, metadata !802), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1803, metadata !802), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1800, metadata !802), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1805, metadata !802), !dbg !1926
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
  br label %122, !dbg !1927

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1797, metadata !802), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1815, metadata !802), !dbg !1879
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1814, metadata !802), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1799, metadata !802), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1807, metadata !802), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1805, metadata !802), !dbg !1926
  %131 = icmp eq i64 %126, -1, !dbg !1928
  br i1 %131, label %134, label %132, !dbg !1929

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1930
  br i1 %133, label %590, label %138, !dbg !1931

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1932
  %136 = load i8, i8* %135, align 1, !dbg !1932, !tbaa !937
  %137 = icmp eq i8 %136, 0, !dbg !1933
  br i1 %137, label %590, label %138, !dbg !1931

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1821, metadata !802), !dbg !1934
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1822, metadata !802), !dbg !1935
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1823, metadata !802), !dbg !1936
  br i1 %108, label %139, label %154, !dbg !1937

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1939
  %141 = and i1 %109, %131, !dbg !1940
  br i1 %141, label %142, label %144, !dbg !1940

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1799, metadata !802), !dbg !1863
  br label %144, !dbg !1942

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1799, metadata !802), !dbg !1863
  %146 = icmp ugt i64 %140, %145, !dbg !1943
  br i1 %146, label %154, label %147, !dbg !1944

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1945
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1946
  %150 = icmp ne i32 %149, 0, !dbg !1947
  %151 = or i1 %150, %111, !dbg !1948
  %152 = xor i1 %150, true, !dbg !1948
  %153 = zext i1 %152 to i8, !dbg !1948
  br i1 %151, label %154, label %635, !dbg !1948

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1821, metadata !802), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1799, metadata !802), !dbg !1863
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1949
  %158 = load i8, i8* %157, align 1, !dbg !1949, !tbaa !937
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1816, metadata !802), !dbg !1950
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
  ], !dbg !1951

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1952

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1953

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1822, metadata !802), !dbg !1935
  %162 = and i8 %127, 1, !dbg !1957
  %163 = icmp eq i8 %162, 0, !dbg !1957
  %164 = and i1 %113, %163, !dbg !1957
  br i1 %164, label %165, label %181, !dbg !1957

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1959
  br i1 %166, label %167, label %169, !dbg !1963

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1959
  store i8 39, i8* %168, align 1, !dbg !1959, !tbaa !937
  br label %169, !dbg !1959

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1806, metadata !802), !dbg !1869
  %171 = icmp ult i64 %170, %130, !dbg !1964
  br i1 %171, label %172, label %174, !dbg !1967

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1964
  store i8 36, i8* %173, align 1, !dbg !1964, !tbaa !937
  br label %174, !dbg !1964

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1806, metadata !802), !dbg !1869
  %176 = icmp ult i64 %175, %130, !dbg !1968
  br i1 %176, label %177, label %179, !dbg !1971

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1968
  store i8 39, i8* %178, align 1, !dbg !1968, !tbaa !937
  br label %179, !dbg !1968

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1813, metadata !802), !dbg !1877
  br label %181, !dbg !1972

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1806, metadata !802), !dbg !1869
  %184 = icmp ult i64 %182, %130, !dbg !1973
  br i1 %184, label %185, label %187, !dbg !1976

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1973
  store i8 92, i8* %186, align 1, !dbg !1973, !tbaa !937
  br label %187, !dbg !1973

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1806, metadata !802), !dbg !1869
  br i1 %105, label %189, label %470, !dbg !1977

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1979
  %191 = icmp ult i64 %190, %155, !dbg !1980
  br i1 %191, label %192, label %470, !dbg !1981

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1982
  %194 = load i8, i8* %193, align 1, !dbg !1982, !tbaa !937
  %195 = add i8 %194, -48, !dbg !1983
  %196 = icmp ult i8 %195, 10, !dbg !1983
  br i1 %196, label %197, label %470, !dbg !1983

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1984
  br i1 %198, label %199, label %201, !dbg !1988

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1984
  store i8 48, i8* %200, align 1, !dbg !1984, !tbaa !937
  br label %201, !dbg !1984

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1806, metadata !802), !dbg !1869
  %203 = icmp ult i64 %202, %130, !dbg !1989
  br i1 %203, label %204, label %206, !dbg !1992

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1989
  store i8 48, i8* %205, align 1, !dbg !1989, !tbaa !937
  br label %206, !dbg !1989

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1806, metadata !802), !dbg !1869
  br label %470, !dbg !1993

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1994

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1995

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1996

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1998

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2000
  %214 = icmp ult i64 %213, %155, !dbg !2001
  br i1 %214, label %215, label %470, !dbg !2002

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2003
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2004
  %218 = load i8, i8* %217, align 1, !dbg !2004, !tbaa !937
  %219 = icmp eq i8 %218, 63, !dbg !2005
  br i1 %219, label %220, label %470, !dbg !2006

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2007
  %222 = load i8, i8* %221, align 1, !dbg !2007, !tbaa !937
  %223 = sext i8 %222 to i32, !dbg !2007
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
  ], !dbg !2008

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2009

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1816, metadata !802), !dbg !1950
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1805, metadata !802), !dbg !1926
  %226 = icmp ult i64 %124, %130, !dbg !2011
  br i1 %226, label %227, label %229, !dbg !2014

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2011
  store i8 63, i8* %228, align 1, !dbg !2011, !tbaa !937
  br label %229, !dbg !2011

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1806, metadata !802), !dbg !1869
  %231 = icmp ult i64 %230, %130, !dbg !2015
  br i1 %231, label %232, label %234, !dbg !2018

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2015
  store i8 34, i8* %233, align 1, !dbg !2015, !tbaa !937
  br label %234, !dbg !2015

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1806, metadata !802), !dbg !1869
  %236 = icmp ult i64 %235, %130, !dbg !2019
  br i1 %236, label %237, label %239, !dbg !2022

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2019
  store i8 34, i8* %238, align 1, !dbg !2019, !tbaa !937
  br label %239, !dbg !2019

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1806, metadata !802), !dbg !1869
  %241 = icmp ult i64 %240, %130, !dbg !2023
  br i1 %241, label %242, label %244, !dbg !2026

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2023
  store i8 63, i8* %243, align 1, !dbg !2023, !tbaa !937
  br label %244, !dbg !2023

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1806, metadata !802), !dbg !1869
  br label %470, !dbg !2027

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1820, metadata !802), !dbg !2028
  br label %256, !dbg !2029

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1820, metadata !802), !dbg !2028
  br label %256, !dbg !2030

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1820, metadata !802), !dbg !2028
  br label %254, !dbg !2031

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1820, metadata !802), !dbg !2028
  br label %254, !dbg !2032

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1820, metadata !802), !dbg !2028
  br label %256, !dbg !2033

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1820, metadata !802), !dbg !2028
  br i1 %113, label %252, label %253, !dbg !2034

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2035

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2038

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1820, metadata !802), !dbg !2028
  br i1 %117, label %256, label %635, !dbg !2040

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1820, metadata !802), !dbg !2028
  br i1 %104, label %497, label %470, !dbg !2042

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2043
  br i1 %259, label %260, label %265, !dbg !2045

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2046, !tbaa !937
  %262 = icmp ne i8 %261, 0, !dbg !2047
  %263 = icmp ne i64 %123, 0, !dbg !2048
  %264 = or i1 %263, %262, !dbg !2050
  br i1 %264, label %470, label %271, !dbg !2050

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2051
  %267 = icmp ne i64 %123, 0, !dbg !2048
  %268 = or i1 %267, %266, !dbg !2045
  br i1 %268, label %470, label %271, !dbg !2045

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2048
  br i1 %270, label %271, label %470, !dbg !2052

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1823, metadata !802), !dbg !1936
  br label %272, !dbg !2053

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1823, metadata !802), !dbg !1936
  br i1 %117, label %470, label %635, !dbg !2054

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1814, metadata !802), !dbg !1878
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1823, metadata !802), !dbg !1936
  br i1 %113, label %275, label %470, !dbg !2056

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2057

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2060
  %278 = icmp ne i64 %125, 0, !dbg !2062
  %279 = or i1 %278, %277, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1807, metadata !802), !dbg !1870
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1797, metadata !802), !dbg !1861
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2063
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1797, metadata !802), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1807, metadata !802), !dbg !1870
  %282 = icmp ult i64 %124, %281, !dbg !2064
  br i1 %282, label %283, label %285, !dbg !2067

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2064
  store i8 39, i8* %284, align 1, !dbg !2064, !tbaa !937
  br label %285, !dbg !2064

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2067
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1806, metadata !802), !dbg !1869
  %287 = icmp ult i64 %286, %281, !dbg !2068
  br i1 %287, label %288, label %290, !dbg !2071

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2068
  store i8 92, i8* %289, align 1, !dbg !2068, !tbaa !937
  br label %290, !dbg !2068

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1806, metadata !802), !dbg !1869
  %292 = icmp ult i64 %291, %281, !dbg !2072
  br i1 %292, label %293, label %295, !dbg !2075

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2072
  store i8 39, i8* %294, align 1, !dbg !2072, !tbaa !937
  br label %295, !dbg !2072

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1813, metadata !802), !dbg !1877
  br label %470, !dbg !2076

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2077

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1824, metadata !802), !dbg !2078
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2079
  %300 = load i16*, i16** %299, align 8, !dbg !2079, !tbaa !809
  %301 = zext i8 %158 to i64, !dbg !2079
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2079
  %303 = load i16, i16* %302, align 2, !dbg !2079, !tbaa !1083
  %304 = lshr i16 %303, 14, !dbg !2081
  %305 = trunc i16 %304 to i8, !dbg !2081
  %306 = and i8 %305, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1827, metadata !802), !dbg !2082
  br label %362, !dbg !2083

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2084
  store i64 0, i64* %10, align 8, !dbg !2085
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1824, metadata !802), !dbg !2078
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1827, metadata !802), !dbg !2082
  %308 = icmp eq i64 %155, -1, !dbg !2086
  br i1 %308, label %309, label %311, !dbg !2088

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1799, metadata !802), !dbg !1863
  br label %311, !dbg !2090

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1799, metadata !802), !dbg !1863
  br label %313, !dbg !2091, !llvm.loop !2092

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1827, metadata !802), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1824, metadata !802), !dbg !2078
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2094
  %316 = add i64 %314, %123, !dbg !2095
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2096
  %318 = sub i64 %312, %316, !dbg !2097
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1828, metadata !802), !dbg !2098
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1846, metadata !802), !dbg !2099
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #12, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1849, metadata !802), !dbg !2101
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2102

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1827, metadata !802), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1824, metadata !802), !dbg !2078
  %321 = icmp ugt i64 %312, %316, !dbg !2103
  br i1 %321, label %322, label %347, !dbg !2105

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2106

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1824, metadata !802), !dbg !2078
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2106
  %327 = load i8, i8* %326, align 1, !dbg !2106, !tbaa !937
  %328 = icmp eq i8 %327, 0, !dbg !2105
  br i1 %328, label %347, label %329, !dbg !2107

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1824, metadata !802), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1824, metadata !802), !dbg !2078
  %331 = add i64 %330, %123, !dbg !2109
  %332 = icmp ult i64 %331, %312, !dbg !2103
  br i1 %332, label %323, label %347, !dbg !2105, !llvm.loop !2110

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2111
  %335 = and i1 %115, %334, !dbg !2114
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1850, metadata !802), !dbg !2115
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1850, metadata !802), !dbg !2115
  br i1 %335, label %336, label %350, !dbg !2114

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2116

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1850, metadata !802), !dbg !2115
  %339 = add i64 %338, %316, !dbg !2116
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2117
  %341 = load i8, i8* %340, align 1, !dbg !2117, !tbaa !937
  %342 = sext i8 %341 to i32, !dbg !2117
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2118

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1850, metadata !802), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1850, metadata !802), !dbg !2115
  %345 = icmp ult i64 %344, %319, !dbg !2111
  br i1 %345, label %337, label %350, !dbg !2120, !llvm.loop !2121

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2123

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1827, metadata !802), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1824, metadata !802), !dbg !2078
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2123
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2124, !tbaa !884
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1846, metadata !802), !dbg !2099
  %352 = call i32 @iswprint(i32 %351) #12, !dbg !2126
  %353 = icmp eq i32 %352, 0, !dbg !2126
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1827, metadata !802), !dbg !2082
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2127
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1827, metadata !802), !dbg !2082
  %355 = add i64 %319, %314, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1824, metadata !802), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1827, metadata !802), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1824, metadata !802), !dbg !2078
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2123
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1828, metadata !802), !dbg !2098
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2129
  %357 = icmp eq i32 %356, 0, !dbg !2130
  br i1 %357, label %313, label %358, !dbg !2131, !llvm.loop !2092

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2132
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1827, metadata !802), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1824, metadata !802), !dbg !2078
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2123
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2132
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1827, metadata !802), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1824, metadata !802), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1799, metadata !802), !dbg !1863
  %366 = and i8 %365, 1, !dbg !2133
  %367 = icmp ne i8 %366, 0, !dbg !2133
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1823, metadata !802), !dbg !1936
  %368 = icmp ult i64 %364, 2, !dbg !2134
  %369 = or i1 %367, %112, !dbg !2135
  %370 = and i1 %368, %369, !dbg !2136
  br i1 %370, label %470, label %371, !dbg !2136

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2137
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1857, metadata !802), !dbg !2138
  br label %373, !dbg !2139

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1822, metadata !802), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1821, metadata !802), !dbg !1934
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1816, metadata !802), !dbg !1950
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1805, metadata !802), !dbg !1926
  br i1 %369, label %426, label %380, !dbg !2140

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2145

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1822, metadata !802), !dbg !1935
  %382 = and i8 %376, 1, !dbg !2148
  %383 = icmp eq i8 %382, 0, !dbg !2148
  %384 = and i1 %113, %383, !dbg !2148
  br i1 %384, label %385, label %401, !dbg !2148

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2150
  br i1 %386, label %387, label %389, !dbg !2154

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2150
  store i8 39, i8* %388, align 1, !dbg !2150, !tbaa !937
  br label %389, !dbg !2150

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1806, metadata !802), !dbg !1869
  %391 = icmp ult i64 %390, %130, !dbg !2155
  br i1 %391, label %392, label %394, !dbg !2158

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2155
  store i8 36, i8* %393, align 1, !dbg !2155, !tbaa !937
  br label %394, !dbg !2155

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1806, metadata !802), !dbg !1869
  %396 = icmp ult i64 %395, %130, !dbg !2159
  br i1 %396, label %397, label %399, !dbg !2162

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2159
  store i8 39, i8* %398, align 1, !dbg !2159, !tbaa !937
  br label %399, !dbg !2159

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1813, metadata !802), !dbg !1877
  br label %401, !dbg !2163

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1806, metadata !802), !dbg !1869
  %404 = icmp ult i64 %402, %130, !dbg !2164
  br i1 %404, label %405, label %407, !dbg !2167

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2164
  store i8 92, i8* %406, align 1, !dbg !2164, !tbaa !937
  br label %407, !dbg !2164

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1806, metadata !802), !dbg !1869
  %409 = icmp ult i64 %408, %130, !dbg !2168
  br i1 %409, label %410, label %414, !dbg !2171

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2168
  %412 = or i8 %411, 48, !dbg !2168
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2168
  store i8 %412, i8* %413, align 1, !dbg !2168, !tbaa !937
  br label %414, !dbg !2168

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1806, metadata !802), !dbg !1869
  %416 = icmp ult i64 %415, %130, !dbg !2172
  br i1 %416, label %417, label %422, !dbg !2175

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2172
  %419 = and i8 %418, 7, !dbg !2172
  %420 = or i8 %419, 48, !dbg !2172
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2172
  store i8 %420, i8* %421, align 1, !dbg !2172, !tbaa !937
  br label %422, !dbg !2172

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1806, metadata !802), !dbg !1869
  %424 = and i8 %377, 7, !dbg !2176
  %425 = or i8 %424, 48, !dbg !2177
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1816, metadata !802), !dbg !1950
  br label %435, !dbg !2178

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2179
  %428 = icmp eq i8 %427, 0, !dbg !2179
  br i1 %428, label %435, label %429, !dbg !2181

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2182
  br i1 %430, label %431, label %433, !dbg !2186

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2182
  store i8 92, i8* %432, align 1, !dbg !2182, !tbaa !937
  br label %433, !dbg !2182

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1821, metadata !802), !dbg !1934
  br label %435, !dbg !2187

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1822, metadata !802), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1821, metadata !802), !dbg !1934
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1816, metadata !802), !dbg !1950
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1806, metadata !802), !dbg !1869
  %441 = add i64 %374, 1, !dbg !2188
  %442 = icmp ugt i64 %372, %441, !dbg !2190
  br i1 %442, label %443, label %535, !dbg !2191

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2192
  %445 = icmp ne i8 %444, 0, !dbg !2192
  %446 = and i8 %440, 1, !dbg !2192
  %447 = icmp eq i8 %446, 0, !dbg !2192
  %448 = and i1 %445, %447, !dbg !2192
  br i1 %448, label %449, label %460, !dbg !2192

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2195
  br i1 %450, label %451, label %453, !dbg !2199

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2195
  store i8 39, i8* %452, align 1, !dbg !2195, !tbaa !937
  br label %453, !dbg !2195

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1806, metadata !802), !dbg !1869
  %455 = icmp ult i64 %454, %130, !dbg !2200
  br i1 %455, label %456, label %458, !dbg !2203

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2200
  store i8 39, i8* %457, align 1, !dbg !2200, !tbaa !937
  br label %458, !dbg !2200

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1813, metadata !802), !dbg !1877
  br label %460, !dbg !2204

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1806, metadata !802), !dbg !1869
  %463 = icmp ult i64 %461, %130, !dbg !2205
  br i1 %463, label %464, label %466, !dbg !2208

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2205
  store i8 %438, i8* %465, align 1, !dbg !2205, !tbaa !937
  br label %466, !dbg !2205

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1805, metadata !802), !dbg !1926
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2209
  %469 = load i8, i8* %468, align 1, !dbg !2209, !tbaa !937
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1816, metadata !802), !dbg !1950
  br label %373, !dbg !2210, !llvm.loop !2211

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1797, metadata !802), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1823, metadata !802), !dbg !1936
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1822, metadata !802), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1821, metadata !802), !dbg !1934
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1816, metadata !802), !dbg !1950
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1814, metadata !802), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1799, metadata !802), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1807, metadata !802), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1805, metadata !802), !dbg !1926
  br i1 %106, label %482, label %481, !dbg !2214

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2216

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2217

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2218
  %485 = zext i8 %484 to i64, !dbg !2218
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2219
  %487 = load i32, i32* %486, align 4, !dbg !2219, !tbaa !884
  %488 = and i8 %477, 31, !dbg !2220
  %489 = zext i8 %488 to i32, !dbg !2221
  %490 = shl i32 1, %489, !dbg !2222
  %491 = and i32 %487, %490, !dbg !2222
  %492 = icmp eq i32 %491, 0, !dbg !2222
  %493 = icmp eq i8 %156, 0, !dbg !2223
  %494 = and i1 %493, %492, !dbg !2224
  br i1 %494, label %535, label %497, !dbg !2224

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2223
  br i1 %496, label %535, label %497, !dbg !2225

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1797, metadata !802), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1823, metadata !802), !dbg !1936
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1816, metadata !802), !dbg !1950
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1814, metadata !802), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1799, metadata !802), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1807, metadata !802), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1805, metadata !802), !dbg !1926
  br i1 %111, label %507, label %635, !dbg !2226

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1822, metadata !802), !dbg !1935
  %508 = and i8 %502, 1, !dbg !2228
  %509 = icmp eq i8 %508, 0, !dbg !2228
  %510 = and i1 %113, %509, !dbg !2228
  br i1 %510, label %511, label %527, !dbg !2228

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2230
  br i1 %512, label %513, label %515, !dbg !2234

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2230
  store i8 39, i8* %514, align 1, !dbg !2230, !tbaa !937
  br label %515, !dbg !2230

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1806, metadata !802), !dbg !1869
  %517 = icmp ult i64 %516, %506, !dbg !2235
  br i1 %517, label %518, label %520, !dbg !2238

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2235
  store i8 36, i8* %519, align 1, !dbg !2235, !tbaa !937
  br label %520, !dbg !2235

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1806, metadata !802), !dbg !1869
  %522 = icmp ult i64 %521, %506, !dbg !2239
  br i1 %522, label %523, label %525, !dbg !2242

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2239
  store i8 39, i8* %524, align 1, !dbg !2239, !tbaa !937
  br label %525, !dbg !2239

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1813, metadata !802), !dbg !1877
  br label %527, !dbg !2243

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1806, metadata !802), !dbg !1869
  %530 = icmp ult i64 %528, %506, !dbg !2244
  br i1 %530, label %531, label %533, !dbg !2247

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2244
  store i8 92, i8* %532, align 1, !dbg !2244, !tbaa !937
  br label %533, !dbg !2244

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1797, metadata !802), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1823, metadata !802), !dbg !1936
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1822, metadata !802), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1816, metadata !802), !dbg !1950
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1814, metadata !802), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1799, metadata !802), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1807, metadata !802), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1805, metadata !802), !dbg !1926
  br label %562, !dbg !2248

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1797, metadata !802), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1823, metadata !802), !dbg !1936
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1822, metadata !802), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1816, metadata !802), !dbg !1950
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1814, metadata !802), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1799, metadata !802), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1807, metadata !802), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1805, metadata !802), !dbg !1926
  %546 = and i8 %540, 1, !dbg !2248
  %547 = icmp ne i8 %546, 0, !dbg !2248
  %548 = and i8 %543, 1, !dbg !2248
  %549 = icmp eq i8 %548, 0, !dbg !2248
  %550 = and i1 %547, %549, !dbg !2248
  br i1 %550, label %551, label %562, !dbg !2248

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2251
  br i1 %552, label %553, label %555, !dbg !2255

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2251
  store i8 39, i8* %554, align 1, !dbg !2251, !tbaa !937
  br label %555, !dbg !2251

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1806, metadata !802), !dbg !1869
  %557 = icmp ult i64 %556, %545, !dbg !2256
  br i1 %557, label %558, label %560, !dbg !2259

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2256
  store i8 39, i8* %559, align 1, !dbg !2256, !tbaa !937
  br label %560, !dbg !2256

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1813, metadata !802), !dbg !1877
  br label %562, !dbg !2260

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1806, metadata !802), !dbg !1869
  %572 = icmp ult i64 %570, %563, !dbg !2261
  br i1 %572, label %573, label %575, !dbg !2264

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2261
  store i8 %565, i8* %574, align 1, !dbg !2261, !tbaa !937
  br label %575, !dbg !2261

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1806, metadata !802), !dbg !1869
  %577 = and i8 %564, 1, !dbg !2265
  %578 = icmp eq i8 %577, 0, !dbg !2265
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1815, metadata !802), !dbg !1879
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2267
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1815, metadata !802), !dbg !1879
  br label %580, !dbg !2268

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1797, metadata !802), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1815, metadata !802), !dbg !1879
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1814, metadata !802), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1813, metadata !802), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1799, metadata !802), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1807, metadata !802), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1805, metadata !802), !dbg !1926
  %589 = add i64 %581, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1805, metadata !802), !dbg !1926
  br label %122, !dbg !2270, !llvm.loop !2271

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2273
  %593 = and i1 %113, %592, !dbg !2275
  %594 = xor i1 %593, true, !dbg !2275
  %595 = or i1 %111, %594, !dbg !2275
  br i1 %595, label %596, label %635, !dbg !2275

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2276
  %598 = xor i1 %597, true, !dbg !2276
  %599 = and i8 %128, 1, !dbg !2278
  %600 = icmp eq i8 %599, 0, !dbg !2278
  %601 = or i1 %600, %598, !dbg !2276
  br i1 %601, label %611, label %602, !dbg !2276

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2279
  %604 = icmp eq i8 %603, 0, !dbg !2279
  br i1 %604, label %607, label %605, !dbg !2282

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2283
  br label %645, !dbg !2284

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2285
  %609 = icmp ne i64 %125, 0, !dbg !2287
  %610 = and i1 %609, %608, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1797, metadata !802), !dbg !1861
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1806, metadata !802), !dbg !1869
  br i1 %610, label %27, label %611, !dbg !2288

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2289
  %613 = and i1 %612, %111, !dbg !2291
  br i1 %613, label %614, label %630, !dbg !2291

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1808, metadata !802), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1806, metadata !802), !dbg !1869
  %615 = load i8, i8* %99, align 1, !dbg !2292, !tbaa !937
  %616 = icmp eq i8 %615, 0, !dbg !2295
  br i1 %616, label %630, label %617, !dbg !2295

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2296

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1806, metadata !802), !dbg !1869
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1808, metadata !802), !dbg !1871
  %622 = icmp ult i64 %621, %130, !dbg !2296
  br i1 %622, label %623, label %625, !dbg !2299

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2296
  store i8 %619, i8* %624, align 1, !dbg !2296, !tbaa !937
  br label %625, !dbg !2296

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1806, metadata !802), !dbg !1869
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2300
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1808, metadata !802), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1808, metadata !802), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1806, metadata !802), !dbg !1869
  %628 = load i8, i8* %627, align 1, !dbg !2292, !tbaa !937
  %629 = icmp eq i8 %628, 0, !dbg !2295
  br i1 %629, label %630, label %618, !dbg !2295, !llvm.loop !2301

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1806, metadata !802), !dbg !1869
  %632 = icmp ult i64 %631, %130, !dbg !2303
  br i1 %632, label %633, label %645, !dbg !2305

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2306
  store i8 0, i8* %634, align 1, !dbg !2307, !tbaa !937
  br label %645, !dbg !2306

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1797, metadata !802), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1799, metadata !802), !dbg !1863
  %639 = icmp ne i32 %636, 2, !dbg !2308
  %640 = icmp eq i8 %103, 0, !dbg !2310
  %641 = or i1 %639, %640, !dbg !2311
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1800, metadata !802), !dbg !1864
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2311
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1800, metadata !802), !dbg !1864
  %643 = and i32 %5, -3, !dbg !2312
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2313
  br label %645, !dbg !2314

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2315
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2316 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2320, metadata !802), !dbg !2324
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2321, metadata !802), !dbg !2325
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2326
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2322, metadata !802), !dbg !2327
  %4 = icmp eq i8* %3, %0, !dbg !2328
  br i1 %4, label %5, label %75, !dbg !2330

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2331
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2323, metadata !802), !dbg !2332
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2333, metadata !802), !dbg !2349
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2347, metadata !802), !dbg !2352
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2348, metadata !802), !dbg !2353
  %7 = load i8, i8* %6, align 1, !dbg !2354, !tbaa !937
  %8 = sext i8 %7 to i32, !dbg !2354
  %9 = and i32 %8, -33, !dbg !2354
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2354

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2356, metadata !802), !dbg !2370
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2368, metadata !802), !dbg !2374
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2369, metadata !802), !dbg !2375
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2376
  %12 = load i8, i8* %11, align 1, !dbg !2376, !tbaa !937
  %13 = sext i8 %12 to i32, !dbg !2376
  %14 = and i32 %13, -33, !dbg !2376
  %15 = icmp eq i32 %14, 84, !dbg !2376
  br i1 %15, label %16, label %72, !dbg !2376

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2378, metadata !802), !dbg !2391
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2389, metadata !802), !dbg !2395
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2390, metadata !802), !dbg !2396
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2397
  %18 = load i8, i8* %17, align 1, !dbg !2397, !tbaa !937
  %19 = sext i8 %18 to i32, !dbg !2397
  %20 = and i32 %19, -33, !dbg !2397
  %21 = icmp eq i32 %20, 70, !dbg !2397
  br i1 %21, label %22, label %72, !dbg !2397

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2399, metadata !802), !dbg !2411
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2409, metadata !802), !dbg !2415
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2410, metadata !802), !dbg !2416
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2417
  %24 = load i8, i8* %23, align 1, !dbg !2417, !tbaa !937
  %25 = icmp eq i8 %24, 45, !dbg !2417
  br i1 %25, label %26, label %72, !dbg !2419

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2420, metadata !802), !dbg !2431
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2429, metadata !802), !dbg !2435
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2430, metadata !802), !dbg !2436
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2437
  %28 = load i8, i8* %27, align 1, !dbg !2437, !tbaa !937
  %29 = icmp eq i8 %28, 56, !dbg !2437
  br i1 %29, label %30, label %72, !dbg !2439

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2440, metadata !802), !dbg !2450
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2448, metadata !802), !dbg !2454
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2449, metadata !802), !dbg !2455
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2456
  %32 = load i8, i8* %31, align 1, !dbg !2456, !tbaa !937
  %33 = icmp eq i8 %32, 0, !dbg !2456
  br i1 %33, label %34, label %72, !dbg !2458

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2459, !tbaa !937
  %36 = icmp eq i8 %35, 96, !dbg !2460
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.139, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.140, i64 0, i64 0), !dbg !2459
  br label %75, !dbg !2461

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2356, metadata !802), !dbg !2462
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2368, metadata !802), !dbg !2466
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2369, metadata !802), !dbg !2467
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2468
  %40 = load i8, i8* %39, align 1, !dbg !2468, !tbaa !937
  %41 = sext i8 %40 to i32, !dbg !2468
  %42 = and i32 %41, -33, !dbg !2468
  %43 = icmp eq i32 %42, 66, !dbg !2468
  br i1 %43, label %44, label %72, !dbg !2468

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2378, metadata !802), !dbg !2469
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2389, metadata !802), !dbg !2471
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2390, metadata !802), !dbg !2472
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2473
  %46 = load i8, i8* %45, align 1, !dbg !2473, !tbaa !937
  %47 = icmp eq i8 %46, 49, !dbg !2473
  br i1 %47, label %48, label %72, !dbg !2474

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2399, metadata !802), !dbg !2475
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2409, metadata !802), !dbg !2477
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2410, metadata !802), !dbg !2478
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2479
  %50 = load i8, i8* %49, align 1, !dbg !2479, !tbaa !937
  %51 = icmp eq i8 %50, 56, !dbg !2479
  br i1 %51, label %52, label %72, !dbg !2480

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2420, metadata !802), !dbg !2481
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2429, metadata !802), !dbg !2483
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2430, metadata !802), !dbg !2484
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2485
  %54 = load i8, i8* %53, align 1, !dbg !2485, !tbaa !937
  %55 = icmp eq i8 %54, 48, !dbg !2485
  br i1 %55, label %56, label %72, !dbg !2486

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2440, metadata !802), !dbg !2487
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2448, metadata !802), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2449, metadata !802), !dbg !2490
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2491
  %58 = load i8, i8* %57, align 1, !dbg !2491, !tbaa !937
  %59 = icmp eq i8 %58, 51, !dbg !2491
  br i1 %59, label %60, label %72, !dbg !2492

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2493, metadata !802), !dbg !2502
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2500, metadata !802), !dbg !2506
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2501, metadata !802), !dbg !2507
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2508
  %62 = load i8, i8* %61, align 1, !dbg !2508, !tbaa !937
  %63 = icmp eq i8 %62, 48, !dbg !2508
  br i1 %63, label %64, label %72, !dbg !2510

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2511, metadata !802), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2517, metadata !802), !dbg !2523
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2518, metadata !802), !dbg !2524
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2525
  %66 = load i8, i8* %65, align 1, !dbg !2525, !tbaa !937
  %67 = icmp eq i8 %66, 0, !dbg !2525
  br i1 %67, label %68, label %72, !dbg !2527

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2528, !tbaa !937
  %70 = icmp eq i8 %69, 96, !dbg !2529
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.141, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.142, i64 0, i64 0), !dbg !2528
  br label %75, !dbg !2530

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2531
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.138, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.137, i64 0, i64 0), !dbg !2532
  br label %75, !dbg !2533

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2534
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2535 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2539, metadata !802), !dbg !2542
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2540, metadata !802), !dbg !2543
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2541, metadata !802), !dbg !2544
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2545, metadata !802) #12, !dbg !2558
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2550, metadata !802) #12, !dbg !2560
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2551, metadata !802) #12, !dbg !2561
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2552, metadata !802) #12, !dbg !2562
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2563
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2563
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2553, metadata !802) #12, !dbg !2564
  %6 = tail call i32* @__errno_location() #17, !dbg !2565
  %7 = load i32, i32* %6, align 4, !dbg !2565, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2554, metadata !802) #12, !dbg !2566
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2567
  %9 = load i32, i32* %8, align 4, !dbg !2567, !tbaa !1729
  %10 = or i32 %9, 1, !dbg !2568
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2555, metadata !802) #12, !dbg !2569
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2570
  %12 = load i32, i32* %11, align 8, !dbg !2570, !tbaa !1669
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2571
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2572
  %15 = load i8*, i8** %14, align 8, !dbg !2572, !tbaa !1755
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2573
  %17 = load i8*, i8** %16, align 8, !dbg !2573, !tbaa !1758
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !2574
  %19 = add i64 %18, 1, !dbg !2575
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2556, metadata !802) #12, !dbg !2576
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2577, metadata !802) #12, !dbg !2582
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2584
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2557, metadata !802) #12, !dbg !2585
  %21 = load i32, i32* %11, align 8, !dbg !2586, !tbaa !1669
  %22 = load i8*, i8** %14, align 8, !dbg !2587, !tbaa !1755
  %23 = load i8*, i8** %16, align 8, !dbg !2588, !tbaa !1758
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !2589
  store i32 %7, i32* %6, align 4, !dbg !2590, !tbaa !884
  ret i8* %20, !dbg !2591
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2546 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2545, metadata !802), !dbg !2592
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2550, metadata !802), !dbg !2593
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2551, metadata !802), !dbg !2594
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2552, metadata !802), !dbg !2595
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2596
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2596
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2553, metadata !802), !dbg !2597
  %7 = tail call i32* @__errno_location() #17, !dbg !2598
  %8 = load i32, i32* %7, align 4, !dbg !2598, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2554, metadata !802), !dbg !2599
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2600
  %10 = load i32, i32* %9, align 4, !dbg !2600, !tbaa !1729
  %11 = icmp ne i64* %2, null, !dbg !2601
  %12 = xor i1 %11, true, !dbg !2601
  %13 = zext i1 %12 to i32, !dbg !2601
  %14 = or i32 %10, %13, !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2555, metadata !802), !dbg !2603
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2604
  %16 = load i32, i32* %15, align 8, !dbg !2604, !tbaa !1669
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2605
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2606
  %19 = load i8*, i8** %18, align 8, !dbg !2606, !tbaa !1755
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2607
  %21 = load i8*, i8** %20, align 8, !dbg !2607, !tbaa !1758
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2608
  %23 = add i64 %22, 1, !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2556, metadata !802), !dbg !2610
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2577, metadata !802) #12, !dbg !2611
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2613
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2557, metadata !802), !dbg !2614
  %25 = load i32, i32* %15, align 8, !dbg !2615, !tbaa !1669
  %26 = load i8*, i8** %18, align 8, !dbg !2616, !tbaa !1755
  %27 = load i8*, i8** %20, align 8, !dbg !2617, !tbaa !1758
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2618
  store i32 %8, i32* %7, align 4, !dbg !2619, !tbaa !884
  br i1 %11, label %29, label %30, !dbg !2620

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2621, !tbaa !1020
  br label %30, !dbg !2623

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2624
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2625 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2629, !tbaa !809
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2627, metadata !802), !dbg !2630
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2628, metadata !802), !dbg !2631
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2628, metadata !802), !dbg !2631
  %2 = load i32, i32* @nslots, align 4, !dbg !2632, !tbaa !884
  %3 = icmp sgt i32 %2, 1, !dbg !2635
  br i1 %3, label %4, label %13, !dbg !2636

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2637

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2628, metadata !802), !dbg !2631
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2637
  %8 = load i8*, i8** %7, align 8, !dbg !2637, !tbaa !2638
  tail call void @free(i8* %8) #12, !dbg !2640
  %9 = add nuw i64 %6, 1, !dbg !2641
  %10 = load i32, i32* @nslots, align 4, !dbg !2632, !tbaa !884
  %11 = sext i32 %10 to i64, !dbg !2635
  %12 = icmp slt i64 %9, %11, !dbg !2635
  br i1 %12, label %5, label %13, !dbg !2636, !llvm.loop !2642

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2644
  %15 = load i8*, i8** %14, align 8, !dbg !2644, !tbaa !2638
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2646
  br i1 %16, label %18, label %17, !dbg !2647

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #12, !dbg !2648
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2650, !tbaa !2651
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2652, !tbaa !2638
  br label %18, !dbg !2653

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2654
  br i1 %19, label %22, label %20, !dbg !2656

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2657
  tail call void @free(i8* %21) #12, !dbg !2659
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2660, !tbaa !809
  br label %22, !dbg !2661

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2662, !tbaa !884
  ret void, !dbg !2663
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2664 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2668, metadata !802), !dbg !2670
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2669, metadata !802), !dbg !2671
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2672
  ret i8* %3, !dbg !2673
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2674 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2678, metadata !802), !dbg !2692
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2679, metadata !802), !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2680, metadata !802), !dbg !2694
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2681, metadata !802), !dbg !2695
  %5 = tail call i32* @__errno_location() #17, !dbg !2696
  %6 = load i32, i32* %5, align 4, !dbg !2696, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2682, metadata !802), !dbg !2697
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2698, !tbaa !809
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2683, metadata !802), !dbg !2699
  %8 = icmp slt i32 %0, 0, !dbg !2700
  br i1 %8, label %9, label %10, !dbg !2702

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2703
  unreachable, !dbg !2703

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2704, !tbaa !884
  %12 = icmp sgt i32 %11, %0, !dbg !2705
  br i1 %12, label %34, label %13, !dbg !2706

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2707
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2708
  br i1 %15, label %16, label %17, !dbg !2710

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2711
  unreachable, !dbg !2711

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2712
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2712
  %20 = add nsw i32 %0, 1, !dbg !2713
  %21 = sext i32 %20 to i64, !dbg !2714
  %22 = shl nsw i64 %21, 4, !dbg !2715
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2716
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2716
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2683, metadata !802), !dbg !2699
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2717, !tbaa !809
  br i1 %14, label %25, label %26, !dbg !2718

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2719, !tbaa.struct !2721
  br label %26, !dbg !2722

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2723, !tbaa !884
  %28 = sext i32 %27 to i64, !dbg !2724
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2724
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2725
  %31 = sub nsw i32 %20, %27, !dbg !2726
  %32 = sext i32 %31 to i64, !dbg !2727
  %33 = shl nsw i64 %32, 4, !dbg !2728
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2725
  store i32 %20, i32* @nslots, align 4, !dbg !2729, !tbaa !884
  br label %34, !dbg !2730

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2683, metadata !802), !dbg !2699
  %36 = sext i32 %0 to i64, !dbg !2731
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2732
  %38 = load i64, i64* %37, align 8, !dbg !2732, !tbaa !2651
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2687, metadata !802), !dbg !2733
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2734
  %40 = load i8*, i8** %39, align 8, !dbg !2734, !tbaa !2638
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2689, metadata !802), !dbg !2735
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2736
  %42 = load i32, i32* %41, align 4, !dbg !2736, !tbaa !1729
  %43 = or i32 %42, 1, !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2690, metadata !802), !dbg !2738
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2739
  %45 = load i32, i32* %44, align 8, !dbg !2739, !tbaa !1669
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2740
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2741
  %48 = load i8*, i8** %47, align 8, !dbg !2741, !tbaa !1755
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2742
  %50 = load i8*, i8** %49, align 8, !dbg !2742, !tbaa !1758
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2691, metadata !802), !dbg !2744
  %52 = icmp ugt i64 %38, %51, !dbg !2745
  br i1 %52, label %63, label %53, !dbg !2747

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2687, metadata !802), !dbg !2733
  store i64 %54, i64* %37, align 8, !dbg !2750, !tbaa !2651
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2751
  br i1 %55, label %57, label %56, !dbg !2753

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2754
  br label %57, !dbg !2754

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2577, metadata !802) #12, !dbg !2755
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2757
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2689, metadata !802), !dbg !2735
  store i8* %58, i8** %39, align 8, !dbg !2758, !tbaa !2638
  %59 = load i32, i32* %44, align 8, !dbg !2759, !tbaa !1669
  %60 = load i8*, i8** %47, align 8, !dbg !2760, !tbaa !1755
  %61 = load i8*, i8** %49, align 8, !dbg !2761, !tbaa !1758
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2762
  br label %63, !dbg !2763

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2689, metadata !802), !dbg !2735
  store i32 %6, i32* %5, align 4, !dbg !2764, !tbaa !884
  ret i8* %64, !dbg !2765
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2766 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2770, metadata !802), !dbg !2773
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2771, metadata !802), !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2772, metadata !802), !dbg !2775
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2776
  ret i8* %4, !dbg !2777
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2778 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2780, metadata !802), !dbg !2781
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2668, metadata !802) #12, !dbg !2782
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2669, metadata !802) #12, !dbg !2784
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2785
  ret i8* %2, !dbg !2786
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2787 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2791, metadata !802), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2792, metadata !802), !dbg !2794
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2770, metadata !802) #12, !dbg !2795
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2771, metadata !802) #12, !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2772, metadata !802) #12, !dbg !2798
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2799
  ret i8* %3, !dbg !2800
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2801 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2809, metadata !2815), !dbg !2816
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2805, metadata !802), !dbg !2818
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2806, metadata !802), !dbg !2819
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2807, metadata !802), !dbg !2820
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2821
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2821
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2808, metadata !802), !dbg !2822
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2814, metadata !802) #12, !dbg !2823
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2824
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2824
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2809, metadata !802) #12, !dbg !2816
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2809, metadata !2825) #12, !dbg !2816
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2816
  %8 = icmp eq i32 %1, 10, !dbg !2826
  br i1 %8, label %9, label %10, !dbg !2828

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2829, !noalias !2830
  unreachable, !dbg !2829

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2809, metadata !2825) #12, !dbg !2816
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2833
  store i32 %1, i32* %11, align 8, !dbg !2833, !alias.scope !2830
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2833
  %13 = bitcast i32* %12 to i8*, !dbg !2833
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2833
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2834
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2808, metadata !802), !dbg !2822
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2835
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2836
  ret i8* %14, !dbg !2837
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2838 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2809, metadata !2815), !dbg !2847
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2842, metadata !802), !dbg !2849
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2843, metadata !802), !dbg !2850
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2844, metadata !802), !dbg !2851
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2845, metadata !802), !dbg !2852
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2853
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2853
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2846, metadata !802), !dbg !2854
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2814, metadata !802) #12, !dbg !2855
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2856
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2856
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2809, metadata !802) #12, !dbg !2847
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2809, metadata !2825) #12, !dbg !2847
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2847
  %9 = icmp eq i32 %1, 10, !dbg !2857
  br i1 %9, label %10, label %11, !dbg !2858

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2859, !noalias !2860
  unreachable, !dbg !2859

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2809, metadata !2825) #12, !dbg !2847
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2863
  store i32 %1, i32* %12, align 8, !dbg !2863, !alias.scope !2860
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2863
  %14 = bitcast i32* %13 to i8*, !dbg !2863
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !2863
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2846, metadata !802), !dbg !2854
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2865
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2866
  ret i8* %15, !dbg !2867
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2868 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2809, metadata !2815), !dbg !2874
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2872, metadata !802), !dbg !2877
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2873, metadata !802), !dbg !2878
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2805, metadata !802) #12, !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2806, metadata !802) #12, !dbg !2880
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2807, metadata !802) #12, !dbg !2881
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2882
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2882
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2808, metadata !802) #12, !dbg !2883
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2814, metadata !802) #12, !dbg !2884
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2885
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2885
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2809, metadata !802) #12, !dbg !2874
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2809, metadata !2825) #12, !dbg !2874
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2874
  %7 = icmp eq i32 %0, 10, !dbg !2886
  br i1 %7, label %8, label %9, !dbg !2887

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2888, !noalias !2889
  unreachable, !dbg !2888

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2809, metadata !2825) #12, !dbg !2874
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2892
  store i32 %0, i32* %10, align 8, !dbg !2892, !alias.scope !2889
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2892
  %12 = bitcast i32* %11 to i8*, !dbg !2892
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !2892
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2893
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2808, metadata !802) #12, !dbg !2883
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2894
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2895
  ret i8* %13, !dbg !2896
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2897 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2809, metadata !2815), !dbg !2904
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2901, metadata !802), !dbg !2907
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2902, metadata !802), !dbg !2908
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2903, metadata !802), !dbg !2909
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2842, metadata !802) #12, !dbg !2910
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2843, metadata !802) #12, !dbg !2911
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2844, metadata !802) #12, !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2845, metadata !802) #12, !dbg !2913
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2914
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2914
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2846, metadata !802) #12, !dbg !2915
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2814, metadata !802) #12, !dbg !2916
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2917
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2917
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2809, metadata !802) #12, !dbg !2904
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2809, metadata !2825) #12, !dbg !2904
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2904
  %8 = icmp eq i32 %0, 10, !dbg !2918
  br i1 %8, label %9, label %10, !dbg !2919

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2920, !noalias !2921
  unreachable, !dbg !2920

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2809, metadata !2825) #12, !dbg !2904
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2924
  store i32 %0, i32* %11, align 8, !dbg !2924, !alias.scope !2921
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2924
  %13 = bitcast i32* %12 to i8*, !dbg !2924
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2924
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2925
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2846, metadata !802) #12, !dbg !2915
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !2926
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2927
  ret i8* %14, !dbg !2928
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2929 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2933, metadata !802), !dbg !2937
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2934, metadata !802), !dbg !2938
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2935, metadata !802), !dbg !2939
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2940
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2941, !tbaa.struct !2942
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2936, metadata !802), !dbg !2943
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1688, metadata !802), !dbg !2944
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1689, metadata !802), !dbg !2946
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1690, metadata !802), !dbg !2947
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1691, metadata !802), !dbg !2948
  %6 = lshr i8 %2, 5, !dbg !2949
  %7 = zext i8 %6 to i64, !dbg !2949
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2950
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1692, metadata !802), !dbg !2951
  %9 = and i8 %2, 31, !dbg !2952
  %10 = zext i8 %9 to i32, !dbg !2953
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1694, metadata !802), !dbg !2954
  %11 = load i32, i32* %8, align 4, !dbg !2955, !tbaa !884
  %12 = lshr i32 %11, %10, !dbg !2956
  %13 = and i32 %12, 1, !dbg !2957
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1695, metadata !802), !dbg !2958
  %14 = xor i32 %13, 1, !dbg !2959
  %15 = shl i32 %14, %10, !dbg !2960
  %16 = xor i32 %15, %11, !dbg !2961
  store i32 %16, i32* %8, align 4, !dbg !2961, !tbaa !884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2936, metadata !802), !dbg !2943
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2962
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2963
  ret i8* %17, !dbg !2964
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2965 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2969, metadata !802), !dbg !2971
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2970, metadata !802), !dbg !2972
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2933, metadata !802) #12, !dbg !2973
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2934, metadata !802) #12, !dbg !2975
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2935, metadata !802) #12, !dbg !2976
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2977
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2977
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2978, !tbaa.struct !2942
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2936, metadata !802) #12, !dbg !2979
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1688, metadata !802) #12, !dbg !2980
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1689, metadata !802) #12, !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1690, metadata !802) #12, !dbg !2983
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1691, metadata !802) #12, !dbg !2984
  %5 = lshr i8 %1, 5, !dbg !2985
  %6 = zext i8 %5 to i64, !dbg !2985
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2986
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1692, metadata !802) #12, !dbg !2987
  %8 = and i8 %1, 31, !dbg !2988
  %9 = zext i8 %8 to i32, !dbg !2989
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1694, metadata !802) #12, !dbg !2990
  %10 = load i32, i32* %7, align 4, !dbg !2991, !tbaa !884
  %11 = lshr i32 %10, %9, !dbg !2992
  %12 = and i32 %11, 1, !dbg !2993
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1695, metadata !802) #12, !dbg !2994
  %13 = xor i32 %12, 1, !dbg !2995
  %14 = shl i32 %13, %9, !dbg !2996
  %15 = xor i32 %14, %10, !dbg !2997
  store i32 %15, i32* %7, align 4, !dbg !2997, !tbaa !884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2936, metadata !802) #12, !dbg !2979
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2998
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2999
  ret i8* %16, !dbg !3000
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3001 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3003, metadata !802), !dbg !3004
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2969, metadata !802) #12, !dbg !3005
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2970, metadata !802) #12, !dbg !3007
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2933, metadata !802) #12, !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2934, metadata !802) #12, !dbg !3010
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2935, metadata !802) #12, !dbg !3011
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3012
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3012
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3013, !tbaa.struct !2942
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2936, metadata !802) #12, !dbg !3014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1688, metadata !802) #12, !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1689, metadata !802) #12, !dbg !3017
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1690, metadata !802) #12, !dbg !3018
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1691, metadata !802) #12, !dbg !3019
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3020
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1692, metadata !802) #12, !dbg !3021
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1694, metadata !802) #12, !dbg !3022
  %5 = load i32, i32* %4, align 4, !dbg !3023, !tbaa !884
  %6 = or i32 %5, 67108864, !dbg !3024
  store i32 %6, i32* %4, align 4, !dbg !3024, !tbaa !884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2936, metadata !802) #12, !dbg !3014
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3025
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3026
  ret i8* %7, !dbg !3027
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3028 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3030, metadata !802), !dbg !3032
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3031, metadata !802), !dbg !3033
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2933, metadata !802) #12, !dbg !3034
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2934, metadata !802) #12, !dbg !3036
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2935, metadata !802) #12, !dbg !3037
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3038
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3038
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3039, !tbaa.struct !2942
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2936, metadata !802) #12, !dbg !3040
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1688, metadata !802) #12, !dbg !3041
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1689, metadata !802) #12, !dbg !3043
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1690, metadata !802) #12, !dbg !3044
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1691, metadata !802) #12, !dbg !3045
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3046
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1692, metadata !802) #12, !dbg !3047
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1694, metadata !802) #12, !dbg !3048
  %6 = load i32, i32* %5, align 4, !dbg !3049, !tbaa !884
  %7 = or i32 %6, 67108864, !dbg !3050
  store i32 %7, i32* %5, align 4, !dbg !3050, !tbaa !884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2936, metadata !802) #12, !dbg !3040
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3051
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3052
  ret i8* %8, !dbg !3053
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3054 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2809, metadata !2815), !dbg !3060
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3056, metadata !802), !dbg !3062
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3057, metadata !802), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3058, metadata !802), !dbg !3064
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3065
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3065
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2814, metadata !802) #12, !dbg !3066
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3067
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3067
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2809, metadata !802) #12, !dbg !3060
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2809, metadata !2825) #12, !dbg !3060
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3060
  %9 = icmp eq i32 %1, 10, !dbg !3068
  br i1 %9, label %10, label %11, !dbg !3069

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3070, !noalias !3071
  unreachable, !dbg !3070

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2809, metadata !2825) #12, !dbg !3060
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3074
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3074
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3075
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3076
  store i32 %1, i32* %13, align 8, !dbg !3076
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3076
  %15 = bitcast i32* %14 to i8*, !dbg !3076
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3076
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3059, metadata !802), !dbg !3077
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1688, metadata !802), !dbg !3078
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1689, metadata !802), !dbg !3080
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1690, metadata !802), !dbg !3081
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1691, metadata !802), !dbg !3082
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3083
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1692, metadata !802), !dbg !3084
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1694, metadata !802), !dbg !3085
  %17 = load i32, i32* %16, align 4, !dbg !3086, !tbaa !884
  %18 = or i32 %17, 67108864, !dbg !3087
  store i32 %18, i32* %16, align 4, !dbg !3087, !tbaa !884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3059, metadata !802), !dbg !3077
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3088
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3089
  ret i8* %19, !dbg !3090
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3091 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3095, metadata !802), !dbg !3099
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3096, metadata !802), !dbg !3100
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3097, metadata !802), !dbg !3101
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3098, metadata !802), !dbg !3102
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3103, metadata !802) #12, !dbg !3113
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3108, metadata !802) #12, !dbg !3115
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3109, metadata !802) #12, !dbg !3116
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3110, metadata !802) #12, !dbg !3117
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3111, metadata !802) #12, !dbg !3118
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3119
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3119
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3120, !tbaa.struct !2942
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3112, metadata !802) #12, !dbg !3121
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1737, metadata !802) #12, !dbg !3122
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1738, metadata !802) #12, !dbg !3124
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1739, metadata !802) #12, !dbg !3125
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1737, metadata !802) #12, !dbg !3122
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1737, metadata !802) #12, !dbg !3122
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3126
  store i32 10, i32* %7, align 8, !dbg !3127, !tbaa !1669
  %8 = icmp ne i8* %1, null, !dbg !3128
  %9 = icmp ne i8* %2, null, !dbg !3129
  %10 = and i1 %8, %9, !dbg !3130
  br i1 %10, label %12, label %11, !dbg !3130

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3131
  unreachable, !dbg !3131

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3132
  store i8* %1, i8** %13, align 8, !dbg !3133, !tbaa !1755
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3134
  store i8* %2, i8** %14, align 8, !dbg !3135, !tbaa !1758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3112, metadata !802) #12, !dbg !3121
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3136
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3137
  ret i8* %15, !dbg !3138
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3104 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3103, metadata !802), !dbg !3139
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3108, metadata !802), !dbg !3140
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3109, metadata !802), !dbg !3141
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3110, metadata !802), !dbg !3142
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3111, metadata !802), !dbg !3143
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3144
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3144
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3145, !tbaa.struct !2942
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3112, metadata !802), !dbg !3146
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1737, metadata !802) #12, !dbg !3147
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1738, metadata !802) #12, !dbg !3149
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1739, metadata !802) #12, !dbg !3150
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1737, metadata !802) #12, !dbg !3147
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1737, metadata !802) #12, !dbg !3147
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3151
  store i32 10, i32* %8, align 8, !dbg !3152, !tbaa !1669
  %9 = icmp ne i8* %1, null, !dbg !3153
  %10 = icmp ne i8* %2, null, !dbg !3154
  %11 = and i1 %9, %10, !dbg !3155
  br i1 %11, label %13, label %12, !dbg !3155

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3156
  unreachable, !dbg !3156

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3157
  store i8* %1, i8** %14, align 8, !dbg !3158, !tbaa !1755
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3159
  store i8* %2, i8** %15, align 8, !dbg !3160, !tbaa !1758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3112, metadata !802), !dbg !3146
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3161
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3162
  ret i8* %16, !dbg !3163
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3164 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3168, metadata !802), !dbg !3171
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3169, metadata !802), !dbg !3172
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3170, metadata !802), !dbg !3173
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3095, metadata !802) #12, !dbg !3174
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3096, metadata !802) #12, !dbg !3176
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3097, metadata !802) #12, !dbg !3177
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3098, metadata !802) #12, !dbg !3178
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3103, metadata !802) #12, !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3108, metadata !802) #12, !dbg !3181
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3109, metadata !802) #12, !dbg !3182
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3110, metadata !802) #12, !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3111, metadata !802) #12, !dbg !3184
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3185
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3186, !tbaa.struct !2942
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3112, metadata !802) #12, !dbg !3187
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1737, metadata !802) #12, !dbg !3188
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1738, metadata !802) #12, !dbg !3190
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1739, metadata !802) #12, !dbg !3191
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1737, metadata !802) #12, !dbg !3188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1737, metadata !802) #12, !dbg !3188
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3192
  store i32 10, i32* %6, align 8, !dbg !3193, !tbaa !1669
  %7 = icmp ne i8* %0, null, !dbg !3194
  %8 = icmp ne i8* %1, null, !dbg !3195
  %9 = and i1 %7, %8, !dbg !3196
  br i1 %9, label %11, label %10, !dbg !3196

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3197
  unreachable, !dbg !3197

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3198
  store i8* %0, i8** %12, align 8, !dbg !3199, !tbaa !1755
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3200
  store i8* %1, i8** %13, align 8, !dbg !3201, !tbaa !1758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3112, metadata !802) #12, !dbg !3187
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3202
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3203
  ret i8* %14, !dbg !3204
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3205 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3209, metadata !802), !dbg !3213
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3210, metadata !802), !dbg !3214
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3211, metadata !802), !dbg !3215
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3212, metadata !802), !dbg !3216
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3103, metadata !802) #12, !dbg !3217
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3108, metadata !802) #12, !dbg !3219
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3109, metadata !802) #12, !dbg !3220
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3110, metadata !802) #12, !dbg !3221
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3111, metadata !802) #12, !dbg !3222
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3224, !tbaa.struct !2942
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3112, metadata !802) #12, !dbg !3225
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1737, metadata !802) #12, !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1738, metadata !802) #12, !dbg !3228
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1739, metadata !802) #12, !dbg !3229
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1737, metadata !802) #12, !dbg !3226
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1737, metadata !802) #12, !dbg !3226
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3230
  store i32 10, i32* %7, align 8, !dbg !3231, !tbaa !1669
  %8 = icmp ne i8* %0, null, !dbg !3232
  %9 = icmp ne i8* %1, null, !dbg !3233
  %10 = and i1 %8, %9, !dbg !3234
  br i1 %10, label %12, label %11, !dbg !3234

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3235
  unreachable, !dbg !3235

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3236
  store i8* %0, i8** %13, align 8, !dbg !3237, !tbaa !1755
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3238
  store i8* %1, i8** %14, align 8, !dbg !3239, !tbaa !1758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3112, metadata !802) #12, !dbg !3225
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3240
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3241
  ret i8* %15, !dbg !3242
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3243 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3247, metadata !802), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3248, metadata !802), !dbg !3251
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3249, metadata !802), !dbg !3252
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3253
  ret i8* %4, !dbg !3254
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3255 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3259, metadata !802), !dbg !3261
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3260, metadata !802), !dbg !3262
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3247, metadata !802) #12, !dbg !3263
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3248, metadata !802) #12, !dbg !3265
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3249, metadata !802) #12, !dbg !3266
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3267
  ret i8* %3, !dbg !3268
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3269 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3273, metadata !802), !dbg !3275
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3274, metadata !802), !dbg !3276
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3247, metadata !802) #12, !dbg !3277
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3248, metadata !802) #12, !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3249, metadata !802) #12, !dbg !3280
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3281
  ret i8* %3, !dbg !3282
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3283 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3287, metadata !802), !dbg !3288
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3273, metadata !802) #12, !dbg !3289
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3274, metadata !802) #12, !dbg !3291
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3247, metadata !802) #12, !dbg !3292
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3248, metadata !802) #12, !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3249, metadata !802) #12, !dbg !3295
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3296
  ret i8* %2, !dbg !3297
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3298 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3343, metadata !802), !dbg !3349
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3344, metadata !802), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3345, metadata !802), !dbg !3351
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3346, metadata !802), !dbg !3352
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3347, metadata !802), !dbg !3353
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3348, metadata !802), !dbg !3354
  %7 = icmp eq i8* %1, null, !dbg !3355
  br i1 %7, label %10, label %8, !dbg !3357

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3358
  br label %12, !dbg !3358

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.150, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3359
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.151, i64 0, i64 0), i32 5) #12, !dbg !3360
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !3360
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.152, i64 0, i64 0), i32 5) #12, !dbg !3361
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !3361
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
  ], !dbg !3362

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3363
  unreachable, !dbg !3363

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.153, i64 0, i64 0), i32 5) #12, !dbg !3365
  %20 = load i8*, i8** %4, align 8, !dbg !3365, !tbaa !809
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3365
  br label %146, !dbg !3366

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.154, i64 0, i64 0), i32 5) #12, !dbg !3367
  %24 = load i8*, i8** %4, align 8, !dbg !3367, !tbaa !809
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3367
  %26 = load i8*, i8** %25, align 8, !dbg !3367, !tbaa !809
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3367
  br label %146, !dbg !3368

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.155, i64 0, i64 0), i32 5) #12, !dbg !3369
  %30 = load i8*, i8** %4, align 8, !dbg !3369, !tbaa !809
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3369
  %32 = load i8*, i8** %31, align 8, !dbg !3369, !tbaa !809
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3369
  %34 = load i8*, i8** %33, align 8, !dbg !3369, !tbaa !809
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3369
  br label %146, !dbg !3370

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.156, i64 0, i64 0), i32 5) #12, !dbg !3371
  %38 = load i8*, i8** %4, align 8, !dbg !3371, !tbaa !809
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3371
  %40 = load i8*, i8** %39, align 8, !dbg !3371, !tbaa !809
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3371
  %42 = load i8*, i8** %41, align 8, !dbg !3371, !tbaa !809
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3371
  %44 = load i8*, i8** %43, align 8, !dbg !3371, !tbaa !809
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3371
  br label %146, !dbg !3372

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.157, i64 0, i64 0), i32 5) #12, !dbg !3373
  %48 = load i8*, i8** %4, align 8, !dbg !3373, !tbaa !809
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3373
  %50 = load i8*, i8** %49, align 8, !dbg !3373, !tbaa !809
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3373
  %52 = load i8*, i8** %51, align 8, !dbg !3373, !tbaa !809
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3373
  %54 = load i8*, i8** %53, align 8, !dbg !3373, !tbaa !809
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3373
  %56 = load i8*, i8** %55, align 8, !dbg !3373, !tbaa !809
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3373
  br label %146, !dbg !3374

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.158, i64 0, i64 0), i32 5) #12, !dbg !3375
  %60 = load i8*, i8** %4, align 8, !dbg !3375, !tbaa !809
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3375
  %62 = load i8*, i8** %61, align 8, !dbg !3375, !tbaa !809
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3375
  %64 = load i8*, i8** %63, align 8, !dbg !3375, !tbaa !809
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3375
  %66 = load i8*, i8** %65, align 8, !dbg !3375, !tbaa !809
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3375
  %68 = load i8*, i8** %67, align 8, !dbg !3375, !tbaa !809
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3375
  %70 = load i8*, i8** %69, align 8, !dbg !3375, !tbaa !809
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3375
  br label %146, !dbg !3376

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.159, i64 0, i64 0), i32 5) #12, !dbg !3377
  %74 = load i8*, i8** %4, align 8, !dbg !3377, !tbaa !809
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3377
  %76 = load i8*, i8** %75, align 8, !dbg !3377, !tbaa !809
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3377
  %78 = load i8*, i8** %77, align 8, !dbg !3377, !tbaa !809
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3377
  %80 = load i8*, i8** %79, align 8, !dbg !3377, !tbaa !809
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3377
  %82 = load i8*, i8** %81, align 8, !dbg !3377, !tbaa !809
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3377
  %84 = load i8*, i8** %83, align 8, !dbg !3377, !tbaa !809
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3377
  %86 = load i8*, i8** %85, align 8, !dbg !3377, !tbaa !809
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3377
  br label %146, !dbg !3378

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.160, i64 0, i64 0), i32 5) #12, !dbg !3379
  %90 = load i8*, i8** %4, align 8, !dbg !3379, !tbaa !809
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3379
  %92 = load i8*, i8** %91, align 8, !dbg !3379, !tbaa !809
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3379
  %94 = load i8*, i8** %93, align 8, !dbg !3379, !tbaa !809
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3379
  %96 = load i8*, i8** %95, align 8, !dbg !3379, !tbaa !809
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3379
  %98 = load i8*, i8** %97, align 8, !dbg !3379, !tbaa !809
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3379
  %100 = load i8*, i8** %99, align 8, !dbg !3379, !tbaa !809
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3379
  %102 = load i8*, i8** %101, align 8, !dbg !3379, !tbaa !809
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3379
  %104 = load i8*, i8** %103, align 8, !dbg !3379, !tbaa !809
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3379
  br label %146, !dbg !3380

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.161, i64 0, i64 0), i32 5) #12, !dbg !3381
  %108 = load i8*, i8** %4, align 8, !dbg !3381, !tbaa !809
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3381
  %110 = load i8*, i8** %109, align 8, !dbg !3381, !tbaa !809
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3381
  %112 = load i8*, i8** %111, align 8, !dbg !3381, !tbaa !809
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3381
  %114 = load i8*, i8** %113, align 8, !dbg !3381, !tbaa !809
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3381
  %116 = load i8*, i8** %115, align 8, !dbg !3381, !tbaa !809
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3381
  %118 = load i8*, i8** %117, align 8, !dbg !3381, !tbaa !809
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3381
  %120 = load i8*, i8** %119, align 8, !dbg !3381, !tbaa !809
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3381
  %122 = load i8*, i8** %121, align 8, !dbg !3381, !tbaa !809
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3381
  %124 = load i8*, i8** %123, align 8, !dbg !3381, !tbaa !809
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3381
  br label %146, !dbg !3382

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.162, i64 0, i64 0), i32 5) #12, !dbg !3383
  %128 = load i8*, i8** %4, align 8, !dbg !3383, !tbaa !809
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3383
  %130 = load i8*, i8** %129, align 8, !dbg !3383, !tbaa !809
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3383
  %132 = load i8*, i8** %131, align 8, !dbg !3383, !tbaa !809
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3383
  %134 = load i8*, i8** %133, align 8, !dbg !3383, !tbaa !809
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3383
  %136 = load i8*, i8** %135, align 8, !dbg !3383, !tbaa !809
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3383
  %138 = load i8*, i8** %137, align 8, !dbg !3383, !tbaa !809
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3383
  %140 = load i8*, i8** %139, align 8, !dbg !3383, !tbaa !809
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3383
  %142 = load i8*, i8** %141, align 8, !dbg !3383, !tbaa !809
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3383
  %144 = load i8*, i8** %143, align 8, !dbg !3383, !tbaa !809
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3383
  br label %146, !dbg !3384

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3385
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3386 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3390, metadata !802), !dbg !3396
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3391, metadata !802), !dbg !3397
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3392, metadata !802), !dbg !3398
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3393, metadata !802), !dbg !3399
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3394, metadata !802), !dbg !3400
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3395, metadata !802), !dbg !3401
  br label %6, !dbg !3402

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3395, metadata !802), !dbg !3401
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3404
  %9 = load i8*, i8** %8, align 8, !dbg !3404, !tbaa !809
  %10 = icmp eq i8* %9, null, !dbg !3406
  %11 = add i64 %7, 1, !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3395, metadata !802), !dbg !3401
  br i1 %10, label %12, label %6, !dbg !3406, !llvm.loop !3408

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3410
  ret void, !dbg !3411
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3412 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3423, metadata !802), !dbg !3431
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3424, metadata !802), !dbg !3432
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3425, metadata !802), !dbg !3433
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3426, metadata !802), !dbg !3434
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3427, metadata !802), !dbg !3435
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3436
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3436
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3429, metadata !802), !dbg !3437
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !802), !dbg !3438
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !802), !dbg !3438
  %11 = load i32, i32* %8, align 8, !dbg !3439
  %12 = icmp ult i32 %11, 41, !dbg !3439
  br i1 %12, label %13, label %18, !dbg !3439

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3439
  %15 = sext i32 %11 to i64, !dbg !3439
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3439
  %17 = add i32 %11, 8, !dbg !3439
  store i32 %17, i32* %8, align 8, !dbg !3439
  br label %21, !dbg !3439

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3439
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3439
  store i8* %20, i8** %10, align 8, !dbg !3439
  br label %21, !dbg !3439

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3439
  %25 = load i8*, i8** %24, align 8, !dbg !3439
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3442
  store i8* %25, i8** %26, align 16, !dbg !3443, !tbaa !809
  %27 = icmp eq i8* %25, null, !dbg !3444
  br i1 %27, label %30, label %28, !dbg !3445

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !802), !dbg !3438
  %29 = icmp ult i32 %22, 41, !dbg !3439
  br i1 %29, label %35, label %32, !dbg !3439

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3446
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3447
  ret void, !dbg !3447

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3439
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3439
  store i8* %34, i8** %10, align 8, !dbg !3439
  br label %40, !dbg !3439

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3439
  %37 = sext i32 %22 to i64, !dbg !3439
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3439
  %39 = add i32 %22, 8, !dbg !3439
  store i32 %39, i32* %8, align 8, !dbg !3439
  br label %40, !dbg !3439

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3439
  %44 = load i8*, i8** %43, align 8, !dbg !3439
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3442
  store i8* %44, i8** %45, align 8, !dbg !3443, !tbaa !809
  %46 = icmp eq i8* %44, null, !dbg !3444
  br i1 %46, label %30, label %47, !dbg !3445

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !802), !dbg !3438
  %48 = icmp ult i32 %41, 41, !dbg !3439
  br i1 %48, label %52, label %49, !dbg !3439

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3439
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3439
  store i8* %51, i8** %10, align 8, !dbg !3439
  br label %57, !dbg !3439

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3439
  %54 = sext i32 %41 to i64, !dbg !3439
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3439
  %56 = add i32 %41, 8, !dbg !3439
  store i32 %56, i32* %8, align 8, !dbg !3439
  br label %57, !dbg !3439

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3439
  %61 = load i8*, i8** %60, align 8, !dbg !3439
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3442
  store i8* %61, i8** %62, align 16, !dbg !3443, !tbaa !809
  %63 = icmp eq i8* %61, null, !dbg !3444
  br i1 %63, label %30, label %64, !dbg !3445

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !802), !dbg !3438
  %65 = icmp ult i32 %58, 41, !dbg !3439
  br i1 %65, label %69, label %66, !dbg !3439

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3439
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3439
  store i8* %68, i8** %10, align 8, !dbg !3439
  br label %74, !dbg !3439

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3439
  %71 = sext i32 %58 to i64, !dbg !3439
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3439
  %73 = add i32 %58, 8, !dbg !3439
  store i32 %73, i32* %8, align 8, !dbg !3439
  br label %74, !dbg !3439

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3439
  %78 = load i8*, i8** %77, align 8, !dbg !3439
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3442
  store i8* %78, i8** %79, align 8, !dbg !3443, !tbaa !809
  %80 = icmp eq i8* %78, null, !dbg !3444
  br i1 %80, label %30, label %81, !dbg !3445

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !802), !dbg !3438
  %82 = icmp ult i32 %75, 41, !dbg !3439
  br i1 %82, label %86, label %83, !dbg !3439

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3439
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3439
  store i8* %85, i8** %10, align 8, !dbg !3439
  br label %91, !dbg !3439

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3439
  %88 = sext i32 %75 to i64, !dbg !3439
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3439
  %90 = add i32 %75, 8, !dbg !3439
  store i32 %90, i32* %8, align 8, !dbg !3439
  br label %91, !dbg !3439

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3439
  %95 = load i8*, i8** %94, align 8, !dbg !3439
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3442
  store i8* %95, i8** %96, align 16, !dbg !3443, !tbaa !809
  %97 = icmp eq i8* %95, null, !dbg !3444
  br i1 %97, label %30, label %98, !dbg !3445

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !802), !dbg !3438
  %99 = icmp ult i32 %92, 41, !dbg !3439
  br i1 %99, label %103, label %100, !dbg !3439

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3439
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3439
  store i8* %102, i8** %10, align 8, !dbg !3439
  br label %108, !dbg !3439

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3439
  %105 = sext i32 %92 to i64, !dbg !3439
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3439
  %107 = add i32 %92, 8, !dbg !3439
  store i32 %107, i32* %8, align 8, !dbg !3439
  br label %108, !dbg !3439

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3439
  %111 = load i8*, i8** %110, align 8, !dbg !3439
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3442
  store i8* %111, i8** %112, align 8, !dbg !3443, !tbaa !809
  %113 = icmp eq i8* %111, null, !dbg !3444
  br i1 %113, label %30, label %114, !dbg !3445

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !802), !dbg !3438
  %115 = load i8*, i8** %10, align 8, !dbg !3439
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3439
  store i8* %116, i8** %10, align 8, !dbg !3439
  %117 = bitcast i8* %115 to i8**, !dbg !3439
  %118 = load i8*, i8** %117, align 8, !dbg !3439
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3442
  store i8* %118, i8** %119, align 16, !dbg !3443, !tbaa !809
  %120 = icmp eq i8* %118, null, !dbg !3444
  br i1 %120, label %30, label %121, !dbg !3445

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !802), !dbg !3438
  %122 = load i8*, i8** %10, align 8, !dbg !3439
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3439
  store i8* %123, i8** %10, align 8, !dbg !3439
  %124 = bitcast i8* %122 to i8**, !dbg !3439
  %125 = load i8*, i8** %124, align 8, !dbg !3439
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3442
  store i8* %125, i8** %126, align 8, !dbg !3443, !tbaa !809
  %127 = icmp eq i8* %125, null, !dbg !3444
  br i1 %127, label %30, label %128, !dbg !3445

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !802), !dbg !3438
  %129 = load i8*, i8** %10, align 8, !dbg !3439
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3439
  store i8* %130, i8** %10, align 8, !dbg !3439
  %131 = bitcast i8* %129 to i8**, !dbg !3439
  %132 = load i8*, i8** %131, align 8, !dbg !3439
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3442
  store i8* %132, i8** %133, align 16, !dbg !3443, !tbaa !809
  %134 = icmp eq i8* %132, null, !dbg !3444
  br i1 %134, label %30, label %135, !dbg !3445

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !802), !dbg !3438
  %136 = load i8*, i8** %10, align 8, !dbg !3439
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3439
  store i8* %137, i8** %10, align 8, !dbg !3439
  %138 = bitcast i8* %136 to i8**, !dbg !3439
  %139 = load i8*, i8** %138, align 8, !dbg !3439
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3442
  store i8* %139, i8** %140, align 8, !dbg !3443, !tbaa !809
  %141 = icmp eq i8* %139, null, !dbg !3444
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !802), !dbg !3438
  %142 = select i1 %141, i64 9, i64 10, !dbg !3445
  br label %30, !dbg !3445
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3448 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3452, metadata !802), !dbg !3463
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3453, metadata !802), !dbg !3464
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3454, metadata !802), !dbg !3465
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3455, metadata !802), !dbg !3466
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3467
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3467
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3456, metadata !802), !dbg !3468
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3469
  call void @llvm.va_start(i8* nonnull %6), !dbg !3469
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3470
  call void @llvm.va_end(i8* nonnull %6), !dbg !3471
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3472
  ret void, !dbg !3472
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3473 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.165, i64 0, i64 0), i32 5) #12, !dbg !3474
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.166, i64 0, i64 0)) #12, !dbg !3474
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.167, i64 0, i64 0), i32 5) #12, !dbg !3475
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.168, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.169, i64 0, i64 0)) #12, !dbg !3475
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.170, i64 0, i64 0), i32 5) #12, !dbg !3476
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3476, !tbaa !809
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !3476
  ret void, !dbg !3477
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3478 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3482, metadata !802), !dbg !3484
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3483, metadata !802), !dbg !3485
  %3 = udiv i64 9223372036854775807, %1, !dbg !3486
  %4 = icmp ult i64 %3, %0, !dbg !3486
  br i1 %4, label %5, label %6, !dbg !3488

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3489
  unreachable, !dbg !3489

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3491, metadata !802) #12, !dbg !3496
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3498
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3495, metadata !802) #12, !dbg !3499
  %9 = icmp eq i8* %8, null, !dbg !3500
  %10 = icmp ne i64 %7, 0, !dbg !3502
  %11 = and i1 %10, %9, !dbg !3503
  br i1 %11, label %12, label %13, !dbg !3503

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3504
  unreachable, !dbg !3504

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3505
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3492 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3491, metadata !802), !dbg !3506
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3507
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3495, metadata !802), !dbg !3508
  %3 = icmp eq i8* %2, null, !dbg !3509
  %4 = icmp ne i64 %0, 0, !dbg !3510
  %5 = and i1 %4, %3, !dbg !3511
  br i1 %5, label %6, label %7, !dbg !3511

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3512
  unreachable, !dbg !3512

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3513
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3514 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3518, metadata !802), !dbg !3521
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3519, metadata !802), !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3520, metadata !802), !dbg !3523
  %4 = udiv i64 9223372036854775807, %2, !dbg !3524
  %5 = icmp ult i64 %4, %1, !dbg !3524
  br i1 %5, label %6, label %7, !dbg !3526

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3527
  unreachable, !dbg !3527

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3528
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3529, metadata !802) #12, !dbg !3533
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3532, metadata !802) #12, !dbg !3535
  %9 = icmp eq i64 %8, 0, !dbg !3536
  %10 = icmp ne i8* %0, null, !dbg !3538
  %11 = and i1 %10, %9, !dbg !3539
  br i1 %11, label %12, label %13, !dbg !3539

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3540
  br label %19, !dbg !3542

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3543
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3529, metadata !802) #12, !dbg !3533
  %15 = icmp eq i8* %14, null, !dbg !3544
  %16 = icmp ne i64 %8, 0, !dbg !3546
  %17 = and i1 %16, %15, !dbg !3547
  br i1 %17, label %18, label %19, !dbg !3547

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3548
  unreachable, !dbg !3548

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3549
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3530 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3529, metadata !802), !dbg !3550
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3532, metadata !802), !dbg !3551
  %3 = icmp eq i64 %1, 0, !dbg !3552
  %4 = icmp ne i8* %0, null, !dbg !3553
  %5 = and i1 %4, %3, !dbg !3554
  br i1 %5, label %6, label %7, !dbg !3554

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3555
  br label %13, !dbg !3556

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3557
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3529, metadata !802), !dbg !3550
  %9 = icmp eq i8* %8, null, !dbg !3558
  %10 = icmp ne i64 %1, 0, !dbg !3559
  %11 = and i1 %10, %9, !dbg !3560
  br i1 %11, label %12, label %13, !dbg !3560

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3561
  unreachable, !dbg !3561

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3562
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !760 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !765, metadata !802), !dbg !3563
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !766, metadata !802), !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !767, metadata !802), !dbg !3565
  %4 = load i64, i64* %1, align 8, !dbg !3566, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !768, metadata !802), !dbg !3567
  %5 = icmp eq i8* %0, null, !dbg !3568
  br i1 %5, label %6, label %13, !dbg !3570

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3571
  br i1 %7, label %8, label %17, !dbg !3574

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3575
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !768, metadata !802), !dbg !3567
  %10 = icmp ugt i64 %2, 128, !dbg !3577
  %11 = zext i1 %10 to i64, !dbg !3577
  %12 = add nuw nsw i64 %9, %11, !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !768, metadata !802), !dbg !3567
  br label %17, !dbg !3579

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3580
  %15 = icmp ugt i64 %14, %4, !dbg !3583
  br i1 %15, label %20, label %16, !dbg !3584

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3585
  unreachable, !dbg !3585

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !768, metadata !802), !dbg !3567
  store i64 %18, i64* %1, align 8, !dbg !3586, !tbaa !1020
  %19 = mul i64 %18, %2, !dbg !3587
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3529, metadata !802) #12, !dbg !3588
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3532, metadata !802) #12, !dbg !3590
  br label %27, !dbg !3591

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3592
  %22 = add i64 %4, 1, !dbg !3593
  %23 = add i64 %22, %21, !dbg !3594
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !768, metadata !802), !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !768, metadata !802), !dbg !3567
  store i64 %23, i64* %1, align 8, !dbg !3586, !tbaa !1020
  %24 = mul i64 %23, %2, !dbg !3587
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3529, metadata !802) #12, !dbg !3588
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3532, metadata !802) #12, !dbg !3590
  %25 = icmp eq i64 %24, 0, !dbg !3595
  br i1 %25, label %26, label %27, !dbg !3591

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #12, !dbg !3596
  br label %34, !dbg !3597

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !3598
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3529, metadata !802) #12, !dbg !3588
  %30 = icmp eq i8* %29, null, !dbg !3599
  %31 = icmp ne i64 %28, 0, !dbg !3600
  %32 = and i1 %31, %30, !dbg !3601
  br i1 %32, label %33, label %34, !dbg !3601

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3602
  unreachable, !dbg !3602

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3603
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3604 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3606, metadata !802), !dbg !3607
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3491, metadata !802) #12, !dbg !3608
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3610
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3495, metadata !802) #12, !dbg !3611
  %3 = icmp eq i8* %2, null, !dbg !3612
  %4 = icmp ne i64 %0, 0, !dbg !3613
  %5 = and i1 %4, %3, !dbg !3614
  br i1 %5, label %6, label %7, !dbg !3614

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3615
  unreachable, !dbg !3615

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3616
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3617 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3621, metadata !802), !dbg !3623
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3622, metadata !802), !dbg !3624
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !765, metadata !802) #12, !dbg !3625
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !766, metadata !802) #12, !dbg !3627
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !767, metadata !802) #12, !dbg !3628
  %3 = load i64, i64* %1, align 8, !dbg !3629, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !768, metadata !802) #12, !dbg !3630
  %4 = icmp eq i8* %0, null, !dbg !3631
  br i1 %4, label %5, label %8, !dbg !3632

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3633
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !768, metadata !802) #12, !dbg !3630
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !768, metadata !802) #12, !dbg !3630
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3634
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !768, metadata !802) #12, !dbg !3630
  store i64 %7, i64* %1, align 8, !dbg !3635, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3529, metadata !802) #12, !dbg !3636
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3532, metadata !802) #12, !dbg !3638
  br label %17, !dbg !3639

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3640
  br i1 %9, label %11, label %10, !dbg !3641

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3642
  unreachable, !dbg !3642

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3643
  %13 = add i64 %3, 1, !dbg !3644
  %14 = add i64 %13, %12, !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !768, metadata !802) #12, !dbg !3630
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !768, metadata !802) #12, !dbg !3630
  store i64 %14, i64* %1, align 8, !dbg !3635, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3529, metadata !802) #12, !dbg !3636
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3532, metadata !802) #12, !dbg !3638
  %15 = icmp eq i64 %14, 0, !dbg !3646
  br i1 %15, label %16, label %17, !dbg !3639

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #12, !dbg !3647
  br label %24, !dbg !3648

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !3649
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3529, metadata !802) #12, !dbg !3636
  %20 = icmp eq i8* %19, null, !dbg !3650
  %21 = icmp ne i64 %18, 0, !dbg !3651
  %22 = and i1 %21, %20, !dbg !3652
  br i1 %22, label %23, label %24, !dbg !3652

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3653
  unreachable, !dbg !3653

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3654
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3655 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3657, metadata !802), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3491, metadata !802) #12, !dbg !3659
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3661
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3495, metadata !802) #12, !dbg !3662
  %3 = icmp eq i8* %2, null, !dbg !3663
  %4 = icmp ne i64 %0, 0, !dbg !3664
  %5 = and i1 %4, %3, !dbg !3665
  br i1 %5, label %6, label %7, !dbg !3665

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3666
  unreachable, !dbg !3666

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3667
  ret i8* %2, !dbg !3668
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3669 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3671, metadata !802), !dbg !3674
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3672, metadata !802), !dbg !3675
  %3 = udiv i64 9223372036854775807, %1, !dbg !3676
  %4 = icmp ult i64 %3, %0, !dbg !3676
  br i1 %4, label %8, label %5, !dbg !3678

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3679
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3673, metadata !802), !dbg !3680
  %7 = icmp eq i8* %6, null, !dbg !3681
  br i1 %7, label %8, label %9, !dbg !3682

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3683
  unreachable, !dbg !3683

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3684
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3685 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3691, metadata !802), !dbg !3693
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3692, metadata !802), !dbg !3694
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3491, metadata !802) #12, !dbg !3695
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3697
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3495, metadata !802) #12, !dbg !3698
  %4 = icmp eq i8* %3, null, !dbg !3699
  %5 = icmp ne i64 %1, 0, !dbg !3700
  %6 = and i1 %5, %4, !dbg !3701
  br i1 %6, label %7, label %8, !dbg !3701

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3702
  unreachable, !dbg !3702

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3703
  ret i8* %3, !dbg !3704
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3705 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3707, metadata !802), !dbg !3708
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3709
  %3 = add i64 %2, 1, !dbg !3710
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3691, metadata !802) #12, !dbg !3711
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3692, metadata !802) #12, !dbg !3713
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3491, metadata !802) #12, !dbg !3714
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3716
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3495, metadata !802) #12, !dbg !3717
  %5 = icmp eq i8* %4, null, !dbg !3718
  %6 = icmp ne i64 %3, 0, !dbg !3719
  %7 = and i1 %6, %5, !dbg !3720
  br i1 %7, label %8, label %9, !dbg !3720

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3721
  unreachable, !dbg !3721

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !3722
  ret i8* %4, !dbg !3723
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3724 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3726, !tbaa !884
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.181, i64 0, i64 0), i32 5) #12, !dbg !3727
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* %2) #12, !dbg !3728
  tail call void @abort() #15, !dbg !3729
  unreachable, !dbg !3729
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3730 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3733, metadata !802), !dbg !3736
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3734, metadata !802), !dbg !3737
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #12, !dbg !3738
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3735, metadata !802), !dbg !3739
  %4 = icmp eq i8* %3, null, !dbg !3740
  br i1 %4, label %5, label %6, !dbg !3742

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3743
  unreachable, !dbg !3743

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !3744
}

; Function Attrs: nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3745 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3748, metadata !802), !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3749, metadata !802), !dbg !3755
  %3 = icmp eq i64 %0, 0, !dbg !3756
  %4 = icmp eq i64 %1, 0, !dbg !3757
  %5 = or i1 %3, %4, !dbg !3758
  br i1 %5, label %12, label %6, !dbg !3758

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3759
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3751, metadata !802), !dbg !3760
  %8 = udiv i64 %7, %1, !dbg !3761
  %9 = icmp eq i64 %8, %0, !dbg !3763
  br i1 %9, label %12, label %10, !dbg !3764

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3765
  store i32 12, i32* %11, align 4, !dbg !3767, !tbaa !884
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3748, metadata !802), !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3749, metadata !802), !dbg !3755
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3768
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3750, metadata !802), !dbg !3769
  br label %16, !dbg !3770

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3771
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3772 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3817, metadata !802), !dbg !3821
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3818, metadata !802), !dbg !3822
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3820, metadata !802), !dbg !3823
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3824
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3819, metadata !802), !dbg !3825
  %3 = icmp slt i32 %2, 0, !dbg !3826
  br i1 %3, label %4, label %6, !dbg !3828

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3829
  br label %24, !dbg !3830

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3831
  %8 = icmp eq i32 %7, 0, !dbg !3831
  br i1 %8, label %13, label %9, !dbg !3833

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3834
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3835
  %12 = icmp eq i64 %11, -1, !dbg !3836
  br i1 %12, label %16, label %13, !dbg !3837

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3838
  %15 = icmp eq i32 %14, 0, !dbg !3838
  br i1 %15, label %16, label %18, !dbg !3839

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3818, metadata !802), !dbg !3822
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3840
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3820, metadata !802), !dbg !3823
  br label %24, !dbg !3841

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3842
  %20 = load i32, i32* %19, align 4, !dbg !3842, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3818, metadata !802), !dbg !3822
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3818, metadata !802), !dbg !3822
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3840
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3820, metadata !802), !dbg !3823
  %22 = icmp eq i32 %20, 0, !dbg !3843
  br i1 %22, label %24, label %23, !dbg !3841

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3845, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3820, metadata !802), !dbg !3823
  br label %24, !dbg !3847

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3848
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3849 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3894, metadata !802), !dbg !3895
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3896
  br i1 %2, label %6, label %3, !dbg !3898

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3899
  %5 = icmp eq i32 %4, 0, !dbg !3899
  br i1 %5, label %6, label %8, !dbg !3900

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3901
  br label %17, !dbg !3902

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3903, metadata !802) #12, !dbg !3908
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3910
  %10 = load i32, i32* %9, align 8, !dbg !3910, !tbaa !3912
  %11 = and i32 %10, 256, !dbg !3914
  %12 = icmp eq i32 %11, 0, !dbg !3914
  br i1 %12, label %15, label %13, !dbg !3915

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3916
  br label %15, !dbg !3916

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3917
  br label %17, !dbg !3918

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3919
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3920 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3966, metadata !802), !dbg !3972
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3967, metadata !802), !dbg !3973
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3968, metadata !802), !dbg !3974
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3975
  %5 = load i8*, i8** %4, align 8, !dbg !3975, !tbaa !3976
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3977
  %7 = load i8*, i8** %6, align 8, !dbg !3977, !tbaa !3978
  %8 = icmp eq i8* %5, %7, !dbg !3979
  br i1 %8, label %9, label %28, !dbg !3980

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3981
  %11 = load i8*, i8** %10, align 8, !dbg !3981, !tbaa !3982
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3983
  %13 = load i8*, i8** %12, align 8, !dbg !3983, !tbaa !3984
  %14 = icmp eq i8* %11, %13, !dbg !3985
  br i1 %14, label %15, label %28, !dbg !3986

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3987
  %17 = load i8*, i8** %16, align 8, !dbg !3987, !tbaa !3988
  %18 = icmp eq i8* %17, null, !dbg !3989
  br i1 %18, label %19, label %28, !dbg !3990

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3991
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3992
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3969, metadata !802), !dbg !3993
  %22 = icmp eq i64 %21, -1, !dbg !3994
  br i1 %22, label %30, label %23, !dbg !3996

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3997
  %25 = load i32, i32* %24, align 8, !dbg !3998, !tbaa !3912
  %26 = and i32 %25, -17, !dbg !3998
  store i32 %26, i32* %24, align 8, !dbg !3998, !tbaa !3912
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3999
  store i64 %21, i64* %27, align 8, !dbg !4000, !tbaa !4001
  br label %30, !dbg !4002

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4003
  br label %30, !dbg !4004

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4005
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4006 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4023, metadata !802), !dbg !4032
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4024, metadata !802), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4025, metadata !802), !dbg !4034
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4026, metadata !802), !dbg !4035
  %6 = bitcast i32* %5 to i8*, !dbg !4036
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4036
  %7 = icmp eq i32* %0, null, !dbg !4037
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4023, metadata !802), !dbg !4032
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4039
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4023, metadata !802), !dbg !4032
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !4040
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4027, metadata !802), !dbg !4041
  %10 = icmp ugt i64 %9, -3, !dbg !4042
  %11 = icmp ne i64 %2, 0, !dbg !4043
  %12 = and i1 %11, %10, !dbg !4044
  br i1 %12, label %13, label %18, !dbg !4044

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !4045
  br i1 %14, label %18, label %15, !dbg !4046

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4047, !tbaa !937
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4029, metadata !802), !dbg !4048
  %17 = zext i8 %16 to i32, !dbg !4049
  store i32 %17, i32* %8, align 4, !dbg !4050, !tbaa !884
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4051
  ret i64 %19, !dbg !4051
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @print_and_abort() #0 !dbg !4052 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4053, !tbaa !809
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.195, i64 0, i64 0), i32 5) #12, !dbg !4053
  %3 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.196, i64 0, i64 0), i8* %2) #12, !dbg !4053
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !4054, !tbaa !884
  tail call void @exit(i32 %4) #15, !dbg !4055
  unreachable, !dbg !4055
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @_obstack_begin(%struct.obstack* nocapture, i64, i64, i8* (i64)*, void (i8*)*) local_unnamed_addr #6 !dbg !4056 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4094, metadata !802), !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4095, metadata !802), !dbg !4100
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4096, metadata !802), !dbg !4101
  tail call void @llvm.dbg.value(metadata i8* (i64)* %3, i64 0, metadata !4097, metadata !802), !dbg !4102
  tail call void @llvm.dbg.value(metadata void (i8*)* %4, i64 0, metadata !4098, metadata !802), !dbg !4103
  %6 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0, !dbg !4104
  store i8* (i64)* %3, i8* (i64)** %6, align 8, !dbg !4105, !tbaa !937
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0, !dbg !4106
  store void (i8*)* %4, void (i8*)** %7, align 8, !dbg !4107, !tbaa !937
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4108
  %9 = load i8, i8* %8, align 8, !dbg !4109
  %10 = and i8 %9, -2, !dbg !4109
  store i8 %10, i8* %8, align 8, !dbg !4109
  %11 = icmp eq i64 %2, 0, !dbg !4110
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !4118, metadata !802) #12, !dbg !4124
  %12 = select i1 %11, i64 16, i64 %2, !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !4118, metadata !802) #12, !dbg !4124
  %13 = icmp eq i64 %1, 0, !dbg !4126
  tail call void @llvm.dbg.value(metadata i64 4064, i64 0, metadata !4117, metadata !802) #12, !dbg !4127
  %14 = select i1 %13, i64 4064, i64 %1, !dbg !4128
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4117, metadata !802) #12, !dbg !4127
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4129
  store i64 %14, i64* %15, align 8, !dbg !4130, !tbaa !4131
  %16 = add i64 %12, -1, !dbg !4132
  %17 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4133
  store i64 %16, i64* %17, align 8, !dbg !4134, !tbaa !997
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4135, metadata !802) #12, !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4140, metadata !802) #12, !dbg !4143
  %18 = tail call i8* %3(i64 %14) #12, !dbg !4144
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4146
  %20 = bitcast %struct._obstack_chunk** %19 to i8**, !dbg !4147
  store i8* %18, i8** %20, align 8, !dbg !4147, !tbaa !1000
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !4119, metadata !802) #12, !dbg !4148
  %21 = icmp eq i8* %18, null, !dbg !4149
  br i1 %21, label %22, label %24, !dbg !4151

; <label>:22:                                     ; preds = %5
  %23 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4152, !tbaa !809
  tail call void %23() #15, !dbg !4153
  unreachable, !dbg !4153

; <label>:24:                                     ; preds = %5
  %25 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !4154
  %26 = ptrtoint i8* %25 to i64, !dbg !4154
  %27 = add i64 %16, %26, !dbg !4154
  %28 = sub i64 0, %12, !dbg !4154
  %29 = and i64 %27, %28, !dbg !4154
  %30 = getelementptr inbounds i8, i8* null, i64 %29, !dbg !4154
  %31 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4155
  store i8* %30, i8** %31, align 8, !dbg !4156, !tbaa !992
  %32 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4157
  store i8* %30, i8** %32, align 8, !dbg !4158, !tbaa !989
  %33 = load i64, i64* %15, align 8, !dbg !4159, !tbaa !4131
  %34 = getelementptr inbounds i8, i8* %18, i64 %33, !dbg !4160
  %35 = bitcast i8* %18 to i8**, !dbg !4161
  store i8* %34, i8** %35, align 8, !dbg !4162, !tbaa !809
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4163
  store i8* %34, i8** %36, align 8, !dbg !4164, !tbaa !1001
  %37 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !4165
  %38 = bitcast i8* %37 to %struct._obstack_chunk**, !dbg !4165
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %38, align 8, !dbg !4166, !tbaa !809
  %39 = load i8, i8* %8, align 8, !dbg !4167
  %40 = and i8 %39, -7, !dbg !4168
  store i8 %40, i8* %8, align 8, !dbg !4168
  ret i32 1, !dbg !4169
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @_obstack_begin_1(%struct.obstack* nocapture, i64, i64, i8* (i8*, i64)*, void (i8*, i8*)*, i8*) local_unnamed_addr #6 !dbg !4170 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4174, metadata !802), !dbg !4180
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4175, metadata !802), !dbg !4181
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4176, metadata !802), !dbg !4182
  tail call void @llvm.dbg.value(metadata i8* (i8*, i64)* %3, i64 0, metadata !4177, metadata !802), !dbg !4183
  tail call void @llvm.dbg.value(metadata void (i8*, i8*)* %4, i64 0, metadata !4178, metadata !802), !dbg !4184
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4179, metadata !802), !dbg !4185
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !4186
  %8 = bitcast %union.anon.0* %7 to i8* (i8*, i64)**, !dbg !4187
  store i8* (i8*, i64)* %3, i8* (i8*, i64)** %8, align 8, !dbg !4188, !tbaa !937
  %9 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !4189
  %10 = bitcast %union.anon.1* %9 to void (i8*, i8*)**, !dbg !4190
  store void (i8*, i8*)* %4, void (i8*, i8*)** %10, align 8, !dbg !4191, !tbaa !937
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4192
  store i8* %5, i8** %11, align 8, !dbg !4193, !tbaa !4194
  %12 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4195
  %13 = load i8, i8* %12, align 8, !dbg !4196
  %14 = or i8 %13, 1, !dbg !4196
  store i8 %14, i8* %12, align 8, !dbg !4196
  %15 = icmp eq i64 %2, 0, !dbg !4197
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !4118, metadata !802) #12, !dbg !4199
  %16 = select i1 %15, i64 16, i64 %2, !dbg !4200
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !4118, metadata !802) #12, !dbg !4199
  %17 = icmp eq i64 %1, 0, !dbg !4201
  tail call void @llvm.dbg.value(metadata i64 4064, i64 0, metadata !4117, metadata !802) #12, !dbg !4202
  %18 = select i1 %17, i64 4064, i64 %1, !dbg !4203
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4117, metadata !802) #12, !dbg !4202
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4204
  store i64 %18, i64* %19, align 8, !dbg !4205, !tbaa !4131
  %20 = add i64 %16, -1, !dbg !4206
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4207
  store i64 %20, i64* %21, align 8, !dbg !4208, !tbaa !997
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4135, metadata !802) #12, !dbg !4209
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4140, metadata !802) #12, !dbg !4211
  %22 = tail call i8* %3(i8* %5, i64 %18) #12, !dbg !4212
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4213
  %24 = bitcast %struct._obstack_chunk** %23 to i8**, !dbg !4214
  store i8* %22, i8** %24, align 8, !dbg !4214, !tbaa !1000
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !4119, metadata !802) #12, !dbg !4215
  %25 = icmp eq i8* %22, null, !dbg !4216
  br i1 %25, label %26, label %28, !dbg !4217

; <label>:26:                                     ; preds = %6
  %27 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4218, !tbaa !809
  tail call void %27() #15, !dbg !4219
  unreachable, !dbg !4219

; <label>:28:                                     ; preds = %6
  %29 = getelementptr inbounds i8, i8* %22, i64 16, !dbg !4220
  %30 = ptrtoint i8* %29 to i64, !dbg !4220
  %31 = add i64 %20, %30, !dbg !4220
  %32 = sub i64 0, %16, !dbg !4220
  %33 = and i64 %31, %32, !dbg !4220
  %34 = getelementptr inbounds i8, i8* null, i64 %33, !dbg !4220
  %35 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4221
  store i8* %34, i8** %35, align 8, !dbg !4222, !tbaa !992
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4223
  store i8* %34, i8** %36, align 8, !dbg !4224, !tbaa !989
  %37 = load i64, i64* %19, align 8, !dbg !4225, !tbaa !4131
  %38 = getelementptr inbounds i8, i8* %22, i64 %37, !dbg !4226
  %39 = bitcast i8* %22 to i8**, !dbg !4227
  store i8* %38, i8** %39, align 8, !dbg !4228, !tbaa !809
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4229
  store i8* %38, i8** %40, align 8, !dbg !4230, !tbaa !1001
  %41 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !4231
  %42 = bitcast i8* %41 to %struct._obstack_chunk**, !dbg !4231
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %42, align 8, !dbg !4232, !tbaa !809
  %43 = load i8, i8* %12, align 8, !dbg !4233
  %44 = and i8 %43, -7, !dbg !4234
  store i8 %44, i8* %12, align 8, !dbg !4234
  ret i32 1, !dbg !4235
}

; Function Attrs: nounwind sspstrong uwtable
define void @_obstack_newchunk(%struct.obstack* nocapture, i64) local_unnamed_addr #6 !dbg !4236 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4240, metadata !802), !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4241, metadata !802), !dbg !4250
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4251
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !4251, !tbaa !1000
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !4242, metadata !802), !dbg !4252
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* null, i64 0, metadata !4243, metadata !802), !dbg !4253
  %5 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4254
  %6 = bitcast i8** %5 to i64*, !dbg !4254
  %7 = load i64, i64* %6, align 8, !dbg !4254, !tbaa !989
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4255
  %9 = bitcast i8** %8 to i64*, !dbg !4255
  %10 = load i64, i64* %9, align 8, !dbg !4255, !tbaa !992
  %11 = sub i64 %7, %10, !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4244, metadata !802), !dbg !4257
  %12 = add i64 %11, %1, !dbg !4258
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !4246, metadata !802), !dbg !4259
  %13 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4260
  %14 = load i64, i64* %13, align 8, !dbg !4260, !tbaa !997
  %15 = add i64 %12, %14, !dbg !4261
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !4247, metadata !802), !dbg !4262
  %16 = lshr i64 %11, 3, !dbg !4263
  %17 = add nuw nsw i64 %16, 100, !dbg !4264
  %18 = add i64 %17, %15, !dbg !4265
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4248, metadata !802), !dbg !4266
  %19 = icmp ult i64 %18, %15, !dbg !4267
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !4248, metadata !802), !dbg !4266
  %20 = select i1 %19, i64 %15, i64 %18, !dbg !4269
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !4248, metadata !802), !dbg !4266
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4270
  %22 = load i64, i64* %21, align 8, !dbg !4270, !tbaa !4131
  %23 = icmp ult i64 %20, %22, !dbg !4272
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !4248, metadata !802), !dbg !4266
  %24 = select i1 %23, i64 %22, i64 %20, !dbg !4273
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4248, metadata !802), !dbg !4266
  %25 = icmp ugt i64 %11, %12, !dbg !4274
  %26 = icmp ugt i64 %12, %15, !dbg !4276
  %27 = or i1 %25, %26, !dbg !4277
  br i1 %27, label %47, label %28, !dbg !4277

; <label>:28:                                     ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4135, metadata !802) #12, !dbg !4278
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4140, metadata !802) #12, !dbg !4280
  %29 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4281
  %30 = load i8, i8* %29, align 8, !dbg !4281
  %31 = and i8 %30, 1, !dbg !4281
  %32 = icmp eq i8 %31, 0, !dbg !4282
  %33 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7
  br i1 %32, label %40, label %34, !dbg !4283

; <label>:34:                                     ; preds = %28
  %35 = bitcast %union.anon.0* %33 to i8* (i8*, i64)**, !dbg !4284
  %36 = load i8* (i8*, i64)*, i8* (i8*, i64)** %35, align 8, !dbg !4284, !tbaa !937
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4285
  %38 = load i8*, i8** %37, align 8, !dbg !4285, !tbaa !4194
  %39 = tail call i8* %36(i8* %38, i64 %24) #12, !dbg !4286
  br label %44, !dbg !4287

; <label>:40:                                     ; preds = %28
  %41 = getelementptr inbounds %union.anon.0, %union.anon.0* %33, i64 0, i32 0, !dbg !4288
  %42 = load i8* (i64)*, i8* (i64)** %41, align 8, !dbg !4288, !tbaa !937
  %43 = tail call i8* %42(i64 %24) #12, !dbg !4289
  br label %44, !dbg !4290

; <label>:44:                                     ; preds = %40, %34
  %45 = phi i8* [ %39, %34 ], [ %43, %40 ]
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4243, metadata !802), !dbg !4253
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4243, metadata !802), !dbg !4253
  %46 = icmp eq i8* %45, null, !dbg !4291
  br i1 %46, label %47, label %49, !dbg !4293

; <label>:47:                                     ; preds = %2, %44
  %48 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4294, !tbaa !809
  tail call void %48() #15, !dbg !4295
  unreachable, !dbg !4295

; <label>:49:                                     ; preds = %44
  %50 = bitcast %struct._obstack_chunk** %3 to i8**, !dbg !4296
  store i8* %45, i8** %50, align 8, !dbg !4296, !tbaa !1000
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !4297
  %52 = bitcast i8* %51 to %struct._obstack_chunk**, !dbg !4297
  store %struct._obstack_chunk* %4, %struct._obstack_chunk** %52, align 8, !dbg !4298, !tbaa !809
  %53 = getelementptr inbounds i8, i8* %45, i64 %24, !dbg !4299
  %54 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4300
  store i8* %53, i8** %54, align 8, !dbg !4301, !tbaa !1001
  %55 = bitcast i8* %45 to i8**, !dbg !4302
  store i8* %53, i8** %55, align 8, !dbg !4303, !tbaa !809
  %56 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !4304
  %57 = ptrtoint i8* %56 to i64, !dbg !4304
  %58 = load i64, i64* %13, align 8, !dbg !4304, !tbaa !997
  %59 = add i64 %58, %57, !dbg !4304
  %60 = xor i64 %58, -1, !dbg !4304
  %61 = and i64 %59, %60, !dbg !4304
  %62 = getelementptr inbounds i8, i8* null, i64 %61, !dbg !4304
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !4245, metadata !802), !dbg !4305
  %63 = load i8*, i8** %8, align 8, !dbg !4306, !tbaa !992
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %11, i32 1, i1 false), !dbg !4307
  %64 = load i8, i8* %29, align 8, !dbg !4308
  %65 = and i8 %64, 2, !dbg !4308
  %66 = icmp eq i8 %65, 0, !dbg !4310
  br i1 %66, label %67, label %92, !dbg !4311

; <label>:67:                                     ; preds = %49
  %68 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 2, i64 0, !dbg !4312
  %69 = ptrtoint i8* %68 to i64, !dbg !4312
  %70 = add i64 %58, %69, !dbg !4312
  %71 = and i64 %70, %60, !dbg !4312
  %72 = getelementptr inbounds i8, i8* null, i64 %71, !dbg !4312
  %73 = icmp eq i8* %63, %72, !dbg !4313
  br i1 %73, label %74, label %92, !dbg !4314

; <label>:74:                                     ; preds = %67
  %75 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 1, !dbg !4315
  %76 = bitcast %struct._obstack_chunk** %75 to i64*, !dbg !4315
  %77 = load i64, i64* %76, align 8, !dbg !4315, !tbaa !809
  %78 = bitcast i8* %51 to i64*, !dbg !4317
  store i64 %77, i64* %78, align 8, !dbg !4317, !tbaa !809
  %79 = bitcast %struct._obstack_chunk* %4 to i8*, !dbg !4318
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4319, metadata !802) #12, !dbg !4325
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !4324, metadata !802) #12, !dbg !4327
  %80 = load i8, i8* %29, align 8, !dbg !4328
  %81 = and i8 %80, 1, !dbg !4328
  %82 = icmp eq i8 %81, 0, !dbg !4330
  %83 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  br i1 %82, label %89, label %84, !dbg !4331

; <label>:84:                                     ; preds = %74
  %85 = bitcast %union.anon.1* %83 to void (i8*, i8*)**, !dbg !4332
  %86 = load void (i8*, i8*)*, void (i8*, i8*)** %85, align 8, !dbg !4332, !tbaa !937
  %87 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4333
  %88 = load i8*, i8** %87, align 8, !dbg !4333, !tbaa !4194
  tail call void %86(i8* %88, i8* %79) #12, !dbg !4334
  br label %92, !dbg !4334

; <label>:89:                                     ; preds = %74
  %90 = getelementptr inbounds %union.anon.1, %union.anon.1* %83, i64 0, i32 0, !dbg !4335
  %91 = load void (i8*)*, void (i8*)** %90, align 8, !dbg !4335, !tbaa !937
  tail call void %91(i8* %79) #12, !dbg !4336
  br label %92

; <label>:92:                                     ; preds = %89, %84, %49, %67
  store i8* %62, i8** %8, align 8, !dbg !4337, !tbaa !992
  %93 = getelementptr inbounds i8, i8* %62, i64 %11, !dbg !4338
  store i8* %93, i8** %5, align 8, !dbg !4339, !tbaa !989
  %94 = load i8, i8* %29, align 8, !dbg !4340
  %95 = and i8 %94, -3, !dbg !4340
  store i8 %95, i8* %29, align 8, !dbg !4340
  ret void, !dbg !4341
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @_obstack_allocated_p(%struct.obstack* nocapture readonly, i8* readnone) local_unnamed_addr #10 !dbg !4342 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4346, metadata !802), !dbg !4350
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4347, metadata !802), !dbg !4351
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4352
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk** %3, i64 0, metadata !4348, metadata !4353), !dbg !4354
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !tbaa !809
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !4348, metadata !802), !dbg !4354
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !4355
  br i1 %5, label %19, label %6, !dbg !4356

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !4357

; <label>:7:                                      ; preds = %6, %15
  %8 = phi %struct._obstack_chunk* [ %17, %15 ], [ %4, %6 ]
  %9 = bitcast %struct._obstack_chunk* %8 to i8*, !dbg !4357
  %10 = icmp ult i8* %9, %1, !dbg !4358
  br i1 %10, label %11, label %15, !dbg !4359

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %8, i64 0, i32 0, !dbg !4360
  %13 = load i8*, i8** %12, align 8, !dbg !4360, !tbaa !809
  %14 = icmp ult i8* %13, %1, !dbg !4361
  br i1 %14, label %15, label %19, !dbg !4362

; <label>:15:                                     ; preds = %7, %11
  %16 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %8, i64 0, i32 1, !dbg !4363
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk** %16, i64 0, metadata !4349, metadata !4353), !dbg !4365
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk** %16, i64 0, metadata !4348, metadata !4353), !dbg !4354
  %17 = load %struct._obstack_chunk*, %struct._obstack_chunk** %16, align 8, !tbaa !809
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %17, i64 0, metadata !4348, metadata !802), !dbg !4354
  %18 = icmp eq %struct._obstack_chunk* %17, null, !dbg !4355
  br i1 %18, label %19, label %7, !dbg !4356, !llvm.loop !4366

; <label>:19:                                     ; preds = %11, %15, %2
  %20 = phi i32 [ 0, %2 ], [ 0, %15 ], [ 1, %11 ]
  ret i32 %20, !dbg !4368
}

; Function Attrs: nounwind sspstrong uwtable
define void @_obstack_free(%struct.obstack* nocapture, i8*) local_unnamed_addr #6 !dbg !4369 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4371, metadata !802), !dbg !4375
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4372, metadata !802), !dbg !4376
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4377
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !4377, !tbaa !1000
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !4373, metadata !802), !dbg !4378
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !4373, metadata !802), !dbg !4378
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !4379
  br i1 %5, label %42, label %6, !dbg !4380

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  %9 = getelementptr inbounds %union.anon.1, %union.anon.1* %8, i64 0, i32 0
  %10 = bitcast %union.anon.1* %8 to void (i8*, i8*)**
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9
  br label %12, !dbg !4380

; <label>:12:                                     ; preds = %6, %31
  %13 = phi %struct._obstack_chunk* [ %4, %6 ], [ %22, %31 ]
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, i64 0, metadata !4373, metadata !802), !dbg !4378
  %14 = bitcast %struct._obstack_chunk* %13 to i8*, !dbg !4381
  %15 = icmp ult i8* %14, %1, !dbg !4382
  br i1 %15, label %16, label %20, !dbg !4383

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0, !dbg !4384
  %18 = load i8*, i8** %17, align 8, !dbg !4384, !tbaa !809
  %19 = icmp ult i8* %18, %1, !dbg !4385
  br i1 %19, label %20, label %35, !dbg !4386

; <label>:20:                                     ; preds = %12, %16
  %21 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 1, !dbg !4387
  %22 = load %struct._obstack_chunk*, %struct._obstack_chunk** %21, align 8, !dbg !4387, !tbaa !809
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, i64 0, metadata !4374, metadata !802), !dbg !4389
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4319, metadata !802) #12, !dbg !4390
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4324, metadata !802) #12, !dbg !4392
  %23 = load i8, i8* %7, align 8, !dbg !4393
  %24 = and i8 %23, 1, !dbg !4393
  %25 = icmp eq i8 %24, 0, !dbg !4394
  br i1 %25, label %29, label %26, !dbg !4395

; <label>:26:                                     ; preds = %20
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8, !dbg !4396, !tbaa !937
  %28 = load i8*, i8** %11, align 8, !dbg !4397, !tbaa !4194
  tail call void %27(i8* %28, i8* nonnull %14) #12, !dbg !4398
  br label %31, !dbg !4398

; <label>:29:                                     ; preds = %20
  %30 = load void (i8*)*, void (i8*)** %9, align 8, !dbg !4399, !tbaa !937
  tail call void %30(i8* nonnull %14) #12, !dbg !4400
  br label %31

; <label>:31:                                     ; preds = %26, %29
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, i64 0, metadata !4373, metadata !802), !dbg !4378
  %32 = load i8, i8* %7, align 8, !dbg !4401
  %33 = or i8 %32, 2, !dbg !4401
  store i8 %33, i8* %7, align 8, !dbg !4401
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, i64 0, metadata !4373, metadata !802), !dbg !4378
  %34 = icmp eq %struct._obstack_chunk* %22, null, !dbg !4379
  br i1 %34, label %42, label %12, !dbg !4380, !llvm.loop !4402

; <label>:35:                                     ; preds = %16
  %36 = bitcast %struct._obstack_chunk* %13 to i64*
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4404
  store i8* %1, i8** %37, align 8, !dbg !4407, !tbaa !989
  %38 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4408
  store i8* %1, i8** %38, align 8, !dbg !4409, !tbaa !992
  %39 = load i64, i64* %36, align 8, !dbg !4410, !tbaa !809
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4411
  %41 = bitcast i8** %40 to i64*, !dbg !4412
  store i64 %39, i64* %41, align 8, !dbg !4412, !tbaa !1001
  store %struct._obstack_chunk* %13, %struct._obstack_chunk** %3, align 8, !dbg !4413, !tbaa !1000
  br label %45, !dbg !4414

; <label>:42:                                     ; preds = %31, %2
  %43 = icmp eq i8* %1, null, !dbg !4415
  br i1 %43, label %45, label %44, !dbg !4417

; <label>:44:                                     ; preds = %42
  tail call void @abort() #15, !dbg !4418
  unreachable, !dbg !4418

; <label>:45:                                     ; preds = %42, %35
  ret void, !dbg !4419
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @_obstack_memory_used(%struct.obstack* nocapture readonly) local_unnamed_addr #10 !dbg !4420 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4424, metadata !802), !dbg !4427
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4426, metadata !802), !dbg !4428
  %2 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4429
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk** %2, i64 0, metadata !4425, metadata !4353), !dbg !4431
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %2, align 8, !tbaa !809
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4426, metadata !802), !dbg !4428
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %3, i64 0, metadata !4425, metadata !802), !dbg !4431
  %4 = icmp eq %struct._obstack_chunk* %3, null, !dbg !4432
  br i1 %4, label %17, label %5, !dbg !4434

; <label>:5:                                      ; preds = %1
  br label %6, !dbg !4435

; <label>:6:                                      ; preds = %5, %6
  %7 = phi %struct._obstack_chunk* [ %15, %6 ], [ %3, %5 ]
  %8 = phi i64 [ %13, %6 ], [ 0, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4426, metadata !802), !dbg !4428
  %9 = bitcast %struct._obstack_chunk* %7 to i64*, !dbg !4435
  %10 = load i64, i64* %9, align 8, !dbg !4435, !tbaa !809
  %11 = ptrtoint %struct._obstack_chunk* %7 to i64, !dbg !4437
  %12 = sub i64 %8, %11, !dbg !4437
  %13 = add i64 %12, %10, !dbg !4438
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4426, metadata !802), !dbg !4428
  %14 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 1, !dbg !4439
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk** %14, i64 0, metadata !4425, metadata !4353), !dbg !4431
  %15 = load %struct._obstack_chunk*, %struct._obstack_chunk** %14, align 8, !tbaa !809
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4426, metadata !802), !dbg !4428
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %15, i64 0, metadata !4425, metadata !802), !dbg !4431
  %16 = icmp eq %struct._obstack_chunk* %15, null, !dbg !4432
  br i1 %16, label %17, label %6, !dbg !4434, !llvm.loop !4440

; <label>:17:                                     ; preds = %6, %1
  %18 = phi i64 [ 0, %1 ], [ %13, %6 ]
  ret i64 %18, !dbg !4442
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4443 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4488, metadata !802), !dbg !4493
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4494
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4495, metadata !802), !dbg !4498
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4500
  %4 = load i32, i32* %3, align 8, !dbg !4500, !tbaa !3912
  %5 = and i32 %4, 32, !dbg !4500
  %6 = icmp eq i32 %5, 0, !dbg !4501
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4502
  %8 = icmp ne i32 %7, 0, !dbg !4503
  br i1 %6, label %9, label %19, !dbg !4504

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4506
  %11 = xor i1 %8, true, !dbg !4507
  %12 = or i1 %10, %11, !dbg !4507
  %13 = sext i1 %8 to i32, !dbg !4507
  br i1 %12, label %22, label %14, !dbg !4507

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4508
  %16 = load i32, i32* %15, align 4, !dbg !4508, !tbaa !884
  %17 = icmp ne i32 %16, 9, !dbg !4509
  %18 = sext i1 %17 to i32, !dbg !4510
  br label %22, !dbg !4510

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4511

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4513
  store i32 0, i32* %21, align 4, !dbg !4515, !tbaa !884
  br label %22, !dbg !4513

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4516
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4517 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4520, metadata !802), !dbg !4523
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4521, metadata !802), !dbg !4524
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4525
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4522, metadata !802), !dbg !4526
  %3 = icmp eq i8* %2, null, !dbg !4527
  br i1 %3, label %11, label %4, !dbg !4529

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.205, i64 0, i64 0)) #14, !dbg !4530
  %6 = icmp eq i32 %5, 0, !dbg !4535
  br i1 %6, label %10, label %7, !dbg !4536

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.206, i64 0, i64 0)) #14, !dbg !4537
  %9 = icmp eq i32 %8, 0, !dbg !4538
  br i1 %9, label %10, label %11, !dbg !4539

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4521, metadata !802), !dbg !4524
  br label %11, !dbg !4540

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4541
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4542 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4548, metadata !802), !dbg !4622
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4615, metadata !802), !dbg !4625
  %3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4626
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4546, metadata !802), !dbg !4627
  %4 = icmp eq i8* %3, null, !dbg !4628
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.209, i64 0, i64 0), i8* %3, !dbg !4630
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4546, metadata !802), !dbg !4627
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4631, !tbaa !809
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4562, metadata !802) #12, !dbg !4632
  %7 = icmp eq i8* %6, null, !dbg !4633
  br i1 %7, label %8, label %123, !dbg !4634

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.210, i64 0, i64 0)) #12, !dbg !4635
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4563, metadata !802) #12, !dbg !4636
  %10 = icmp eq i8* %9, null, !dbg !4637
  br i1 %10, label %14, label %11, !dbg !4639

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4640, !tbaa !937
  %13 = icmp eq i8 %12, 0, !dbg !4641
  br i1 %13, label %14, label %15, !dbg !4642

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4643

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.211, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4563, metadata !802) #12, !dbg !4636
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4644
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4566, metadata !802) #12, !dbg !4645
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4568, metadata !802) #12, !dbg !4646
  %18 = icmp eq i64 %17, 0, !dbg !4647
  br i1 %18, label %24, label %19, !dbg !4648

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4649
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4649
  %22 = load i8, i8* %21, align 1, !dbg !4649, !tbaa !937
  %23 = icmp ne i8 %22, 47, !dbg !4649
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4650
  %27 = add i64 %17, 14, !dbg !4651
  %28 = add i64 %27, %26, !dbg !4652
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !4653
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4565, metadata !802) #12, !dbg !4654
  %30 = icmp eq i8* %29, null, !dbg !4655
  br i1 %30, label %121, label %31, !dbg !4655

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !4656
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4659

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4660, !tbaa !937
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4662
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.212, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4663
  br label %37, !dbg !4664

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4662
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.212, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4663
  br label %37, !dbg !4664

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !4665
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4570, metadata !802) #12, !dbg !4666
  %39 = icmp slt i32 %38, 0, !dbg !4667
  br i1 %39, label %119, label %40, !dbg !4668

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.213, i64 0, i64 0)) #12, !dbg !4669
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4571, metadata !802) #12, !dbg !4670
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4671
  br i1 %42, label %43, label %45, !dbg !4672

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #12, !dbg !4673
  br label %119, !dbg !4675

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4612, metadata !802) #12, !dbg !4676
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4613, metadata !802) #12, !dbg !4677
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4678

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4679

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4612, metadata !802) #12, !dbg !4676
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4613, metadata !802) #12, !dbg !4677
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4679
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4680
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4681, metadata !802) #12, !dbg !4686
  %54 = load i8*, i8** %48, align 8, !dbg !4688, !tbaa !3978
  %55 = load i8*, i8** %49, align 8, !dbg !4688, !tbaa !3976
  %56 = icmp ult i8* %54, %55, !dbg !4688
  br i1 %56, label %59, label %57, !dbg !4688, !prof !4689

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4688
  br label %63, !dbg !4688

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4688
  store i8* %60, i8** %48, align 8, !dbg !4688, !tbaa !3978
  %61 = load i8, i8* %54, align 1, !dbg !4688, !tbaa !937
  %62 = zext i8 %61 to i32, !dbg !4688
  br label %63, !dbg !4688

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4688
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4614, metadata !802) #12, !dbg !4690
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4691, !llvm.loop !4692

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4697

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4681, metadata !802) #12, !dbg !4699
  %67 = load i8*, i8** %48, align 8, !dbg !4697, !tbaa !3978
  %68 = load i8*, i8** %49, align 8, !dbg !4697, !tbaa !3976
  %69 = icmp ult i8* %67, %68, !dbg !4697
  br i1 %69, label %72, label %70, !dbg !4697, !prof !4689

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4697
  br label %76, !dbg !4697

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4697
  store i8* %73, i8** %48, align 8, !dbg !4697, !tbaa !3978
  %74 = load i8, i8* %67, align 1, !dbg !4697, !tbaa !937
  %75 = zext i8 %74 to i32, !dbg !4697
  br label %76, !dbg !4697

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4697
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4614, metadata !802) #12, !dbg !4690
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4700, !llvm.loop !4701

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #12, !dbg !4704
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.214, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #12, !dbg !4705
  %81 = icmp slt i32 %80, 2, !dbg !4707
  br i1 %81, label %112, label %82, !dbg !4708

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4709
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4619, metadata !802) #12, !dbg !4710
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4711
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4620, metadata !802) #12, !dbg !4712
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4621, metadata !802) #12, !dbg !4713
  %85 = icmp eq i64 %51, 0, !dbg !4714
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4716

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4613, metadata !802) #12, !dbg !4677
  %90 = add i64 %87, 2, !dbg !4717
  %91 = call noalias i8* @malloc(i64 %90) #12, !dbg !4719
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4612, metadata !802) #12, !dbg !4676
  br label %96, !dbg !4720

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4721
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4613, metadata !802) #12, !dbg !4677
  %94 = add i64 %93, 1, !dbg !4723
  %95 = call i8* @realloc(i8* %52, i64 %94) #12, !dbg !4724
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4612, metadata !802) #12, !dbg !4676
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4612, metadata !802) #12, !dbg !4676
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4613, metadata !802) #12, !dbg !4677
  %99 = icmp eq i8* %98, null, !dbg !4725
  br i1 %99, label %100, label %102, !dbg !4727

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4613, metadata !802) #12, !dbg !4677
  call void @free(i8* %52) #12, !dbg !4728
  br label %112, !dbg !4730

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4731
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4731
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4732
  %104 = xor i64 %84, -1, !dbg !4733
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4733
  %106 = xor i64 %83, -1, !dbg !4734
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4734
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4735, metadata !802) #12, !dbg !4744
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4743, metadata !802) #12, !dbg !4744
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #12, !dbg !4746
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #12, !dbg !4747
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4735, metadata !802) #12, !dbg !4748
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4743, metadata !802) #12, !dbg !4748
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #12, !dbg !4750
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #12, !dbg !4751
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4612, metadata !802) #12, !dbg !4676
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4613, metadata !802) #12, !dbg !4677
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4731
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4731
  br label %50, !dbg !4752, !llvm.loop !4701

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4731
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4731
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !4753
  %116 = icmp eq i64 %113, 0, !dbg !4754
  br i1 %116, label %119, label %117, !dbg !4756

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4757
  store i8 0, i8* %118, align 1, !dbg !4759, !tbaa !937
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.209, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.209, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.209, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4562, metadata !802) #12, !dbg !4632
  call void @free(i8* %29) #12, !dbg !4760
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.209, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4562, metadata !802) #12, !dbg !4632
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4761, !tbaa !809
  br label %123, !dbg !4762

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4562, metadata !802) #12, !dbg !4632
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4547, metadata !802), !dbg !4763
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4547, metadata !802), !dbg !4763
  %125 = load i8, i8* %124, align 1, !dbg !4764, !tbaa !937
  %126 = icmp eq i8 %125, 0, !dbg !4766
  br i1 %126, label %152, label %127, !dbg !4767

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4768

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4547, metadata !802), !dbg !4763
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4768
  %132 = icmp eq i32 %131, 0, !dbg !4770
  br i1 %132, label %139, label %133, !dbg !4771

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4772
  br i1 %134, label %135, label %143, !dbg !4773

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4774
  %137 = load i8, i8* %136, align 1, !dbg !4774, !tbaa !937
  %138 = icmp eq i8 %137, 0, !dbg !4775
  br i1 %138, label %139, label %143, !dbg !4776

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4777
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4779
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4780
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4546, metadata !802), !dbg !4627
  br label %152, !dbg !4781

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4782
  %145 = add i64 %144, 1, !dbg !4783
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4784
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4547, metadata !802), !dbg !4763
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4785
  %148 = add i64 %147, 1, !dbg !4786
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4787
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4547, metadata !802), !dbg !4763
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4547, metadata !802), !dbg !4763
  %150 = load i8, i8* %149, align 1, !dbg !4764, !tbaa !937
  %151 = icmp eq i8 %150, 0, !dbg !4766
  br i1 %151, label %152, label %128, !dbg !4767, !llvm.loop !4788

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4546, metadata !802), !dbg !4627
  %154 = load i8, i8* %153, align 1, !dbg !4790, !tbaa !937
  %155 = icmp eq i8 %154, 0, !dbg !4792
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.215, i64 0, i64 0), i8* %153, !dbg !4793
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4546, metadata !802), !dbg !4627
  ret i8* %156, !dbg !4794
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

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
attributes #7 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !293, !737, !299, !742, !307, !745, !314, !321, !747, !371, !755, !772, !774, !776, !778, !780, !782, !784, !380, !787, !789, !390}
!llvm.ident = !{!791, !791, !791, !791, !791, !791, !791, !791, !791, !791, !791, !791, !791, !791, !791, !791, !791, !791, !791, !791, !791, !791, !791}
!llvm.module.flags = !{!792, !793, !794, !795, !796}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 80, type: !279, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !241, globals: !242)
!3 = !DIFile(filename: "src/dircolors.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10, !212, !226}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Shell_syntax", file: !3, line: 42, size: 32, elements: !6)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "SHELL_SYNTAX_BOURNE", value: 0)
!8 = !DIEnumerator(name: "SHELL_SYNTAX_C", value: 1)
!9 = !DIEnumerator(name: "SHELL_SYNTAX_UNKNOWN", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !11, file: !3, line: 250, size: 32, elements: !207)
!11 = distinct !DISubprogram(name: "dc_parse_stream", scope: !3, file: !3, line: 239, type: !12, isLocal: true, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !80)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !78}
!14 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 7, baseType: !18)
!17 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !20)
!19 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!20 = !{!21, !23, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !44, !45, !46, !47, !51, !53, !55, !59, !62, !64, !66, !67, !68, !69, !73, !74}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !18, file: !19, line: 242, baseType: !22, size: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !18, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !18, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !18, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !18, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !18, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !18, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !18, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !18, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !18, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !18, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !18, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !18, file: !19, line: 260, baseType: !37, size: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !39)
!39 = !{!40, !41, !43}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !38, file: !19, line: 157, baseType: !37, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !38, file: !19, line: 158, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !38, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !18, file: !19, line: 262, baseType: !42, size: 64, offset: 832)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !18, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !18, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !18, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !49, line: 140, baseType: !50)
!49 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !18, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!52 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !18, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!54 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !18, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !18, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !19, line: 150, baseType: null)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !18, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !49, line: 141, baseType: !50)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !18, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !18, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !18, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !18, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !18, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 62, baseType: !72)
!71 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !18, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !18, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 160, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 20)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !93, !94, !95, !154, !159, !161, !164, !166, !169, !173, !176, !178, !181, !184, !189, !192, !194, !197, !199, !202, !204}
!81 = !DILocalVariable(name: "fp", arg: 1, scope: !11, file: !3, line: 239, type: !15)
!82 = !DILocalVariable(name: "filename", arg: 2, scope: !11, file: !3, line: 239, type: !78)
!83 = !DILocalVariable(name: "line_number", scope: !11, file: !3, line: 241, type: !70)
!84 = !DILocalVariable(name: "next_G_line", scope: !11, file: !3, line: 242, type: !78)
!85 = !DILocalVariable(name: "input_line", scope: !11, file: !3, line: 243, type: !24)
!86 = !DILocalVariable(name: "input_line_size", scope: !11, file: !3, line: 244, type: !70)
!87 = !DILocalVariable(name: "line", scope: !11, file: !3, line: 245, type: !78)
!88 = !DILocalVariable(name: "term", scope: !11, file: !3, line: 246, type: !78)
!89 = !DILocalVariable(name: "ok", scope: !11, file: !3, line: 247, type: !14)
!90 = !DILocalVariable(name: "state", scope: !11, file: !3, line: 250, type: !10)
!91 = !DILocalVariable(name: "keywd", scope: !92, file: !3, line: 259, type: !24)
!92 = distinct !DILexicalBlock(scope: !11, file: !3, line: 258, column: 5)
!93 = !DILocalVariable(name: "arg", scope: !92, file: !3, line: 259, type: !24)
!94 = !DILocalVariable(name: "unrecognized", scope: !92, file: !3, line: 260, type: !14)
!95 = !DILocalVariable(name: "__o", scope: !96, file: !3, line: 312, type: !103)
!96 = distinct !DILexicalBlock(scope: !97, file: !3, line: 312, column: 19)
!97 = distinct !DILexicalBlock(scope: !98, file: !3, line: 311, column: 17)
!98 = distinct !DILexicalBlock(scope: !99, file: !3, line: 310, column: 19)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 309, column: 13)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 308, column: 15)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 304, column: 9)
!102 = distinct !DILexicalBlock(scope: !92, file: !3, line: 296, column: 11)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !105, line: 174, size: 704, elements: !106)
!105 = !DIFile(filename: "./lib/obstack.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !{!107, !108, !118, !119, !120, !121, !126, !127, !138, !149, !150, !152, !153}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !104, file: !105, line: 176, baseType: !70, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !104, file: !105, line: 177, baseType: !109, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !105, line: 167, size: 128, elements: !111)
!111 = !{!112, !113, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !110, file: !105, line: 169, baseType: !24, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !110, file: !105, line: 170, baseType: !109, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !110, file: !105, line: 171, baseType: !115, offset: 128)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: -1)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !104, file: !105, line: 178, baseType: !24, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !104, file: !105, line: 179, baseType: !24, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !104, file: !105, line: 180, baseType: !24, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !104, file: !105, line: 185, baseType: !122, size: 64, offset: 320)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !105, line: 181, size: 64, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !122, file: !105, line: 183, baseType: !70, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !122, file: !105, line: 184, baseType: !65, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !104, file: !105, line: 186, baseType: !70, size: 64, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !104, file: !105, line: 193, baseType: !128, size: 64, offset: 448)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !105, line: 189, size: 64, elements: !129)
!129 = !{!130, !134}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !128, file: !105, line: 191, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!65, !70}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !128, file: !105, line: 192, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!65, !65, !70}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !104, file: !105, line: 198, baseType: !139, size: 64, offset: 512)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !105, line: 194, size: 64, elements: !140)
!140 = !{!141, !145}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !139, file: !105, line: 196, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !65}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !139, file: !105, line: 197, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !65, !65}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !104, file: !105, line: 200, baseType: !65, size: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !104, file: !105, line: 201, baseType: !151, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!151 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !104, file: !105, line: 202, baseType: !151, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !104, file: !105, line: 206, baseType: !151, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!154 = !DILocalVariable(name: "__o1", scope: !155, file: !3, line: 312, type: !157)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 312, column: 19)
!156 = distinct !DILexicalBlock(scope: !96, file: !3, line: 312, column: 19)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!159 = !DILocalVariable(name: "__o", scope: !160, file: !3, line: 314, type: !103)
!160 = distinct !DILexicalBlock(scope: !97, file: !3, line: 314, column: 19)
!161 = !DILocalVariable(name: "__o1", scope: !162, file: !3, line: 314, type: !157)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 314, column: 19)
!163 = distinct !DILexicalBlock(scope: !160, file: !3, line: 314, column: 19)
!164 = !DILocalVariable(name: "__o", scope: !165, file: !3, line: 316, type: !103)
!165 = distinct !DILexicalBlock(scope: !97, file: !3, line: 316, column: 19)
!166 = !DILocalVariable(name: "__o1", scope: !167, file: !3, line: 316, type: !157)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 316, column: 19)
!168 = distinct !DILexicalBlock(scope: !165, file: !3, line: 316, column: 19)
!169 = !DILocalVariable(name: "__o", scope: !170, file: !3, line: 321, type: !103)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 321, column: 19)
!171 = distinct !DILexicalBlock(scope: !172, file: !3, line: 319, column: 17)
!172 = distinct !DILexicalBlock(scope: !98, file: !3, line: 318, column: 24)
!173 = !DILocalVariable(name: "__o1", scope: !174, file: !3, line: 321, type: !157)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 321, column: 19)
!175 = distinct !DILexicalBlock(scope: !170, file: !3, line: 321, column: 19)
!176 = !DILocalVariable(name: "__o", scope: !177, file: !3, line: 323, type: !103)
!177 = distinct !DILexicalBlock(scope: !171, file: !3, line: 323, column: 19)
!178 = !DILocalVariable(name: "__o1", scope: !179, file: !3, line: 323, type: !157)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 323, column: 19)
!180 = distinct !DILexicalBlock(scope: !177, file: !3, line: 323, column: 19)
!181 = !DILocalVariable(name: "i", scope: !182, file: !3, line: 333, type: !22)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 332, column: 17)
!183 = distinct !DILexicalBlock(scope: !172, file: !3, line: 325, column: 24)
!184 = !DILocalVariable(name: "__o", scope: !185, file: !3, line: 341, type: !103)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 341, column: 23)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 341, column: 23)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 340, column: 21)
!188 = distinct !DILexicalBlock(scope: !182, file: !3, line: 339, column: 23)
!189 = !DILocalVariable(name: "__o1", scope: !190, file: !3, line: 341, type: !157)
!190 = distinct !DILexicalBlock(scope: !191, file: !3, line: 341, column: 23)
!191 = distinct !DILexicalBlock(scope: !185, file: !3, line: 341, column: 23)
!192 = !DILocalVariable(name: "__o", scope: !193, file: !3, line: 341, type: !103)
!193 = distinct !DILexicalBlock(scope: !186, file: !3, line: 341, column: 23)
!194 = !DILocalVariable(name: "__o1", scope: !195, file: !3, line: 341, type: !157)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 341, column: 23)
!196 = distinct !DILexicalBlock(scope: !193, file: !3, line: 341, column: 23)
!197 = !DILocalVariable(name: "__o", scope: !198, file: !3, line: 342, type: !103)
!198 = distinct !DILexicalBlock(scope: !187, file: !3, line: 342, column: 23)
!199 = !DILocalVariable(name: "__o1", scope: !200, file: !3, line: 342, type: !157)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 342, column: 23)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 342, column: 23)
!202 = !DILocalVariable(name: "__o", scope: !203, file: !3, line: 344, type: !103)
!203 = distinct !DILexicalBlock(scope: !187, file: !3, line: 344, column: 23)
!204 = !DILocalVariable(name: "__o1", scope: !205, file: !3, line: 344, type: !157)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 344, column: 23)
!206 = distinct !DILexicalBlock(scope: !203, file: !3, line: 344, column: 23)
!207 = !{!208, !209, !210, !211}
!208 = !DIEnumerator(name: "ST_TERMNO", value: 0)
!209 = !DIEnumerator(name: "ST_TERMYES", value: 1)
!210 = !DIEnumerator(name: "ST_TERMSURE", value: 2)
!211 = !DIEnumerator(name: "ST_GLOBAL", value: 3)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !213, line: 32, size: 32, elements: !214)
!213 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225}
!215 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!216 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!217 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!218 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!219 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!220 = !DIEnumerator(name: "c_quoting_style", value: 5)
!221 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!222 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!223 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!224 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!225 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !227, line: 46, size: 32, elements: !228)
!227 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!229 = !DIEnumerator(name: "_ISupper", value: 256)
!230 = !DIEnumerator(name: "_ISlower", value: 512)
!231 = !DIEnumerator(name: "_ISalpha", value: 1024)
!232 = !DIEnumerator(name: "_ISdigit", value: 2048)
!233 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!234 = !DIEnumerator(name: "_ISspace", value: 8192)
!235 = !DIEnumerator(name: "_ISprint", value: 16384)
!236 = !DIEnumerator(name: "_ISgraph", value: 32768)
!237 = !DIEnumerator(name: "_ISblank", value: 1)
!238 = !DIEnumerator(name: "_IScntrl", value: 2)
!239 = !DIEnumerator(name: "_ISpunct", value: 4)
!240 = !DIEnumerator(name: "_ISalnum", value: 8)
!241 = !{!24, !65, !70, !72, !22, !52}
!242 = !{!243, !245, !0, !265, !271, !277}
!243 = !DIGlobalVariableExpression(var: !244)
!244 = distinct !DIGlobalVariable(name: "lsc_obstack", scope: !2, file: !3, line: 60, type: !104, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246)
!246 = distinct !DIGlobalVariable(name: "infomap", scope: !247, file: !248, line: 632, type: !262, isLocal: true, isDefinition: true)
!247 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !248, file: !248, line: 630, type: !249, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !251)
!248 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!249 = !DISubroutineType(types: !250)
!250 = !{null, !78}
!251 = !{!252, !253, !254, !261}
!252 = !DILocalVariable(name: "program", arg: 1, scope: !247, file: !248, line: 630, type: !78)
!253 = !DILocalVariable(name: "node", scope: !247, file: !248, line: 642, type: !78)
!254 = !DILocalVariable(name: "map_prog", scope: !247, file: !248, line: 643, type: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !247, file: !248, line: 632, size: 128, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !257, file: !248, line: 632, baseType: !78, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !257, file: !248, line: 632, baseType: !78, size: 64, offset: 64)
!261 = !DILocalVariable(name: "lc_messages", scope: !247, file: !248, line: 655, type: !78)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 896, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 7)
!265 = !DIGlobalVariableExpression(var: !266)
!266 = distinct !DIGlobalVariable(name: "G_line", scope: !2, file: !267, line: 1, type: !268, isLocal: true, isDefinition: true)
!267 = !DIFile(filename: "src/dircolors.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 33384, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 4173)
!271 = !DIGlobalVariableExpression(var: !272)
!272 = distinct !DIGlobalVariable(name: "slack_codes", scope: !2, file: !3, line: 62, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 2432, elements: !275)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!275 = !{!276}
!276 = !DISubrange(count: 38)
!277 = !DIGlobalVariableExpression(var: !278)
!278 = distinct !DIGlobalVariable(name: "ls_codes", scope: !2, file: !3, line: 72, type: !273, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 2048, elements: !289)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !282, line: 50, size: 256, elements: !283)
!282 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!283 = !{!284, !285, !286, !288}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !282, line: 52, baseType: !78, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !281, file: !282, line: 55, baseType: !22, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !281, file: !282, line: 56, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !281, file: !282, line: 57, baseType: !22, size: 32, offset: 192)
!289 = !{!290}
!290 = !DISubrange(count: 8)
!291 = !DIGlobalVariableExpression(var: !292)
!292 = distinct !DIGlobalVariable(name: "Version", scope: !293, file: !294, line: 2, type: !78, isLocal: false, isDefinition: true)
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, globals: !296)
!294 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!295 = !{}
!296 = !{!291}
!297 = !DIGlobalVariableExpression(var: !298)
!298 = distinct !DIGlobalVariable(name: "file_name", scope: !299, file: !304, line: 36, type: !78, isLocal: true, isDefinition: true)
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, globals: !301)
!300 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!301 = !{!297, !302}
!302 = !DIGlobalVariableExpression(var: !303)
!303 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !299, file: !304, line: 46, type: !14, isLocal: true, isDefinition: true)
!304 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!305 = !DIGlobalVariableExpression(var: !306)
!306 = distinct !DIGlobalVariable(name: "exit_failure", scope: !307, file: !310, line: 24, type: !311, isLocal: false, isDefinition: true)
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, globals: !309)
!308 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!309 = !{!305}
!310 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!311 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!312 = !DIGlobalVariableExpression(var: !313)
!313 = distinct !DIGlobalVariable(name: "program_name", scope: !314, file: !318, line: 33, type: !78, isLocal: false, isDefinition: true)
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, retainedTypes: !316, globals: !317)
!315 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!316 = !{!65, !24}
!317 = !{!312}
!318 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!319 = !DIGlobalVariableExpression(var: !320)
!320 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !321, file: !333, line: 77, type: !366, isLocal: false, isDefinition: true)
!321 = distinct !DICompileUnit(language: DW_LANG_C99, file: !322, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !323, retainedTypes: !329, globals: !330)
!322 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!323 = !{!212, !324, !226}
!324 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !213, line: 242, size: 32, elements: !325)
!325 = !{!326, !327, !328}
!326 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!327 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!328 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!329 = !{!22, !52, !70, !24}
!330 = !{!319, !331, !338, !348, !350, !355, !362, !364}
!331 = !DIGlobalVariableExpression(var: !332)
!332 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !321, file: !333, line: 93, type: !334, isLocal: false, isDefinition: true)
!333 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 320, elements: !336)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!336 = !{!337}
!337 = !DISubrange(count: 10)
!338 = !DIGlobalVariableExpression(var: !339)
!339 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !321, file: !333, line: 1043, type: !340, isLocal: false, isDefinition: true)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !333, line: 57, size: 448, elements: !341)
!341 = !{!342, !343, !344, !346, !347}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !340, file: !333, line: 60, baseType: !212, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !333, line: 63, baseType: !22, size: 32, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !340, file: !333, line: 67, baseType: !345, size: 256, offset: 64)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !289)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !340, file: !333, line: 70, baseType: !78, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !340, file: !333, line: 73, baseType: !78, size: 64, offset: 384)
!348 = !DIGlobalVariableExpression(var: !349)
!349 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !321, file: !333, line: 108, type: !340, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351)
!351 = distinct !DIGlobalVariable(name: "slot0", scope: !321, file: !333, line: 834, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 256)
!355 = !DIGlobalVariableExpression(var: !356)
!356 = distinct !DIGlobalVariable(name: "slotvec", scope: !321, file: !333, line: 837, type: !357, isLocal: true, isDefinition: true)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !333, line: 826, size: 128, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !358, file: !333, line: 828, baseType: !70, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !358, file: !333, line: 829, baseType: !24, size: 64, offset: 64)
!362 = !DIGlobalVariableExpression(var: !363)
!363 = distinct !DIGlobalVariable(name: "nslots", scope: !321, file: !333, line: 835, type: !22, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365)
!365 = distinct !DIGlobalVariable(name: "slotvec0", scope: !321, file: !333, line: 836, type: !358, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 704, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 11)
!369 = !DIGlobalVariableExpression(var: !370)
!370 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !371, file: !374, line: 26, type: !375, isLocal: false, isDefinition: true)
!371 = distinct !DICompileUnit(language: DW_LANG_C99, file: !372, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, globals: !373)
!372 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!373 = !{!369}
!374 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 376, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 47)
!378 = !DIGlobalVariableExpression(var: !379)
!379 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !380, file: !384, line: 351, type: !385, isLocal: false, isDefinition: true)
!380 = distinct !DICompileUnit(language: DW_LANG_C99, file: !381, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, retainedTypes: !382, globals: !383)
!381 = !DIFile(filename: "./lib/obstack.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!382 = !{!24, !65}
!383 = !{!378}
!384 = !DIFile(filename: "lib/obstack.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null}
!388 = !DIGlobalVariableExpression(var: !389)
!389 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !390, file: !735, line: 120, type: !736, isLocal: true, isDefinition: true)
!390 = distinct !DICompileUnit(language: DW_LANG_C99, file: !391, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !392, retainedTypes: !731, globals: !734)
!391 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!392 = !{!393}
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !394, line: 41, size: 32, elements: !395)
!394 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!396 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!397 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!398 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!399 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!400 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!401 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!402 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!403 = !DIEnumerator(name: "DAY_1", value: 131079)
!404 = !DIEnumerator(name: "DAY_2", value: 131080)
!405 = !DIEnumerator(name: "DAY_3", value: 131081)
!406 = !DIEnumerator(name: "DAY_4", value: 131082)
!407 = !DIEnumerator(name: "DAY_5", value: 131083)
!408 = !DIEnumerator(name: "DAY_6", value: 131084)
!409 = !DIEnumerator(name: "DAY_7", value: 131085)
!410 = !DIEnumerator(name: "ABMON_1", value: 131086)
!411 = !DIEnumerator(name: "ABMON_2", value: 131087)
!412 = !DIEnumerator(name: "ABMON_3", value: 131088)
!413 = !DIEnumerator(name: "ABMON_4", value: 131089)
!414 = !DIEnumerator(name: "ABMON_5", value: 131090)
!415 = !DIEnumerator(name: "ABMON_6", value: 131091)
!416 = !DIEnumerator(name: "ABMON_7", value: 131092)
!417 = !DIEnumerator(name: "ABMON_8", value: 131093)
!418 = !DIEnumerator(name: "ABMON_9", value: 131094)
!419 = !DIEnumerator(name: "ABMON_10", value: 131095)
!420 = !DIEnumerator(name: "ABMON_11", value: 131096)
!421 = !DIEnumerator(name: "ABMON_12", value: 131097)
!422 = !DIEnumerator(name: "MON_1", value: 131098)
!423 = !DIEnumerator(name: "MON_2", value: 131099)
!424 = !DIEnumerator(name: "MON_3", value: 131100)
!425 = !DIEnumerator(name: "MON_4", value: 131101)
!426 = !DIEnumerator(name: "MON_5", value: 131102)
!427 = !DIEnumerator(name: "MON_6", value: 131103)
!428 = !DIEnumerator(name: "MON_7", value: 131104)
!429 = !DIEnumerator(name: "MON_8", value: 131105)
!430 = !DIEnumerator(name: "MON_9", value: 131106)
!431 = !DIEnumerator(name: "MON_10", value: 131107)
!432 = !DIEnumerator(name: "MON_11", value: 131108)
!433 = !DIEnumerator(name: "MON_12", value: 131109)
!434 = !DIEnumerator(name: "AM_STR", value: 131110)
!435 = !DIEnumerator(name: "PM_STR", value: 131111)
!436 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!437 = !DIEnumerator(name: "D_FMT", value: 131113)
!438 = !DIEnumerator(name: "T_FMT", value: 131114)
!439 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!440 = !DIEnumerator(name: "ERA", value: 131116)
!441 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!442 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!443 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!444 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!445 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!446 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!447 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!448 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!449 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!450 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!451 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!452 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!453 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!454 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!455 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!456 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!457 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!458 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!459 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!460 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!461 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!462 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!463 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!464 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!465 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!466 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!467 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!468 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!469 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!470 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!471 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!472 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!473 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!474 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!475 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!476 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!477 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!478 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!479 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!480 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!481 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!482 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!483 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!484 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!485 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!486 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!487 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!488 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!489 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!490 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!491 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!492 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!493 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!494 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!495 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!496 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!497 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!498 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!499 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!500 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!501 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!502 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!503 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!504 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!505 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!506 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!507 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!508 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!509 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!510 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!511 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!512 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!513 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!514 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!515 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!516 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!517 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!518 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!519 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!520 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!521 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!522 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!523 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!524 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!525 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!526 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!527 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!528 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!529 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!530 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!531 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!532 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!533 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!534 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!535 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!536 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!537 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!538 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!539 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!540 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!541 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!542 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!543 = !DIEnumerator(name: "CODESET", value: 14)
!544 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!545 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!546 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!547 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!548 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!549 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!550 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!551 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!552 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!553 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!554 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!555 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!556 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!557 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!558 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!559 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!560 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!561 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!562 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!563 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!564 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!565 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!566 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!567 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!568 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!569 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!570 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!571 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!572 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!573 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!574 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!575 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!576 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!577 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!578 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!579 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!580 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!581 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!582 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!583 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!584 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!585 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!586 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!587 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!588 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!589 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!590 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!591 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!592 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!593 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!594 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!595 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!596 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!597 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!598 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!599 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!600 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!601 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!602 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!603 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!604 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!605 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!606 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!607 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!608 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!609 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!610 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!611 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!612 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!613 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!614 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!615 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!616 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!617 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!618 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!619 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!620 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!621 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!622 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!623 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!624 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!625 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!626 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!627 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!628 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!629 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!630 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!631 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!632 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!633 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!634 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!635 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!636 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!637 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!638 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!639 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!640 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!641 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!642 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!643 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!644 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!645 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!646 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!647 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!648 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!649 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!650 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!651 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!652 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!653 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!654 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!655 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!656 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!657 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!658 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!659 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!660 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!661 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!662 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!663 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!664 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!665 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!666 = !DIEnumerator(name: "THOUSEP", value: 65537)
!667 = !DIEnumerator(name: "__GROUPING", value: 65538)
!668 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!669 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!670 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!671 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!672 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!673 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!674 = !DIEnumerator(name: "__YESSTR", value: 327682)
!675 = !DIEnumerator(name: "__NOSTR", value: 327683)
!676 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!677 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!678 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!679 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!680 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!681 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!682 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!683 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!684 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!685 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!686 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!687 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!688 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!689 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!690 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!691 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!692 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!693 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!694 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!695 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!696 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!697 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!698 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!699 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!700 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!701 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!702 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!703 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!704 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!705 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!706 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!707 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!708 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!709 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!710 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!711 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!712 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!713 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!714 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!715 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!716 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!717 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!718 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!719 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!720 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!721 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!722 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!723 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!724 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!725 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!726 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!727 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!728 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!729 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!730 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!731 = !{!65, !24, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!734 = !{!388}
!735 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!736 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!737 = distinct !DICompileUnit(language: DW_LANG_C99, file: !738, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, retainedTypes: !739)
!738 = !DIFile(filename: "./lib/c-strcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !733)
!742 = distinct !DICompileUnit(language: DW_LANG_C99, file: !743, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, retainedTypes: !744)
!743 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!744 = !{!24}
!745 = distinct !DICompileUnit(language: DW_LANG_C99, file: !746, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295)
!746 = !DIFile(filename: "./lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!747 = distinct !DICompileUnit(language: DW_LANG_C99, file: !748, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !749, retainedTypes: !754)
!748 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!749 = !{!750}
!750 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !751, line: 41, size: 32, elements: !752)
!751 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!752 = !{!753}
!753 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!754 = !{!65}
!755 = distinct !DICompileUnit(language: DW_LANG_C99, file: !756, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !757, retainedTypes: !771)
!756 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!757 = !{!758}
!758 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !760, file: !759, line: 192, size: 32, elements: !769)
!759 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!760 = distinct !DISubprogram(name: "x2nrealloc", scope: !759, file: !759, line: 180, type: !761, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !755, variables: !764)
!761 = !DISubroutineType(types: !762)
!762 = !{!65, !65, !763, !70}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!764 = !{!765, !766, !767, !768}
!765 = !DILocalVariable(name: "p", arg: 1, scope: !760, file: !759, line: 180, type: !65)
!766 = !DILocalVariable(name: "pn", arg: 2, scope: !760, file: !759, line: 180, type: !763)
!767 = !DILocalVariable(name: "s", arg: 3, scope: !760, file: !759, line: 180, type: !70)
!768 = !DILocalVariable(name: "n", scope: !760, file: !759, line: 182, type: !70)
!769 = !{!770}
!770 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!771 = !{!70, !24, !65}
!772 = distinct !DICompileUnit(language: DW_LANG_C99, file: !773, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295)
!773 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!774 = distinct !DICompileUnit(language: DW_LANG_C99, file: !775, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295)
!775 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!776 = distinct !DICompileUnit(language: DW_LANG_C99, file: !777, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, retainedTypes: !754)
!777 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!778 = distinct !DICompileUnit(language: DW_LANG_C99, file: !779, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295)
!779 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!780 = distinct !DICompileUnit(language: DW_LANG_C99, file: !781, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, retainedTypes: !754)
!781 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!782 = distinct !DICompileUnit(language: DW_LANG_C99, file: !783, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, retainedTypes: !754)
!783 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!784 = distinct !DICompileUnit(language: DW_LANG_C99, file: !785, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, retainedTypes: !786)
!785 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!786 = !{!70}
!787 = distinct !DICompileUnit(language: DW_LANG_C99, file: !788, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295)
!788 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!789 = distinct !DICompileUnit(language: DW_LANG_C99, file: !790, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295)
!790 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!791 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!792 = !{i32 2, !"Dwarf Version", i32 4}
!793 = !{i32 2, !"Debug Info Version", i32 3}
!794 = !{i32 1, !"wchar_size", i32 4}
!795 = !{i32 7, !"PIC Level", i32 2}
!796 = !{i32 7, !"PIE Level", i32 2}
!797 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 93, type: !798, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !22}
!800 = !{!801}
!801 = !DILocalVariable(name: "status", arg: 1, scope: !797, file: !3, line: 93, type: !22)
!802 = !DIExpression()
!803 = !DILocation(line: 93, column: 12, scope: !797)
!804 = !DILocation(line: 95, column: 14, scope: !805)
!805 = distinct !DILexicalBlock(scope: !797, file: !3, line: 95, column: 7)
!806 = !DILocation(line: 95, column: 7, scope: !797)
!807 = !DILocation(line: 96, column: 5, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !3, line: 96, column: 5)
!809 = !{!810, !810, i64 0}
!810 = !{!"any pointer", !811, i64 0}
!811 = !{!"omnipotent char", !812, i64 0}
!812 = !{!"Simple C/C++ TBAA"}
!813 = !DILocation(line: 99, column: 7, scope: !814)
!814 = distinct !DILexicalBlock(scope: !805, file: !3, line: 98, column: 5)
!815 = !DILocation(line: 100, column: 7, scope: !814)
!816 = !DILocation(line: 108, column: 7, scope: !814)
!817 = !DILocation(line: 109, column: 7, scope: !814)
!818 = !DILocation(line: 110, column: 7, scope: !814)
!819 = !DILocation(line: 642, column: 15, scope: !247, inlinedAt: !820)
!820 = distinct !DILocation(line: 116, column: 7, scope: !814)
!821 = !DILocation(line: 651, column: 3, scope: !247, inlinedAt: !820)
!822 = !DILocation(line: 655, column: 29, scope: !247, inlinedAt: !820)
!823 = !DILocation(line: 655, column: 15, scope: !247, inlinedAt: !820)
!824 = !DILocation(line: 656, column: 7, scope: !825, inlinedAt: !820)
!825 = distinct !DILexicalBlock(scope: !247, file: !248, line: 656, column: 7)
!826 = !DILocation(line: 656, column: 19, scope: !825, inlinedAt: !820)
!827 = !DILocation(line: 656, column: 22, scope: !825, inlinedAt: !820)
!828 = !DILocation(line: 656, column: 7, scope: !247, inlinedAt: !820)
!829 = !DILocation(line: 662, column: 7, scope: !830, inlinedAt: !820)
!830 = distinct !DILexicalBlock(scope: !825, file: !248, line: 657, column: 5)
!831 = !DILocation(line: 664, column: 5, scope: !830, inlinedAt: !820)
!832 = !DILocation(line: 665, column: 3, scope: !247, inlinedAt: !820)
!833 = !DILocation(line: 667, column: 3, scope: !247, inlinedAt: !820)
!834 = !DILocation(line: 119, column: 3, scope: !797)
!835 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 396, type: !836, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !839)
!836 = !DISubroutineType(types: !837)
!837 = !{!22, !22, !838}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!839 = !{!840, !841, !842, !843, !844, !845, !846, !849, !853, !855, !856, !858, !859, !860}
!840 = !DILocalVariable(name: "argc", arg: 1, scope: !835, file: !3, line: 396, type: !22)
!841 = !DILocalVariable(name: "argv", arg: 2, scope: !835, file: !3, line: 396, type: !838)
!842 = !DILocalVariable(name: "ok", scope: !835, file: !3, line: 398, type: !14)
!843 = !DILocalVariable(name: "optc", scope: !835, file: !3, line: 399, type: !22)
!844 = !DILocalVariable(name: "syntax", scope: !835, file: !3, line: 400, type: !5)
!845 = !DILocalVariable(name: "print_database", scope: !835, file: !3, line: 401, type: !14)
!846 = !DILocalVariable(name: "p", scope: !847, file: !3, line: 459, type: !78)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 458, column: 5)
!848 = distinct !DILexicalBlock(scope: !835, file: !3, line: 457, column: 7)
!849 = !DILocalVariable(name: "len", scope: !850, file: !3, line: 487, type: !70)
!850 = distinct !DILexicalBlock(scope: !851, file: !3, line: 486, column: 9)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 485, column: 11)
!852 = distinct !DILexicalBlock(scope: !848, file: !3, line: 467, column: 5)
!853 = !DILocalVariable(name: "__o", scope: !854, file: !3, line: 487, type: !157)
!854 = distinct !DILexicalBlock(scope: !850, file: !3, line: 487, column: 24)
!855 = !DILocalVariable(name: "s", scope: !850, file: !3, line: 488, type: !24)
!856 = !DILocalVariable(name: "__o1", scope: !857, file: !3, line: 488, type: !103)
!857 = distinct !DILexicalBlock(scope: !850, file: !3, line: 488, column: 21)
!858 = !DILocalVariable(name: "__value", scope: !857, file: !3, line: 488, type: !65)
!859 = !DILocalVariable(name: "prefix", scope: !850, file: !3, line: 489, type: !78)
!860 = !DILocalVariable(name: "suffix", scope: !850, file: !3, line: 490, type: !78)
!861 = !DILocation(line: 396, column: 11, scope: !835)
!862 = !DILocation(line: 396, column: 24, scope: !835)
!863 = !DILocation(line: 398, column: 8, scope: !835)
!864 = !DILocation(line: 400, column: 21, scope: !835)
!865 = !DILocation(line: 401, column: 8, scope: !835)
!866 = !DILocation(line: 404, column: 21, scope: !835)
!867 = !DILocation(line: 404, column: 3, scope: !835)
!868 = !DILocation(line: 405, column: 3, scope: !835)
!869 = !DILocation(line: 406, column: 3, scope: !835)
!870 = !DILocation(line: 407, column: 3, scope: !835)
!871 = !DILocation(line: 409, column: 3, scope: !835)
!872 = !DILocation(line: 411, column: 3, scope: !835)
!873 = !DILocation(line: 411, column: 18, scope: !835)
!874 = !DILocation(line: 399, column: 7, scope: !835)
!875 = distinct !{!875, !872, !876}
!876 = !DILocation(line: 432, column: 7, scope: !835)
!877 = !DILocation(line: 420, column: 9, scope: !878)
!878 = distinct !DILexicalBlock(scope: !835, file: !3, line: 413, column: 7)
!879 = !DILocation(line: 424, column: 9, scope: !878)
!880 = !DILocation(line: 426, column: 7, scope: !878)
!881 = !DILocation(line: 428, column: 7, scope: !878)
!882 = !DILocation(line: 431, column: 9, scope: !878)
!883 = !DILocation(line: 434, column: 11, scope: !835)
!884 = !{!885, !885, i64 0}
!885 = !{!"int", !811, i64 0}
!886 = !DILocation(line: 434, column: 8, scope: !835)
!887 = !DILocation(line: 435, column: 8, scope: !835)
!888 = !DILocation(line: 439, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !835, file: !3, line: 439, column: 7)
!890 = !DILocation(line: 439, column: 32, scope: !889)
!891 = !DILocation(line: 439, column: 22, scope: !889)
!892 = !DILocation(line: 442, column: 14, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !3, line: 440, column: 5)
!894 = !DILocation(line: 441, column: 7, scope: !893)
!895 = !DILocation(line: 444, column: 7, scope: !893)
!896 = !DILocation(line: 447, column: 8, scope: !897)
!897 = distinct !DILexicalBlock(scope: !835, file: !3, line: 447, column: 7)
!898 = !DILocation(line: 447, column: 25, scope: !897)
!899 = !DILocation(line: 447, column: 7, scope: !835)
!900 = !DILocation(line: 449, column: 20, scope: !901)
!901 = distinct !DILexicalBlock(scope: !897, file: !3, line: 448, column: 5)
!902 = !DILocation(line: 449, column: 50, scope: !901)
!903 = !DILocation(line: 449, column: 43, scope: !901)
!904 = !DILocation(line: 449, column: 7, scope: !901)
!905 = !DILocation(line: 450, column: 11, scope: !901)
!906 = !DILocation(line: 451, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !901, file: !3, line: 450, column: 11)
!908 = !DILocation(line: 454, column: 7, scope: !901)
!909 = !DILocation(line: 457, column: 7, scope: !835)
!910 = !DILocation(line: 462, column: 11, scope: !911)
!911 = distinct !DILexicalBlock(scope: !847, file: !3, line: 461, column: 9)
!912 = !DILocation(line: 459, column: 19, scope: !847)
!913 = !DILocation(line: 463, column: 16, scope: !911)
!914 = !DILocation(line: 463, column: 27, scope: !911)
!915 = !DILocation(line: 463, column: 13, scope: !911)
!916 = !DILocation(line: 460, column: 16, scope: !847)
!917 = !DILocation(line: 460, column: 25, scope: !847)
!918 = !DILocation(line: 460, column: 7, scope: !847)
!919 = distinct !{!919, !918, !920}
!920 = !DILocation(line: 464, column: 9, scope: !847)
!921 = !DILocation(line: 469, column: 18, scope: !922)
!922 = distinct !DILexicalBlock(scope: !852, file: !3, line: 469, column: 11)
!923 = !DILocation(line: 469, column: 11, scope: !852)
!924 = !DILocation(line: 130, column: 11, scope: !925, inlinedAt: !930)
!925 = distinct !DISubprogram(name: "guess_shell_syntax", scope: !3, file: !3, line: 126, type: !926, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!5}
!928 = !{!929}
!929 = !DILocalVariable(name: "shell", scope: !925, file: !3, line: 128, type: !24)
!930 = distinct !DILocation(line: 471, column: 20, scope: !931)
!931 = distinct !DILexicalBlock(scope: !922, file: !3, line: 470, column: 9)
!932 = !DILocation(line: 128, column: 9, scope: !925, inlinedAt: !930)
!933 = !DILocation(line: 131, column: 13, scope: !934, inlinedAt: !930)
!934 = distinct !DILexicalBlock(scope: !925, file: !3, line: 131, column: 7)
!935 = !DILocation(line: 131, column: 21, scope: !934, inlinedAt: !930)
!936 = !DILocation(line: 131, column: 24, scope: !934, inlinedAt: !930)
!937 = !{!811, !811, i64 0}
!938 = !DILocation(line: 131, column: 31, scope: !934, inlinedAt: !930)
!939 = !DILocation(line: 131, column: 7, scope: !925, inlinedAt: !930)
!940 = !DILocation(line: 134, column: 11, scope: !925, inlinedAt: !930)
!941 = !DILocation(line: 136, column: 7, scope: !942, inlinedAt: !930)
!942 = distinct !DILexicalBlock(scope: !925, file: !3, line: 136, column: 7)
!943 = !DILocation(line: 136, column: 28, scope: !942, inlinedAt: !930)
!944 = !DILocation(line: 136, column: 31, scope: !942, inlinedAt: !930)
!945 = !DILocation(line: 136, column: 7, scope: !925, inlinedAt: !930)
!946 = !DILocation(line: 474, column: 15, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 473, column: 13)
!948 = distinct !DILexicalBlock(scope: !931, file: !3, line: 472, column: 15)
!949 = !DILocation(line: 479, column: 7, scope: !852)
!950 = !DILocation(line: 480, column: 16, scope: !951)
!951 = distinct !DILexicalBlock(scope: !852, file: !3, line: 480, column: 11)
!952 = !DILocation(line: 480, column: 11, scope: !852)
!953 = !DILocation(line: 481, column: 14, scope: !951)
!954 = !DILocation(line: 485, column: 11, scope: !852)
!955 = !DILocation(line: 483, column: 29, scope: !951)
!956 = !DILocalVariable(name: "filename", arg: 1, scope: !957, file: !3, line: 374, type: !78)
!957 = distinct !DISubprogram(name: "dc_parse_file", scope: !3, file: !3, line: 374, type: !958, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !960)
!958 = !DISubroutineType(types: !959)
!959 = !{!14, !78}
!960 = !{!956, !961}
!961 = !DILocalVariable(name: "ok", scope: !957, file: !3, line: 376, type: !14)
!962 = !DILocation(line: 374, column: 28, scope: !957, inlinedAt: !963)
!963 = distinct !DILocation(line: 483, column: 14, scope: !951)
!964 = !DILocation(line: 378, column: 9, scope: !965, inlinedAt: !963)
!965 = distinct !DILexicalBlock(scope: !957, file: !3, line: 378, column: 7)
!966 = !DILocation(line: 378, column: 31, scope: !965, inlinedAt: !963)
!967 = !DILocation(line: 378, column: 58, scope: !965, inlinedAt: !963)
!968 = !DILocation(line: 378, column: 34, scope: !965, inlinedAt: !963)
!969 = !DILocation(line: 378, column: 65, scope: !965, inlinedAt: !963)
!970 = !DILocation(line: 378, column: 7, scope: !957, inlinedAt: !963)
!971 = !DILocation(line: 380, column: 17, scope: !972, inlinedAt: !963)
!972 = distinct !DILexicalBlock(scope: !965, file: !3, line: 379, column: 5)
!973 = !DILocation(line: 380, column: 30, scope: !972, inlinedAt: !963)
!974 = !DILocation(line: 380, column: 7, scope: !972, inlinedAt: !963)
!975 = !DILocation(line: 381, column: 7, scope: !972, inlinedAt: !963)
!976 = !DILocation(line: 384, column: 25, scope: !957, inlinedAt: !963)
!977 = !DILocation(line: 384, column: 8, scope: !957, inlinedAt: !963)
!978 = !DILocation(line: 386, column: 15, scope: !979, inlinedAt: !963)
!979 = distinct !DILexicalBlock(scope: !957, file: !3, line: 386, column: 7)
!980 = !DILocation(line: 386, column: 7, scope: !979, inlinedAt: !963)
!981 = !DILocation(line: 386, column: 22, scope: !979, inlinedAt: !963)
!982 = !DILocation(line: 386, column: 7, scope: !957, inlinedAt: !963)
!983 = !DILocation(line: 388, column: 17, scope: !984, inlinedAt: !963)
!984 = distinct !DILexicalBlock(scope: !979, file: !3, line: 387, column: 5)
!985 = !DILocation(line: 388, column: 30, scope: !984, inlinedAt: !963)
!986 = !DILocation(line: 388, column: 7, scope: !984, inlinedAt: !963)
!987 = !DILocation(line: 389, column: 7, scope: !984, inlinedAt: !963)
!988 = !DILocation(line: 487, column: 24, scope: !854)
!989 = !{!990, !810, i64 24}
!990 = !{!"obstack", !991, i64 0, !810, i64 8, !810, i64 16, !810, i64 24, !810, i64 32, !811, i64 40, !991, i64 48, !811, i64 56, !811, i64 64, !810, i64 72, !885, i64 80, !885, i64 80, !885, i64 80}
!991 = !{!"long", !811, i64 0}
!992 = !{!990, !810, i64 16}
!993 = !DILocation(line: 487, column: 18, scope: !850)
!994 = !DILocation(line: 488, column: 21, scope: !857)
!995 = !DILocation(line: 488, column: 21, scope: !996)
!996 = distinct !DILexicalBlock(scope: !857, file: !3, line: 488, column: 21)
!997 = !{!990, !991, i64 48}
!998 = !DILocation(line: 488, column: 21, scope: !999)
!999 = distinct !DILexicalBlock(scope: !857, file: !3, line: 488, column: 21)
!1000 = !{!990, !810, i64 8}
!1001 = !{!990, !810, i64 32}
!1002 = !DILocation(line: 488, column: 17, scope: !850)
!1003 = !DILocation(line: 492, column: 22, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !850, file: !3, line: 492, column: 15)
!1005 = !DILocation(line: 492, column: 15, scope: !850)
!1006 = !DILocation(line: 490, column: 23, scope: !850)
!1007 = !DILocation(line: 489, column: 23, scope: !850)
!1008 = !DILocation(line: 502, column: 11, scope: !850)
!1009 = !DILocation(line: 503, column: 11, scope: !850)
!1010 = !DILocation(line: 504, column: 11, scope: !850)
!1011 = !DILocation(line: 505, column: 9, scope: !850)
!1012 = !DILocation(line: 509, column: 1, scope: !835)
!1013 = !DILocation(line: 239, column: 24, scope: !11)
!1014 = !DILocation(line: 239, column: 40, scope: !11)
!1015 = !DILocation(line: 241, column: 10, scope: !11)
!1016 = !DILocation(line: 243, column: 3, scope: !11)
!1017 = !DILocation(line: 243, column: 9, scope: !11)
!1018 = !DILocation(line: 244, column: 3, scope: !11)
!1019 = !DILocation(line: 244, column: 10, scope: !11)
!1020 = !{!991, !991, i64 0}
!1021 = !DILocation(line: 247, column: 8, scope: !11)
!1022 = !DILocation(line: 250, column: 58, scope: !11)
!1023 = !DILocation(line: 253, column: 10, scope: !11)
!1024 = !DILocation(line: 246, column: 15, scope: !11)
!1025 = !DILocation(line: 254, column: 12, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !11, file: !3, line: 254, column: 7)
!1027 = !DILocation(line: 254, column: 20, scope: !1026)
!1028 = !DILocation(line: 254, column: 23, scope: !1026)
!1029 = !DILocation(line: 254, column: 29, scope: !1026)
!1030 = !DILocation(line: 254, column: 7, scope: !11)
!1031 = !DILocation(line: 255, column: 5, scope: !1026)
!1032 = !DILocation(line: 257, column: 3, scope: !11)
!1033 = !DILocation(line: 262, column: 7, scope: !92)
!1034 = !DILocation(line: 242, column: 15, scope: !11)
!1035 = !DILocation(line: 264, column: 11, scope: !92)
!1036 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1037, file: !1038, line: 115, type: !838)
!1037 = distinct !DISubprogram(name: "getline", scope: !1038, file: !1038, line: 115, type: !1039, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1042)
!1038 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!1041, !838, !763, !15}
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !49, line: 181, baseType: !50)
!1042 = !{!1036, !1043, !1044}
!1043 = !DILocalVariable(name: "__n", arg: 2, scope: !1037, file: !1038, line: 115, type: !763)
!1044 = !DILocalVariable(name: "__stream", arg: 3, scope: !1037, file: !1038, line: 115, type: !15)
!1045 = !DILocation(line: 115, column: 17, scope: !1037, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 266, column: 15, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 266, column: 15)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 265, column: 9)
!1049 = distinct !DILexicalBlock(scope: !92, file: !3, line: 264, column: 11)
!1050 = !DILocation(line: 115, column: 36, scope: !1037, inlinedAt: !1046)
!1051 = !DILocation(line: 115, column: 47, scope: !1037, inlinedAt: !1046)
!1052 = !DILocation(line: 117, column: 10, scope: !1037, inlinedAt: !1046)
!1053 = !DILocation(line: 266, column: 59, scope: !1047)
!1054 = !DILocation(line: 266, column: 15, scope: !1048)
!1055 = !DILocation(line: 268, column: 15, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 267, column: 13)
!1057 = !DILocation(line: 269, column: 15, scope: !1056)
!1058 = !DILocation(line: 275, column: 27, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 275, column: 15)
!1060 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 274, column: 9)
!1061 = !DILocation(line: 275, column: 15, scope: !1060)
!1062 = !DILocation(line: 245, column: 15, scope: !11)
!1063 = !DILocation(line: 278, column: 26, scope: !1060)
!1064 = !DILocation(line: 278, column: 47, scope: !1060)
!1065 = !DILocation(line: 278, column: 23, scope: !1060)
!1066 = !DILocalVariable(name: "line", arg: 1, scope: !1067, file: !3, line: 143, type: !78)
!1067 = distinct !DISubprogram(name: "parse_line", scope: !3, file: !3, line: 143, type: !1068, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1070)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !78, !838, !838}
!1070 = !{!1066, !1071, !1072, !1073, !1074, !1075}
!1071 = !DILocalVariable(name: "keyword", arg: 2, scope: !1067, file: !3, line: 143, type: !838)
!1072 = !DILocalVariable(name: "arg", arg: 3, scope: !1067, file: !3, line: 143, type: !838)
!1073 = !DILocalVariable(name: "p", scope: !1067, file: !3, line: 145, type: !78)
!1074 = !DILocalVariable(name: "keyword_start", scope: !1067, file: !3, line: 146, type: !78)
!1075 = !DILocalVariable(name: "arg_start", scope: !1067, file: !3, line: 147, type: !78)
!1076 = !DILocation(line: 143, column: 25, scope: !1067, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 281, column: 7, scope: !92)
!1078 = !DILocation(line: 145, column: 15, scope: !1067, inlinedAt: !1077)
!1079 = !DILocation(line: 152, column: 18, scope: !1080, inlinedAt: !1077)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 152, column: 3)
!1081 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 152, column: 3)
!1082 = !DILocation(line: 152, column: 8, scope: !1081, inlinedAt: !1077)
!1083 = !{!1084, !1084, i64 0}
!1084 = !{!"short", !811, i64 0}
!1085 = !DILocation(line: 152, column: 3, scope: !1081, inlinedAt: !1077)
!1086 = !DILocation(line: 152, column: 43, scope: !1080, inlinedAt: !1077)
!1087 = distinct !{!1087, !1088, !1089}
!1088 = !DILocation(line: 152, column: 3, scope: !1081)
!1089 = !DILocation(line: 153, column: 5, scope: !1081)
!1090 = !DILocation(line: 156, column: 18, scope: !1091, inlinedAt: !1077)
!1091 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 156, column: 7)
!1092 = !DILocation(line: 163, column: 7, scope: !1093, inlinedAt: !1077)
!1093 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 162, column: 5)
!1094 = !DILocation(line: 161, column: 11, scope: !1067, inlinedAt: !1077)
!1095 = !DILocation(line: 161, column: 41, scope: !1067, inlinedAt: !1077)
!1096 = !DILocation(line: 161, column: 35, scope: !1067, inlinedAt: !1077)
!1097 = !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)
!1098 = distinct !{!1098, !1099, !1100}
!1099 = !DILocation(line: 161, column: 3, scope: !1067)
!1100 = !DILocation(line: 164, column: 5, scope: !1067)
!1101 = !DILocation(line: 166, column: 41, scope: !1067, inlinedAt: !1077)
!1102 = !DILocation(line: 166, column: 14, scope: !1067, inlinedAt: !1077)
!1103 = !DILocation(line: 167, column: 7, scope: !1104, inlinedAt: !1077)
!1104 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 167, column: 7)
!1105 = !DILocation(line: 167, column: 11, scope: !1104, inlinedAt: !1077)
!1106 = !DILocation(line: 167, column: 7, scope: !1067, inlinedAt: !1077)
!1107 = !DILocation(line: 170, column: 3, scope: !1067, inlinedAt: !1077)
!1108 = distinct !{!1108, !1109, !1110}
!1109 = !DILocation(line: 170, column: 3, scope: !1067)
!1110 = !DILocation(line: 174, column: 33, scope: !1067)
!1111 = !DILocation(line: 172, column: 7, scope: !1112, inlinedAt: !1077)
!1112 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 171, column: 5)
!1113 = !DILocation(line: 174, column: 10, scope: !1067, inlinedAt: !1077)
!1114 = !DILocation(line: 173, column: 5, scope: !1112, inlinedAt: !1077)
!1115 = !DILocation(line: 176, column: 18, scope: !1116, inlinedAt: !1077)
!1116 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 176, column: 7)
!1117 = !DILocation(line: 181, column: 3, scope: !1067, inlinedAt: !1077)
!1118 = !DILocation(line: 181, column: 10, scope: !1067, inlinedAt: !1077)
!1119 = !DILocation(line: 182, column: 5, scope: !1067, inlinedAt: !1077)
!1120 = distinct !{!1120, !1121, !1122}
!1121 = !DILocation(line: 181, column: 3, scope: !1067)
!1122 = !DILocation(line: 182, column: 7, scope: !1067)
!1123 = !DILocation(line: 184, column: 13, scope: !1124, inlinedAt: !1077)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 184, column: 3)
!1125 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 184, column: 3)
!1126 = !DILocation(line: 184, column: 3, scope: !1125, inlinedAt: !1077)
!1127 = !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)
!1128 = distinct !{!1128, !1129, !1130}
!1129 = !DILocation(line: 184, column: 3, scope: !1125)
!1130 = !DILocation(line: 185, column: 5, scope: !1125)
!1131 = !DILocation(line: 188, column: 33, scope: !1067, inlinedAt: !1077)
!1132 = !DILocation(line: 188, column: 10, scope: !1067, inlinedAt: !1077)
!1133 = !DILocation(line: 189, column: 1, scope: !1067, inlinedAt: !1077)
!1134 = !DILocation(line: 259, column: 13, scope: !92)
!1135 = !DILocation(line: 283, column: 17, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !92, file: !3, line: 283, column: 11)
!1137 = !DILocation(line: 283, column: 11, scope: !92)
!1138 = distinct !{!1138, !1032, !1139}
!1139 = !DILocation(line: 368, column: 5, scope: !11)
!1140 = !DILocation(line: 259, column: 21, scope: !92)
!1141 = !DILocation(line: 286, column: 15, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !92, file: !3, line: 286, column: 11)
!1143 = !DILocation(line: 286, column: 11, scope: !92)
!1144 = !DILocation(line: 288, column: 24, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 287, column: 9)
!1146 = !DILocation(line: 289, column: 18, scope: !1145)
!1147 = !DILocation(line: 288, column: 11, scope: !1145)
!1148 = !DILocation(line: 291, column: 11, scope: !1145)
!1149 = !DILocation(line: 292, column: 11, scope: !1145)
!1150 = !DILocation(line: 260, column: 12, scope: !92)
!1151 = !DILocation(line: 296, column: 11, scope: !102)
!1152 = !DILocation(line: 296, column: 40, scope: !102)
!1153 = !DILocation(line: 296, column: 11, scope: !92)
!1154 = !DILocation(line: 298, column: 15, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 298, column: 15)
!1156 = distinct !DILexicalBlock(scope: !102, file: !3, line: 297, column: 9)
!1157 = !DILocation(line: 298, column: 38, scope: !1155)
!1158 = !DILocation(line: 298, column: 15, scope: !1156)
!1159 = !DILocation(line: 300, column: 26, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 300, column: 20)
!1161 = !DILocation(line: 300, column: 20, scope: !1155)
!1162 = !DILocation(line: 305, column: 21, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !101, file: !3, line: 305, column: 15)
!1164 = !DILocation(line: 305, column: 15, scope: !101)
!1165 = !DILocation(line: 308, column: 21, scope: !100)
!1166 = !DILocation(line: 308, column: 15, scope: !101)
!1167 = !DILocation(line: 310, column: 19, scope: !98)
!1168 = !DILocation(line: 310, column: 19, scope: !99)
!1169 = !DILocation(line: 312, column: 19, scope: !96)
!1170 = !DILocation(line: 312, column: 19, scope: !155)
!1171 = !DILocation(line: 312, column: 19, scope: !156)
!1172 = !DILocation(line: 313, column: 19, scope: !97)
!1173 = !DILocation(line: 314, column: 19, scope: !160)
!1174 = !DILocation(line: 314, column: 19, scope: !162)
!1175 = !DILocation(line: 314, column: 19, scope: !163)
!1176 = !DILocation(line: 315, column: 19, scope: !97)
!1177 = !DILocation(line: 316, column: 19, scope: !165)
!1178 = !DILocation(line: 316, column: 19, scope: !167)
!1179 = !DILocation(line: 316, column: 19, scope: !168)
!1180 = !DILocation(line: 317, column: 17, scope: !97)
!1181 = !DILocation(line: 320, column: 19, scope: !171)
!1182 = !DILocation(line: 321, column: 19, scope: !170)
!1183 = !DILocation(line: 321, column: 19, scope: !174)
!1184 = !DILocation(line: 321, column: 19, scope: !175)
!1185 = !DILocation(line: 322, column: 19, scope: !171)
!1186 = !DILocation(line: 323, column: 19, scope: !177)
!1187 = !DILocation(line: 323, column: 19, scope: !179)
!1188 = !DILocation(line: 323, column: 19, scope: !180)
!1189 = !DILocation(line: 324, column: 17, scope: !171)
!1190 = !DILocation(line: 325, column: 24, scope: !183)
!1191 = !DILocation(line: 325, column: 56, scope: !183)
!1192 = !DILocation(line: 326, column: 24, scope: !183)
!1193 = !DILocation(line: 326, column: 27, scope: !183)
!1194 = !DILocation(line: 326, column: 57, scope: !183)
!1195 = !DILocation(line: 327, column: 24, scope: !183)
!1196 = !DILocation(line: 327, column: 27, scope: !183)
!1197 = !DILocation(line: 327, column: 60, scope: !183)
!1198 = !DILocation(line: 325, column: 24, scope: !172)
!1199 = !DILocation(line: 335, column: 31, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 335, column: 19)
!1201 = distinct !DILexicalBlock(scope: !182, file: !3, line: 335, column: 19)
!1202 = !DILocation(line: 335, column: 19, scope: !1201)
!1203 = distinct !{!1203, !1202, !1204}
!1204 = !DILocation(line: 337, column: 23, scope: !1201)
!1205 = !DILocation(line: 333, column: 23, scope: !182)
!1206 = !DILocation(line: 336, column: 25, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 336, column: 25)
!1208 = !DILocation(line: 336, column: 62, scope: !1207)
!1209 = !DILocation(line: 335, column: 55, scope: !1200)
!1210 = !DILocation(line: 336, column: 25, scope: !1200)
!1211 = !DILocation(line: 341, column: 23, scope: !185)
!1212 = !DILocation(line: 341, column: 23, scope: !190)
!1213 = !DILocation(line: 341, column: 23, scope: !191)
!1214 = !DILocation(line: 341, column: 23, scope: !193)
!1215 = !DILocation(line: 341, column: 23, scope: !195)
!1216 = !DILocation(line: 341, column: 23, scope: !196)
!1217 = !DILocation(line: 342, column: 23, scope: !198)
!1218 = !DILocation(line: 342, column: 23, scope: !200)
!1219 = !DILocation(line: 342, column: 23, scope: !201)
!1220 = !DILocation(line: 343, column: 23, scope: !187)
!1221 = !DILocation(line: 344, column: 23, scope: !203)
!1222 = !DILocation(line: 344, column: 23, scope: !205)
!1223 = !DILocation(line: 344, column: 23, scope: !206)
!1224 = !DILocation(line: 345, column: 21, scope: !187)
!1225 = !DILocation(line: 358, column: 49, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !92, file: !3, line: 358, column: 11)
!1227 = !DILocation(line: 358, column: 24, scope: !1226)
!1228 = !DILocation(line: 360, column: 24, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 359, column: 9)
!1230 = !DILocation(line: 361, column: 19, scope: !1229)
!1231 = !DILocation(line: 361, column: 30, scope: !1229)
!1232 = !DILocation(line: 361, column: 50, scope: !1229)
!1233 = !DILocation(line: 360, column: 11, scope: !1229)
!1234 = !DILocation(line: 364, column: 9, scope: !1229)
!1235 = !DILocation(line: 366, column: 7, scope: !92)
!1236 = !DILocation(line: 367, column: 7, scope: !92)
!1237 = !DILocation(line: 370, column: 10, scope: !11)
!1238 = !DILocation(line: 371, column: 1, scope: !11)
!1239 = !DILocation(line: 370, column: 3, scope: !11)
!1240 = distinct !DISubprogram(name: "append_quoted", scope: !3, file: !3, line: 195, type: !249, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1241)
!1241 = !{!1242, !1243, !1244, !1248, !1251, !1253, !1256, !1258, !1261, !1264, !1267, !1269}
!1242 = !DILocalVariable(name: "str", arg: 1, scope: !1240, file: !3, line: 195, type: !78)
!1243 = !DILocalVariable(name: "need_backslash", scope: !1240, file: !3, line: 197, type: !14)
!1244 = !DILocalVariable(name: "__o", scope: !1245, file: !3, line: 204, type: !103)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 204, column: 11)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 202, column: 9)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 200, column: 5)
!1248 = !DILocalVariable(name: "__o1", scope: !1249, file: !3, line: 204, type: !157)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 204, column: 11)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 204, column: 11)
!1251 = !DILocalVariable(name: "__o", scope: !1252, file: !3, line: 205, type: !103)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 205, column: 11)
!1253 = !DILocalVariable(name: "__o1", scope: !1254, file: !3, line: 205, type: !157)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 205, column: 11)
!1255 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 205, column: 11)
!1256 = !DILocalVariable(name: "__o", scope: !1257, file: !3, line: 206, type: !103)
!1257 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 206, column: 11)
!1258 = !DILocalVariable(name: "__o1", scope: !1259, file: !3, line: 206, type: !157)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 206, column: 11)
!1260 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 206, column: 11)
!1261 = !DILocalVariable(name: "__o", scope: !1262, file: !3, line: 218, type: !103)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 218, column: 13)
!1263 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 217, column: 15)
!1264 = !DILocalVariable(name: "__o1", scope: !1265, file: !3, line: 218, type: !157)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 218, column: 13)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 218, column: 13)
!1267 = !DILocalVariable(name: "__o", scope: !1268, file: !3, line: 226, type: !103)
!1268 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 226, column: 7)
!1269 = !DILocalVariable(name: "__o1", scope: !1270, file: !3, line: 226, type: !157)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 226, column: 7)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 226, column: 7)
!1272 = !DILocation(line: 195, column: 28, scope: !1240)
!1273 = !DILocation(line: 197, column: 8, scope: !1240)
!1274 = !DILocation(line: 199, column: 10, scope: !1240)
!1275 = !DILocation(line: 199, column: 15, scope: !1240)
!1276 = !DILocation(line: 199, column: 3, scope: !1240)
!1277 = !DILocation(line: 201, column: 7, scope: !1247)
!1278 = !DILocation(line: 204, column: 11, scope: !1245)
!1279 = !DILocation(line: 204, column: 11, scope: !1249)
!1280 = !DILocation(line: 204, column: 11, scope: !1250)
!1281 = !DILocation(line: 205, column: 11, scope: !1252)
!1282 = !DILocation(line: 205, column: 11, scope: !1254)
!1283 = !DILocation(line: 205, column: 11, scope: !1255)
!1284 = !DILocation(line: 206, column: 11, scope: !1257)
!1285 = !DILocation(line: 206, column: 11, scope: !1259)
!1286 = !DILocation(line: 206, column: 11, scope: !1260)
!1287 = !DILocation(line: 208, column: 11, scope: !1246)
!1288 = !DILocation(line: 212, column: 29, scope: !1246)
!1289 = !DILocation(line: 212, column: 26, scope: !1246)
!1290 = !DILocation(line: 213, column: 11, scope: !1246)
!1291 = !DILocation(line: 217, column: 15, scope: !1263)
!1292 = !DILocation(line: 217, column: 15, scope: !1246)
!1293 = !DILocation(line: 218, column: 13, scope: !1262)
!1294 = !DILocation(line: 218, column: 13, scope: !1265)
!1295 = !DILocation(line: 218, column: 13, scope: !1266)
!1296 = !DILocation(line: 218, column: 13, scope: !1263)
!1297 = !DILocation(line: 226, column: 7, scope: !1268)
!1298 = !DILocation(line: 226, column: 7, scope: !1270)
!1299 = !DILocation(line: 226, column: 7, scope: !1271)
!1300 = !DILocation(line: 227, column: 7, scope: !1247)
!1301 = distinct !{!1301, !1276, !1302}
!1302 = !DILocation(line: 228, column: 5, scope: !1240)
!1303 = !DILocation(line: 229, column: 1, scope: !1240)
!1304 = distinct !DISubprogram(name: "c_strcasecmp", scope: !1305, file: !1305, line: 27, type: !1306, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !737, variables: !1308)
!1305 = !DIFile(filename: "lib/c-strcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!22, !78, !78}
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314}
!1309 = !DILocalVariable(name: "s1", arg: 1, scope: !1304, file: !1305, line: 27, type: !78)
!1310 = !DILocalVariable(name: "s2", arg: 2, scope: !1304, file: !1305, line: 27, type: !78)
!1311 = !DILocalVariable(name: "p1", scope: !1304, file: !1305, line: 29, type: !740)
!1312 = !DILocalVariable(name: "p2", scope: !1304, file: !1305, line: 30, type: !740)
!1313 = !DILocalVariable(name: "c1", scope: !1304, file: !1305, line: 31, type: !733)
!1314 = !DILocalVariable(name: "c2", scope: !1304, file: !1305, line: 31, type: !733)
!1315 = !DILocation(line: 27, column: 27, scope: !1304)
!1316 = !DILocation(line: 27, column: 43, scope: !1304)
!1317 = !DILocation(line: 29, column: 33, scope: !1304)
!1318 = !DILocation(line: 30, column: 33, scope: !1304)
!1319 = !DILocation(line: 33, column: 10, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1304, file: !1305, line: 33, column: 7)
!1321 = !DILocation(line: 33, column: 7, scope: !1304)
!1322 = distinct !{!1322, !1323, !1324}
!1323 = !DILocation(line: 36, column: 3, scope: !1304)
!1324 = !DILocation(line: 47, column: 18, scope: !1304)
!1325 = !DILocation(line: 38, column: 23, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1304, file: !1305, line: 37, column: 5)
!1327 = !DILocalVariable(name: "c", arg: 1, scope: !1328, file: !1329, line: 337, type: !22)
!1328 = distinct !DISubprogram(name: "c_tolower", scope: !1329, file: !1329, line: 337, type: !1330, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !737, variables: !1332)
!1329 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!22, !22}
!1332 = !{!1327}
!1333 = !DILocation(line: 337, column: 16, scope: !1328, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 38, column: 12, scope: !1326)
!1335 = !DILocation(line: 339, column: 3, scope: !1328, inlinedAt: !1334)
!1336 = !DILocation(line: 342, column: 22, scope: !1337, inlinedAt: !1334)
!1337 = distinct !DILexicalBlock(scope: !1328, file: !1329, line: 340, column: 5)
!1338 = !DILocation(line: 39, column: 23, scope: !1326)
!1339 = !DILocation(line: 337, column: 16, scope: !1328, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 39, column: 12, scope: !1326)
!1341 = !DILocation(line: 339, column: 3, scope: !1328, inlinedAt: !1340)
!1342 = !DILocation(line: 342, column: 22, scope: !1337, inlinedAt: !1340)
!1343 = !DILocation(line: 41, column: 11, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1326, file: !1305, line: 41, column: 11)
!1345 = !DILocation(line: 41, column: 14, scope: !1344)
!1346 = !DILocation(line: 41, column: 11, scope: !1326)
!1347 = !DILocation(line: 50, column: 17, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1304, file: !1305, line: 49, column: 7)
!1349 = !DILocation(line: 44, column: 7, scope: !1326)
!1350 = !DILocation(line: 45, column: 7, scope: !1326)
!1351 = !DILocation(line: 47, column: 16, scope: !1304)
!1352 = !DILocation(line: 47, column: 13, scope: !1304)
!1353 = !DILocation(line: 46, column: 5, scope: !1326)
!1354 = !DILocation(line: 50, column: 15, scope: !1348)
!1355 = !DILocation(line: 50, column: 5, scope: !1348)
!1356 = !DILocation(line: 56, column: 1, scope: !1304)
!1357 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !304, file: !304, line: 41, type: !249, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !299, variables: !1358)
!1358 = !{!1359}
!1359 = !DILocalVariable(name: "file", arg: 1, scope: !1357, file: !304, line: 41, type: !78)
!1360 = !DILocation(line: 41, column: 41, scope: !1357)
!1361 = !DILocation(line: 43, column: 13, scope: !1357)
!1362 = !DILocation(line: 44, column: 1, scope: !1357)
!1363 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !304, file: !304, line: 78, type: !1364, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !299, variables: !1366)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !14}
!1366 = !{!1367}
!1367 = !DILocalVariable(name: "ignore", arg: 1, scope: !1363, file: !304, line: 78, type: !14)
!1368 = !DILocation(line: 78, column: 37, scope: !1363)
!1369 = !DILocation(line: 80, column: 16, scope: !1363)
!1370 = !{!1371, !1371, i64 0}
!1371 = !{!"_Bool", !811, i64 0}
!1372 = !DILocation(line: 81, column: 1, scope: !1363)
!1373 = distinct !DISubprogram(name: "close_stdout", scope: !304, file: !304, line: 107, type: !386, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !299, variables: !1374)
!1374 = !{!1375}
!1375 = !DILocalVariable(name: "write_error", scope: !1376, file: !304, line: 112, type: !78)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !304, line: 111, column: 5)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !304, line: 109, column: 7)
!1378 = !DILocation(line: 109, column: 21, scope: !1377)
!1379 = !DILocation(line: 109, column: 7, scope: !1377)
!1380 = !DILocation(line: 109, column: 29, scope: !1377)
!1381 = !DILocation(line: 110, column: 7, scope: !1377)
!1382 = !DILocation(line: 110, column: 12, scope: !1377)
!1383 = !{i8 0, i8 2}
!1384 = !DILocation(line: 114, column: 19, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1376, file: !304, line: 113, column: 11)
!1386 = !DILocation(line: 110, column: 25, scope: !1377)
!1387 = !DILocation(line: 110, column: 28, scope: !1377)
!1388 = !DILocation(line: 110, column: 34, scope: !1377)
!1389 = !DILocation(line: 109, column: 7, scope: !1373)
!1390 = !DILocation(line: 112, column: 33, scope: !1376)
!1391 = !DILocation(line: 112, column: 19, scope: !1376)
!1392 = !DILocation(line: 113, column: 11, scope: !1385)
!1393 = !DILocation(line: 113, column: 11, scope: !1376)
!1394 = !DILocation(line: 114, column: 36, scope: !1385)
!1395 = !DILocation(line: 114, column: 9, scope: !1385)
!1396 = !DILocation(line: 117, column: 9, scope: !1385)
!1397 = !DILocation(line: 119, column: 14, scope: !1376)
!1398 = !DILocation(line: 119, column: 7, scope: !1376)
!1399 = !DILocation(line: 122, column: 22, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1373, file: !304, line: 122, column: 8)
!1401 = !DILocation(line: 122, column: 8, scope: !1400)
!1402 = !DILocation(line: 122, column: 30, scope: !1400)
!1403 = !DILocation(line: 122, column: 8, scope: !1373)
!1404 = !DILocation(line: 123, column: 13, scope: !1400)
!1405 = !DILocation(line: 123, column: 6, scope: !1400)
!1406 = !DILocation(line: 124, column: 1, scope: !1373)
!1407 = distinct !DISubprogram(name: "last_component", scope: !1408, file: !1408, line: 30, type: !1409, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !742, variables: !1411)
!1408 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!24, !78}
!1411 = !{!1412, !1413, !1414, !1415}
!1412 = !DILocalVariable(name: "name", arg: 1, scope: !1407, file: !1408, line: 30, type: !78)
!1413 = !DILocalVariable(name: "base", scope: !1407, file: !1408, line: 32, type: !78)
!1414 = !DILocalVariable(name: "p", scope: !1407, file: !1408, line: 33, type: !78)
!1415 = !DILocalVariable(name: "saw_slash", scope: !1407, file: !1408, line: 34, type: !14)
!1416 = !DILocation(line: 30, column: 29, scope: !1407)
!1417 = !DILocation(line: 32, column: 15, scope: !1407)
!1418 = !DILocation(line: 34, column: 8, scope: !1407)
!1419 = !DILocation(line: 36, column: 3, scope: !1407)
!1420 = !DILocation(line: 36, column: 10, scope: !1407)
!1421 = !DILocation(line: 37, column: 9, scope: !1407)
!1422 = distinct !{!1422, !1419, !1421}
!1423 = !DILocation(line: 39, column: 3, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1407, file: !1408, line: 39, column: 3)
!1425 = !DILocation(line: 39, column: 18, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1424, file: !1408, line: 39, column: 3)
!1427 = !DILocation(line: 33, column: 15, scope: !1407)
!1428 = !DILocation(line: 43, column: 16, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !1408, line: 43, column: 16)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !1408, line: 41, column: 11)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !1408, line: 40, column: 5)
!1432 = !DILocation(line: 43, column: 16, scope: !1430)
!1433 = !DILocation(line: 39, column: 23, scope: !1426)
!1434 = !DILocation(line: 39, column: 3, scope: !1426)
!1435 = distinct !{!1435, !1423, !1436}
!1436 = !DILocation(line: 48, column: 5, scope: !1424)
!1437 = !DILocation(line: 50, column: 3, scope: !1407)
!1438 = distinct !DISubprogram(name: "base_len", scope: !1408, file: !1408, line: 58, type: !1439, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !742, variables: !1441)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!70, !78}
!1441 = !{!1442, !1443, !1444}
!1442 = !DILocalVariable(name: "name", arg: 1, scope: !1438, file: !1408, line: 58, type: !78)
!1443 = !DILocalVariable(name: "len", scope: !1438, file: !1408, line: 60, type: !70)
!1444 = !DILocalVariable(name: "prefix_len", scope: !1438, file: !1408, line: 61, type: !70)
!1445 = !DILocation(line: 58, column: 23, scope: !1438)
!1446 = !DILocation(line: 61, column: 10, scope: !1438)
!1447 = !DILocation(line: 63, column: 14, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1438, file: !1408, line: 63, column: 3)
!1449 = !DILocation(line: 60, column: 10, scope: !1438)
!1450 = !DILocation(line: 63, column: 32, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1448, file: !1408, line: 63, column: 3)
!1452 = !DILocation(line: 63, column: 38, scope: !1451)
!1453 = !DILocation(line: 63, column: 41, scope: !1451)
!1454 = distinct !{!1454, !1455, !1456}
!1455 = !DILocation(line: 63, column: 3, scope: !1448)
!1456 = !DILocation(line: 64, column: 5, scope: !1448)
!1457 = !DILocation(line: 74, column: 3, scope: !1438)
!1458 = distinct !DISubprogram(name: "freopen_safer", scope: !1459, file: !1459, line: 54, type: !1460, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !745, variables: !1502)
!1459 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!1462, !78, !78, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 7, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1464, file: !19, line: 242, baseType: !22, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1464, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1464, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1464, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1464, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1464, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1464, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1464, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1464, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1464, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1464, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1464, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1464, file: !19, line: 260, baseType: !1479, size: 64, offset: 768)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !1481)
!1481 = !{!1482, !1483, !1485}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1480, file: !19, line: 157, baseType: !1479, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1480, file: !19, line: 158, baseType: !1484, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1480, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1464, file: !19, line: 262, baseType: !1484, size: 64, offset: 832)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1464, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1464, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1464, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1464, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1464, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1464, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1464, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1464, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1464, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1464, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1464, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1464, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1464, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1464, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1464, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1503 = !DILocalVariable(name: "name", arg: 1, scope: !1458, file: !1459, line: 54, type: !78)
!1504 = !DILocalVariable(name: "mode", arg: 2, scope: !1458, file: !1459, line: 54, type: !78)
!1505 = !DILocalVariable(name: "f", arg: 3, scope: !1458, file: !1459, line: 54, type: !1462)
!1506 = !DILocalVariable(name: "protect_in", scope: !1458, file: !1459, line: 62, type: !14)
!1507 = !DILocalVariable(name: "protect_out", scope: !1458, file: !1459, line: 63, type: !14)
!1508 = !DILocalVariable(name: "protect_err", scope: !1458, file: !1459, line: 64, type: !14)
!1509 = !DILocalVariable(name: "saved_errno", scope: !1458, file: !1459, line: 65, type: !22)
!1510 = !DILocation(line: 54, column: 28, scope: !1458)
!1511 = !DILocation(line: 54, column: 46, scope: !1458)
!1512 = !DILocation(line: 54, column: 58, scope: !1458)
!1513 = !DILocation(line: 62, column: 8, scope: !1458)
!1514 = !DILocation(line: 63, column: 8, scope: !1458)
!1515 = !DILocation(line: 64, column: 8, scope: !1458)
!1516 = !DILocation(line: 67, column: 11, scope: !1458)
!1517 = !DILocation(line: 67, column: 3, scope: !1458)
!1518 = !DILocation(line: 70, column: 11, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !1459, line: 70, column: 11)
!1520 = distinct !DILexicalBlock(scope: !1458, file: !1459, line: 68, column: 5)
!1521 = !DILocation(line: 70, column: 47, scope: !1519)
!1522 = !DILocation(line: 70, column: 11, scope: !1520)
!1523 = !DILocation(line: 74, column: 11, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !1459, line: 74, column: 11)
!1525 = !DILocation(line: 74, column: 47, scope: !1524)
!1526 = !DILocation(line: 74, column: 11, scope: !1520)
!1527 = !DILocation(line: 78, column: 11, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1520, file: !1459, line: 78, column: 11)
!1529 = !DILocation(line: 78, column: 45, scope: !1528)
!1530 = !DILocation(line: 85, column: 18, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1458, file: !1459, line: 85, column: 7)
!1532 = !DILocalVariable(name: "fd", arg: 1, scope: !1533, file: !1459, line: 32, type: !22)
!1533 = distinct !DISubprogram(name: "protect_fd", scope: !1459, file: !1459, line: 32, type: !1534, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !745, variables: !1536)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!14, !22}
!1536 = !{!1532, !1537}
!1537 = !DILocalVariable(name: "value", scope: !1533, file: !1459, line: 34, type: !22)
!1538 = !DILocation(line: 32, column: 17, scope: !1533, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 85, column: 22, scope: !1531)
!1540 = !DILocation(line: 34, column: 15, scope: !1533, inlinedAt: !1539)
!1541 = !DILocation(line: 34, column: 7, scope: !1533, inlinedAt: !1539)
!1542 = !DILocation(line: 35, column: 13, scope: !1543, inlinedAt: !1539)
!1543 = distinct !DILexicalBlock(scope: !1533, file: !1459, line: 35, column: 7)
!1544 = !DILocation(line: 35, column: 7, scope: !1533, inlinedAt: !1539)
!1545 = !DILocation(line: 37, column: 13, scope: !1546, inlinedAt: !1539)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !1459, line: 37, column: 11)
!1547 = distinct !DILexicalBlock(scope: !1543, file: !1459, line: 36, column: 5)
!1548 = !DILocation(line: 37, column: 11, scope: !1547, inlinedAt: !1539)
!1549 = !DILocation(line: 39, column: 11, scope: !1550, inlinedAt: !1539)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !1459, line: 38, column: 9)
!1551 = !DILocation(line: 40, column: 11, scope: !1550, inlinedAt: !1539)
!1552 = !DILocation(line: 40, column: 17, scope: !1550, inlinedAt: !1539)
!1553 = !DILocation(line: 41, column: 9, scope: !1550, inlinedAt: !1539)
!1554 = !DILocation(line: 87, column: 12, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1531, file: !1459, line: 87, column: 12)
!1556 = !DILocation(line: 87, column: 24, scope: !1555)
!1557 = !DILocation(line: 32, column: 17, scope: !1533, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 87, column: 28, scope: !1555)
!1559 = !DILocation(line: 34, column: 15, scope: !1533, inlinedAt: !1558)
!1560 = !DILocation(line: 34, column: 7, scope: !1533, inlinedAt: !1558)
!1561 = !DILocation(line: 35, column: 13, scope: !1543, inlinedAt: !1558)
!1562 = !DILocation(line: 35, column: 7, scope: !1533, inlinedAt: !1558)
!1563 = !DILocation(line: 37, column: 13, scope: !1546, inlinedAt: !1558)
!1564 = !DILocation(line: 37, column: 11, scope: !1547, inlinedAt: !1558)
!1565 = !DILocation(line: 39, column: 11, scope: !1550, inlinedAt: !1558)
!1566 = !DILocation(line: 40, column: 11, scope: !1550, inlinedAt: !1558)
!1567 = !DILocation(line: 40, column: 17, scope: !1550, inlinedAt: !1558)
!1568 = !DILocation(line: 41, column: 9, scope: !1550, inlinedAt: !1558)
!1569 = !DILocation(line: 89, column: 12, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1555, file: !1459, line: 89, column: 12)
!1571 = !DILocation(line: 89, column: 24, scope: !1570)
!1572 = !DILocation(line: 32, column: 17, scope: !1533, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 89, column: 28, scope: !1570)
!1574 = !DILocation(line: 34, column: 15, scope: !1533, inlinedAt: !1573)
!1575 = !DILocation(line: 34, column: 7, scope: !1533, inlinedAt: !1573)
!1576 = !DILocation(line: 35, column: 13, scope: !1543, inlinedAt: !1573)
!1577 = !DILocation(line: 35, column: 7, scope: !1533, inlinedAt: !1573)
!1578 = !DILocation(line: 37, column: 13, scope: !1546, inlinedAt: !1573)
!1579 = !DILocation(line: 37, column: 11, scope: !1547, inlinedAt: !1573)
!1580 = !DILocation(line: 39, column: 11, scope: !1550, inlinedAt: !1573)
!1581 = !DILocation(line: 40, column: 11, scope: !1550, inlinedAt: !1573)
!1582 = !DILocation(line: 40, column: 17, scope: !1550, inlinedAt: !1573)
!1583 = !DILocation(line: 41, column: 9, scope: !1550, inlinedAt: !1573)
!1584 = !DILocation(line: 92, column: 9, scope: !1570)
!1585 = !DILocation(line: 93, column: 17, scope: !1458)
!1586 = !DILocation(line: 65, column: 7, scope: !1458)
!1587 = !DILocation(line: 94, column: 7, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1458, file: !1459, line: 94, column: 7)
!1589 = !DILocation(line: 94, column: 7, scope: !1458)
!1590 = !DILocation(line: 95, column: 5, scope: !1588)
!1591 = !DILocation(line: 96, column: 7, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1458, file: !1459, line: 96, column: 7)
!1593 = !DILocation(line: 96, column: 7, scope: !1458)
!1594 = !DILocation(line: 97, column: 5, scope: !1592)
!1595 = !DILocation(line: 98, column: 7, scope: !1458)
!1596 = !DILocation(line: 99, column: 5, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1458, file: !1459, line: 98, column: 7)
!1598 = !DILocation(line: 100, column: 8, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1458, file: !1459, line: 100, column: 7)
!1600 = !DILocation(line: 100, column: 7, scope: !1458)
!1601 = !DILocation(line: 101, column: 11, scope: !1599)
!1602 = !DILocation(line: 101, column: 5, scope: !1599)
!1603 = !DILocation(line: 102, column: 3, scope: !1458)
!1604 = distinct !DISubprogram(name: "set_program_name", scope: !318, file: !318, line: 39, type: !249, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !314, variables: !1605)
!1605 = !{!1606, !1607, !1608}
!1606 = !DILocalVariable(name: "argv0", arg: 1, scope: !1604, file: !318, line: 39, type: !78)
!1607 = !DILocalVariable(name: "slash", scope: !1604, file: !318, line: 46, type: !78)
!1608 = !DILocalVariable(name: "base", scope: !1604, file: !318, line: 47, type: !78)
!1609 = !DILocation(line: 39, column: 31, scope: !1604)
!1610 = !DILocation(line: 51, column: 13, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1604, file: !318, line: 51, column: 7)
!1612 = !DILocation(line: 51, column: 7, scope: !1604)
!1613 = !DILocation(line: 55, column: 14, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1611, file: !318, line: 52, column: 5)
!1615 = !DILocation(line: 54, column: 7, scope: !1614)
!1616 = !DILocation(line: 56, column: 7, scope: !1614)
!1617 = !DILocation(line: 59, column: 11, scope: !1604)
!1618 = !DILocation(line: 46, column: 15, scope: !1604)
!1619 = !DILocation(line: 60, column: 17, scope: !1604)
!1620 = !DILocation(line: 60, column: 33, scope: !1604)
!1621 = !DILocation(line: 60, column: 11, scope: !1604)
!1622 = !DILocation(line: 47, column: 15, scope: !1604)
!1623 = !DILocation(line: 61, column: 12, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1604, file: !318, line: 61, column: 7)
!1625 = !DILocation(line: 61, column: 20, scope: !1624)
!1626 = !DILocation(line: 61, column: 25, scope: !1624)
!1627 = !DILocation(line: 61, column: 42, scope: !1624)
!1628 = !DILocation(line: 61, column: 28, scope: !1624)
!1629 = !DILocation(line: 61, column: 61, scope: !1624)
!1630 = !DILocation(line: 61, column: 7, scope: !1604)
!1631 = !DILocation(line: 64, column: 11, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !318, line: 64, column: 11)
!1633 = distinct !DILexicalBlock(scope: !1624, file: !318, line: 62, column: 5)
!1634 = !DILocation(line: 64, column: 36, scope: !1632)
!1635 = !DILocation(line: 64, column: 11, scope: !1633)
!1636 = !DILocation(line: 66, column: 24, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1632, file: !318, line: 65, column: 9)
!1638 = !DILocation(line: 70, column: 41, scope: !1637)
!1639 = !DILocation(line: 72, column: 9, scope: !1637)
!1640 = !DILocation(line: 84, column: 16, scope: !1604)
!1641 = !DILocation(line: 90, column: 27, scope: !1604)
!1642 = !DILocation(line: 92, column: 1, scope: !1604)
!1643 = distinct !DISubprogram(name: "clone_quoting_options", scope: !333, file: !333, line: 114, type: !1644, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !1647)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!1646, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1647 = !{!1648, !1649, !1650}
!1648 = !DILocalVariable(name: "o", arg: 1, scope: !1643, file: !333, line: 114, type: !1646)
!1649 = !DILocalVariable(name: "e", scope: !1643, file: !333, line: 116, type: !22)
!1650 = !DILocalVariable(name: "p", scope: !1643, file: !333, line: 117, type: !1646)
!1651 = !DILocation(line: 114, column: 48, scope: !1643)
!1652 = !DILocation(line: 116, column: 11, scope: !1643)
!1653 = !DILocation(line: 116, column: 7, scope: !1643)
!1654 = !DILocation(line: 117, column: 40, scope: !1643)
!1655 = !DILocation(line: 117, column: 31, scope: !1643)
!1656 = !DILocation(line: 117, column: 27, scope: !1643)
!1657 = !DILocation(line: 119, column: 9, scope: !1643)
!1658 = !DILocation(line: 120, column: 3, scope: !1643)
!1659 = distinct !DISubprogram(name: "get_quoting_style", scope: !333, file: !333, line: 125, type: !1660, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !1664)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!212, !1662}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!1664 = !{!1665}
!1665 = !DILocalVariable(name: "o", arg: 1, scope: !1659, file: !333, line: 125, type: !1662)
!1666 = !DILocation(line: 125, column: 50, scope: !1659)
!1667 = !DILocation(line: 127, column: 11, scope: !1659)
!1668 = !DILocation(line: 127, column: 46, scope: !1659)
!1669 = !{!1670, !811, i64 0}
!1670 = !{!"quoting_options", !811, i64 0, !885, i64 4, !811, i64 8, !810, i64 40, !810, i64 48}
!1671 = !DILocation(line: 127, column: 3, scope: !1659)
!1672 = distinct !DISubprogram(name: "set_quoting_style", scope: !333, file: !333, line: 133, type: !1673, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !1675)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{null, !1646, !212}
!1675 = !{!1676, !1677}
!1676 = !DILocalVariable(name: "o", arg: 1, scope: !1672, file: !333, line: 133, type: !1646)
!1677 = !DILocalVariable(name: "s", arg: 2, scope: !1672, file: !333, line: 133, type: !212)
!1678 = !DILocation(line: 133, column: 44, scope: !1672)
!1679 = !DILocation(line: 133, column: 66, scope: !1672)
!1680 = !DILocation(line: 135, column: 4, scope: !1672)
!1681 = !DILocation(line: 135, column: 39, scope: !1672)
!1682 = !DILocation(line: 135, column: 45, scope: !1672)
!1683 = !DILocation(line: 136, column: 1, scope: !1672)
!1684 = distinct !DISubprogram(name: "set_char_quoting", scope: !333, file: !333, line: 144, type: !1685, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !1687)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!22, !1646, !25, !22}
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1694, !1695}
!1688 = !DILocalVariable(name: "o", arg: 1, scope: !1684, file: !333, line: 144, type: !1646)
!1689 = !DILocalVariable(name: "c", arg: 2, scope: !1684, file: !333, line: 144, type: !25)
!1690 = !DILocalVariable(name: "i", arg: 3, scope: !1684, file: !333, line: 144, type: !22)
!1691 = !DILocalVariable(name: "uc", scope: !1684, file: !333, line: 146, type: !733)
!1692 = !DILocalVariable(name: "p", scope: !1684, file: !333, line: 147, type: !1693)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!1694 = !DILocalVariable(name: "shift", scope: !1684, file: !333, line: 149, type: !22)
!1695 = !DILocalVariable(name: "r", scope: !1684, file: !333, line: 150, type: !22)
!1696 = !DILocation(line: 144, column: 43, scope: !1684)
!1697 = !DILocation(line: 144, column: 51, scope: !1684)
!1698 = !DILocation(line: 144, column: 58, scope: !1684)
!1699 = !DILocation(line: 146, column: 17, scope: !1684)
!1700 = !DILocation(line: 148, column: 6, scope: !1684)
!1701 = !DILocation(line: 148, column: 62, scope: !1684)
!1702 = !DILocation(line: 148, column: 57, scope: !1684)
!1703 = !DILocation(line: 147, column: 17, scope: !1684)
!1704 = !DILocation(line: 149, column: 18, scope: !1684)
!1705 = !DILocation(line: 149, column: 15, scope: !1684)
!1706 = !DILocation(line: 149, column: 7, scope: !1684)
!1707 = !DILocation(line: 150, column: 12, scope: !1684)
!1708 = !DILocation(line: 150, column: 15, scope: !1684)
!1709 = !DILocation(line: 150, column: 25, scope: !1684)
!1710 = !DILocation(line: 150, column: 7, scope: !1684)
!1711 = !DILocation(line: 151, column: 13, scope: !1684)
!1712 = !DILocation(line: 151, column: 18, scope: !1684)
!1713 = !DILocation(line: 151, column: 23, scope: !1684)
!1714 = !DILocation(line: 151, column: 6, scope: !1684)
!1715 = !DILocation(line: 152, column: 3, scope: !1684)
!1716 = distinct !DISubprogram(name: "set_quoting_flags", scope: !333, file: !333, line: 160, type: !1717, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!22, !1646, !22}
!1719 = !{!1720, !1721, !1722}
!1720 = !DILocalVariable(name: "o", arg: 1, scope: !1716, file: !333, line: 160, type: !1646)
!1721 = !DILocalVariable(name: "i", arg: 2, scope: !1716, file: !333, line: 160, type: !22)
!1722 = !DILocalVariable(name: "r", scope: !1716, file: !333, line: 162, type: !22)
!1723 = !DILocation(line: 160, column: 44, scope: !1716)
!1724 = !DILocation(line: 160, column: 51, scope: !1716)
!1725 = !DILocation(line: 163, column: 8, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1716, file: !333, line: 163, column: 7)
!1727 = !DILocation(line: 163, column: 7, scope: !1716)
!1728 = !DILocation(line: 165, column: 10, scope: !1716)
!1729 = !{!1670, !885, i64 4}
!1730 = !DILocation(line: 162, column: 7, scope: !1716)
!1731 = !DILocation(line: 166, column: 12, scope: !1716)
!1732 = !DILocation(line: 167, column: 3, scope: !1716)
!1733 = distinct !DISubprogram(name: "set_custom_quoting", scope: !333, file: !333, line: 171, type: !1734, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !1736)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !1646, !78, !78}
!1736 = !{!1737, !1738, !1739}
!1737 = !DILocalVariable(name: "o", arg: 1, scope: !1733, file: !333, line: 171, type: !1646)
!1738 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1733, file: !333, line: 172, type: !78)
!1739 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1733, file: !333, line: 172, type: !78)
!1740 = !DILocation(line: 171, column: 45, scope: !1733)
!1741 = !DILocation(line: 172, column: 33, scope: !1733)
!1742 = !DILocation(line: 172, column: 57, scope: !1733)
!1743 = !DILocation(line: 174, column: 8, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1733, file: !333, line: 174, column: 7)
!1745 = !DILocation(line: 174, column: 7, scope: !1733)
!1746 = !DILocation(line: 176, column: 6, scope: !1733)
!1747 = !DILocation(line: 176, column: 12, scope: !1733)
!1748 = !DILocation(line: 177, column: 8, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1733, file: !333, line: 177, column: 7)
!1750 = !DILocation(line: 177, column: 23, scope: !1749)
!1751 = !DILocation(line: 177, column: 19, scope: !1749)
!1752 = !DILocation(line: 178, column: 5, scope: !1749)
!1753 = !DILocation(line: 179, column: 6, scope: !1733)
!1754 = !DILocation(line: 179, column: 17, scope: !1733)
!1755 = !{!1670, !810, i64 40}
!1756 = !DILocation(line: 180, column: 6, scope: !1733)
!1757 = !DILocation(line: 180, column: 18, scope: !1733)
!1758 = !{!1670, !810, i64 48}
!1759 = !DILocation(line: 181, column: 1, scope: !1733)
!1760 = distinct !DISubprogram(name: "quotearg_buffer", scope: !333, file: !333, line: 776, type: !1761, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!70, !24, !70, !78, !70, !1662}
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771}
!1764 = !DILocalVariable(name: "buffer", arg: 1, scope: !1760, file: !333, line: 776, type: !24)
!1765 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1760, file: !333, line: 776, type: !70)
!1766 = !DILocalVariable(name: "arg", arg: 3, scope: !1760, file: !333, line: 777, type: !78)
!1767 = !DILocalVariable(name: "argsize", arg: 4, scope: !1760, file: !333, line: 777, type: !70)
!1768 = !DILocalVariable(name: "o", arg: 5, scope: !1760, file: !333, line: 778, type: !1662)
!1769 = !DILocalVariable(name: "p", scope: !1760, file: !333, line: 780, type: !1662)
!1770 = !DILocalVariable(name: "e", scope: !1760, file: !333, line: 781, type: !22)
!1771 = !DILocalVariable(name: "r", scope: !1760, file: !333, line: 782, type: !70)
!1772 = !DILocation(line: 776, column: 24, scope: !1760)
!1773 = !DILocation(line: 776, column: 39, scope: !1760)
!1774 = !DILocation(line: 777, column: 30, scope: !1760)
!1775 = !DILocation(line: 777, column: 42, scope: !1760)
!1776 = !DILocation(line: 778, column: 48, scope: !1760)
!1777 = !DILocation(line: 780, column: 37, scope: !1760)
!1778 = !DILocation(line: 780, column: 33, scope: !1760)
!1779 = !DILocation(line: 781, column: 11, scope: !1760)
!1780 = !DILocation(line: 781, column: 7, scope: !1760)
!1781 = !DILocation(line: 783, column: 43, scope: !1760)
!1782 = !DILocation(line: 783, column: 53, scope: !1760)
!1783 = !DILocation(line: 783, column: 60, scope: !1760)
!1784 = !DILocation(line: 784, column: 43, scope: !1760)
!1785 = !DILocation(line: 784, column: 58, scope: !1760)
!1786 = !DILocation(line: 782, column: 14, scope: !1760)
!1787 = !DILocation(line: 782, column: 10, scope: !1760)
!1788 = !DILocation(line: 785, column: 9, scope: !1760)
!1789 = !DILocation(line: 786, column: 3, scope: !1760)
!1790 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !333, file: !333, line: 248, type: !1791, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !1795)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!70, !24, !70, !78, !70, !212, !22, !1793, !78, !78}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1820, !1821, !1822, !1823, !1824, !1827, !1828, !1846, !1849, !1850, !1857}
!1796 = !DILocalVariable(name: "buffer", arg: 1, scope: !1790, file: !333, line: 248, type: !24)
!1797 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1790, file: !333, line: 248, type: !70)
!1798 = !DILocalVariable(name: "arg", arg: 3, scope: !1790, file: !333, line: 249, type: !78)
!1799 = !DILocalVariable(name: "argsize", arg: 4, scope: !1790, file: !333, line: 249, type: !70)
!1800 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1790, file: !333, line: 250, type: !212)
!1801 = !DILocalVariable(name: "flags", arg: 6, scope: !1790, file: !333, line: 250, type: !22)
!1802 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1790, file: !333, line: 251, type: !1793)
!1803 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1790, file: !333, line: 252, type: !78)
!1804 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1790, file: !333, line: 253, type: !78)
!1805 = !DILocalVariable(name: "i", scope: !1790, file: !333, line: 255, type: !70)
!1806 = !DILocalVariable(name: "len", scope: !1790, file: !333, line: 256, type: !70)
!1807 = !DILocalVariable(name: "orig_buffersize", scope: !1790, file: !333, line: 257, type: !70)
!1808 = !DILocalVariable(name: "quote_string", scope: !1790, file: !333, line: 258, type: !78)
!1809 = !DILocalVariable(name: "quote_string_len", scope: !1790, file: !333, line: 259, type: !70)
!1810 = !DILocalVariable(name: "backslash_escapes", scope: !1790, file: !333, line: 260, type: !14)
!1811 = !DILocalVariable(name: "unibyte_locale", scope: !1790, file: !333, line: 261, type: !14)
!1812 = !DILocalVariable(name: "elide_outer_quotes", scope: !1790, file: !333, line: 262, type: !14)
!1813 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1790, file: !333, line: 263, type: !14)
!1814 = !DILocalVariable(name: "encountered_single_quote", scope: !1790, file: !333, line: 264, type: !14)
!1815 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1790, file: !333, line: 265, type: !14)
!1816 = !DILocalVariable(name: "c", scope: !1817, file: !333, line: 394, type: !733)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !333, line: 393, column: 5)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !333, line: 392, column: 3)
!1819 = distinct !DILexicalBlock(scope: !1790, file: !333, line: 392, column: 3)
!1820 = !DILocalVariable(name: "esc", scope: !1817, file: !333, line: 395, type: !733)
!1821 = !DILocalVariable(name: "is_right_quote", scope: !1817, file: !333, line: 396, type: !14)
!1822 = !DILocalVariable(name: "escaping", scope: !1817, file: !333, line: 397, type: !14)
!1823 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1817, file: !333, line: 398, type: !14)
!1824 = !DILocalVariable(name: "m", scope: !1825, file: !333, line: 602, type: !70)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !333, line: 600, column: 11)
!1826 = distinct !DILexicalBlock(scope: !1817, file: !333, line: 418, column: 9)
!1827 = !DILocalVariable(name: "printable", scope: !1825, file: !333, line: 604, type: !14)
!1828 = !DILocalVariable(name: "mbstate", scope: !1829, file: !333, line: 613, type: !1831)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !333, line: 612, column: 15)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !333, line: 606, column: 17)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1832, line: 6, baseType: !1833)
!1832 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1834, line: 21, baseType: !1835)
!1834 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1834, line: 13, size: 64, elements: !1836)
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1835, file: !1834, line: 15, baseType: !22, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1835, file: !1834, line: 20, baseType: !1839, size: 32, offset: 32)
!1839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1835, file: !1834, line: 16, size: 32, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1839, file: !1834, line: 18, baseType: !151, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1839, file: !1834, line: 19, baseType: !1843, size: 32)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !1844)
!1844 = !{!1845}
!1845 = !DISubrange(count: 4)
!1846 = !DILocalVariable(name: "w", scope: !1847, file: !333, line: 623, type: !1848)
!1847 = distinct !DILexicalBlock(scope: !1829, file: !333, line: 622, column: 19)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 90, baseType: !22)
!1849 = !DILocalVariable(name: "bytes", scope: !1847, file: !333, line: 624, type: !70)
!1850 = !DILocalVariable(name: "j", scope: !1851, file: !333, line: 649, type: !70)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !333, line: 648, column: 27)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !333, line: 646, column: 29)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !333, line: 641, column: 23)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !333, line: 633, column: 30)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !333, line: 628, column: 30)
!1856 = distinct !DILexicalBlock(scope: !1847, file: !333, line: 626, column: 25)
!1857 = !DILocalVariable(name: "ilim", scope: !1858, file: !333, line: 676, type: !70)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !333, line: 673, column: 15)
!1859 = distinct !DILexicalBlock(scope: !1825, file: !333, line: 672, column: 17)
!1860 = !DILocation(line: 248, column: 33, scope: !1790)
!1861 = !DILocation(line: 248, column: 48, scope: !1790)
!1862 = !DILocation(line: 249, column: 39, scope: !1790)
!1863 = !DILocation(line: 249, column: 51, scope: !1790)
!1864 = !DILocation(line: 250, column: 46, scope: !1790)
!1865 = !DILocation(line: 250, column: 65, scope: !1790)
!1866 = !DILocation(line: 251, column: 47, scope: !1790)
!1867 = !DILocation(line: 252, column: 39, scope: !1790)
!1868 = !DILocation(line: 253, column: 39, scope: !1790)
!1869 = !DILocation(line: 256, column: 10, scope: !1790)
!1870 = !DILocation(line: 257, column: 10, scope: !1790)
!1871 = !DILocation(line: 258, column: 15, scope: !1790)
!1872 = !DILocation(line: 259, column: 10, scope: !1790)
!1873 = !DILocation(line: 260, column: 8, scope: !1790)
!1874 = !DILocation(line: 261, column: 25, scope: !1790)
!1875 = !DILocation(line: 261, column: 36, scope: !1790)
!1876 = !DILocation(line: 262, column: 8, scope: !1790)
!1877 = !DILocation(line: 263, column: 8, scope: !1790)
!1878 = !DILocation(line: 264, column: 8, scope: !1790)
!1879 = !DILocation(line: 265, column: 8, scope: !1790)
!1880 = !DILocation(line: 265, column: 3, scope: !1790)
!1881 = !DILocation(line: 308, column: 3, scope: !1790)
!1882 = !DILocation(line: 315, column: 11, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1790, file: !333, line: 309, column: 5)
!1884 = !DILocation(line: 315, column: 12, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1883, file: !333, line: 315, column: 11)
!1886 = !DILocation(line: 316, column: 9, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !333, line: 316, column: 9)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !333, line: 316, column: 9)
!1889 = !DILocation(line: 316, column: 9, scope: !1888)
!1890 = !DILocation(line: 354, column: 26, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !333, line: 332, column: 11)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !333, line: 331, column: 13)
!1893 = distinct !DILexicalBlock(scope: !1883, file: !333, line: 330, column: 7)
!1894 = !DILocation(line: 355, column: 27, scope: !1891)
!1895 = !DILocation(line: 356, column: 11, scope: !1891)
!1896 = !DILocation(line: 357, column: 14, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !333, line: 357, column: 13)
!1898 = !DILocation(line: 357, column: 13, scope: !1893)
!1899 = !DILocation(line: 358, column: 43, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !333, line: 358, column: 11)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !333, line: 358, column: 11)
!1902 = !DILocation(line: 358, column: 11, scope: !1901)
!1903 = !DILocation(line: 359, column: 13, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !333, line: 359, column: 13)
!1905 = distinct !DILexicalBlock(scope: !1900, file: !333, line: 359, column: 13)
!1906 = !DILocation(line: 359, column: 13, scope: !1905)
!1907 = !DILocation(line: 358, column: 70, scope: !1900)
!1908 = distinct !{!1908, !1902, !1909}
!1909 = !DILocation(line: 359, column: 13, scope: !1901)
!1910 = !DILocation(line: 362, column: 28, scope: !1893)
!1911 = !DILocation(line: 364, column: 7, scope: !1883)
!1912 = !DILocation(line: 367, column: 7, scope: !1883)
!1913 = !DILocation(line: 370, column: 7, scope: !1883)
!1914 = !DILocation(line: 373, column: 12, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1883, file: !333, line: 373, column: 11)
!1916 = !DILocation(line: 373, column: 11, scope: !1883)
!1917 = !DILocation(line: 378, column: 12, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1883, file: !333, line: 378, column: 11)
!1919 = !DILocation(line: 378, column: 11, scope: !1883)
!1920 = !DILocation(line: 379, column: 9, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !333, line: 379, column: 9)
!1922 = distinct !DILexicalBlock(scope: !1918, file: !333, line: 379, column: 9)
!1923 = !DILocation(line: 379, column: 9, scope: !1922)
!1924 = !DILocation(line: 386, column: 7, scope: !1883)
!1925 = !DILocation(line: 389, column: 7, scope: !1883)
!1926 = !DILocation(line: 255, column: 10, scope: !1790)
!1927 = !DILocation(line: 392, column: 8, scope: !1819)
!1928 = !DILocation(line: 392, column: 27, scope: !1818)
!1929 = !DILocation(line: 392, column: 19, scope: !1818)
!1930 = !DILocation(line: 392, column: 60, scope: !1818)
!1931 = !DILocation(line: 392, column: 3, scope: !1819)
!1932 = !DILocation(line: 392, column: 41, scope: !1818)
!1933 = !DILocation(line: 392, column: 48, scope: !1818)
!1934 = !DILocation(line: 396, column: 12, scope: !1817)
!1935 = !DILocation(line: 397, column: 12, scope: !1817)
!1936 = !DILocation(line: 398, column: 12, scope: !1817)
!1937 = !DILocation(line: 401, column: 11, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1817, file: !333, line: 400, column: 11)
!1939 = !DILocation(line: 403, column: 17, scope: !1938)
!1940 = !DILocation(line: 404, column: 39, scope: !1938)
!1941 = !DILocation(line: 408, column: 32, scope: !1938)
!1942 = !DILocation(line: 404, column: 19, scope: !1938)
!1943 = !DILocation(line: 404, column: 15, scope: !1938)
!1944 = !DILocation(line: 409, column: 11, scope: !1938)
!1945 = !DILocation(line: 409, column: 26, scope: !1938)
!1946 = !DILocation(line: 409, column: 14, scope: !1938)
!1947 = !DILocation(line: 409, column: 63, scope: !1938)
!1948 = !DILocation(line: 400, column: 11, scope: !1817)
!1949 = !DILocation(line: 416, column: 11, scope: !1817)
!1950 = !DILocation(line: 394, column: 21, scope: !1817)
!1951 = !DILocation(line: 417, column: 7, scope: !1817)
!1952 = !DILocation(line: 420, column: 15, scope: !1826)
!1953 = !DILocation(line: 422, column: 15, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !333, line: 422, column: 15)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !333, line: 421, column: 13)
!1956 = distinct !DILexicalBlock(scope: !1826, file: !333, line: 420, column: 15)
!1957 = !DILocation(line: 422, column: 15, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !333, line: 422, column: 15)
!1959 = !DILocation(line: 422, column: 15, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !333, line: 422, column: 15)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !333, line: 422, column: 15)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !333, line: 422, column: 15)
!1963 = !DILocation(line: 422, column: 15, scope: !1961)
!1964 = !DILocation(line: 422, column: 15, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !333, line: 422, column: 15)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !333, line: 422, column: 15)
!1967 = !DILocation(line: 422, column: 15, scope: !1966)
!1968 = !DILocation(line: 422, column: 15, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !333, line: 422, column: 15)
!1970 = distinct !DILexicalBlock(scope: !1962, file: !333, line: 422, column: 15)
!1971 = !DILocation(line: 422, column: 15, scope: !1970)
!1972 = !DILocation(line: 422, column: 15, scope: !1962)
!1973 = !DILocation(line: 422, column: 15, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !333, line: 422, column: 15)
!1975 = distinct !DILexicalBlock(scope: !1954, file: !333, line: 422, column: 15)
!1976 = !DILocation(line: 422, column: 15, scope: !1975)
!1977 = !DILocation(line: 430, column: 19, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1955, file: !333, line: 429, column: 19)
!1979 = !DILocation(line: 430, column: 24, scope: !1978)
!1980 = !DILocation(line: 430, column: 28, scope: !1978)
!1981 = !DILocation(line: 430, column: 38, scope: !1978)
!1982 = !DILocation(line: 430, column: 48, scope: !1978)
!1983 = !DILocation(line: 430, column: 59, scope: !1978)
!1984 = !DILocation(line: 432, column: 19, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !333, line: 432, column: 19)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !333, line: 432, column: 19)
!1987 = distinct !DILexicalBlock(scope: !1978, file: !333, line: 431, column: 17)
!1988 = !DILocation(line: 432, column: 19, scope: !1986)
!1989 = !DILocation(line: 433, column: 19, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !333, line: 433, column: 19)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !333, line: 433, column: 19)
!1992 = !DILocation(line: 433, column: 19, scope: !1991)
!1993 = !DILocation(line: 434, column: 17, scope: !1987)
!1994 = !DILocation(line: 441, column: 20, scope: !1956)
!1995 = !DILocation(line: 446, column: 11, scope: !1826)
!1996 = !DILocation(line: 449, column: 19, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1826, file: !333, line: 447, column: 13)
!1998 = !DILocation(line: 455, column: 19, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1997, file: !333, line: 454, column: 19)
!2000 = !DILocation(line: 455, column: 24, scope: !1999)
!2001 = !DILocation(line: 455, column: 28, scope: !1999)
!2002 = !DILocation(line: 455, column: 38, scope: !1999)
!2003 = !DILocation(line: 455, column: 47, scope: !1999)
!2004 = !DILocation(line: 455, column: 41, scope: !1999)
!2005 = !DILocation(line: 455, column: 52, scope: !1999)
!2006 = !DILocation(line: 454, column: 19, scope: !1997)
!2007 = !DILocation(line: 456, column: 25, scope: !1999)
!2008 = !DILocation(line: 456, column: 17, scope: !1999)
!2009 = !DILocation(line: 463, column: 25, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1999, file: !333, line: 457, column: 19)
!2011 = !DILocation(line: 467, column: 21, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !333, line: 467, column: 21)
!2013 = distinct !DILexicalBlock(scope: !2010, file: !333, line: 467, column: 21)
!2014 = !DILocation(line: 467, column: 21, scope: !2013)
!2015 = !DILocation(line: 468, column: 21, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !333, line: 468, column: 21)
!2017 = distinct !DILexicalBlock(scope: !2010, file: !333, line: 468, column: 21)
!2018 = !DILocation(line: 468, column: 21, scope: !2017)
!2019 = !DILocation(line: 469, column: 21, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !333, line: 469, column: 21)
!2021 = distinct !DILexicalBlock(scope: !2010, file: !333, line: 469, column: 21)
!2022 = !DILocation(line: 469, column: 21, scope: !2021)
!2023 = !DILocation(line: 470, column: 21, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !333, line: 470, column: 21)
!2025 = distinct !DILexicalBlock(scope: !2010, file: !333, line: 470, column: 21)
!2026 = !DILocation(line: 470, column: 21, scope: !2025)
!2027 = !DILocation(line: 471, column: 21, scope: !2010)
!2028 = !DILocation(line: 395, column: 21, scope: !1817)
!2029 = !DILocation(line: 484, column: 31, scope: !1826)
!2030 = !DILocation(line: 485, column: 31, scope: !1826)
!2031 = !DILocation(line: 487, column: 31, scope: !1826)
!2032 = !DILocation(line: 488, column: 31, scope: !1826)
!2033 = !DILocation(line: 489, column: 31, scope: !1826)
!2034 = !DILocation(line: 492, column: 15, scope: !1826)
!2035 = !DILocation(line: 494, column: 19, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !333, line: 493, column: 13)
!2037 = distinct !DILexicalBlock(scope: !1826, file: !333, line: 492, column: 15)
!2038 = !DILocation(line: 501, column: 33, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1826, file: !333, line: 501, column: 15)
!2040 = !DILocation(line: 506, column: 15, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1826, file: !333, line: 505, column: 15)
!2042 = !DILocation(line: 510, column: 15, scope: !1826)
!2043 = !DILocation(line: 518, column: 26, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1826, file: !333, line: 518, column: 15)
!2045 = !DILocation(line: 518, column: 15, scope: !1826)
!2046 = !DILocation(line: 518, column: 40, scope: !2044)
!2047 = !DILocation(line: 518, column: 47, scope: !2044)
!2048 = !DILocation(line: 522, column: 17, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1826, file: !333, line: 522, column: 15)
!2050 = !DILocation(line: 518, column: 18, scope: !2044)
!2051 = !DILocation(line: 518, column: 65, scope: !2044)
!2052 = !DILocation(line: 522, column: 15, scope: !1826)
!2053 = !DILocation(line: 526, column: 11, scope: !1826)
!2054 = !DILocation(line: 541, column: 15, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1826, file: !333, line: 540, column: 15)
!2056 = !DILocation(line: 548, column: 15, scope: !1826)
!2057 = !DILocation(line: 550, column: 19, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !333, line: 549, column: 13)
!2059 = distinct !DILexicalBlock(scope: !1826, file: !333, line: 548, column: 15)
!2060 = !DILocation(line: 553, column: 19, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2058, file: !333, line: 553, column: 19)
!2062 = !DILocation(line: 553, column: 35, scope: !2061)
!2063 = !DILocation(line: 553, column: 30, scope: !2061)
!2064 = !DILocation(line: 562, column: 15, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !333, line: 562, column: 15)
!2066 = distinct !DILexicalBlock(scope: !2058, file: !333, line: 562, column: 15)
!2067 = !DILocation(line: 562, column: 15, scope: !2066)
!2068 = !DILocation(line: 563, column: 15, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !333, line: 563, column: 15)
!2070 = distinct !DILexicalBlock(scope: !2058, file: !333, line: 563, column: 15)
!2071 = !DILocation(line: 563, column: 15, scope: !2070)
!2072 = !DILocation(line: 564, column: 15, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !333, line: 564, column: 15)
!2074 = distinct !DILexicalBlock(scope: !2058, file: !333, line: 564, column: 15)
!2075 = !DILocation(line: 564, column: 15, scope: !2074)
!2076 = !DILocation(line: 566, column: 13, scope: !2058)
!2077 = !DILocation(line: 606, column: 17, scope: !1825)
!2078 = !DILocation(line: 602, column: 20, scope: !1825)
!2079 = !DILocation(line: 609, column: 29, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1830, file: !333, line: 607, column: 15)
!2081 = !DILocation(line: 609, column: 27, scope: !2080)
!2082 = !DILocation(line: 604, column: 18, scope: !1825)
!2083 = !DILocation(line: 610, column: 15, scope: !2080)
!2084 = !DILocation(line: 613, column: 17, scope: !1829)
!2085 = !DILocation(line: 614, column: 17, scope: !1829)
!2086 = !DILocation(line: 618, column: 29, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1829, file: !333, line: 618, column: 21)
!2088 = !DILocation(line: 618, column: 21, scope: !1829)
!2089 = !DILocation(line: 619, column: 29, scope: !2087)
!2090 = !DILocation(line: 619, column: 19, scope: !2087)
!2091 = !DILocation(line: 621, column: 17, scope: !1829)
!2092 = distinct !{!2092, !2091, !2093}
!2093 = !DILocation(line: 667, column: 44, scope: !1829)
!2094 = !DILocation(line: 623, column: 21, scope: !1847)
!2095 = !DILocation(line: 624, column: 56, scope: !1847)
!2096 = !DILocation(line: 624, column: 50, scope: !1847)
!2097 = !DILocation(line: 625, column: 53, scope: !1847)
!2098 = !DILocation(line: 613, column: 27, scope: !1829)
!2099 = !DILocation(line: 623, column: 29, scope: !1847)
!2100 = !DILocation(line: 624, column: 36, scope: !1847)
!2101 = !DILocation(line: 624, column: 28, scope: !1847)
!2102 = !DILocation(line: 626, column: 25, scope: !1847)
!2103 = !DILocation(line: 636, column: 38, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1854, file: !333, line: 634, column: 23)
!2105 = !DILocation(line: 636, column: 48, scope: !2104)
!2106 = !DILocation(line: 636, column: 51, scope: !2104)
!2107 = !DILocation(line: 636, column: 25, scope: !2104)
!2108 = !DILocation(line: 637, column: 28, scope: !2104)
!2109 = !DILocation(line: 636, column: 34, scope: !2104)
!2110 = distinct !{!2110, !2107, !2108}
!2111 = !DILocation(line: 650, column: 43, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !333, line: 650, column: 29)
!2113 = distinct !DILexicalBlock(scope: !1851, file: !333, line: 650, column: 29)
!2114 = !DILocation(line: 647, column: 29, scope: !1852)
!2115 = !DILocation(line: 649, column: 36, scope: !1851)
!2116 = !DILocation(line: 651, column: 49, scope: !2112)
!2117 = !DILocation(line: 651, column: 39, scope: !2112)
!2118 = !DILocation(line: 651, column: 31, scope: !2112)
!2119 = !DILocation(line: 650, column: 53, scope: !2112)
!2120 = !DILocation(line: 650, column: 29, scope: !2113)
!2121 = distinct !{!2121, !2120, !2122}
!2122 = !DILocation(line: 659, column: 33, scope: !2113)
!2123 = !DILocation(line: 666, column: 19, scope: !1829)
!2124 = !DILocation(line: 662, column: 41, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1853, file: !333, line: 662, column: 29)
!2126 = !DILocation(line: 662, column: 31, scope: !2125)
!2127 = !DILocation(line: 662, column: 29, scope: !1853)
!2128 = !DILocation(line: 664, column: 27, scope: !1853)
!2129 = !DILocation(line: 667, column: 26, scope: !1829)
!2130 = !DILocation(line: 667, column: 24, scope: !1829)
!2131 = !DILocation(line: 666, column: 19, scope: !1847)
!2132 = !DILocation(line: 668, column: 15, scope: !1830)
!2133 = !DILocation(line: 670, column: 40, scope: !1825)
!2134 = !DILocation(line: 672, column: 19, scope: !1859)
!2135 = !DILocation(line: 672, column: 45, scope: !1859)
!2136 = !DILocation(line: 672, column: 23, scope: !1859)
!2137 = !DILocation(line: 676, column: 33, scope: !1858)
!2138 = !DILocation(line: 676, column: 24, scope: !1858)
!2139 = !DILocation(line: 678, column: 17, scope: !1858)
!2140 = !DILocation(line: 680, column: 43, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !333, line: 680, column: 25)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !333, line: 679, column: 19)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !333, line: 678, column: 17)
!2144 = distinct !DILexicalBlock(scope: !1858, file: !333, line: 678, column: 17)
!2145 = !DILocation(line: 682, column: 25, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !333, line: 682, column: 25)
!2147 = distinct !DILexicalBlock(scope: !2141, file: !333, line: 681, column: 23)
!2148 = !DILocation(line: 682, column: 25, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2146, file: !333, line: 682, column: 25)
!2150 = !DILocation(line: 682, column: 25, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !333, line: 682, column: 25)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !333, line: 682, column: 25)
!2153 = distinct !DILexicalBlock(scope: !2149, file: !333, line: 682, column: 25)
!2154 = !DILocation(line: 682, column: 25, scope: !2152)
!2155 = !DILocation(line: 682, column: 25, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !333, line: 682, column: 25)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !333, line: 682, column: 25)
!2158 = !DILocation(line: 682, column: 25, scope: !2157)
!2159 = !DILocation(line: 682, column: 25, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !333, line: 682, column: 25)
!2161 = distinct !DILexicalBlock(scope: !2153, file: !333, line: 682, column: 25)
!2162 = !DILocation(line: 682, column: 25, scope: !2161)
!2163 = !DILocation(line: 682, column: 25, scope: !2153)
!2164 = !DILocation(line: 682, column: 25, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !333, line: 682, column: 25)
!2166 = distinct !DILexicalBlock(scope: !2146, file: !333, line: 682, column: 25)
!2167 = !DILocation(line: 682, column: 25, scope: !2166)
!2168 = !DILocation(line: 683, column: 25, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !333, line: 683, column: 25)
!2170 = distinct !DILexicalBlock(scope: !2147, file: !333, line: 683, column: 25)
!2171 = !DILocation(line: 683, column: 25, scope: !2170)
!2172 = !DILocation(line: 684, column: 25, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !333, line: 684, column: 25)
!2174 = distinct !DILexicalBlock(scope: !2147, file: !333, line: 684, column: 25)
!2175 = !DILocation(line: 684, column: 25, scope: !2174)
!2176 = !DILocation(line: 685, column: 38, scope: !2147)
!2177 = !DILocation(line: 685, column: 33, scope: !2147)
!2178 = !DILocation(line: 686, column: 23, scope: !2147)
!2179 = !DILocation(line: 687, column: 30, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2141, file: !333, line: 687, column: 30)
!2181 = !DILocation(line: 687, column: 30, scope: !2141)
!2182 = !DILocation(line: 689, column: 25, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !333, line: 689, column: 25)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !333, line: 689, column: 25)
!2185 = distinct !DILexicalBlock(scope: !2180, file: !333, line: 688, column: 23)
!2186 = !DILocation(line: 689, column: 25, scope: !2184)
!2187 = !DILocation(line: 691, column: 23, scope: !2185)
!2188 = !DILocation(line: 692, column: 35, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2142, file: !333, line: 692, column: 25)
!2190 = !DILocation(line: 692, column: 30, scope: !2189)
!2191 = !DILocation(line: 692, column: 25, scope: !2142)
!2192 = !DILocation(line: 694, column: 21, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !333, line: 694, column: 21)
!2194 = distinct !DILexicalBlock(scope: !2142, file: !333, line: 694, column: 21)
!2195 = !DILocation(line: 694, column: 21, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !333, line: 694, column: 21)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !333, line: 694, column: 21)
!2198 = distinct !DILexicalBlock(scope: !2193, file: !333, line: 694, column: 21)
!2199 = !DILocation(line: 694, column: 21, scope: !2197)
!2200 = !DILocation(line: 694, column: 21, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !333, line: 694, column: 21)
!2202 = distinct !DILexicalBlock(scope: !2198, file: !333, line: 694, column: 21)
!2203 = !DILocation(line: 694, column: 21, scope: !2202)
!2204 = !DILocation(line: 694, column: 21, scope: !2198)
!2205 = !DILocation(line: 695, column: 21, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !333, line: 695, column: 21)
!2207 = distinct !DILexicalBlock(scope: !2142, file: !333, line: 695, column: 21)
!2208 = !DILocation(line: 695, column: 21, scope: !2207)
!2209 = !DILocation(line: 696, column: 25, scope: !2142)
!2210 = !DILocation(line: 678, column: 17, scope: !2143)
!2211 = distinct !{!2211, !2212, !2213}
!2212 = !DILocation(line: 678, column: 17, scope: !2144)
!2213 = !DILocation(line: 697, column: 19, scope: !2144)
!2214 = !DILocation(line: 704, column: 34, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !1817, file: !333, line: 704, column: 11)
!2216 = !DILocation(line: 706, column: 14, scope: !2215)
!2217 = !DILocation(line: 707, column: 14, scope: !2215)
!2218 = !DILocation(line: 707, column: 35, scope: !2215)
!2219 = !DILocation(line: 707, column: 17, scope: !2215)
!2220 = !DILocation(line: 707, column: 53, scope: !2215)
!2221 = !DILocation(line: 707, column: 47, scope: !2215)
!2222 = !DILocation(line: 707, column: 65, scope: !2215)
!2223 = !DILocation(line: 708, column: 15, scope: !2215)
!2224 = !DILocation(line: 708, column: 11, scope: !2215)
!2225 = !DILocation(line: 704, column: 11, scope: !1817)
!2226 = !DILocation(line: 712, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !1817, file: !333, line: 712, column: 7)
!2228 = !DILocation(line: 712, column: 7, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2227, file: !333, line: 712, column: 7)
!2230 = !DILocation(line: 712, column: 7, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !333, line: 712, column: 7)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !333, line: 712, column: 7)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !333, line: 712, column: 7)
!2234 = !DILocation(line: 712, column: 7, scope: !2232)
!2235 = !DILocation(line: 712, column: 7, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !333, line: 712, column: 7)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !333, line: 712, column: 7)
!2238 = !DILocation(line: 712, column: 7, scope: !2237)
!2239 = !DILocation(line: 712, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !333, line: 712, column: 7)
!2241 = distinct !DILexicalBlock(scope: !2233, file: !333, line: 712, column: 7)
!2242 = !DILocation(line: 712, column: 7, scope: !2241)
!2243 = !DILocation(line: 712, column: 7, scope: !2233)
!2244 = !DILocation(line: 712, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !333, line: 712, column: 7)
!2246 = distinct !DILexicalBlock(scope: !2227, file: !333, line: 712, column: 7)
!2247 = !DILocation(line: 712, column: 7, scope: !2246)
!2248 = !DILocation(line: 715, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !333, line: 715, column: 7)
!2250 = distinct !DILexicalBlock(scope: !1817, file: !333, line: 715, column: 7)
!2251 = !DILocation(line: 715, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !333, line: 715, column: 7)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !333, line: 715, column: 7)
!2254 = distinct !DILexicalBlock(scope: !2249, file: !333, line: 715, column: 7)
!2255 = !DILocation(line: 715, column: 7, scope: !2253)
!2256 = !DILocation(line: 715, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !333, line: 715, column: 7)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !333, line: 715, column: 7)
!2259 = !DILocation(line: 715, column: 7, scope: !2258)
!2260 = !DILocation(line: 715, column: 7, scope: !2254)
!2261 = !DILocation(line: 716, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !333, line: 716, column: 7)
!2263 = distinct !DILexicalBlock(scope: !1817, file: !333, line: 716, column: 7)
!2264 = !DILocation(line: 716, column: 7, scope: !2263)
!2265 = !DILocation(line: 718, column: 13, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !1817, file: !333, line: 718, column: 11)
!2267 = !DILocation(line: 718, column: 11, scope: !1817)
!2268 = !DILocation(line: 720, column: 5, scope: !1818)
!2269 = !DILocation(line: 392, column: 75, scope: !1818)
!2270 = !DILocation(line: 392, column: 3, scope: !1818)
!2271 = distinct !{!2271, !1931, !2272}
!2272 = !DILocation(line: 720, column: 5, scope: !1819)
!2273 = !DILocation(line: 722, column: 11, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !1790, file: !333, line: 722, column: 7)
!2275 = !DILocation(line: 722, column: 16, scope: !2274)
!2276 = !DILocation(line: 730, column: 51, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !1790, file: !333, line: 730, column: 7)
!2278 = !DILocation(line: 731, column: 10, scope: !2277)
!2279 = !DILocation(line: 733, column: 11, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !333, line: 733, column: 11)
!2281 = distinct !DILexicalBlock(scope: !2277, file: !333, line: 732, column: 5)
!2282 = !DILocation(line: 733, column: 11, scope: !2281)
!2283 = !DILocation(line: 734, column: 16, scope: !2280)
!2284 = !DILocation(line: 734, column: 9, scope: !2280)
!2285 = !DILocation(line: 738, column: 18, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2280, file: !333, line: 738, column: 16)
!2287 = !DILocation(line: 738, column: 32, scope: !2286)
!2288 = !DILocation(line: 738, column: 29, scope: !2286)
!2289 = !DILocation(line: 747, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !1790, file: !333, line: 747, column: 7)
!2291 = !DILocation(line: 747, column: 20, scope: !2290)
!2292 = !DILocation(line: 748, column: 12, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !333, line: 748, column: 5)
!2294 = distinct !DILexicalBlock(scope: !2290, file: !333, line: 748, column: 5)
!2295 = !DILocation(line: 748, column: 5, scope: !2294)
!2296 = !DILocation(line: 749, column: 7, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !333, line: 749, column: 7)
!2298 = distinct !DILexicalBlock(scope: !2293, file: !333, line: 749, column: 7)
!2299 = !DILocation(line: 749, column: 7, scope: !2298)
!2300 = !DILocation(line: 748, column: 39, scope: !2293)
!2301 = distinct !{!2301, !2295, !2302}
!2302 = !DILocation(line: 749, column: 7, scope: !2294)
!2303 = !DILocation(line: 751, column: 11, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !1790, file: !333, line: 751, column: 7)
!2305 = !DILocation(line: 751, column: 7, scope: !1790)
!2306 = !DILocation(line: 752, column: 5, scope: !2304)
!2307 = !DILocation(line: 752, column: 17, scope: !2304)
!2308 = !DILocation(line: 758, column: 21, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !1790, file: !333, line: 758, column: 7)
!2310 = !DILocation(line: 758, column: 54, scope: !2309)
!2311 = !DILocation(line: 758, column: 51, scope: !2309)
!2312 = !DILocation(line: 762, column: 42, scope: !1790)
!2313 = !DILocation(line: 760, column: 10, scope: !1790)
!2314 = !DILocation(line: 760, column: 3, scope: !1790)
!2315 = !DILocation(line: 764, column: 1, scope: !1790)
!2316 = distinct !DISubprogram(name: "gettext_quote", scope: !333, file: !333, line: 199, type: !2317, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!78, !78, !212}
!2319 = !{!2320, !2321, !2322, !2323}
!2320 = !DILocalVariable(name: "msgid", arg: 1, scope: !2316, file: !333, line: 199, type: !78)
!2321 = !DILocalVariable(name: "s", arg: 2, scope: !2316, file: !333, line: 199, type: !212)
!2322 = !DILocalVariable(name: "translation", scope: !2316, file: !333, line: 201, type: !78)
!2323 = !DILocalVariable(name: "locale_code", scope: !2316, file: !333, line: 202, type: !78)
!2324 = !DILocation(line: 199, column: 28, scope: !2316)
!2325 = !DILocation(line: 199, column: 54, scope: !2316)
!2326 = !DILocation(line: 201, column: 29, scope: !2316)
!2327 = !DILocation(line: 201, column: 15, scope: !2316)
!2328 = !DILocation(line: 204, column: 19, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2316, file: !333, line: 204, column: 7)
!2330 = !DILocation(line: 204, column: 7, scope: !2316)
!2331 = !DILocation(line: 225, column: 17, scope: !2316)
!2332 = !DILocation(line: 202, column: 15, scope: !2316)
!2333 = !DILocalVariable(name: "s2", arg: 2, scope: !2334, file: !2335, line: 160, type: !78)
!2334 = distinct !DISubprogram(name: "strcaseeq0", scope: !2335, file: !2335, line: 160, type: !2336, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2338)
!2335 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!22, !78, !78, !25, !25, !25, !25, !25, !25, !25, !25, !25}
!2338 = !{!2339, !2333, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348}
!2339 = !DILocalVariable(name: "s1", arg: 1, scope: !2334, file: !2335, line: 160, type: !78)
!2340 = !DILocalVariable(name: "s20", arg: 3, scope: !2334, file: !2335, line: 160, type: !25)
!2341 = !DILocalVariable(name: "s21", arg: 4, scope: !2334, file: !2335, line: 160, type: !25)
!2342 = !DILocalVariable(name: "s22", arg: 5, scope: !2334, file: !2335, line: 160, type: !25)
!2343 = !DILocalVariable(name: "s23", arg: 6, scope: !2334, file: !2335, line: 160, type: !25)
!2344 = !DILocalVariable(name: "s24", arg: 7, scope: !2334, file: !2335, line: 160, type: !25)
!2345 = !DILocalVariable(name: "s25", arg: 8, scope: !2334, file: !2335, line: 160, type: !25)
!2346 = !DILocalVariable(name: "s26", arg: 9, scope: !2334, file: !2335, line: 160, type: !25)
!2347 = !DILocalVariable(name: "s27", arg: 10, scope: !2334, file: !2335, line: 160, type: !25)
!2348 = !DILocalVariable(name: "s28", arg: 11, scope: !2334, file: !2335, line: 160, type: !25)
!2349 = !DILocation(line: 160, column: 41, scope: !2334, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 226, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2316, file: !333, line: 226, column: 7)
!2352 = !DILocation(line: 160, column: 120, scope: !2334, inlinedAt: !2350)
!2353 = !DILocation(line: 160, column: 130, scope: !2334, inlinedAt: !2350)
!2354 = !DILocation(line: 162, column: 7, scope: !2355, inlinedAt: !2350)
!2355 = distinct !DILexicalBlock(scope: !2334, file: !2335, line: 162, column: 7)
!2356 = !DILocalVariable(name: "s2", arg: 2, scope: !2357, file: !2335, line: 146, type: !78)
!2357 = distinct !DISubprogram(name: "strcaseeq1", scope: !2335, file: !2335, line: 146, type: !2358, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!22, !78, !78, !25, !25, !25, !25, !25, !25, !25, !25}
!2360 = !{!2361, !2356, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369}
!2361 = !DILocalVariable(name: "s1", arg: 1, scope: !2357, file: !2335, line: 146, type: !78)
!2362 = !DILocalVariable(name: "s21", arg: 3, scope: !2357, file: !2335, line: 146, type: !25)
!2363 = !DILocalVariable(name: "s22", arg: 4, scope: !2357, file: !2335, line: 146, type: !25)
!2364 = !DILocalVariable(name: "s23", arg: 5, scope: !2357, file: !2335, line: 146, type: !25)
!2365 = !DILocalVariable(name: "s24", arg: 6, scope: !2357, file: !2335, line: 146, type: !25)
!2366 = !DILocalVariable(name: "s25", arg: 7, scope: !2357, file: !2335, line: 146, type: !25)
!2367 = !DILocalVariable(name: "s26", arg: 8, scope: !2357, file: !2335, line: 146, type: !25)
!2368 = !DILocalVariable(name: "s27", arg: 9, scope: !2357, file: !2335, line: 146, type: !25)
!2369 = !DILocalVariable(name: "s28", arg: 10, scope: !2357, file: !2335, line: 146, type: !25)
!2370 = !DILocation(line: 146, column: 41, scope: !2357, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 167, column: 16, scope: !2372, inlinedAt: !2350)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !2335, line: 164, column: 11)
!2373 = distinct !DILexicalBlock(scope: !2355, file: !2335, line: 163, column: 5)
!2374 = !DILocation(line: 146, column: 110, scope: !2357, inlinedAt: !2371)
!2375 = !DILocation(line: 146, column: 120, scope: !2357, inlinedAt: !2371)
!2376 = !DILocation(line: 148, column: 7, scope: !2377, inlinedAt: !2371)
!2377 = distinct !DILexicalBlock(scope: !2357, file: !2335, line: 148, column: 7)
!2378 = !DILocalVariable(name: "s2", arg: 2, scope: !2379, file: !2335, line: 132, type: !78)
!2379 = distinct !DISubprogram(name: "strcaseeq2", scope: !2335, file: !2335, line: 132, type: !2380, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!22, !78, !78, !25, !25, !25, !25, !25, !25, !25}
!2382 = !{!2383, !2378, !2384, !2385, !2386, !2387, !2388, !2389, !2390}
!2383 = !DILocalVariable(name: "s1", arg: 1, scope: !2379, file: !2335, line: 132, type: !78)
!2384 = !DILocalVariable(name: "s22", arg: 3, scope: !2379, file: !2335, line: 132, type: !25)
!2385 = !DILocalVariable(name: "s23", arg: 4, scope: !2379, file: !2335, line: 132, type: !25)
!2386 = !DILocalVariable(name: "s24", arg: 5, scope: !2379, file: !2335, line: 132, type: !25)
!2387 = !DILocalVariable(name: "s25", arg: 6, scope: !2379, file: !2335, line: 132, type: !25)
!2388 = !DILocalVariable(name: "s26", arg: 7, scope: !2379, file: !2335, line: 132, type: !25)
!2389 = !DILocalVariable(name: "s27", arg: 8, scope: !2379, file: !2335, line: 132, type: !25)
!2390 = !DILocalVariable(name: "s28", arg: 9, scope: !2379, file: !2335, line: 132, type: !25)
!2391 = !DILocation(line: 132, column: 41, scope: !2379, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 153, column: 16, scope: !2393, inlinedAt: !2371)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !2335, line: 150, column: 11)
!2394 = distinct !DILexicalBlock(scope: !2377, file: !2335, line: 149, column: 5)
!2395 = !DILocation(line: 132, column: 100, scope: !2379, inlinedAt: !2392)
!2396 = !DILocation(line: 132, column: 110, scope: !2379, inlinedAt: !2392)
!2397 = !DILocation(line: 134, column: 7, scope: !2398, inlinedAt: !2392)
!2398 = distinct !DILexicalBlock(scope: !2379, file: !2335, line: 134, column: 7)
!2399 = !DILocalVariable(name: "s2", arg: 2, scope: !2400, file: !2335, line: 118, type: !78)
!2400 = distinct !DISubprogram(name: "strcaseeq3", scope: !2335, file: !2335, line: 118, type: !2401, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!22, !78, !78, !25, !25, !25, !25, !25, !25}
!2403 = !{!2404, !2399, !2405, !2406, !2407, !2408, !2409, !2410}
!2404 = !DILocalVariable(name: "s1", arg: 1, scope: !2400, file: !2335, line: 118, type: !78)
!2405 = !DILocalVariable(name: "s23", arg: 3, scope: !2400, file: !2335, line: 118, type: !25)
!2406 = !DILocalVariable(name: "s24", arg: 4, scope: !2400, file: !2335, line: 118, type: !25)
!2407 = !DILocalVariable(name: "s25", arg: 5, scope: !2400, file: !2335, line: 118, type: !25)
!2408 = !DILocalVariable(name: "s26", arg: 6, scope: !2400, file: !2335, line: 118, type: !25)
!2409 = !DILocalVariable(name: "s27", arg: 7, scope: !2400, file: !2335, line: 118, type: !25)
!2410 = !DILocalVariable(name: "s28", arg: 8, scope: !2400, file: !2335, line: 118, type: !25)
!2411 = !DILocation(line: 118, column: 41, scope: !2400, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 139, column: 16, scope: !2413, inlinedAt: !2392)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !2335, line: 136, column: 11)
!2414 = distinct !DILexicalBlock(scope: !2398, file: !2335, line: 135, column: 5)
!2415 = !DILocation(line: 118, column: 90, scope: !2400, inlinedAt: !2412)
!2416 = !DILocation(line: 118, column: 100, scope: !2400, inlinedAt: !2412)
!2417 = !DILocation(line: 120, column: 7, scope: !2418, inlinedAt: !2412)
!2418 = distinct !DILexicalBlock(scope: !2400, file: !2335, line: 120, column: 7)
!2419 = !DILocation(line: 120, column: 7, scope: !2400, inlinedAt: !2412)
!2420 = !DILocalVariable(name: "s2", arg: 2, scope: !2421, file: !2335, line: 104, type: !78)
!2421 = distinct !DISubprogram(name: "strcaseeq4", scope: !2335, file: !2335, line: 104, type: !2422, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!22, !78, !78, !25, !25, !25, !25, !25}
!2424 = !{!2425, !2420, !2426, !2427, !2428, !2429, !2430}
!2425 = !DILocalVariable(name: "s1", arg: 1, scope: !2421, file: !2335, line: 104, type: !78)
!2426 = !DILocalVariable(name: "s24", arg: 3, scope: !2421, file: !2335, line: 104, type: !25)
!2427 = !DILocalVariable(name: "s25", arg: 4, scope: !2421, file: !2335, line: 104, type: !25)
!2428 = !DILocalVariable(name: "s26", arg: 5, scope: !2421, file: !2335, line: 104, type: !25)
!2429 = !DILocalVariable(name: "s27", arg: 6, scope: !2421, file: !2335, line: 104, type: !25)
!2430 = !DILocalVariable(name: "s28", arg: 7, scope: !2421, file: !2335, line: 104, type: !25)
!2431 = !DILocation(line: 104, column: 41, scope: !2421, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 125, column: 16, scope: !2433, inlinedAt: !2412)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !2335, line: 122, column: 11)
!2434 = distinct !DILexicalBlock(scope: !2418, file: !2335, line: 121, column: 5)
!2435 = !DILocation(line: 104, column: 80, scope: !2421, inlinedAt: !2432)
!2436 = !DILocation(line: 104, column: 90, scope: !2421, inlinedAt: !2432)
!2437 = !DILocation(line: 106, column: 7, scope: !2438, inlinedAt: !2432)
!2438 = distinct !DILexicalBlock(scope: !2421, file: !2335, line: 106, column: 7)
!2439 = !DILocation(line: 106, column: 7, scope: !2421, inlinedAt: !2432)
!2440 = !DILocalVariable(name: "s2", arg: 2, scope: !2441, file: !2335, line: 90, type: !78)
!2441 = distinct !DISubprogram(name: "strcaseeq5", scope: !2335, file: !2335, line: 90, type: !2442, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!22, !78, !78, !25, !25, !25, !25}
!2444 = !{!2445, !2440, !2446, !2447, !2448, !2449}
!2445 = !DILocalVariable(name: "s1", arg: 1, scope: !2441, file: !2335, line: 90, type: !78)
!2446 = !DILocalVariable(name: "s25", arg: 3, scope: !2441, file: !2335, line: 90, type: !25)
!2447 = !DILocalVariable(name: "s26", arg: 4, scope: !2441, file: !2335, line: 90, type: !25)
!2448 = !DILocalVariable(name: "s27", arg: 5, scope: !2441, file: !2335, line: 90, type: !25)
!2449 = !DILocalVariable(name: "s28", arg: 6, scope: !2441, file: !2335, line: 90, type: !25)
!2450 = !DILocation(line: 90, column: 41, scope: !2441, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 111, column: 16, scope: !2452, inlinedAt: !2432)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !2335, line: 108, column: 11)
!2453 = distinct !DILexicalBlock(scope: !2438, file: !2335, line: 107, column: 5)
!2454 = !DILocation(line: 90, column: 70, scope: !2441, inlinedAt: !2451)
!2455 = !DILocation(line: 90, column: 80, scope: !2441, inlinedAt: !2451)
!2456 = !DILocation(line: 92, column: 7, scope: !2457, inlinedAt: !2451)
!2457 = distinct !DILexicalBlock(scope: !2441, file: !2335, line: 92, column: 7)
!2458 = !DILocation(line: 92, column: 7, scope: !2441, inlinedAt: !2451)
!2459 = !DILocation(line: 227, column: 12, scope: !2351)
!2460 = !DILocation(line: 227, column: 21, scope: !2351)
!2461 = !DILocation(line: 227, column: 5, scope: !2351)
!2462 = !DILocation(line: 146, column: 41, scope: !2357, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 167, column: 16, scope: !2372, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 228, column: 7, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2316, file: !333, line: 228, column: 7)
!2466 = !DILocation(line: 146, column: 110, scope: !2357, inlinedAt: !2463)
!2467 = !DILocation(line: 146, column: 120, scope: !2357, inlinedAt: !2463)
!2468 = !DILocation(line: 148, column: 7, scope: !2377, inlinedAt: !2463)
!2469 = !DILocation(line: 132, column: 41, scope: !2379, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 153, column: 16, scope: !2393, inlinedAt: !2463)
!2471 = !DILocation(line: 132, column: 100, scope: !2379, inlinedAt: !2470)
!2472 = !DILocation(line: 132, column: 110, scope: !2379, inlinedAt: !2470)
!2473 = !DILocation(line: 134, column: 7, scope: !2398, inlinedAt: !2470)
!2474 = !DILocation(line: 134, column: 7, scope: !2379, inlinedAt: !2470)
!2475 = !DILocation(line: 118, column: 41, scope: !2400, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 139, column: 16, scope: !2413, inlinedAt: !2470)
!2477 = !DILocation(line: 118, column: 90, scope: !2400, inlinedAt: !2476)
!2478 = !DILocation(line: 118, column: 100, scope: !2400, inlinedAt: !2476)
!2479 = !DILocation(line: 120, column: 7, scope: !2418, inlinedAt: !2476)
!2480 = !DILocation(line: 120, column: 7, scope: !2400, inlinedAt: !2476)
!2481 = !DILocation(line: 104, column: 41, scope: !2421, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 125, column: 16, scope: !2433, inlinedAt: !2476)
!2483 = !DILocation(line: 104, column: 80, scope: !2421, inlinedAt: !2482)
!2484 = !DILocation(line: 104, column: 90, scope: !2421, inlinedAt: !2482)
!2485 = !DILocation(line: 106, column: 7, scope: !2438, inlinedAt: !2482)
!2486 = !DILocation(line: 106, column: 7, scope: !2421, inlinedAt: !2482)
!2487 = !DILocation(line: 90, column: 41, scope: !2441, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 111, column: 16, scope: !2452, inlinedAt: !2482)
!2489 = !DILocation(line: 90, column: 70, scope: !2441, inlinedAt: !2488)
!2490 = !DILocation(line: 90, column: 80, scope: !2441, inlinedAt: !2488)
!2491 = !DILocation(line: 92, column: 7, scope: !2457, inlinedAt: !2488)
!2492 = !DILocation(line: 92, column: 7, scope: !2441, inlinedAt: !2488)
!2493 = !DILocalVariable(name: "s2", arg: 2, scope: !2494, file: !2335, line: 76, type: !78)
!2494 = distinct !DISubprogram(name: "strcaseeq6", scope: !2335, file: !2335, line: 76, type: !2495, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!22, !78, !78, !25, !25, !25}
!2497 = !{!2498, !2493, !2499, !2500, !2501}
!2498 = !DILocalVariable(name: "s1", arg: 1, scope: !2494, file: !2335, line: 76, type: !78)
!2499 = !DILocalVariable(name: "s26", arg: 3, scope: !2494, file: !2335, line: 76, type: !25)
!2500 = !DILocalVariable(name: "s27", arg: 4, scope: !2494, file: !2335, line: 76, type: !25)
!2501 = !DILocalVariable(name: "s28", arg: 5, scope: !2494, file: !2335, line: 76, type: !25)
!2502 = !DILocation(line: 76, column: 41, scope: !2494, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 97, column: 16, scope: !2504, inlinedAt: !2488)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !2335, line: 94, column: 11)
!2505 = distinct !DILexicalBlock(scope: !2457, file: !2335, line: 93, column: 5)
!2506 = !DILocation(line: 76, column: 60, scope: !2494, inlinedAt: !2503)
!2507 = !DILocation(line: 76, column: 70, scope: !2494, inlinedAt: !2503)
!2508 = !DILocation(line: 78, column: 7, scope: !2509, inlinedAt: !2503)
!2509 = distinct !DILexicalBlock(scope: !2494, file: !2335, line: 78, column: 7)
!2510 = !DILocation(line: 78, column: 7, scope: !2494, inlinedAt: !2503)
!2511 = !DILocalVariable(name: "s2", arg: 2, scope: !2512, file: !2335, line: 62, type: !78)
!2512 = distinct !DISubprogram(name: "strcaseeq7", scope: !2335, file: !2335, line: 62, type: !2513, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!22, !78, !78, !25, !25}
!2515 = !{!2516, !2511, !2517, !2518}
!2516 = !DILocalVariable(name: "s1", arg: 1, scope: !2512, file: !2335, line: 62, type: !78)
!2517 = !DILocalVariable(name: "s27", arg: 3, scope: !2512, file: !2335, line: 62, type: !25)
!2518 = !DILocalVariable(name: "s28", arg: 4, scope: !2512, file: !2335, line: 62, type: !25)
!2519 = !DILocation(line: 62, column: 41, scope: !2512, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 83, column: 16, scope: !2521, inlinedAt: !2503)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !2335, line: 80, column: 11)
!2522 = distinct !DILexicalBlock(scope: !2509, file: !2335, line: 79, column: 5)
!2523 = !DILocation(line: 62, column: 50, scope: !2512, inlinedAt: !2520)
!2524 = !DILocation(line: 62, column: 60, scope: !2512, inlinedAt: !2520)
!2525 = !DILocation(line: 64, column: 7, scope: !2526, inlinedAt: !2520)
!2526 = distinct !DILexicalBlock(scope: !2512, file: !2335, line: 64, column: 7)
!2527 = !DILocation(line: 228, column: 7, scope: !2316)
!2528 = !DILocation(line: 229, column: 12, scope: !2465)
!2529 = !DILocation(line: 229, column: 21, scope: !2465)
!2530 = !DILocation(line: 229, column: 5, scope: !2465)
!2531 = !DILocation(line: 231, column: 13, scope: !2316)
!2532 = !DILocation(line: 231, column: 11, scope: !2316)
!2533 = !DILocation(line: 231, column: 3, scope: !2316)
!2534 = !DILocation(line: 232, column: 1, scope: !2316)
!2535 = distinct !DISubprogram(name: "quotearg_alloc", scope: !333, file: !333, line: 791, type: !2536, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!24, !78, !70, !1662}
!2538 = !{!2539, !2540, !2541}
!2539 = !DILocalVariable(name: "arg", arg: 1, scope: !2535, file: !333, line: 791, type: !78)
!2540 = !DILocalVariable(name: "argsize", arg: 2, scope: !2535, file: !333, line: 791, type: !70)
!2541 = !DILocalVariable(name: "o", arg: 3, scope: !2535, file: !333, line: 792, type: !1662)
!2542 = !DILocation(line: 791, column: 29, scope: !2535)
!2543 = !DILocation(line: 791, column: 41, scope: !2535)
!2544 = !DILocation(line: 792, column: 47, scope: !2535)
!2545 = !DILocalVariable(name: "arg", arg: 1, scope: !2546, file: !333, line: 804, type: !78)
!2546 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !333, file: !333, line: 804, type: !2547, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2549)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!24, !78, !70, !763, !1662}
!2549 = !{!2545, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557}
!2550 = !DILocalVariable(name: "argsize", arg: 2, scope: !2546, file: !333, line: 804, type: !70)
!2551 = !DILocalVariable(name: "size", arg: 3, scope: !2546, file: !333, line: 804, type: !763)
!2552 = !DILocalVariable(name: "o", arg: 4, scope: !2546, file: !333, line: 805, type: !1662)
!2553 = !DILocalVariable(name: "p", scope: !2546, file: !333, line: 807, type: !1662)
!2554 = !DILocalVariable(name: "e", scope: !2546, file: !333, line: 808, type: !22)
!2555 = !DILocalVariable(name: "flags", scope: !2546, file: !333, line: 810, type: !22)
!2556 = !DILocalVariable(name: "bufsize", scope: !2546, file: !333, line: 811, type: !70)
!2557 = !DILocalVariable(name: "buf", scope: !2546, file: !333, line: 815, type: !24)
!2558 = !DILocation(line: 804, column: 33, scope: !2546, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 794, column: 10, scope: !2535)
!2560 = !DILocation(line: 804, column: 45, scope: !2546, inlinedAt: !2559)
!2561 = !DILocation(line: 804, column: 62, scope: !2546, inlinedAt: !2559)
!2562 = !DILocation(line: 805, column: 51, scope: !2546, inlinedAt: !2559)
!2563 = !DILocation(line: 807, column: 37, scope: !2546, inlinedAt: !2559)
!2564 = !DILocation(line: 807, column: 33, scope: !2546, inlinedAt: !2559)
!2565 = !DILocation(line: 808, column: 11, scope: !2546, inlinedAt: !2559)
!2566 = !DILocation(line: 808, column: 7, scope: !2546, inlinedAt: !2559)
!2567 = !DILocation(line: 810, column: 18, scope: !2546, inlinedAt: !2559)
!2568 = !DILocation(line: 810, column: 24, scope: !2546, inlinedAt: !2559)
!2569 = !DILocation(line: 810, column: 7, scope: !2546, inlinedAt: !2559)
!2570 = !DILocation(line: 811, column: 69, scope: !2546, inlinedAt: !2559)
!2571 = !DILocation(line: 812, column: 53, scope: !2546, inlinedAt: !2559)
!2572 = !DILocation(line: 813, column: 49, scope: !2546, inlinedAt: !2559)
!2573 = !DILocation(line: 814, column: 49, scope: !2546, inlinedAt: !2559)
!2574 = !DILocation(line: 811, column: 20, scope: !2546, inlinedAt: !2559)
!2575 = !DILocation(line: 814, column: 62, scope: !2546, inlinedAt: !2559)
!2576 = !DILocation(line: 811, column: 10, scope: !2546, inlinedAt: !2559)
!2577 = !DILocalVariable(name: "n", arg: 1, scope: !2578, file: !759, line: 220, type: !70)
!2578 = distinct !DISubprogram(name: "xcharalloc", scope: !759, file: !759, line: 220, type: !2579, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!24, !70}
!2581 = !{!2577}
!2582 = !DILocation(line: 220, column: 20, scope: !2578, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 815, column: 15, scope: !2546, inlinedAt: !2559)
!2584 = !DILocation(line: 222, column: 10, scope: !2578, inlinedAt: !2583)
!2585 = !DILocation(line: 815, column: 9, scope: !2546, inlinedAt: !2559)
!2586 = !DILocation(line: 816, column: 60, scope: !2546, inlinedAt: !2559)
!2587 = !DILocation(line: 818, column: 32, scope: !2546, inlinedAt: !2559)
!2588 = !DILocation(line: 818, column: 47, scope: !2546, inlinedAt: !2559)
!2589 = !DILocation(line: 816, column: 3, scope: !2546, inlinedAt: !2559)
!2590 = !DILocation(line: 819, column: 9, scope: !2546, inlinedAt: !2559)
!2591 = !DILocation(line: 794, column: 3, scope: !2535)
!2592 = !DILocation(line: 804, column: 33, scope: !2546)
!2593 = !DILocation(line: 804, column: 45, scope: !2546)
!2594 = !DILocation(line: 804, column: 62, scope: !2546)
!2595 = !DILocation(line: 805, column: 51, scope: !2546)
!2596 = !DILocation(line: 807, column: 37, scope: !2546)
!2597 = !DILocation(line: 807, column: 33, scope: !2546)
!2598 = !DILocation(line: 808, column: 11, scope: !2546)
!2599 = !DILocation(line: 808, column: 7, scope: !2546)
!2600 = !DILocation(line: 810, column: 18, scope: !2546)
!2601 = !DILocation(line: 810, column: 27, scope: !2546)
!2602 = !DILocation(line: 810, column: 24, scope: !2546)
!2603 = !DILocation(line: 810, column: 7, scope: !2546)
!2604 = !DILocation(line: 811, column: 69, scope: !2546)
!2605 = !DILocation(line: 812, column: 53, scope: !2546)
!2606 = !DILocation(line: 813, column: 49, scope: !2546)
!2607 = !DILocation(line: 814, column: 49, scope: !2546)
!2608 = !DILocation(line: 811, column: 20, scope: !2546)
!2609 = !DILocation(line: 814, column: 62, scope: !2546)
!2610 = !DILocation(line: 811, column: 10, scope: !2546)
!2611 = !DILocation(line: 220, column: 20, scope: !2578, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 815, column: 15, scope: !2546)
!2613 = !DILocation(line: 222, column: 10, scope: !2578, inlinedAt: !2612)
!2614 = !DILocation(line: 815, column: 9, scope: !2546)
!2615 = !DILocation(line: 816, column: 60, scope: !2546)
!2616 = !DILocation(line: 818, column: 32, scope: !2546)
!2617 = !DILocation(line: 818, column: 47, scope: !2546)
!2618 = !DILocation(line: 816, column: 3, scope: !2546)
!2619 = !DILocation(line: 819, column: 9, scope: !2546)
!2620 = !DILocation(line: 820, column: 7, scope: !2546)
!2621 = !DILocation(line: 821, column: 11, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2546, file: !333, line: 820, column: 7)
!2623 = !DILocation(line: 821, column: 5, scope: !2622)
!2624 = !DILocation(line: 822, column: 3, scope: !2546)
!2625 = distinct !DISubprogram(name: "quotearg_free", scope: !333, file: !333, line: 840, type: !386, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2626)
!2626 = !{!2627, !2628}
!2627 = !DILocalVariable(name: "sv", scope: !2625, file: !333, line: 842, type: !357)
!2628 = !DILocalVariable(name: "i", scope: !2625, file: !333, line: 843, type: !22)
!2629 = !DILocation(line: 842, column: 24, scope: !2625)
!2630 = !DILocation(line: 842, column: 19, scope: !2625)
!2631 = !DILocation(line: 843, column: 7, scope: !2625)
!2632 = !DILocation(line: 844, column: 19, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !333, line: 844, column: 3)
!2634 = distinct !DILexicalBlock(scope: !2625, file: !333, line: 844, column: 3)
!2635 = !DILocation(line: 844, column: 17, scope: !2633)
!2636 = !DILocation(line: 844, column: 3, scope: !2634)
!2637 = !DILocation(line: 845, column: 17, scope: !2633)
!2638 = !{!2639, !810, i64 8}
!2639 = !{!"slotvec", !991, i64 0, !810, i64 8}
!2640 = !DILocation(line: 845, column: 5, scope: !2633)
!2641 = !DILocation(line: 844, column: 28, scope: !2633)
!2642 = distinct !{!2642, !2636, !2643}
!2643 = !DILocation(line: 845, column: 20, scope: !2634)
!2644 = !DILocation(line: 846, column: 13, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2625, file: !333, line: 846, column: 7)
!2646 = !DILocation(line: 846, column: 17, scope: !2645)
!2647 = !DILocation(line: 846, column: 7, scope: !2625)
!2648 = !DILocation(line: 848, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2645, file: !333, line: 847, column: 5)
!2650 = !DILocation(line: 849, column: 21, scope: !2649)
!2651 = !{!2639, !991, i64 0}
!2652 = !DILocation(line: 850, column: 20, scope: !2649)
!2653 = !DILocation(line: 851, column: 5, scope: !2649)
!2654 = !DILocation(line: 852, column: 10, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2625, file: !333, line: 852, column: 7)
!2656 = !DILocation(line: 852, column: 7, scope: !2625)
!2657 = !DILocation(line: 854, column: 13, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2655, file: !333, line: 853, column: 5)
!2659 = !DILocation(line: 854, column: 7, scope: !2658)
!2660 = !DILocation(line: 855, column: 15, scope: !2658)
!2661 = !DILocation(line: 856, column: 5, scope: !2658)
!2662 = !DILocation(line: 857, column: 10, scope: !2625)
!2663 = !DILocation(line: 858, column: 1, scope: !2625)
!2664 = distinct !DISubprogram(name: "quotearg_n", scope: !333, file: !333, line: 922, type: !2665, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!24, !22, !78}
!2667 = !{!2668, !2669}
!2668 = !DILocalVariable(name: "n", arg: 1, scope: !2664, file: !333, line: 922, type: !22)
!2669 = !DILocalVariable(name: "arg", arg: 2, scope: !2664, file: !333, line: 922, type: !78)
!2670 = !DILocation(line: 922, column: 17, scope: !2664)
!2671 = !DILocation(line: 922, column: 32, scope: !2664)
!2672 = !DILocation(line: 924, column: 10, scope: !2664)
!2673 = !DILocation(line: 924, column: 3, scope: !2664)
!2674 = distinct !DISubprogram(name: "quotearg_n_options", scope: !333, file: !333, line: 869, type: !2675, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!24, !22, !78, !70, !1662}
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683, !2684, !2687, !2689, !2690, !2691}
!2678 = !DILocalVariable(name: "n", arg: 1, scope: !2674, file: !333, line: 869, type: !22)
!2679 = !DILocalVariable(name: "arg", arg: 2, scope: !2674, file: !333, line: 869, type: !78)
!2680 = !DILocalVariable(name: "argsize", arg: 3, scope: !2674, file: !333, line: 869, type: !70)
!2681 = !DILocalVariable(name: "options", arg: 4, scope: !2674, file: !333, line: 870, type: !1662)
!2682 = !DILocalVariable(name: "e", scope: !2674, file: !333, line: 872, type: !22)
!2683 = !DILocalVariable(name: "sv", scope: !2674, file: !333, line: 874, type: !357)
!2684 = !DILocalVariable(name: "preallocated", scope: !2685, file: !333, line: 881, type: !14)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !333, line: 880, column: 5)
!2686 = distinct !DILexicalBlock(scope: !2674, file: !333, line: 879, column: 7)
!2687 = !DILocalVariable(name: "size", scope: !2688, file: !333, line: 894, type: !70)
!2688 = distinct !DILexicalBlock(scope: !2674, file: !333, line: 893, column: 3)
!2689 = !DILocalVariable(name: "val", scope: !2688, file: !333, line: 895, type: !24)
!2690 = !DILocalVariable(name: "flags", scope: !2688, file: !333, line: 897, type: !22)
!2691 = !DILocalVariable(name: "qsize", scope: !2688, file: !333, line: 898, type: !70)
!2692 = !DILocation(line: 869, column: 25, scope: !2674)
!2693 = !DILocation(line: 869, column: 40, scope: !2674)
!2694 = !DILocation(line: 869, column: 52, scope: !2674)
!2695 = !DILocation(line: 870, column: 51, scope: !2674)
!2696 = !DILocation(line: 872, column: 11, scope: !2674)
!2697 = !DILocation(line: 872, column: 7, scope: !2674)
!2698 = !DILocation(line: 874, column: 24, scope: !2674)
!2699 = !DILocation(line: 874, column: 19, scope: !2674)
!2700 = !DILocation(line: 876, column: 9, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2674, file: !333, line: 876, column: 7)
!2702 = !DILocation(line: 876, column: 7, scope: !2674)
!2703 = !DILocation(line: 877, column: 5, scope: !2701)
!2704 = !DILocation(line: 879, column: 7, scope: !2686)
!2705 = !DILocation(line: 879, column: 14, scope: !2686)
!2706 = !DILocation(line: 879, column: 7, scope: !2674)
!2707 = !DILocation(line: 881, column: 31, scope: !2685)
!2708 = !DILocation(line: 883, column: 67, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2685, file: !333, line: 883, column: 11)
!2710 = !DILocation(line: 883, column: 11, scope: !2685)
!2711 = !DILocation(line: 884, column: 9, scope: !2709)
!2712 = !DILocation(line: 886, column: 32, scope: !2685)
!2713 = !DILocation(line: 886, column: 61, scope: !2685)
!2714 = !DILocation(line: 886, column: 58, scope: !2685)
!2715 = !DILocation(line: 886, column: 66, scope: !2685)
!2716 = !DILocation(line: 886, column: 22, scope: !2685)
!2717 = !DILocation(line: 886, column: 15, scope: !2685)
!2718 = !DILocation(line: 887, column: 11, scope: !2685)
!2719 = !DILocation(line: 888, column: 15, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2685, file: !333, line: 887, column: 11)
!2721 = !{i64 0, i64 8, !1020, i64 8, i64 8, !809}
!2722 = !DILocation(line: 888, column: 9, scope: !2720)
!2723 = !DILocation(line: 889, column: 20, scope: !2685)
!2724 = !DILocation(line: 889, column: 18, scope: !2685)
!2725 = !DILocation(line: 889, column: 7, scope: !2685)
!2726 = !DILocation(line: 889, column: 38, scope: !2685)
!2727 = !DILocation(line: 889, column: 31, scope: !2685)
!2728 = !DILocation(line: 889, column: 48, scope: !2685)
!2729 = !DILocation(line: 890, column: 14, scope: !2685)
!2730 = !DILocation(line: 891, column: 5, scope: !2685)
!2731 = !DILocation(line: 894, column: 19, scope: !2688)
!2732 = !DILocation(line: 894, column: 25, scope: !2688)
!2733 = !DILocation(line: 894, column: 12, scope: !2688)
!2734 = !DILocation(line: 895, column: 23, scope: !2688)
!2735 = !DILocation(line: 895, column: 11, scope: !2688)
!2736 = !DILocation(line: 897, column: 26, scope: !2688)
!2737 = !DILocation(line: 897, column: 32, scope: !2688)
!2738 = !DILocation(line: 897, column: 9, scope: !2688)
!2739 = !DILocation(line: 899, column: 55, scope: !2688)
!2740 = !DILocation(line: 900, column: 46, scope: !2688)
!2741 = !DILocation(line: 901, column: 55, scope: !2688)
!2742 = !DILocation(line: 902, column: 55, scope: !2688)
!2743 = !DILocation(line: 898, column: 20, scope: !2688)
!2744 = !DILocation(line: 898, column: 12, scope: !2688)
!2745 = !DILocation(line: 904, column: 14, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2688, file: !333, line: 904, column: 9)
!2747 = !DILocation(line: 904, column: 9, scope: !2688)
!2748 = !DILocation(line: 906, column: 35, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2746, file: !333, line: 905, column: 7)
!2750 = !DILocation(line: 906, column: 20, scope: !2749)
!2751 = !DILocation(line: 907, column: 17, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2749, file: !333, line: 907, column: 13)
!2753 = !DILocation(line: 907, column: 13, scope: !2749)
!2754 = !DILocation(line: 908, column: 11, scope: !2752)
!2755 = !DILocation(line: 220, column: 20, scope: !2578, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 909, column: 27, scope: !2749)
!2757 = !DILocation(line: 222, column: 10, scope: !2578, inlinedAt: !2756)
!2758 = !DILocation(line: 909, column: 19, scope: !2749)
!2759 = !DILocation(line: 910, column: 69, scope: !2749)
!2760 = !DILocation(line: 912, column: 44, scope: !2749)
!2761 = !DILocation(line: 913, column: 44, scope: !2749)
!2762 = !DILocation(line: 910, column: 9, scope: !2749)
!2763 = !DILocation(line: 914, column: 7, scope: !2749)
!2764 = !DILocation(line: 916, column: 11, scope: !2688)
!2765 = !DILocation(line: 917, column: 5, scope: !2688)
!2766 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !333, file: !333, line: 928, type: !2767, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!24, !22, !78, !70}
!2769 = !{!2770, !2771, !2772}
!2770 = !DILocalVariable(name: "n", arg: 1, scope: !2766, file: !333, line: 928, type: !22)
!2771 = !DILocalVariable(name: "arg", arg: 2, scope: !2766, file: !333, line: 928, type: !78)
!2772 = !DILocalVariable(name: "argsize", arg: 3, scope: !2766, file: !333, line: 928, type: !70)
!2773 = !DILocation(line: 928, column: 21, scope: !2766)
!2774 = !DILocation(line: 928, column: 36, scope: !2766)
!2775 = !DILocation(line: 928, column: 48, scope: !2766)
!2776 = !DILocation(line: 930, column: 10, scope: !2766)
!2777 = !DILocation(line: 930, column: 3, scope: !2766)
!2778 = distinct !DISubprogram(name: "quotearg", scope: !333, file: !333, line: 934, type: !1409, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2779)
!2779 = !{!2780}
!2780 = !DILocalVariable(name: "arg", arg: 1, scope: !2778, file: !333, line: 934, type: !78)
!2781 = !DILocation(line: 934, column: 23, scope: !2778)
!2782 = !DILocation(line: 922, column: 17, scope: !2664, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 936, column: 10, scope: !2778)
!2784 = !DILocation(line: 922, column: 32, scope: !2664, inlinedAt: !2783)
!2785 = !DILocation(line: 924, column: 10, scope: !2664, inlinedAt: !2783)
!2786 = !DILocation(line: 936, column: 3, scope: !2778)
!2787 = distinct !DISubprogram(name: "quotearg_mem", scope: !333, file: !333, line: 940, type: !2788, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2790)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!24, !78, !70}
!2790 = !{!2791, !2792}
!2791 = !DILocalVariable(name: "arg", arg: 1, scope: !2787, file: !333, line: 940, type: !78)
!2792 = !DILocalVariable(name: "argsize", arg: 2, scope: !2787, file: !333, line: 940, type: !70)
!2793 = !DILocation(line: 940, column: 27, scope: !2787)
!2794 = !DILocation(line: 940, column: 39, scope: !2787)
!2795 = !DILocation(line: 928, column: 21, scope: !2766, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 942, column: 10, scope: !2787)
!2797 = !DILocation(line: 928, column: 36, scope: !2766, inlinedAt: !2796)
!2798 = !DILocation(line: 928, column: 48, scope: !2766, inlinedAt: !2796)
!2799 = !DILocation(line: 930, column: 10, scope: !2766, inlinedAt: !2796)
!2800 = !DILocation(line: 942, column: 3, scope: !2787)
!2801 = distinct !DISubprogram(name: "quotearg_n_style", scope: !333, file: !333, line: 946, type: !2802, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2804)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!24, !22, !212, !78}
!2804 = !{!2805, !2806, !2807, !2808}
!2805 = !DILocalVariable(name: "n", arg: 1, scope: !2801, file: !333, line: 946, type: !22)
!2806 = !DILocalVariable(name: "s", arg: 2, scope: !2801, file: !333, line: 946, type: !212)
!2807 = !DILocalVariable(name: "arg", arg: 3, scope: !2801, file: !333, line: 946, type: !78)
!2808 = !DILocalVariable(name: "o", scope: !2801, file: !333, line: 948, type: !1663)
!2809 = !DILocalVariable(name: "o", scope: !2810, file: !333, line: 187, type: !340)
!2810 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !333, file: !333, line: 185, type: !2811, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!340, !212}
!2813 = !{!2814, !2809}
!2814 = !DILocalVariable(name: "style", arg: 1, scope: !2810, file: !333, line: 185, type: !212)
!2815 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2816 = !DILocation(line: 187, column: 26, scope: !2810, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 948, column: 36, scope: !2801)
!2818 = !DILocation(line: 946, column: 23, scope: !2801)
!2819 = !DILocation(line: 946, column: 45, scope: !2801)
!2820 = !DILocation(line: 946, column: 60, scope: !2801)
!2821 = !DILocation(line: 948, column: 3, scope: !2801)
!2822 = !DILocation(line: 948, column: 32, scope: !2801)
!2823 = !DILocation(line: 185, column: 48, scope: !2810, inlinedAt: !2817)
!2824 = !DILocation(line: 187, column: 3, scope: !2810, inlinedAt: !2817)
!2825 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2826 = !DILocation(line: 188, column: 13, scope: !2827, inlinedAt: !2817)
!2827 = distinct !DILexicalBlock(scope: !2810, file: !333, line: 188, column: 7)
!2828 = !DILocation(line: 188, column: 7, scope: !2810, inlinedAt: !2817)
!2829 = !DILocation(line: 189, column: 5, scope: !2827, inlinedAt: !2817)
!2830 = !{!2831}
!2831 = distinct !{!2831, !2832, !"quoting_options_from_style: argument 0"}
!2832 = distinct !{!2832, !"quoting_options_from_style"}
!2833 = !DILocation(line: 191, column: 10, scope: !2810, inlinedAt: !2817)
!2834 = !DILocation(line: 192, column: 1, scope: !2810, inlinedAt: !2817)
!2835 = !DILocation(line: 949, column: 10, scope: !2801)
!2836 = !DILocation(line: 950, column: 1, scope: !2801)
!2837 = !DILocation(line: 949, column: 3, scope: !2801)
!2838 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !333, file: !333, line: 953, type: !2839, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!24, !22, !212, !78, !70}
!2841 = !{!2842, !2843, !2844, !2845, !2846}
!2842 = !DILocalVariable(name: "n", arg: 1, scope: !2838, file: !333, line: 953, type: !22)
!2843 = !DILocalVariable(name: "s", arg: 2, scope: !2838, file: !333, line: 953, type: !212)
!2844 = !DILocalVariable(name: "arg", arg: 3, scope: !2838, file: !333, line: 954, type: !78)
!2845 = !DILocalVariable(name: "argsize", arg: 4, scope: !2838, file: !333, line: 954, type: !70)
!2846 = !DILocalVariable(name: "o", scope: !2838, file: !333, line: 956, type: !1663)
!2847 = !DILocation(line: 187, column: 26, scope: !2810, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 956, column: 36, scope: !2838)
!2849 = !DILocation(line: 953, column: 27, scope: !2838)
!2850 = !DILocation(line: 953, column: 49, scope: !2838)
!2851 = !DILocation(line: 954, column: 35, scope: !2838)
!2852 = !DILocation(line: 954, column: 47, scope: !2838)
!2853 = !DILocation(line: 956, column: 3, scope: !2838)
!2854 = !DILocation(line: 956, column: 32, scope: !2838)
!2855 = !DILocation(line: 185, column: 48, scope: !2810, inlinedAt: !2848)
!2856 = !DILocation(line: 187, column: 3, scope: !2810, inlinedAt: !2848)
!2857 = !DILocation(line: 188, column: 13, scope: !2827, inlinedAt: !2848)
!2858 = !DILocation(line: 188, column: 7, scope: !2810, inlinedAt: !2848)
!2859 = !DILocation(line: 189, column: 5, scope: !2827, inlinedAt: !2848)
!2860 = !{!2861}
!2861 = distinct !{!2861, !2862, !"quoting_options_from_style: argument 0"}
!2862 = distinct !{!2862, !"quoting_options_from_style"}
!2863 = !DILocation(line: 191, column: 10, scope: !2810, inlinedAt: !2848)
!2864 = !DILocation(line: 192, column: 1, scope: !2810, inlinedAt: !2848)
!2865 = !DILocation(line: 957, column: 10, scope: !2838)
!2866 = !DILocation(line: 958, column: 1, scope: !2838)
!2867 = !DILocation(line: 957, column: 3, scope: !2838)
!2868 = distinct !DISubprogram(name: "quotearg_style", scope: !333, file: !333, line: 961, type: !2869, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!24, !212, !78}
!2871 = !{!2872, !2873}
!2872 = !DILocalVariable(name: "s", arg: 1, scope: !2868, file: !333, line: 961, type: !212)
!2873 = !DILocalVariable(name: "arg", arg: 2, scope: !2868, file: !333, line: 961, type: !78)
!2874 = !DILocation(line: 187, column: 26, scope: !2810, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 948, column: 36, scope: !2801, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 963, column: 10, scope: !2868)
!2877 = !DILocation(line: 961, column: 36, scope: !2868)
!2878 = !DILocation(line: 961, column: 51, scope: !2868)
!2879 = !DILocation(line: 946, column: 23, scope: !2801, inlinedAt: !2876)
!2880 = !DILocation(line: 946, column: 45, scope: !2801, inlinedAt: !2876)
!2881 = !DILocation(line: 946, column: 60, scope: !2801, inlinedAt: !2876)
!2882 = !DILocation(line: 948, column: 3, scope: !2801, inlinedAt: !2876)
!2883 = !DILocation(line: 948, column: 32, scope: !2801, inlinedAt: !2876)
!2884 = !DILocation(line: 185, column: 48, scope: !2810, inlinedAt: !2875)
!2885 = !DILocation(line: 187, column: 3, scope: !2810, inlinedAt: !2875)
!2886 = !DILocation(line: 188, column: 13, scope: !2827, inlinedAt: !2875)
!2887 = !DILocation(line: 188, column: 7, scope: !2810, inlinedAt: !2875)
!2888 = !DILocation(line: 189, column: 5, scope: !2827, inlinedAt: !2875)
!2889 = !{!2890}
!2890 = distinct !{!2890, !2891, !"quoting_options_from_style: argument 0"}
!2891 = distinct !{!2891, !"quoting_options_from_style"}
!2892 = !DILocation(line: 191, column: 10, scope: !2810, inlinedAt: !2875)
!2893 = !DILocation(line: 192, column: 1, scope: !2810, inlinedAt: !2875)
!2894 = !DILocation(line: 949, column: 10, scope: !2801, inlinedAt: !2876)
!2895 = !DILocation(line: 950, column: 1, scope: !2801, inlinedAt: !2876)
!2896 = !DILocation(line: 963, column: 3, scope: !2868)
!2897 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !333, file: !333, line: 967, type: !2898, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!24, !212, !78, !70}
!2900 = !{!2901, !2902, !2903}
!2901 = !DILocalVariable(name: "s", arg: 1, scope: !2897, file: !333, line: 967, type: !212)
!2902 = !DILocalVariable(name: "arg", arg: 2, scope: !2897, file: !333, line: 967, type: !78)
!2903 = !DILocalVariable(name: "argsize", arg: 3, scope: !2897, file: !333, line: 967, type: !70)
!2904 = !DILocation(line: 187, column: 26, scope: !2810, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 956, column: 36, scope: !2838, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 969, column: 10, scope: !2897)
!2907 = !DILocation(line: 967, column: 40, scope: !2897)
!2908 = !DILocation(line: 967, column: 55, scope: !2897)
!2909 = !DILocation(line: 967, column: 67, scope: !2897)
!2910 = !DILocation(line: 953, column: 27, scope: !2838, inlinedAt: !2906)
!2911 = !DILocation(line: 953, column: 49, scope: !2838, inlinedAt: !2906)
!2912 = !DILocation(line: 954, column: 35, scope: !2838, inlinedAt: !2906)
!2913 = !DILocation(line: 954, column: 47, scope: !2838, inlinedAt: !2906)
!2914 = !DILocation(line: 956, column: 3, scope: !2838, inlinedAt: !2906)
!2915 = !DILocation(line: 956, column: 32, scope: !2838, inlinedAt: !2906)
!2916 = !DILocation(line: 185, column: 48, scope: !2810, inlinedAt: !2905)
!2917 = !DILocation(line: 187, column: 3, scope: !2810, inlinedAt: !2905)
!2918 = !DILocation(line: 188, column: 13, scope: !2827, inlinedAt: !2905)
!2919 = !DILocation(line: 188, column: 7, scope: !2810, inlinedAt: !2905)
!2920 = !DILocation(line: 189, column: 5, scope: !2827, inlinedAt: !2905)
!2921 = !{!2922}
!2922 = distinct !{!2922, !2923, !"quoting_options_from_style: argument 0"}
!2923 = distinct !{!2923, !"quoting_options_from_style"}
!2924 = !DILocation(line: 191, column: 10, scope: !2810, inlinedAt: !2905)
!2925 = !DILocation(line: 192, column: 1, scope: !2810, inlinedAt: !2905)
!2926 = !DILocation(line: 957, column: 10, scope: !2838, inlinedAt: !2906)
!2927 = !DILocation(line: 958, column: 1, scope: !2838, inlinedAt: !2906)
!2928 = !DILocation(line: 969, column: 3, scope: !2897)
!2929 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !333, file: !333, line: 973, type: !2930, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!24, !78, !70, !25}
!2932 = !{!2933, !2934, !2935, !2936}
!2933 = !DILocalVariable(name: "arg", arg: 1, scope: !2929, file: !333, line: 973, type: !78)
!2934 = !DILocalVariable(name: "argsize", arg: 2, scope: !2929, file: !333, line: 973, type: !70)
!2935 = !DILocalVariable(name: "ch", arg: 3, scope: !2929, file: !333, line: 973, type: !25)
!2936 = !DILocalVariable(name: "options", scope: !2929, file: !333, line: 975, type: !340)
!2937 = !DILocation(line: 973, column: 32, scope: !2929)
!2938 = !DILocation(line: 973, column: 44, scope: !2929)
!2939 = !DILocation(line: 973, column: 58, scope: !2929)
!2940 = !DILocation(line: 975, column: 3, scope: !2929)
!2941 = !DILocation(line: 976, column: 13, scope: !2929)
!2942 = !{i64 0, i64 4, !937, i64 4, i64 4, !884, i64 8, i64 32, !937, i64 40, i64 8, !809, i64 48, i64 8, !809}
!2943 = !DILocation(line: 975, column: 26, scope: !2929)
!2944 = !DILocation(line: 144, column: 43, scope: !1684, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 977, column: 3, scope: !2929)
!2946 = !DILocation(line: 144, column: 51, scope: !1684, inlinedAt: !2945)
!2947 = !DILocation(line: 144, column: 58, scope: !1684, inlinedAt: !2945)
!2948 = !DILocation(line: 146, column: 17, scope: !1684, inlinedAt: !2945)
!2949 = !DILocation(line: 148, column: 62, scope: !1684, inlinedAt: !2945)
!2950 = !DILocation(line: 148, column: 57, scope: !1684, inlinedAt: !2945)
!2951 = !DILocation(line: 147, column: 17, scope: !1684, inlinedAt: !2945)
!2952 = !DILocation(line: 149, column: 18, scope: !1684, inlinedAt: !2945)
!2953 = !DILocation(line: 149, column: 15, scope: !1684, inlinedAt: !2945)
!2954 = !DILocation(line: 149, column: 7, scope: !1684, inlinedAt: !2945)
!2955 = !DILocation(line: 150, column: 12, scope: !1684, inlinedAt: !2945)
!2956 = !DILocation(line: 150, column: 15, scope: !1684, inlinedAt: !2945)
!2957 = !DILocation(line: 150, column: 25, scope: !1684, inlinedAt: !2945)
!2958 = !DILocation(line: 150, column: 7, scope: !1684, inlinedAt: !2945)
!2959 = !DILocation(line: 151, column: 18, scope: !1684, inlinedAt: !2945)
!2960 = !DILocation(line: 151, column: 23, scope: !1684, inlinedAt: !2945)
!2961 = !DILocation(line: 151, column: 6, scope: !1684, inlinedAt: !2945)
!2962 = !DILocation(line: 978, column: 10, scope: !2929)
!2963 = !DILocation(line: 979, column: 1, scope: !2929)
!2964 = !DILocation(line: 978, column: 3, scope: !2929)
!2965 = distinct !DISubprogram(name: "quotearg_char", scope: !333, file: !333, line: 982, type: !2966, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!24, !78, !25}
!2968 = !{!2969, !2970}
!2969 = !DILocalVariable(name: "arg", arg: 1, scope: !2965, file: !333, line: 982, type: !78)
!2970 = !DILocalVariable(name: "ch", arg: 2, scope: !2965, file: !333, line: 982, type: !25)
!2971 = !DILocation(line: 982, column: 28, scope: !2965)
!2972 = !DILocation(line: 982, column: 38, scope: !2965)
!2973 = !DILocation(line: 973, column: 32, scope: !2929, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 984, column: 10, scope: !2965)
!2975 = !DILocation(line: 973, column: 44, scope: !2929, inlinedAt: !2974)
!2976 = !DILocation(line: 973, column: 58, scope: !2929, inlinedAt: !2974)
!2977 = !DILocation(line: 975, column: 3, scope: !2929, inlinedAt: !2974)
!2978 = !DILocation(line: 976, column: 13, scope: !2929, inlinedAt: !2974)
!2979 = !DILocation(line: 975, column: 26, scope: !2929, inlinedAt: !2974)
!2980 = !DILocation(line: 144, column: 43, scope: !1684, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 977, column: 3, scope: !2929, inlinedAt: !2974)
!2982 = !DILocation(line: 144, column: 51, scope: !1684, inlinedAt: !2981)
!2983 = !DILocation(line: 144, column: 58, scope: !1684, inlinedAt: !2981)
!2984 = !DILocation(line: 146, column: 17, scope: !1684, inlinedAt: !2981)
!2985 = !DILocation(line: 148, column: 62, scope: !1684, inlinedAt: !2981)
!2986 = !DILocation(line: 148, column: 57, scope: !1684, inlinedAt: !2981)
!2987 = !DILocation(line: 147, column: 17, scope: !1684, inlinedAt: !2981)
!2988 = !DILocation(line: 149, column: 18, scope: !1684, inlinedAt: !2981)
!2989 = !DILocation(line: 149, column: 15, scope: !1684, inlinedAt: !2981)
!2990 = !DILocation(line: 149, column: 7, scope: !1684, inlinedAt: !2981)
!2991 = !DILocation(line: 150, column: 12, scope: !1684, inlinedAt: !2981)
!2992 = !DILocation(line: 150, column: 15, scope: !1684, inlinedAt: !2981)
!2993 = !DILocation(line: 150, column: 25, scope: !1684, inlinedAt: !2981)
!2994 = !DILocation(line: 150, column: 7, scope: !1684, inlinedAt: !2981)
!2995 = !DILocation(line: 151, column: 18, scope: !1684, inlinedAt: !2981)
!2996 = !DILocation(line: 151, column: 23, scope: !1684, inlinedAt: !2981)
!2997 = !DILocation(line: 151, column: 6, scope: !1684, inlinedAt: !2981)
!2998 = !DILocation(line: 978, column: 10, scope: !2929, inlinedAt: !2974)
!2999 = !DILocation(line: 979, column: 1, scope: !2929, inlinedAt: !2974)
!3000 = !DILocation(line: 984, column: 3, scope: !2965)
!3001 = distinct !DISubprogram(name: "quotearg_colon", scope: !333, file: !333, line: 988, type: !1409, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !3002)
!3002 = !{!3003}
!3003 = !DILocalVariable(name: "arg", arg: 1, scope: !3001, file: !333, line: 988, type: !78)
!3004 = !DILocation(line: 988, column: 29, scope: !3001)
!3005 = !DILocation(line: 982, column: 28, scope: !2965, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 990, column: 10, scope: !3001)
!3007 = !DILocation(line: 982, column: 38, scope: !2965, inlinedAt: !3006)
!3008 = !DILocation(line: 973, column: 32, scope: !2929, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 984, column: 10, scope: !2965, inlinedAt: !3006)
!3010 = !DILocation(line: 973, column: 44, scope: !2929, inlinedAt: !3009)
!3011 = !DILocation(line: 973, column: 58, scope: !2929, inlinedAt: !3009)
!3012 = !DILocation(line: 975, column: 3, scope: !2929, inlinedAt: !3009)
!3013 = !DILocation(line: 976, column: 13, scope: !2929, inlinedAt: !3009)
!3014 = !DILocation(line: 975, column: 26, scope: !2929, inlinedAt: !3009)
!3015 = !DILocation(line: 144, column: 43, scope: !1684, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 977, column: 3, scope: !2929, inlinedAt: !3009)
!3017 = !DILocation(line: 144, column: 51, scope: !1684, inlinedAt: !3016)
!3018 = !DILocation(line: 144, column: 58, scope: !1684, inlinedAt: !3016)
!3019 = !DILocation(line: 146, column: 17, scope: !1684, inlinedAt: !3016)
!3020 = !DILocation(line: 148, column: 57, scope: !1684, inlinedAt: !3016)
!3021 = !DILocation(line: 147, column: 17, scope: !1684, inlinedAt: !3016)
!3022 = !DILocation(line: 149, column: 7, scope: !1684, inlinedAt: !3016)
!3023 = !DILocation(line: 150, column: 12, scope: !1684, inlinedAt: !3016)
!3024 = !DILocation(line: 151, column: 6, scope: !1684, inlinedAt: !3016)
!3025 = !DILocation(line: 978, column: 10, scope: !2929, inlinedAt: !3009)
!3026 = !DILocation(line: 979, column: 1, scope: !2929, inlinedAt: !3009)
!3027 = !DILocation(line: 990, column: 3, scope: !3001)
!3028 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !333, file: !333, line: 994, type: !2788, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !3029)
!3029 = !{!3030, !3031}
!3030 = !DILocalVariable(name: "arg", arg: 1, scope: !3028, file: !333, line: 994, type: !78)
!3031 = !DILocalVariable(name: "argsize", arg: 2, scope: !3028, file: !333, line: 994, type: !70)
!3032 = !DILocation(line: 994, column: 33, scope: !3028)
!3033 = !DILocation(line: 994, column: 45, scope: !3028)
!3034 = !DILocation(line: 973, column: 32, scope: !2929, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 996, column: 10, scope: !3028)
!3036 = !DILocation(line: 973, column: 44, scope: !2929, inlinedAt: !3035)
!3037 = !DILocation(line: 973, column: 58, scope: !2929, inlinedAt: !3035)
!3038 = !DILocation(line: 975, column: 3, scope: !2929, inlinedAt: !3035)
!3039 = !DILocation(line: 976, column: 13, scope: !2929, inlinedAt: !3035)
!3040 = !DILocation(line: 975, column: 26, scope: !2929, inlinedAt: !3035)
!3041 = !DILocation(line: 144, column: 43, scope: !1684, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 977, column: 3, scope: !2929, inlinedAt: !3035)
!3043 = !DILocation(line: 144, column: 51, scope: !1684, inlinedAt: !3042)
!3044 = !DILocation(line: 144, column: 58, scope: !1684, inlinedAt: !3042)
!3045 = !DILocation(line: 146, column: 17, scope: !1684, inlinedAt: !3042)
!3046 = !DILocation(line: 148, column: 57, scope: !1684, inlinedAt: !3042)
!3047 = !DILocation(line: 147, column: 17, scope: !1684, inlinedAt: !3042)
!3048 = !DILocation(line: 149, column: 7, scope: !1684, inlinedAt: !3042)
!3049 = !DILocation(line: 150, column: 12, scope: !1684, inlinedAt: !3042)
!3050 = !DILocation(line: 151, column: 6, scope: !1684, inlinedAt: !3042)
!3051 = !DILocation(line: 978, column: 10, scope: !2929, inlinedAt: !3035)
!3052 = !DILocation(line: 979, column: 1, scope: !2929, inlinedAt: !3035)
!3053 = !DILocation(line: 996, column: 3, scope: !3028)
!3054 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !333, file: !333, line: 1000, type: !2802, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !3055)
!3055 = !{!3056, !3057, !3058, !3059}
!3056 = !DILocalVariable(name: "n", arg: 1, scope: !3054, file: !333, line: 1000, type: !22)
!3057 = !DILocalVariable(name: "s", arg: 2, scope: !3054, file: !333, line: 1000, type: !212)
!3058 = !DILocalVariable(name: "arg", arg: 3, scope: !3054, file: !333, line: 1000, type: !78)
!3059 = !DILocalVariable(name: "options", scope: !3054, file: !333, line: 1002, type: !340)
!3060 = !DILocation(line: 187, column: 26, scope: !2810, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 1003, column: 13, scope: !3054)
!3062 = !DILocation(line: 1000, column: 29, scope: !3054)
!3063 = !DILocation(line: 1000, column: 51, scope: !3054)
!3064 = !DILocation(line: 1000, column: 66, scope: !3054)
!3065 = !DILocation(line: 1002, column: 3, scope: !3054)
!3066 = !DILocation(line: 185, column: 48, scope: !2810, inlinedAt: !3061)
!3067 = !DILocation(line: 187, column: 3, scope: !2810, inlinedAt: !3061)
!3068 = !DILocation(line: 188, column: 13, scope: !2827, inlinedAt: !3061)
!3069 = !DILocation(line: 188, column: 7, scope: !2810, inlinedAt: !3061)
!3070 = !DILocation(line: 189, column: 5, scope: !2827, inlinedAt: !3061)
!3071 = !{!3072}
!3072 = distinct !{!3072, !3073, !"quoting_options_from_style: argument 0"}
!3073 = distinct !{!3073, !"quoting_options_from_style"}
!3074 = !DILocation(line: 191, column: 10, scope: !2810, inlinedAt: !3061)
!3075 = !DILocation(line: 192, column: 1, scope: !2810, inlinedAt: !3061)
!3076 = !DILocation(line: 1003, column: 13, scope: !3054)
!3077 = !DILocation(line: 1002, column: 26, scope: !3054)
!3078 = !DILocation(line: 144, column: 43, scope: !1684, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 1004, column: 3, scope: !3054)
!3080 = !DILocation(line: 144, column: 51, scope: !1684, inlinedAt: !3079)
!3081 = !DILocation(line: 144, column: 58, scope: !1684, inlinedAt: !3079)
!3082 = !DILocation(line: 146, column: 17, scope: !1684, inlinedAt: !3079)
!3083 = !DILocation(line: 148, column: 57, scope: !1684, inlinedAt: !3079)
!3084 = !DILocation(line: 147, column: 17, scope: !1684, inlinedAt: !3079)
!3085 = !DILocation(line: 149, column: 7, scope: !1684, inlinedAt: !3079)
!3086 = !DILocation(line: 150, column: 12, scope: !1684, inlinedAt: !3079)
!3087 = !DILocation(line: 151, column: 6, scope: !1684, inlinedAt: !3079)
!3088 = !DILocation(line: 1005, column: 10, scope: !3054)
!3089 = !DILocation(line: 1006, column: 1, scope: !3054)
!3090 = !DILocation(line: 1005, column: 3, scope: !3054)
!3091 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !333, file: !333, line: 1009, type: !3092, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!24, !22, !78, !78, !78}
!3094 = !{!3095, !3096, !3097, !3098}
!3095 = !DILocalVariable(name: "n", arg: 1, scope: !3091, file: !333, line: 1009, type: !22)
!3096 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3091, file: !333, line: 1009, type: !78)
!3097 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3091, file: !333, line: 1010, type: !78)
!3098 = !DILocalVariable(name: "arg", arg: 4, scope: !3091, file: !333, line: 1010, type: !78)
!3099 = !DILocation(line: 1009, column: 24, scope: !3091)
!3100 = !DILocation(line: 1009, column: 39, scope: !3091)
!3101 = !DILocation(line: 1010, column: 32, scope: !3091)
!3102 = !DILocation(line: 1010, column: 57, scope: !3091)
!3103 = !DILocalVariable(name: "n", arg: 1, scope: !3104, file: !333, line: 1017, type: !22)
!3104 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !333, file: !333, line: 1017, type: !3105, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!24, !22, !78, !78, !78, !70}
!3107 = !{!3103, !3108, !3109, !3110, !3111, !3112}
!3108 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3104, file: !333, line: 1017, type: !78)
!3109 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3104, file: !333, line: 1018, type: !78)
!3110 = !DILocalVariable(name: "arg", arg: 4, scope: !3104, file: !333, line: 1019, type: !78)
!3111 = !DILocalVariable(name: "argsize", arg: 5, scope: !3104, file: !333, line: 1019, type: !70)
!3112 = !DILocalVariable(name: "o", scope: !3104, file: !333, line: 1021, type: !340)
!3113 = !DILocation(line: 1017, column: 28, scope: !3104, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 1012, column: 10, scope: !3091)
!3115 = !DILocation(line: 1017, column: 43, scope: !3104, inlinedAt: !3114)
!3116 = !DILocation(line: 1018, column: 36, scope: !3104, inlinedAt: !3114)
!3117 = !DILocation(line: 1019, column: 36, scope: !3104, inlinedAt: !3114)
!3118 = !DILocation(line: 1019, column: 48, scope: !3104, inlinedAt: !3114)
!3119 = !DILocation(line: 1021, column: 3, scope: !3104, inlinedAt: !3114)
!3120 = !DILocation(line: 1021, column: 30, scope: !3104, inlinedAt: !3114)
!3121 = !DILocation(line: 1021, column: 26, scope: !3104, inlinedAt: !3114)
!3122 = !DILocation(line: 171, column: 45, scope: !1733, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 1022, column: 3, scope: !3104, inlinedAt: !3114)
!3124 = !DILocation(line: 172, column: 33, scope: !1733, inlinedAt: !3123)
!3125 = !DILocation(line: 172, column: 57, scope: !1733, inlinedAt: !3123)
!3126 = !DILocation(line: 176, column: 6, scope: !1733, inlinedAt: !3123)
!3127 = !DILocation(line: 176, column: 12, scope: !1733, inlinedAt: !3123)
!3128 = !DILocation(line: 177, column: 8, scope: !1749, inlinedAt: !3123)
!3129 = !DILocation(line: 177, column: 23, scope: !1749, inlinedAt: !3123)
!3130 = !DILocation(line: 177, column: 19, scope: !1749, inlinedAt: !3123)
!3131 = !DILocation(line: 178, column: 5, scope: !1749, inlinedAt: !3123)
!3132 = !DILocation(line: 179, column: 6, scope: !1733, inlinedAt: !3123)
!3133 = !DILocation(line: 179, column: 17, scope: !1733, inlinedAt: !3123)
!3134 = !DILocation(line: 180, column: 6, scope: !1733, inlinedAt: !3123)
!3135 = !DILocation(line: 180, column: 18, scope: !1733, inlinedAt: !3123)
!3136 = !DILocation(line: 1023, column: 10, scope: !3104, inlinedAt: !3114)
!3137 = !DILocation(line: 1024, column: 1, scope: !3104, inlinedAt: !3114)
!3138 = !DILocation(line: 1012, column: 3, scope: !3091)
!3139 = !DILocation(line: 1017, column: 28, scope: !3104)
!3140 = !DILocation(line: 1017, column: 43, scope: !3104)
!3141 = !DILocation(line: 1018, column: 36, scope: !3104)
!3142 = !DILocation(line: 1019, column: 36, scope: !3104)
!3143 = !DILocation(line: 1019, column: 48, scope: !3104)
!3144 = !DILocation(line: 1021, column: 3, scope: !3104)
!3145 = !DILocation(line: 1021, column: 30, scope: !3104)
!3146 = !DILocation(line: 1021, column: 26, scope: !3104)
!3147 = !DILocation(line: 171, column: 45, scope: !1733, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 1022, column: 3, scope: !3104)
!3149 = !DILocation(line: 172, column: 33, scope: !1733, inlinedAt: !3148)
!3150 = !DILocation(line: 172, column: 57, scope: !1733, inlinedAt: !3148)
!3151 = !DILocation(line: 176, column: 6, scope: !1733, inlinedAt: !3148)
!3152 = !DILocation(line: 176, column: 12, scope: !1733, inlinedAt: !3148)
!3153 = !DILocation(line: 177, column: 8, scope: !1749, inlinedAt: !3148)
!3154 = !DILocation(line: 177, column: 23, scope: !1749, inlinedAt: !3148)
!3155 = !DILocation(line: 177, column: 19, scope: !1749, inlinedAt: !3148)
!3156 = !DILocation(line: 178, column: 5, scope: !1749, inlinedAt: !3148)
!3157 = !DILocation(line: 179, column: 6, scope: !1733, inlinedAt: !3148)
!3158 = !DILocation(line: 179, column: 17, scope: !1733, inlinedAt: !3148)
!3159 = !DILocation(line: 180, column: 6, scope: !1733, inlinedAt: !3148)
!3160 = !DILocation(line: 180, column: 18, scope: !1733, inlinedAt: !3148)
!3161 = !DILocation(line: 1023, column: 10, scope: !3104)
!3162 = !DILocation(line: 1024, column: 1, scope: !3104)
!3163 = !DILocation(line: 1023, column: 3, scope: !3104)
!3164 = distinct !DISubprogram(name: "quotearg_custom", scope: !333, file: !333, line: 1027, type: !3165, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!24, !78, !78, !78}
!3167 = !{!3168, !3169, !3170}
!3168 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3164, file: !333, line: 1027, type: !78)
!3169 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3164, file: !333, line: 1027, type: !78)
!3170 = !DILocalVariable(name: "arg", arg: 3, scope: !3164, file: !333, line: 1028, type: !78)
!3171 = !DILocation(line: 1027, column: 30, scope: !3164)
!3172 = !DILocation(line: 1027, column: 54, scope: !3164)
!3173 = !DILocation(line: 1028, column: 30, scope: !3164)
!3174 = !DILocation(line: 1009, column: 24, scope: !3091, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 1030, column: 10, scope: !3164)
!3176 = !DILocation(line: 1009, column: 39, scope: !3091, inlinedAt: !3175)
!3177 = !DILocation(line: 1010, column: 32, scope: !3091, inlinedAt: !3175)
!3178 = !DILocation(line: 1010, column: 57, scope: !3091, inlinedAt: !3175)
!3179 = !DILocation(line: 1017, column: 28, scope: !3104, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 1012, column: 10, scope: !3091, inlinedAt: !3175)
!3181 = !DILocation(line: 1017, column: 43, scope: !3104, inlinedAt: !3180)
!3182 = !DILocation(line: 1018, column: 36, scope: !3104, inlinedAt: !3180)
!3183 = !DILocation(line: 1019, column: 36, scope: !3104, inlinedAt: !3180)
!3184 = !DILocation(line: 1019, column: 48, scope: !3104, inlinedAt: !3180)
!3185 = !DILocation(line: 1021, column: 3, scope: !3104, inlinedAt: !3180)
!3186 = !DILocation(line: 1021, column: 30, scope: !3104, inlinedAt: !3180)
!3187 = !DILocation(line: 1021, column: 26, scope: !3104, inlinedAt: !3180)
!3188 = !DILocation(line: 171, column: 45, scope: !1733, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 1022, column: 3, scope: !3104, inlinedAt: !3180)
!3190 = !DILocation(line: 172, column: 33, scope: !1733, inlinedAt: !3189)
!3191 = !DILocation(line: 172, column: 57, scope: !1733, inlinedAt: !3189)
!3192 = !DILocation(line: 176, column: 6, scope: !1733, inlinedAt: !3189)
!3193 = !DILocation(line: 176, column: 12, scope: !1733, inlinedAt: !3189)
!3194 = !DILocation(line: 177, column: 8, scope: !1749, inlinedAt: !3189)
!3195 = !DILocation(line: 177, column: 23, scope: !1749, inlinedAt: !3189)
!3196 = !DILocation(line: 177, column: 19, scope: !1749, inlinedAt: !3189)
!3197 = !DILocation(line: 178, column: 5, scope: !1749, inlinedAt: !3189)
!3198 = !DILocation(line: 179, column: 6, scope: !1733, inlinedAt: !3189)
!3199 = !DILocation(line: 179, column: 17, scope: !1733, inlinedAt: !3189)
!3200 = !DILocation(line: 180, column: 6, scope: !1733, inlinedAt: !3189)
!3201 = !DILocation(line: 180, column: 18, scope: !1733, inlinedAt: !3189)
!3202 = !DILocation(line: 1023, column: 10, scope: !3104, inlinedAt: !3180)
!3203 = !DILocation(line: 1024, column: 1, scope: !3104, inlinedAt: !3180)
!3204 = !DILocation(line: 1030, column: 3, scope: !3164)
!3205 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !333, file: !333, line: 1034, type: !3206, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!24, !78, !78, !78, !70}
!3208 = !{!3209, !3210, !3211, !3212}
!3209 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3205, file: !333, line: 1034, type: !78)
!3210 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3205, file: !333, line: 1034, type: !78)
!3211 = !DILocalVariable(name: "arg", arg: 3, scope: !3205, file: !333, line: 1035, type: !78)
!3212 = !DILocalVariable(name: "argsize", arg: 4, scope: !3205, file: !333, line: 1035, type: !70)
!3213 = !DILocation(line: 1034, column: 34, scope: !3205)
!3214 = !DILocation(line: 1034, column: 58, scope: !3205)
!3215 = !DILocation(line: 1035, column: 34, scope: !3205)
!3216 = !DILocation(line: 1035, column: 46, scope: !3205)
!3217 = !DILocation(line: 1017, column: 28, scope: !3104, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 1037, column: 10, scope: !3205)
!3219 = !DILocation(line: 1017, column: 43, scope: !3104, inlinedAt: !3218)
!3220 = !DILocation(line: 1018, column: 36, scope: !3104, inlinedAt: !3218)
!3221 = !DILocation(line: 1019, column: 36, scope: !3104, inlinedAt: !3218)
!3222 = !DILocation(line: 1019, column: 48, scope: !3104, inlinedAt: !3218)
!3223 = !DILocation(line: 1021, column: 3, scope: !3104, inlinedAt: !3218)
!3224 = !DILocation(line: 1021, column: 30, scope: !3104, inlinedAt: !3218)
!3225 = !DILocation(line: 1021, column: 26, scope: !3104, inlinedAt: !3218)
!3226 = !DILocation(line: 171, column: 45, scope: !1733, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 1022, column: 3, scope: !3104, inlinedAt: !3218)
!3228 = !DILocation(line: 172, column: 33, scope: !1733, inlinedAt: !3227)
!3229 = !DILocation(line: 172, column: 57, scope: !1733, inlinedAt: !3227)
!3230 = !DILocation(line: 176, column: 6, scope: !1733, inlinedAt: !3227)
!3231 = !DILocation(line: 176, column: 12, scope: !1733, inlinedAt: !3227)
!3232 = !DILocation(line: 177, column: 8, scope: !1749, inlinedAt: !3227)
!3233 = !DILocation(line: 177, column: 23, scope: !1749, inlinedAt: !3227)
!3234 = !DILocation(line: 177, column: 19, scope: !1749, inlinedAt: !3227)
!3235 = !DILocation(line: 178, column: 5, scope: !1749, inlinedAt: !3227)
!3236 = !DILocation(line: 179, column: 6, scope: !1733, inlinedAt: !3227)
!3237 = !DILocation(line: 179, column: 17, scope: !1733, inlinedAt: !3227)
!3238 = !DILocation(line: 180, column: 6, scope: !1733, inlinedAt: !3227)
!3239 = !DILocation(line: 180, column: 18, scope: !1733, inlinedAt: !3227)
!3240 = !DILocation(line: 1023, column: 10, scope: !3104, inlinedAt: !3218)
!3241 = !DILocation(line: 1024, column: 1, scope: !3104, inlinedAt: !3218)
!3242 = !DILocation(line: 1037, column: 3, scope: !3205)
!3243 = distinct !DISubprogram(name: "quote_n_mem", scope: !333, file: !333, line: 1052, type: !3244, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!78, !22, !78, !70}
!3246 = !{!3247, !3248, !3249}
!3247 = !DILocalVariable(name: "n", arg: 1, scope: !3243, file: !333, line: 1052, type: !22)
!3248 = !DILocalVariable(name: "arg", arg: 2, scope: !3243, file: !333, line: 1052, type: !78)
!3249 = !DILocalVariable(name: "argsize", arg: 3, scope: !3243, file: !333, line: 1052, type: !70)
!3250 = !DILocation(line: 1052, column: 18, scope: !3243)
!3251 = !DILocation(line: 1052, column: 33, scope: !3243)
!3252 = !DILocation(line: 1052, column: 45, scope: !3243)
!3253 = !DILocation(line: 1054, column: 10, scope: !3243)
!3254 = !DILocation(line: 1054, column: 3, scope: !3243)
!3255 = distinct !DISubprogram(name: "quote_mem", scope: !333, file: !333, line: 1058, type: !3256, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!78, !78, !70}
!3258 = !{!3259, !3260}
!3259 = !DILocalVariable(name: "arg", arg: 1, scope: !3255, file: !333, line: 1058, type: !78)
!3260 = !DILocalVariable(name: "argsize", arg: 2, scope: !3255, file: !333, line: 1058, type: !70)
!3261 = !DILocation(line: 1058, column: 24, scope: !3255)
!3262 = !DILocation(line: 1058, column: 36, scope: !3255)
!3263 = !DILocation(line: 1052, column: 18, scope: !3243, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 1060, column: 10, scope: !3255)
!3265 = !DILocation(line: 1052, column: 33, scope: !3243, inlinedAt: !3264)
!3266 = !DILocation(line: 1052, column: 45, scope: !3243, inlinedAt: !3264)
!3267 = !DILocation(line: 1054, column: 10, scope: !3243, inlinedAt: !3264)
!3268 = !DILocation(line: 1060, column: 3, scope: !3255)
!3269 = distinct !DISubprogram(name: "quote_n", scope: !333, file: !333, line: 1064, type: !3270, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !3272)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!78, !22, !78}
!3272 = !{!3273, !3274}
!3273 = !DILocalVariable(name: "n", arg: 1, scope: !3269, file: !333, line: 1064, type: !22)
!3274 = !DILocalVariable(name: "arg", arg: 2, scope: !3269, file: !333, line: 1064, type: !78)
!3275 = !DILocation(line: 1064, column: 14, scope: !3269)
!3276 = !DILocation(line: 1064, column: 29, scope: !3269)
!3277 = !DILocation(line: 1052, column: 18, scope: !3243, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 1066, column: 10, scope: !3269)
!3279 = !DILocation(line: 1052, column: 33, scope: !3243, inlinedAt: !3278)
!3280 = !DILocation(line: 1052, column: 45, scope: !3243, inlinedAt: !3278)
!3281 = !DILocation(line: 1054, column: 10, scope: !3243, inlinedAt: !3278)
!3282 = !DILocation(line: 1066, column: 3, scope: !3269)
!3283 = distinct !DISubprogram(name: "quote", scope: !333, file: !333, line: 1070, type: !3284, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !321, variables: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!78, !78}
!3286 = !{!3287}
!3287 = !DILocalVariable(name: "arg", arg: 1, scope: !3283, file: !333, line: 1070, type: !78)
!3288 = !DILocation(line: 1070, column: 20, scope: !3283)
!3289 = !DILocation(line: 1064, column: 14, scope: !3269, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 1072, column: 10, scope: !3283)
!3291 = !DILocation(line: 1064, column: 29, scope: !3269, inlinedAt: !3290)
!3292 = !DILocation(line: 1052, column: 18, scope: !3243, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 1066, column: 10, scope: !3269, inlinedAt: !3290)
!3294 = !DILocation(line: 1052, column: 33, scope: !3243, inlinedAt: !3293)
!3295 = !DILocation(line: 1052, column: 45, scope: !3243, inlinedAt: !3293)
!3296 = !DILocation(line: 1054, column: 10, scope: !3243, inlinedAt: !3293)
!3297 = !DILocation(line: 1072, column: 3, scope: !3283)
!3298 = distinct !DISubprogram(name: "version_etc_arn", scope: !751, file: !751, line: 62, type: !3299, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !747, variables: !3342)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{null, !3301, !78, !78, !78, !3341, !70}
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 7, baseType: !3303)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !3304)
!3304 = !{!3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3303, file: !19, line: 242, baseType: !22, size: 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3303, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3303, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3303, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3303, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3303, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3303, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3303, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3303, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3303, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3303, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3303, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3303, file: !19, line: 260, baseType: !3318, size: 64, offset: 768)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !3320)
!3320 = !{!3321, !3322, !3324}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3319, file: !19, line: 157, baseType: !3318, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3319, file: !19, line: 158, baseType: !3323, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3319, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3303, file: !19, line: 262, baseType: !3323, size: 64, offset: 832)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3303, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3303, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3303, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3303, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3303, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3303, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3303, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3303, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3303, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3303, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3303, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3303, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3303, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3303, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3303, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!3342 = !{!3343, !3344, !3345, !3346, !3347, !3348}
!3343 = !DILocalVariable(name: "stream", arg: 1, scope: !3298, file: !751, line: 62, type: !3301)
!3344 = !DILocalVariable(name: "command_name", arg: 2, scope: !3298, file: !751, line: 63, type: !78)
!3345 = !DILocalVariable(name: "package", arg: 3, scope: !3298, file: !751, line: 63, type: !78)
!3346 = !DILocalVariable(name: "version", arg: 4, scope: !3298, file: !751, line: 64, type: !78)
!3347 = !DILocalVariable(name: "authors", arg: 5, scope: !3298, file: !751, line: 65, type: !3341)
!3348 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3298, file: !751, line: 65, type: !70)
!3349 = !DILocation(line: 62, column: 24, scope: !3298)
!3350 = !DILocation(line: 63, column: 30, scope: !3298)
!3351 = !DILocation(line: 63, column: 56, scope: !3298)
!3352 = !DILocation(line: 64, column: 30, scope: !3298)
!3353 = !DILocation(line: 65, column: 39, scope: !3298)
!3354 = !DILocation(line: 65, column: 55, scope: !3298)
!3355 = !DILocation(line: 67, column: 7, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3298, file: !751, line: 67, column: 7)
!3357 = !DILocation(line: 67, column: 7, scope: !3298)
!3358 = !DILocation(line: 68, column: 5, scope: !3356)
!3359 = !DILocation(line: 70, column: 5, scope: !3356)
!3360 = !DILocation(line: 84, column: 3, scope: !3298)
!3361 = !DILocation(line: 86, column: 3, scope: !3298)
!3362 = !DILocation(line: 95, column: 3, scope: !3298)
!3363 = !DILocation(line: 99, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3298, file: !751, line: 96, column: 5)
!3365 = !DILocation(line: 102, column: 7, scope: !3364)
!3366 = !DILocation(line: 103, column: 7, scope: !3364)
!3367 = !DILocation(line: 106, column: 7, scope: !3364)
!3368 = !DILocation(line: 107, column: 7, scope: !3364)
!3369 = !DILocation(line: 110, column: 7, scope: !3364)
!3370 = !DILocation(line: 112, column: 7, scope: !3364)
!3371 = !DILocation(line: 117, column: 7, scope: !3364)
!3372 = !DILocation(line: 119, column: 7, scope: !3364)
!3373 = !DILocation(line: 124, column: 7, scope: !3364)
!3374 = !DILocation(line: 126, column: 7, scope: !3364)
!3375 = !DILocation(line: 131, column: 7, scope: !3364)
!3376 = !DILocation(line: 134, column: 7, scope: !3364)
!3377 = !DILocation(line: 139, column: 7, scope: !3364)
!3378 = !DILocation(line: 142, column: 7, scope: !3364)
!3379 = !DILocation(line: 147, column: 7, scope: !3364)
!3380 = !DILocation(line: 151, column: 7, scope: !3364)
!3381 = !DILocation(line: 156, column: 7, scope: !3364)
!3382 = !DILocation(line: 160, column: 7, scope: !3364)
!3383 = !DILocation(line: 167, column: 7, scope: !3364)
!3384 = !DILocation(line: 171, column: 7, scope: !3364)
!3385 = !DILocation(line: 173, column: 1, scope: !3298)
!3386 = distinct !DISubprogram(name: "version_etc_ar", scope: !751, file: !751, line: 180, type: !3387, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !747, variables: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{null, !3301, !78, !78, !78, !3341}
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3395}
!3390 = !DILocalVariable(name: "stream", arg: 1, scope: !3386, file: !751, line: 180, type: !3301)
!3391 = !DILocalVariable(name: "command_name", arg: 2, scope: !3386, file: !751, line: 181, type: !78)
!3392 = !DILocalVariable(name: "package", arg: 3, scope: !3386, file: !751, line: 181, type: !78)
!3393 = !DILocalVariable(name: "version", arg: 4, scope: !3386, file: !751, line: 182, type: !78)
!3394 = !DILocalVariable(name: "authors", arg: 5, scope: !3386, file: !751, line: 182, type: !3341)
!3395 = !DILocalVariable(name: "n_authors", scope: !3386, file: !751, line: 184, type: !70)
!3396 = !DILocation(line: 180, column: 23, scope: !3386)
!3397 = !DILocation(line: 181, column: 29, scope: !3386)
!3398 = !DILocation(line: 181, column: 55, scope: !3386)
!3399 = !DILocation(line: 182, column: 29, scope: !3386)
!3400 = !DILocation(line: 182, column: 59, scope: !3386)
!3401 = !DILocation(line: 184, column: 10, scope: !3386)
!3402 = !DILocation(line: 186, column: 8, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3386, file: !751, line: 186, column: 3)
!3404 = !DILocation(line: 186, column: 23, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3403, file: !751, line: 186, column: 3)
!3406 = !DILocation(line: 186, column: 3, scope: !3403)
!3407 = !DILocation(line: 186, column: 52, scope: !3405)
!3408 = distinct !{!3408, !3406, !3409}
!3409 = !DILocation(line: 187, column: 5, scope: !3403)
!3410 = !DILocation(line: 188, column: 3, scope: !3386)
!3411 = !DILocation(line: 189, column: 1, scope: !3386)
!3412 = distinct !DISubprogram(name: "version_etc_va", scope: !751, file: !751, line: 196, type: !3413, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !747, variables: !3422)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{null, !3301, !78, !78, !78, !3415}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !748, line: 189, size: 192, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3416, file: !748, line: 189, baseType: !151, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3416, file: !748, line: 189, baseType: !151, size: 32, offset: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3416, file: !748, line: 189, baseType: !65, size: 64, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3416, file: !748, line: 189, baseType: !65, size: 64, offset: 128)
!3422 = !{!3423, !3424, !3425, !3426, !3427, !3428, !3429}
!3423 = !DILocalVariable(name: "stream", arg: 1, scope: !3412, file: !751, line: 196, type: !3301)
!3424 = !DILocalVariable(name: "command_name", arg: 2, scope: !3412, file: !751, line: 197, type: !78)
!3425 = !DILocalVariable(name: "package", arg: 3, scope: !3412, file: !751, line: 197, type: !78)
!3426 = !DILocalVariable(name: "version", arg: 4, scope: !3412, file: !751, line: 198, type: !78)
!3427 = !DILocalVariable(name: "authors", arg: 5, scope: !3412, file: !751, line: 198, type: !3415)
!3428 = !DILocalVariable(name: "n_authors", scope: !3412, file: !751, line: 200, type: !70)
!3429 = !DILocalVariable(name: "authtab", scope: !3412, file: !751, line: 201, type: !3430)
!3430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 640, elements: !336)
!3431 = !DILocation(line: 196, column: 23, scope: !3412)
!3432 = !DILocation(line: 197, column: 29, scope: !3412)
!3433 = !DILocation(line: 197, column: 55, scope: !3412)
!3434 = !DILocation(line: 198, column: 29, scope: !3412)
!3435 = !DILocation(line: 198, column: 46, scope: !3412)
!3436 = !DILocation(line: 201, column: 3, scope: !3412)
!3437 = !DILocation(line: 201, column: 15, scope: !3412)
!3438 = !DILocation(line: 200, column: 10, scope: !3412)
!3439 = !DILocation(line: 205, column: 35, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !751, line: 203, column: 3)
!3441 = distinct !DILexicalBlock(scope: !3412, file: !751, line: 203, column: 3)
!3442 = !DILocation(line: 205, column: 14, scope: !3440)
!3443 = !DILocation(line: 205, column: 33, scope: !3440)
!3444 = !DILocation(line: 205, column: 67, scope: !3440)
!3445 = !DILocation(line: 203, column: 3, scope: !3441)
!3446 = !DILocation(line: 208, column: 3, scope: !3412)
!3447 = !DILocation(line: 210, column: 1, scope: !3412)
!3448 = distinct !DISubprogram(name: "version_etc", scope: !751, file: !751, line: 227, type: !3449, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !747, variables: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{null, !3301, !78, !78, !78, null}
!3451 = !{!3452, !3453, !3454, !3455, !3456}
!3452 = !DILocalVariable(name: "stream", arg: 1, scope: !3448, file: !751, line: 227, type: !3301)
!3453 = !DILocalVariable(name: "command_name", arg: 2, scope: !3448, file: !751, line: 228, type: !78)
!3454 = !DILocalVariable(name: "package", arg: 3, scope: !3448, file: !751, line: 228, type: !78)
!3455 = !DILocalVariable(name: "version", arg: 4, scope: !3448, file: !751, line: 229, type: !78)
!3456 = !DILocalVariable(name: "authors", scope: !3448, file: !751, line: 231, type: !3457)
!3457 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3458, line: 46, baseType: !3459)
!3458 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3460, line: 48, baseType: !3461)
!3460 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !748, line: 231, baseType: !3462)
!3462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3416, size: 192, elements: !57)
!3463 = !DILocation(line: 227, column: 20, scope: !3448)
!3464 = !DILocation(line: 228, column: 26, scope: !3448)
!3465 = !DILocation(line: 228, column: 52, scope: !3448)
!3466 = !DILocation(line: 229, column: 26, scope: !3448)
!3467 = !DILocation(line: 231, column: 3, scope: !3448)
!3468 = !DILocation(line: 231, column: 11, scope: !3448)
!3469 = !DILocation(line: 233, column: 3, scope: !3448)
!3470 = !DILocation(line: 234, column: 3, scope: !3448)
!3471 = !DILocation(line: 235, column: 3, scope: !3448)
!3472 = !DILocation(line: 236, column: 1, scope: !3448)
!3473 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !751, file: !751, line: 239, type: !386, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !747, variables: !295)
!3474 = !DILocation(line: 245, column: 3, scope: !3473)
!3475 = !DILocation(line: 251, column: 3, scope: !3473)
!3476 = !DILocation(line: 256, column: 3, scope: !3473)
!3477 = !DILocation(line: 258, column: 1, scope: !3473)
!3478 = distinct !DISubprogram(name: "xnmalloc", scope: !759, file: !759, line: 105, type: !3479, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !755, variables: !3481)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!65, !70, !70}
!3481 = !{!3482, !3483}
!3482 = !DILocalVariable(name: "n", arg: 1, scope: !3478, file: !759, line: 105, type: !70)
!3483 = !DILocalVariable(name: "s", arg: 2, scope: !3478, file: !759, line: 105, type: !70)
!3484 = !DILocation(line: 105, column: 18, scope: !3478)
!3485 = !DILocation(line: 105, column: 28, scope: !3478)
!3486 = !DILocation(line: 107, column: 7, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3478, file: !759, line: 107, column: 7)
!3488 = !DILocation(line: 107, column: 7, scope: !3478)
!3489 = !DILocation(line: 108, column: 5, scope: !3487)
!3490 = !DILocation(line: 109, column: 21, scope: !3478)
!3491 = !DILocalVariable(name: "n", arg: 1, scope: !3492, file: !3493, line: 39, type: !70)
!3492 = distinct !DISubprogram(name: "xmalloc", scope: !3493, file: !3493, line: 39, type: !132, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !755, variables: !3494)
!3493 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3494 = !{!3491, !3495}
!3495 = !DILocalVariable(name: "p", scope: !3492, file: !3493, line: 41, type: !65)
!3496 = !DILocation(line: 39, column: 17, scope: !3492, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 109, column: 10, scope: !3478)
!3498 = !DILocation(line: 41, column: 13, scope: !3492, inlinedAt: !3497)
!3499 = !DILocation(line: 41, column: 9, scope: !3492, inlinedAt: !3497)
!3500 = !DILocation(line: 42, column: 8, scope: !3501, inlinedAt: !3497)
!3501 = distinct !DILexicalBlock(scope: !3492, file: !3493, line: 42, column: 7)
!3502 = !DILocation(line: 42, column: 15, scope: !3501, inlinedAt: !3497)
!3503 = !DILocation(line: 42, column: 10, scope: !3501, inlinedAt: !3497)
!3504 = !DILocation(line: 43, column: 5, scope: !3501, inlinedAt: !3497)
!3505 = !DILocation(line: 109, column: 3, scope: !3478)
!3506 = !DILocation(line: 39, column: 17, scope: !3492)
!3507 = !DILocation(line: 41, column: 13, scope: !3492)
!3508 = !DILocation(line: 41, column: 9, scope: !3492)
!3509 = !DILocation(line: 42, column: 8, scope: !3501)
!3510 = !DILocation(line: 42, column: 15, scope: !3501)
!3511 = !DILocation(line: 42, column: 10, scope: !3501)
!3512 = !DILocation(line: 43, column: 5, scope: !3501)
!3513 = !DILocation(line: 44, column: 3, scope: !3492)
!3514 = distinct !DISubprogram(name: "xnrealloc", scope: !759, file: !759, line: 118, type: !3515, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !755, variables: !3517)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!65, !65, !70, !70}
!3517 = !{!3518, !3519, !3520}
!3518 = !DILocalVariable(name: "p", arg: 1, scope: !3514, file: !759, line: 118, type: !65)
!3519 = !DILocalVariable(name: "n", arg: 2, scope: !3514, file: !759, line: 118, type: !70)
!3520 = !DILocalVariable(name: "s", arg: 3, scope: !3514, file: !759, line: 118, type: !70)
!3521 = !DILocation(line: 118, column: 18, scope: !3514)
!3522 = !DILocation(line: 118, column: 28, scope: !3514)
!3523 = !DILocation(line: 118, column: 38, scope: !3514)
!3524 = !DILocation(line: 120, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3514, file: !759, line: 120, column: 7)
!3526 = !DILocation(line: 120, column: 7, scope: !3514)
!3527 = !DILocation(line: 121, column: 5, scope: !3525)
!3528 = !DILocation(line: 122, column: 25, scope: !3514)
!3529 = !DILocalVariable(name: "p", arg: 1, scope: !3530, file: !3493, line: 51, type: !65)
!3530 = distinct !DISubprogram(name: "xrealloc", scope: !3493, file: !3493, line: 51, type: !136, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !755, variables: !3531)
!3531 = !{!3529, !3532}
!3532 = !DILocalVariable(name: "n", arg: 2, scope: !3530, file: !3493, line: 51, type: !70)
!3533 = !DILocation(line: 51, column: 17, scope: !3530, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 122, column: 10, scope: !3514)
!3535 = !DILocation(line: 51, column: 27, scope: !3530, inlinedAt: !3534)
!3536 = !DILocation(line: 53, column: 8, scope: !3537, inlinedAt: !3534)
!3537 = distinct !DILexicalBlock(scope: !3530, file: !3493, line: 53, column: 7)
!3538 = !DILocation(line: 53, column: 13, scope: !3537, inlinedAt: !3534)
!3539 = !DILocation(line: 53, column: 10, scope: !3537, inlinedAt: !3534)
!3540 = !DILocation(line: 57, column: 7, scope: !3541, inlinedAt: !3534)
!3541 = distinct !DILexicalBlock(scope: !3537, file: !3493, line: 54, column: 5)
!3542 = !DILocation(line: 58, column: 7, scope: !3541, inlinedAt: !3534)
!3543 = !DILocation(line: 61, column: 7, scope: !3530, inlinedAt: !3534)
!3544 = !DILocation(line: 62, column: 8, scope: !3545, inlinedAt: !3534)
!3545 = distinct !DILexicalBlock(scope: !3530, file: !3493, line: 62, column: 7)
!3546 = !DILocation(line: 62, column: 13, scope: !3545, inlinedAt: !3534)
!3547 = !DILocation(line: 62, column: 10, scope: !3545, inlinedAt: !3534)
!3548 = !DILocation(line: 63, column: 5, scope: !3545, inlinedAt: !3534)
!3549 = !DILocation(line: 122, column: 3, scope: !3514)
!3550 = !DILocation(line: 51, column: 17, scope: !3530)
!3551 = !DILocation(line: 51, column: 27, scope: !3530)
!3552 = !DILocation(line: 53, column: 8, scope: !3537)
!3553 = !DILocation(line: 53, column: 13, scope: !3537)
!3554 = !DILocation(line: 53, column: 10, scope: !3537)
!3555 = !DILocation(line: 57, column: 7, scope: !3541)
!3556 = !DILocation(line: 58, column: 7, scope: !3541)
!3557 = !DILocation(line: 61, column: 7, scope: !3530)
!3558 = !DILocation(line: 62, column: 8, scope: !3545)
!3559 = !DILocation(line: 62, column: 13, scope: !3545)
!3560 = !DILocation(line: 62, column: 10, scope: !3545)
!3561 = !DILocation(line: 63, column: 5, scope: !3545)
!3562 = !DILocation(line: 65, column: 1, scope: !3530)
!3563 = !DILocation(line: 180, column: 19, scope: !760)
!3564 = !DILocation(line: 180, column: 30, scope: !760)
!3565 = !DILocation(line: 180, column: 41, scope: !760)
!3566 = !DILocation(line: 182, column: 14, scope: !760)
!3567 = !DILocation(line: 182, column: 10, scope: !760)
!3568 = !DILocation(line: 184, column: 9, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !760, file: !759, line: 184, column: 7)
!3570 = !DILocation(line: 184, column: 7, scope: !760)
!3571 = !DILocation(line: 186, column: 13, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !759, line: 186, column: 11)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !759, line: 185, column: 5)
!3574 = !DILocation(line: 186, column: 11, scope: !3573)
!3575 = !DILocation(line: 194, column: 30, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3572, file: !759, line: 187, column: 9)
!3577 = !DILocation(line: 195, column: 16, scope: !3576)
!3578 = !DILocation(line: 195, column: 13, scope: !3576)
!3579 = !DILocation(line: 196, column: 9, scope: !3576)
!3580 = !DILocation(line: 204, column: 69, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !759, line: 204, column: 11)
!3582 = distinct !DILexicalBlock(scope: !3569, file: !759, line: 199, column: 5)
!3583 = !DILocation(line: 205, column: 11, scope: !3581)
!3584 = !DILocation(line: 204, column: 11, scope: !3582)
!3585 = !DILocation(line: 206, column: 9, scope: !3581)
!3586 = !DILocation(line: 210, column: 7, scope: !760)
!3587 = !DILocation(line: 211, column: 25, scope: !760)
!3588 = !DILocation(line: 51, column: 17, scope: !3530, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 211, column: 10, scope: !760)
!3590 = !DILocation(line: 51, column: 27, scope: !3530, inlinedAt: !3589)
!3591 = !DILocation(line: 53, column: 10, scope: !3537, inlinedAt: !3589)
!3592 = !DILocation(line: 207, column: 14, scope: !3582)
!3593 = !DILocation(line: 207, column: 18, scope: !3582)
!3594 = !DILocation(line: 207, column: 9, scope: !3582)
!3595 = !DILocation(line: 53, column: 8, scope: !3537, inlinedAt: !3589)
!3596 = !DILocation(line: 57, column: 7, scope: !3541, inlinedAt: !3589)
!3597 = !DILocation(line: 58, column: 7, scope: !3541, inlinedAt: !3589)
!3598 = !DILocation(line: 61, column: 7, scope: !3530, inlinedAt: !3589)
!3599 = !DILocation(line: 62, column: 8, scope: !3545, inlinedAt: !3589)
!3600 = !DILocation(line: 62, column: 13, scope: !3545, inlinedAt: !3589)
!3601 = !DILocation(line: 62, column: 10, scope: !3545, inlinedAt: !3589)
!3602 = !DILocation(line: 63, column: 5, scope: !3545, inlinedAt: !3589)
!3603 = !DILocation(line: 211, column: 3, scope: !760)
!3604 = distinct !DISubprogram(name: "xcharalloc", scope: !759, file: !759, line: 220, type: !2579, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !755, variables: !3605)
!3605 = !{!3606}
!3606 = !DILocalVariable(name: "n", arg: 1, scope: !3604, file: !759, line: 220, type: !70)
!3607 = !DILocation(line: 220, column: 20, scope: !3604)
!3608 = !DILocation(line: 39, column: 17, scope: !3492, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 222, column: 10, scope: !3604)
!3610 = !DILocation(line: 41, column: 13, scope: !3492, inlinedAt: !3609)
!3611 = !DILocation(line: 41, column: 9, scope: !3492, inlinedAt: !3609)
!3612 = !DILocation(line: 42, column: 8, scope: !3501, inlinedAt: !3609)
!3613 = !DILocation(line: 42, column: 15, scope: !3501, inlinedAt: !3609)
!3614 = !DILocation(line: 42, column: 10, scope: !3501, inlinedAt: !3609)
!3615 = !DILocation(line: 43, column: 5, scope: !3501, inlinedAt: !3609)
!3616 = !DILocation(line: 222, column: 3, scope: !3604)
!3617 = distinct !DISubprogram(name: "x2realloc", scope: !3493, file: !3493, line: 74, type: !3618, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !755, variables: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!65, !65, !763}
!3620 = !{!3621, !3622}
!3621 = !DILocalVariable(name: "p", arg: 1, scope: !3617, file: !3493, line: 74, type: !65)
!3622 = !DILocalVariable(name: "pn", arg: 2, scope: !3617, file: !3493, line: 74, type: !763)
!3623 = !DILocation(line: 74, column: 18, scope: !3617)
!3624 = !DILocation(line: 74, column: 29, scope: !3617)
!3625 = !DILocation(line: 180, column: 19, scope: !760, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 76, column: 10, scope: !3617)
!3627 = !DILocation(line: 180, column: 30, scope: !760, inlinedAt: !3626)
!3628 = !DILocation(line: 180, column: 41, scope: !760, inlinedAt: !3626)
!3629 = !DILocation(line: 182, column: 14, scope: !760, inlinedAt: !3626)
!3630 = !DILocation(line: 182, column: 10, scope: !760, inlinedAt: !3626)
!3631 = !DILocation(line: 184, column: 9, scope: !3569, inlinedAt: !3626)
!3632 = !DILocation(line: 184, column: 7, scope: !760, inlinedAt: !3626)
!3633 = !DILocation(line: 186, column: 13, scope: !3572, inlinedAt: !3626)
!3634 = !DILocation(line: 186, column: 11, scope: !3573, inlinedAt: !3626)
!3635 = !DILocation(line: 210, column: 7, scope: !760, inlinedAt: !3626)
!3636 = !DILocation(line: 51, column: 17, scope: !3530, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 211, column: 10, scope: !760, inlinedAt: !3626)
!3638 = !DILocation(line: 51, column: 27, scope: !3530, inlinedAt: !3637)
!3639 = !DILocation(line: 53, column: 10, scope: !3537, inlinedAt: !3637)
!3640 = !DILocation(line: 205, column: 11, scope: !3581, inlinedAt: !3626)
!3641 = !DILocation(line: 204, column: 11, scope: !3582, inlinedAt: !3626)
!3642 = !DILocation(line: 206, column: 9, scope: !3581, inlinedAt: !3626)
!3643 = !DILocation(line: 207, column: 14, scope: !3582, inlinedAt: !3626)
!3644 = !DILocation(line: 207, column: 18, scope: !3582, inlinedAt: !3626)
!3645 = !DILocation(line: 207, column: 9, scope: !3582, inlinedAt: !3626)
!3646 = !DILocation(line: 53, column: 8, scope: !3537, inlinedAt: !3637)
!3647 = !DILocation(line: 57, column: 7, scope: !3541, inlinedAt: !3637)
!3648 = !DILocation(line: 58, column: 7, scope: !3541, inlinedAt: !3637)
!3649 = !DILocation(line: 61, column: 7, scope: !3530, inlinedAt: !3637)
!3650 = !DILocation(line: 62, column: 8, scope: !3545, inlinedAt: !3637)
!3651 = !DILocation(line: 62, column: 13, scope: !3545, inlinedAt: !3637)
!3652 = !DILocation(line: 62, column: 10, scope: !3545, inlinedAt: !3637)
!3653 = !DILocation(line: 63, column: 5, scope: !3545, inlinedAt: !3637)
!3654 = !DILocation(line: 76, column: 3, scope: !3617)
!3655 = distinct !DISubprogram(name: "xzalloc", scope: !3493, file: !3493, line: 84, type: !132, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !755, variables: !3656)
!3656 = !{!3657}
!3657 = !DILocalVariable(name: "s", arg: 1, scope: !3655, file: !3493, line: 84, type: !70)
!3658 = !DILocation(line: 84, column: 17, scope: !3655)
!3659 = !DILocation(line: 39, column: 17, scope: !3492, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 86, column: 18, scope: !3655)
!3661 = !DILocation(line: 41, column: 13, scope: !3492, inlinedAt: !3660)
!3662 = !DILocation(line: 41, column: 9, scope: !3492, inlinedAt: !3660)
!3663 = !DILocation(line: 42, column: 8, scope: !3501, inlinedAt: !3660)
!3664 = !DILocation(line: 42, column: 15, scope: !3501, inlinedAt: !3660)
!3665 = !DILocation(line: 42, column: 10, scope: !3501, inlinedAt: !3660)
!3666 = !DILocation(line: 43, column: 5, scope: !3501, inlinedAt: !3660)
!3667 = !DILocation(line: 86, column: 10, scope: !3655)
!3668 = !DILocation(line: 86, column: 3, scope: !3655)
!3669 = distinct !DISubprogram(name: "xcalloc", scope: !3493, file: !3493, line: 93, type: !3479, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !755, variables: !3670)
!3670 = !{!3671, !3672, !3673}
!3671 = !DILocalVariable(name: "n", arg: 1, scope: !3669, file: !3493, line: 93, type: !70)
!3672 = !DILocalVariable(name: "s", arg: 2, scope: !3669, file: !3493, line: 93, type: !70)
!3673 = !DILocalVariable(name: "p", scope: !3669, file: !3493, line: 95, type: !65)
!3674 = !DILocation(line: 93, column: 17, scope: !3669)
!3675 = !DILocation(line: 93, column: 27, scope: !3669)
!3676 = !DILocation(line: 100, column: 7, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3669, file: !3493, line: 100, column: 7)
!3678 = !DILocation(line: 101, column: 7, scope: !3677)
!3679 = !DILocation(line: 101, column: 18, scope: !3677)
!3680 = !DILocation(line: 95, column: 9, scope: !3669)
!3681 = !DILocation(line: 101, column: 16, scope: !3677)
!3682 = !DILocation(line: 100, column: 7, scope: !3669)
!3683 = !DILocation(line: 102, column: 5, scope: !3677)
!3684 = !DILocation(line: 103, column: 3, scope: !3669)
!3685 = distinct !DISubprogram(name: "xmemdup", scope: !3493, file: !3493, line: 111, type: !3686, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !755, variables: !3690)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!65, !3688, !70}
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3690 = !{!3691, !3692}
!3691 = !DILocalVariable(name: "p", arg: 1, scope: !3685, file: !3493, line: 111, type: !3688)
!3692 = !DILocalVariable(name: "s", arg: 2, scope: !3685, file: !3493, line: 111, type: !70)
!3693 = !DILocation(line: 111, column: 22, scope: !3685)
!3694 = !DILocation(line: 111, column: 32, scope: !3685)
!3695 = !DILocation(line: 39, column: 17, scope: !3492, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 113, column: 18, scope: !3685)
!3697 = !DILocation(line: 41, column: 13, scope: !3492, inlinedAt: !3696)
!3698 = !DILocation(line: 41, column: 9, scope: !3492, inlinedAt: !3696)
!3699 = !DILocation(line: 42, column: 8, scope: !3501, inlinedAt: !3696)
!3700 = !DILocation(line: 42, column: 15, scope: !3501, inlinedAt: !3696)
!3701 = !DILocation(line: 42, column: 10, scope: !3501, inlinedAt: !3696)
!3702 = !DILocation(line: 43, column: 5, scope: !3501, inlinedAt: !3696)
!3703 = !DILocation(line: 113, column: 10, scope: !3685)
!3704 = !DILocation(line: 113, column: 3, scope: !3685)
!3705 = distinct !DISubprogram(name: "xstrdup", scope: !3493, file: !3493, line: 119, type: !1409, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !755, variables: !3706)
!3706 = !{!3707}
!3707 = !DILocalVariable(name: "string", arg: 1, scope: !3705, file: !3493, line: 119, type: !78)
!3708 = !DILocation(line: 119, column: 22, scope: !3705)
!3709 = !DILocation(line: 121, column: 27, scope: !3705)
!3710 = !DILocation(line: 121, column: 43, scope: !3705)
!3711 = !DILocation(line: 111, column: 22, scope: !3685, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 121, column: 10, scope: !3705)
!3713 = !DILocation(line: 111, column: 32, scope: !3685, inlinedAt: !3712)
!3714 = !DILocation(line: 39, column: 17, scope: !3492, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 113, column: 18, scope: !3685, inlinedAt: !3712)
!3716 = !DILocation(line: 41, column: 13, scope: !3492, inlinedAt: !3715)
!3717 = !DILocation(line: 41, column: 9, scope: !3492, inlinedAt: !3715)
!3718 = !DILocation(line: 42, column: 8, scope: !3501, inlinedAt: !3715)
!3719 = !DILocation(line: 42, column: 15, scope: !3501, inlinedAt: !3715)
!3720 = !DILocation(line: 42, column: 10, scope: !3501, inlinedAt: !3715)
!3721 = !DILocation(line: 43, column: 5, scope: !3501, inlinedAt: !3715)
!3722 = !DILocation(line: 113, column: 10, scope: !3685, inlinedAt: !3712)
!3723 = !DILocation(line: 121, column: 3, scope: !3705)
!3724 = distinct !DISubprogram(name: "xalloc_die", scope: !3725, file: !3725, line: 32, type: !386, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !772, variables: !295)
!3725 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3726 = !DILocation(line: 34, column: 10, scope: !3724)
!3727 = !DILocation(line: 34, column: 33, scope: !3724)
!3728 = !DILocation(line: 34, column: 3, scope: !3724)
!3729 = !DILocation(line: 40, column: 3, scope: !3724)
!3730 = distinct !DISubprogram(name: "xstrndup", scope: !3731, file: !3731, line: 30, type: !2788, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !774, variables: !3732)
!3731 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3732 = !{!3733, !3734, !3735}
!3733 = !DILocalVariable(name: "string", arg: 1, scope: !3730, file: !3731, line: 30, type: !78)
!3734 = !DILocalVariable(name: "n", arg: 2, scope: !3730, file: !3731, line: 30, type: !70)
!3735 = !DILocalVariable(name: "s", scope: !3730, file: !3731, line: 32, type: !24)
!3736 = !DILocation(line: 30, column: 23, scope: !3730)
!3737 = !DILocation(line: 30, column: 38, scope: !3730)
!3738 = !DILocation(line: 32, column: 13, scope: !3730)
!3739 = !DILocation(line: 32, column: 9, scope: !3730)
!3740 = !DILocation(line: 33, column: 9, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3730, file: !3731, line: 33, column: 7)
!3742 = !DILocation(line: 33, column: 7, scope: !3730)
!3743 = !DILocation(line: 34, column: 5, scope: !3741)
!3744 = !DILocation(line: 35, column: 3, scope: !3730)
!3745 = distinct !DISubprogram(name: "rpl_calloc", scope: !3746, file: !3746, line: 42, type: !3479, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !776, variables: !3747)
!3746 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3747 = !{!3748, !3749, !3750, !3751}
!3748 = !DILocalVariable(name: "n", arg: 1, scope: !3745, file: !3746, line: 42, type: !70)
!3749 = !DILocalVariable(name: "s", arg: 2, scope: !3745, file: !3746, line: 42, type: !70)
!3750 = !DILocalVariable(name: "result", scope: !3745, file: !3746, line: 44, type: !65)
!3751 = !DILocalVariable(name: "bytes", scope: !3752, file: !3746, line: 56, type: !70)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !3746, line: 53, column: 5)
!3753 = distinct !DILexicalBlock(scope: !3745, file: !3746, line: 47, column: 7)
!3754 = !DILocation(line: 42, column: 20, scope: !3745)
!3755 = !DILocation(line: 42, column: 30, scope: !3745)
!3756 = !DILocation(line: 47, column: 9, scope: !3753)
!3757 = !DILocation(line: 47, column: 19, scope: !3753)
!3758 = !DILocation(line: 47, column: 14, scope: !3753)
!3759 = !DILocation(line: 56, column: 24, scope: !3752)
!3760 = !DILocation(line: 56, column: 14, scope: !3752)
!3761 = !DILocation(line: 57, column: 17, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3752, file: !3746, line: 57, column: 11)
!3763 = !DILocation(line: 57, column: 21, scope: !3762)
!3764 = !DILocation(line: 57, column: 11, scope: !3752)
!3765 = !DILocation(line: 59, column: 11, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3762, file: !3746, line: 58, column: 9)
!3767 = !DILocation(line: 59, column: 17, scope: !3766)
!3768 = !DILocation(line: 65, column: 12, scope: !3745)
!3769 = !DILocation(line: 44, column: 9, scope: !3745)
!3770 = !DILocation(line: 72, column: 3, scope: !3745)
!3771 = !DILocation(line: 73, column: 1, scope: !3745)
!3772 = distinct !DISubprogram(name: "rpl_fclose", scope: !3773, file: !3773, line: 56, type: !3774, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !778, variables: !3816)
!3773 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!22, !3776}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 7, baseType: !3778)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !3779)
!3779 = !{!3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3778, file: !19, line: 242, baseType: !22, size: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3778, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3778, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3778, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3778, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3778, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3778, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3778, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3778, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3778, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3778, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3778, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3778, file: !19, line: 260, baseType: !3793, size: 64, offset: 768)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !3795)
!3795 = !{!3796, !3797, !3799}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3794, file: !19, line: 157, baseType: !3793, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3794, file: !19, line: 158, baseType: !3798, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3794, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3778, file: !19, line: 262, baseType: !3798, size: 64, offset: 832)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3778, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3778, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3778, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3778, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3778, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3778, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3778, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3778, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3778, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3778, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3778, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3778, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3778, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3778, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3778, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!3816 = !{!3817, !3818, !3819, !3820}
!3817 = !DILocalVariable(name: "fp", arg: 1, scope: !3772, file: !3773, line: 56, type: !3776)
!3818 = !DILocalVariable(name: "saved_errno", scope: !3772, file: !3773, line: 58, type: !22)
!3819 = !DILocalVariable(name: "fd", scope: !3772, file: !3773, line: 59, type: !22)
!3820 = !DILocalVariable(name: "result", scope: !3772, file: !3773, line: 60, type: !22)
!3821 = !DILocation(line: 56, column: 19, scope: !3772)
!3822 = !DILocation(line: 58, column: 7, scope: !3772)
!3823 = !DILocation(line: 60, column: 7, scope: !3772)
!3824 = !DILocation(line: 63, column: 8, scope: !3772)
!3825 = !DILocation(line: 59, column: 7, scope: !3772)
!3826 = !DILocation(line: 64, column: 10, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3772, file: !3773, line: 64, column: 7)
!3828 = !DILocation(line: 64, column: 7, scope: !3772)
!3829 = !DILocation(line: 65, column: 12, scope: !3827)
!3830 = !DILocation(line: 65, column: 5, scope: !3827)
!3831 = !DILocation(line: 70, column: 9, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3772, file: !3773, line: 70, column: 7)
!3833 = !DILocation(line: 70, column: 23, scope: !3832)
!3834 = !DILocation(line: 70, column: 33, scope: !3832)
!3835 = !DILocation(line: 70, column: 26, scope: !3832)
!3836 = !DILocation(line: 70, column: 59, scope: !3832)
!3837 = !DILocation(line: 71, column: 7, scope: !3832)
!3838 = !DILocation(line: 71, column: 10, scope: !3832)
!3839 = !DILocation(line: 70, column: 7, scope: !3772)
!3840 = !DILocation(line: 98, column: 12, scope: !3772)
!3841 = !DILocation(line: 103, column: 7, scope: !3772)
!3842 = !DILocation(line: 72, column: 19, scope: !3832)
!3843 = !DILocation(line: 103, column: 19, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3772, file: !3773, line: 103, column: 7)
!3845 = !DILocation(line: 105, column: 13, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3844, file: !3773, line: 104, column: 5)
!3847 = !DILocation(line: 107, column: 5, scope: !3846)
!3848 = !DILocation(line: 110, column: 1, scope: !3772)
!3849 = distinct !DISubprogram(name: "rpl_fflush", scope: !3850, file: !3850, line: 127, type: !3851, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !780, variables: !3893)
!3850 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!22, !3853}
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 7, baseType: !3855)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !3856)
!3856 = !{!3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3855, file: !19, line: 242, baseType: !22, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3855, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3855, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3855, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3855, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3855, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3855, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3855, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3855, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3855, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3855, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3855, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3855, file: !19, line: 260, baseType: !3870, size: 64, offset: 768)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !3872)
!3872 = !{!3873, !3874, !3876}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3871, file: !19, line: 157, baseType: !3870, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3871, file: !19, line: 158, baseType: !3875, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3871, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3855, file: !19, line: 262, baseType: !3875, size: 64, offset: 832)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3855, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3855, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3855, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3855, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3855, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3855, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3855, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3855, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3855, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3855, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3855, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3855, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3855, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3855, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3855, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!3893 = !{!3894}
!3894 = !DILocalVariable(name: "stream", arg: 1, scope: !3849, file: !3850, line: 127, type: !3853)
!3895 = !DILocation(line: 127, column: 19, scope: !3849)
!3896 = !DILocation(line: 148, column: 14, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3849, file: !3850, line: 148, column: 7)
!3898 = !DILocation(line: 148, column: 22, scope: !3897)
!3899 = !DILocation(line: 148, column: 27, scope: !3897)
!3900 = !DILocation(line: 148, column: 7, scope: !3849)
!3901 = !DILocation(line: 149, column: 12, scope: !3897)
!3902 = !DILocation(line: 149, column: 5, scope: !3897)
!3903 = !DILocalVariable(name: "fp", arg: 1, scope: !3904, file: !3850, line: 40, type: !3853)
!3904 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3850, file: !3850, line: 40, type: !3905, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !780, variables: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !3853}
!3907 = !{!3903}
!3908 = !DILocation(line: 40, column: 48, scope: !3904, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 153, column: 3, scope: !3849)
!3910 = !DILocation(line: 42, column: 11, scope: !3911, inlinedAt: !3909)
!3911 = distinct !DILexicalBlock(scope: !3904, file: !3850, line: 42, column: 7)
!3912 = !{!3913, !885, i64 0}
!3913 = !{!"_IO_FILE", !885, i64 0, !810, i64 8, !810, i64 16, !810, i64 24, !810, i64 32, !810, i64 40, !810, i64 48, !810, i64 56, !810, i64 64, !810, i64 72, !810, i64 80, !810, i64 88, !810, i64 96, !810, i64 104, !885, i64 112, !885, i64 116, !991, i64 120, !1084, i64 128, !811, i64 130, !811, i64 131, !810, i64 136, !991, i64 144, !810, i64 152, !810, i64 160, !810, i64 168, !810, i64 176, !991, i64 184, !885, i64 192, !811, i64 196}
!3914 = !DILocation(line: 42, column: 18, scope: !3911, inlinedAt: !3909)
!3915 = !DILocation(line: 42, column: 7, scope: !3904, inlinedAt: !3909)
!3916 = !DILocation(line: 44, column: 5, scope: !3911, inlinedAt: !3909)
!3917 = !DILocation(line: 155, column: 10, scope: !3849)
!3918 = !DILocation(line: 155, column: 3, scope: !3849)
!3919 = !DILocation(line: 229, column: 1, scope: !3849)
!3920 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3921, file: !3921, line: 28, type: !3922, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !782, variables: !3965)
!3921 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!22, !3924, !3964, !22}
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 7, baseType: !3926)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !3927)
!3927 = !{!3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3926, file: !19, line: 242, baseType: !22, size: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3926, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3926, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3926, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3926, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3926, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3926, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3926, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3926, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3926, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3926, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3926, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3926, file: !19, line: 260, baseType: !3941, size: 64, offset: 768)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !3943)
!3943 = !{!3944, !3945, !3947}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3942, file: !19, line: 157, baseType: !3941, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3942, file: !19, line: 158, baseType: !3946, size: 64, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3942, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3926, file: !19, line: 262, baseType: !3946, size: 64, offset: 832)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3926, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3926, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3926, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3926, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3926, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3926, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3926, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3926, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3926, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3926, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3926, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3926, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3926, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3926, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3926, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3458, line: 57, baseType: !48)
!3965 = !{!3966, !3967, !3968, !3969}
!3966 = !DILocalVariable(name: "fp", arg: 1, scope: !3920, file: !3921, line: 28, type: !3924)
!3967 = !DILocalVariable(name: "offset", arg: 2, scope: !3920, file: !3921, line: 28, type: !3964)
!3968 = !DILocalVariable(name: "whence", arg: 3, scope: !3920, file: !3921, line: 28, type: !22)
!3969 = !DILocalVariable(name: "pos", scope: !3970, file: !3921, line: 116, type: !3964)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !3921, line: 112, column: 5)
!3971 = distinct !DILexicalBlock(scope: !3920, file: !3921, line: 51, column: 7)
!3972 = !DILocation(line: 28, column: 15, scope: !3920)
!3973 = !DILocation(line: 28, column: 25, scope: !3920)
!3974 = !DILocation(line: 28, column: 37, scope: !3920)
!3975 = !DILocation(line: 51, column: 11, scope: !3971)
!3976 = !{!3913, !810, i64 16}
!3977 = !DILocation(line: 51, column: 31, scope: !3971)
!3978 = !{!3913, !810, i64 8}
!3979 = !DILocation(line: 51, column: 24, scope: !3971)
!3980 = !DILocation(line: 52, column: 7, scope: !3971)
!3981 = !DILocation(line: 52, column: 14, scope: !3971)
!3982 = !{!3913, !810, i64 40}
!3983 = !DILocation(line: 52, column: 35, scope: !3971)
!3984 = !{!3913, !810, i64 32}
!3985 = !DILocation(line: 52, column: 28, scope: !3971)
!3986 = !DILocation(line: 53, column: 7, scope: !3971)
!3987 = !DILocation(line: 53, column: 14, scope: !3971)
!3988 = !{!3913, !810, i64 72}
!3989 = !DILocation(line: 53, column: 28, scope: !3971)
!3990 = !DILocation(line: 51, column: 7, scope: !3920)
!3991 = !DILocation(line: 116, column: 26, scope: !3970)
!3992 = !DILocation(line: 116, column: 19, scope: !3970)
!3993 = !DILocation(line: 116, column: 13, scope: !3970)
!3994 = !DILocation(line: 117, column: 15, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3970, file: !3921, line: 117, column: 11)
!3996 = !DILocation(line: 117, column: 11, scope: !3970)
!3997 = !DILocation(line: 127, column: 11, scope: !3970)
!3998 = !DILocation(line: 127, column: 18, scope: !3970)
!3999 = !DILocation(line: 128, column: 11, scope: !3970)
!4000 = !DILocation(line: 128, column: 19, scope: !3970)
!4001 = !{!3913, !991, i64 144}
!4002 = !DILocation(line: 159, column: 7, scope: !3970)
!4003 = !DILocation(line: 161, column: 10, scope: !3920)
!4004 = !DILocation(line: 161, column: 3, scope: !3920)
!4005 = !DILocation(line: 162, column: 1, scope: !3920)
!4006 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4007, file: !4007, line: 334, type: !4008, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !784, variables: !4022)
!4007 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!70, !4010, !78, !70, !4011}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1832, line: 6, baseType: !4013)
!4013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1834, line: 21, baseType: !4014)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1834, line: 13, size: 64, elements: !4015)
!4015 = !{!4016, !4017}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4014, file: !1834, line: 15, baseType: !22, size: 32)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4014, file: !1834, line: 20, baseType: !4018, size: 32, offset: 32)
!4018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4014, file: !1834, line: 16, size: 32, elements: !4019)
!4019 = !{!4020, !4021}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4018, file: !1834, line: 18, baseType: !151, size: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4018, file: !1834, line: 19, baseType: !1843, size: 32)
!4022 = !{!4023, !4024, !4025, !4026, !4027, !4028, !4029}
!4023 = !DILocalVariable(name: "pwc", arg: 1, scope: !4006, file: !4007, line: 334, type: !4010)
!4024 = !DILocalVariable(name: "s", arg: 2, scope: !4006, file: !4007, line: 334, type: !78)
!4025 = !DILocalVariable(name: "n", arg: 3, scope: !4006, file: !4007, line: 334, type: !70)
!4026 = !DILocalVariable(name: "ps", arg: 4, scope: !4006, file: !4007, line: 334, type: !4011)
!4027 = !DILocalVariable(name: "ret", scope: !4006, file: !4007, line: 336, type: !70)
!4028 = !DILocalVariable(name: "wc", scope: !4006, file: !4007, line: 337, type: !1848)
!4029 = !DILocalVariable(name: "uc", scope: !4030, file: !4007, line: 398, type: !733)
!4030 = distinct !DILexicalBlock(scope: !4031, file: !4007, line: 397, column: 5)
!4031 = distinct !DILexicalBlock(scope: !4006, file: !4007, line: 396, column: 7)
!4032 = !DILocation(line: 334, column: 23, scope: !4006)
!4033 = !DILocation(line: 334, column: 40, scope: !4006)
!4034 = !DILocation(line: 334, column: 50, scope: !4006)
!4035 = !DILocation(line: 334, column: 64, scope: !4006)
!4036 = !DILocation(line: 337, column: 3, scope: !4006)
!4037 = !DILocation(line: 353, column: 9, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4006, file: !4007, line: 353, column: 7)
!4039 = !DILocation(line: 353, column: 7, scope: !4006)
!4040 = !DILocation(line: 388, column: 9, scope: !4006)
!4041 = !DILocation(line: 336, column: 10, scope: !4006)
!4042 = !DILocation(line: 396, column: 19, scope: !4031)
!4043 = !DILocation(line: 396, column: 31, scope: !4031)
!4044 = !DILocation(line: 396, column: 26, scope: !4031)
!4045 = !DILocation(line: 396, column: 41, scope: !4031)
!4046 = !DILocation(line: 396, column: 7, scope: !4006)
!4047 = !DILocation(line: 398, column: 26, scope: !4030)
!4048 = !DILocation(line: 398, column: 21, scope: !4030)
!4049 = !DILocation(line: 399, column: 14, scope: !4030)
!4050 = !DILocation(line: 399, column: 12, scope: !4030)
!4051 = !DILocation(line: 405, column: 1, scope: !4006)
!4052 = distinct !DISubprogram(name: "print_and_abort", scope: !384, file: !384, line: 330, type: !386, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !380, variables: !295)
!4053 = !DILocation(line: 340, column: 3, scope: !4052)
!4054 = !DILocation(line: 342, column: 9, scope: !4052)
!4055 = !DILocation(line: 342, column: 3, scope: !4052)
!4056 = distinct !DISubprogram(name: "_obstack_begin", scope: !384, file: !384, line: 150, type: !4057, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !380, variables: !4093)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!22, !4059, !70, !70, !131, !142}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !105, line: 174, size: 704, elements: !4061)
!4061 = !{!4062, !4063, !4070, !4071, !4072, !4073, !4078, !4079, !4084, !4089, !4090, !4091, !4092}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !4060, file: !105, line: 176, baseType: !70, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !4060, file: !105, line: 177, baseType: !4064, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !105, line: 167, size: 128, elements: !4066)
!4066 = !{!4067, !4068, !4069}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !4065, file: !105, line: 169, baseType: !24, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4065, file: !105, line: 170, baseType: !4064, size: 64, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !4065, file: !105, line: 171, baseType: !115, offset: 128)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !4060, file: !105, line: 178, baseType: !24, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !4060, file: !105, line: 179, baseType: !24, size: 64, offset: 192)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !4060, file: !105, line: 180, baseType: !24, size: 64, offset: 256)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4060, file: !105, line: 185, baseType: !4074, size: 64, offset: 320)
!4074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4060, file: !105, line: 181, size: 64, elements: !4075)
!4075 = !{!4076, !4077}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !4074, file: !105, line: 183, baseType: !70, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4074, file: !105, line: 184, baseType: !65, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !4060, file: !105, line: 186, baseType: !70, size: 64, offset: 384)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !4060, file: !105, line: 193, baseType: !4080, size: 64, offset: 448)
!4080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4060, file: !105, line: 189, size: 64, elements: !4081)
!4081 = !{!4082, !4083}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4080, file: !105, line: 191, baseType: !131, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4080, file: !105, line: 192, baseType: !135, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !4060, file: !105, line: 198, baseType: !4085, size: 64, offset: 512)
!4085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4060, file: !105, line: 194, size: 64, elements: !4086)
!4086 = !{!4087, !4088}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4085, file: !105, line: 196, baseType: !142, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4085, file: !105, line: 197, baseType: !146, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !4060, file: !105, line: 200, baseType: !65, size: 64, offset: 576)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !4060, file: !105, line: 201, baseType: !151, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !4060, file: !105, line: 202, baseType: !151, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !4060, file: !105, line: 206, baseType: !151, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!4093 = !{!4094, !4095, !4096, !4097, !4098}
!4094 = !DILocalVariable(name: "h", arg: 1, scope: !4056, file: !384, line: 150, type: !4059)
!4095 = !DILocalVariable(name: "size", arg: 2, scope: !4056, file: !384, line: 151, type: !70)
!4096 = !DILocalVariable(name: "alignment", arg: 3, scope: !4056, file: !384, line: 151, type: !70)
!4097 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !4056, file: !384, line: 152, type: !131)
!4098 = !DILocalVariable(name: "freefun", arg: 5, scope: !4056, file: !384, line: 153, type: !142)
!4099 = !DILocation(line: 150, column: 33, scope: !4056)
!4100 = !DILocation(line: 151, column: 33, scope: !4056)
!4101 = !DILocation(line: 151, column: 55, scope: !4056)
!4102 = !DILocation(line: 152, column: 25, scope: !4056)
!4103 = !DILocation(line: 153, column: 24, scope: !4056)
!4104 = !DILocation(line: 155, column: 15, scope: !4056)
!4105 = !DILocation(line: 155, column: 21, scope: !4056)
!4106 = !DILocation(line: 156, column: 14, scope: !4056)
!4107 = !DILocation(line: 156, column: 20, scope: !4056)
!4108 = !DILocation(line: 157, column: 6, scope: !4056)
!4109 = !DILocation(line: 157, column: 20, scope: !4056)
!4110 = !DILocation(line: 114, column: 17, scope: !4111, inlinedAt: !4123)
!4111 = distinct !DILexicalBlock(scope: !4112, file: !384, line: 114, column: 7)
!4112 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !384, file: !384, line: 109, type: !4113, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !380, variables: !4115)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!22, !4059, !70, !70}
!4115 = !{!4116, !4117, !4118, !4119, !4120}
!4116 = !DILocalVariable(name: "h", arg: 1, scope: !4112, file: !384, line: 109, type: !4059)
!4117 = !DILocalVariable(name: "size", arg: 2, scope: !4112, file: !384, line: 110, type: !70)
!4118 = !DILocalVariable(name: "alignment", arg: 3, scope: !4112, file: !384, line: 110, type: !70)
!4119 = !DILocalVariable(name: "chunk", scope: !4112, file: !384, line: 112, type: !4064)
!4120 = !DILocalVariable(name: "extra", scope: !4121, file: !384, line: 127, type: !22)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !384, line: 118, column: 5)
!4122 = distinct !DILexicalBlock(scope: !4112, file: !384, line: 116, column: 7)
!4123 = distinct !DILocation(line: 158, column: 10, scope: !4056)
!4124 = !DILocation(line: 110, column: 62, scope: !4112, inlinedAt: !4123)
!4125 = !DILocation(line: 114, column: 7, scope: !4112, inlinedAt: !4123)
!4126 = !DILocation(line: 116, column: 12, scope: !4122, inlinedAt: !4123)
!4127 = !DILocation(line: 110, column: 40, scope: !4112, inlinedAt: !4123)
!4128 = !DILocation(line: 116, column: 7, scope: !4112, inlinedAt: !4123)
!4129 = !DILocation(line: 133, column: 6, scope: !4112, inlinedAt: !4123)
!4130 = !DILocation(line: 133, column: 17, scope: !4112, inlinedAt: !4123)
!4131 = !{!990, !991, i64 0}
!4132 = !DILocation(line: 134, column: 33, scope: !4112, inlinedAt: !4123)
!4133 = !DILocation(line: 134, column: 6, scope: !4112, inlinedAt: !4123)
!4134 = !DILocation(line: 134, column: 21, scope: !4112, inlinedAt: !4123)
!4135 = !DILocalVariable(name: "h", arg: 1, scope: !4136, file: !384, line: 84, type: !4059)
!4136 = distinct !DISubprogram(name: "call_chunkfun", scope: !384, file: !384, line: 84, type: !4137, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !380, variables: !4139)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!65, !4059, !70}
!4139 = !{!4135, !4140}
!4140 = !DILocalVariable(name: "size", arg: 2, scope: !4136, file: !384, line: 84, type: !70)
!4141 = !DILocation(line: 84, column: 32, scope: !4136, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 136, column: 22, scope: !4112, inlinedAt: !4123)
!4143 = !DILocation(line: 84, column: 42, scope: !4136, inlinedAt: !4142)
!4144 = !DILocation(line: 89, column: 12, scope: !4145, inlinedAt: !4142)
!4145 = distinct !DILexicalBlock(scope: !4136, file: !384, line: 86, column: 7)
!4146 = !DILocation(line: 136, column: 14, scope: !4112, inlinedAt: !4123)
!4147 = !DILocation(line: 136, column: 20, scope: !4112, inlinedAt: !4123)
!4148 = !DILocation(line: 112, column: 26, scope: !4112, inlinedAt: !4123)
!4149 = !DILocation(line: 137, column: 8, scope: !4150, inlinedAt: !4123)
!4150 = distinct !DILexicalBlock(scope: !4112, file: !384, line: 137, column: 7)
!4151 = !DILocation(line: 137, column: 7, scope: !4112, inlinedAt: !4123)
!4152 = !DILocation(line: 138, column: 7, scope: !4150, inlinedAt: !4123)
!4153 = !DILocation(line: 138, column: 5, scope: !4150, inlinedAt: !4123)
!4154 = !DILocation(line: 139, column: 35, scope: !4112, inlinedAt: !4123)
!4155 = !DILocation(line: 139, column: 21, scope: !4112, inlinedAt: !4123)
!4156 = !DILocation(line: 139, column: 33, scope: !4112, inlinedAt: !4123)
!4157 = !DILocation(line: 139, column: 6, scope: !4112, inlinedAt: !4123)
!4158 = !DILocation(line: 139, column: 16, scope: !4112, inlinedAt: !4123)
!4159 = !DILocation(line: 141, column: 55, scope: !4112, inlinedAt: !4123)
!4160 = !DILocation(line: 141, column: 50, scope: !4112, inlinedAt: !4123)
!4161 = !DILocation(line: 141, column: 27, scope: !4112, inlinedAt: !4123)
!4162 = !DILocation(line: 141, column: 33, scope: !4112, inlinedAt: !4123)
!4163 = !DILocation(line: 141, column: 6, scope: !4112, inlinedAt: !4123)
!4164 = !DILocation(line: 141, column: 18, scope: !4112, inlinedAt: !4123)
!4165 = !DILocation(line: 142, column: 10, scope: !4112, inlinedAt: !4123)
!4166 = !DILocation(line: 142, column: 15, scope: !4112, inlinedAt: !4123)
!4167 = !DILocation(line: 144, column: 25, scope: !4112, inlinedAt: !4123)
!4168 = !DILocation(line: 145, column: 19, scope: !4112, inlinedAt: !4123)
!4169 = !DILocation(line: 158, column: 3, scope: !4056)
!4170 = distinct !DISubprogram(name: "_obstack_begin_1", scope: !384, file: !384, line: 162, type: !4171, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !380, variables: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!22, !4059, !70, !70, !135, !146, !65}
!4173 = !{!4174, !4175, !4176, !4177, !4178, !4179}
!4174 = !DILocalVariable(name: "h", arg: 1, scope: !4170, file: !384, line: 162, type: !4059)
!4175 = !DILocalVariable(name: "size", arg: 2, scope: !4170, file: !384, line: 163, type: !70)
!4176 = !DILocalVariable(name: "alignment", arg: 3, scope: !4170, file: !384, line: 163, type: !70)
!4177 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !4170, file: !384, line: 164, type: !135)
!4178 = !DILocalVariable(name: "freefun", arg: 5, scope: !4170, file: !384, line: 165, type: !146)
!4179 = !DILocalVariable(name: "arg", arg: 6, scope: !4170, file: !384, line: 166, type: !65)
!4180 = !DILocation(line: 162, column: 35, scope: !4170)
!4181 = !DILocation(line: 163, column: 35, scope: !4170)
!4182 = !DILocation(line: 163, column: 57, scope: !4170)
!4183 = !DILocation(line: 164, column: 27, scope: !4170)
!4184 = !DILocation(line: 165, column: 26, scope: !4170)
!4185 = !DILocation(line: 166, column: 25, scope: !4170)
!4186 = !DILocation(line: 168, column: 6, scope: !4170)
!4187 = !DILocation(line: 168, column: 15, scope: !4170)
!4188 = !DILocation(line: 168, column: 21, scope: !4170)
!4189 = !DILocation(line: 169, column: 6, scope: !4170)
!4190 = !DILocation(line: 169, column: 14, scope: !4170)
!4191 = !DILocation(line: 169, column: 20, scope: !4170)
!4192 = !DILocation(line: 170, column: 6, scope: !4170)
!4193 = !DILocation(line: 170, column: 16, scope: !4170)
!4194 = !{!990, !810, i64 72}
!4195 = !DILocation(line: 171, column: 6, scope: !4170)
!4196 = !DILocation(line: 171, column: 20, scope: !4170)
!4197 = !DILocation(line: 114, column: 17, scope: !4111, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 172, column: 10, scope: !4170)
!4199 = !DILocation(line: 110, column: 62, scope: !4112, inlinedAt: !4198)
!4200 = !DILocation(line: 114, column: 7, scope: !4112, inlinedAt: !4198)
!4201 = !DILocation(line: 116, column: 12, scope: !4122, inlinedAt: !4198)
!4202 = !DILocation(line: 110, column: 40, scope: !4112, inlinedAt: !4198)
!4203 = !DILocation(line: 116, column: 7, scope: !4112, inlinedAt: !4198)
!4204 = !DILocation(line: 133, column: 6, scope: !4112, inlinedAt: !4198)
!4205 = !DILocation(line: 133, column: 17, scope: !4112, inlinedAt: !4198)
!4206 = !DILocation(line: 134, column: 33, scope: !4112, inlinedAt: !4198)
!4207 = !DILocation(line: 134, column: 6, scope: !4112, inlinedAt: !4198)
!4208 = !DILocation(line: 134, column: 21, scope: !4112, inlinedAt: !4198)
!4209 = !DILocation(line: 84, column: 32, scope: !4136, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 136, column: 22, scope: !4112, inlinedAt: !4198)
!4211 = !DILocation(line: 84, column: 42, scope: !4136, inlinedAt: !4210)
!4212 = !DILocation(line: 87, column: 12, scope: !4145, inlinedAt: !4210)
!4213 = !DILocation(line: 136, column: 14, scope: !4112, inlinedAt: !4198)
!4214 = !DILocation(line: 136, column: 20, scope: !4112, inlinedAt: !4198)
!4215 = !DILocation(line: 112, column: 26, scope: !4112, inlinedAt: !4198)
!4216 = !DILocation(line: 137, column: 8, scope: !4150, inlinedAt: !4198)
!4217 = !DILocation(line: 137, column: 7, scope: !4112, inlinedAt: !4198)
!4218 = !DILocation(line: 138, column: 7, scope: !4150, inlinedAt: !4198)
!4219 = !DILocation(line: 138, column: 5, scope: !4150, inlinedAt: !4198)
!4220 = !DILocation(line: 139, column: 35, scope: !4112, inlinedAt: !4198)
!4221 = !DILocation(line: 139, column: 21, scope: !4112, inlinedAt: !4198)
!4222 = !DILocation(line: 139, column: 33, scope: !4112, inlinedAt: !4198)
!4223 = !DILocation(line: 139, column: 6, scope: !4112, inlinedAt: !4198)
!4224 = !DILocation(line: 139, column: 16, scope: !4112, inlinedAt: !4198)
!4225 = !DILocation(line: 141, column: 55, scope: !4112, inlinedAt: !4198)
!4226 = !DILocation(line: 141, column: 50, scope: !4112, inlinedAt: !4198)
!4227 = !DILocation(line: 141, column: 27, scope: !4112, inlinedAt: !4198)
!4228 = !DILocation(line: 141, column: 33, scope: !4112, inlinedAt: !4198)
!4229 = !DILocation(line: 141, column: 6, scope: !4112, inlinedAt: !4198)
!4230 = !DILocation(line: 141, column: 18, scope: !4112, inlinedAt: !4198)
!4231 = !DILocation(line: 142, column: 10, scope: !4112, inlinedAt: !4198)
!4232 = !DILocation(line: 142, column: 15, scope: !4112, inlinedAt: !4198)
!4233 = !DILocation(line: 144, column: 25, scope: !4112, inlinedAt: !4198)
!4234 = !DILocation(line: 145, column: 19, scope: !4112, inlinedAt: !4198)
!4235 = !DILocation(line: 172, column: 3, scope: !4170)
!4236 = distinct !DISubprogram(name: "_obstack_newchunk", scope: !384, file: !384, line: 182, type: !4237, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !380, variables: !4239)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{null, !4059, !70}
!4239 = !{!4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248}
!4240 = !DILocalVariable(name: "h", arg: 1, scope: !4236, file: !384, line: 182, type: !4059)
!4241 = !DILocalVariable(name: "length", arg: 2, scope: !4236, file: !384, line: 182, type: !70)
!4242 = !DILocalVariable(name: "old_chunk", scope: !4236, file: !384, line: 184, type: !4064)
!4243 = !DILocalVariable(name: "new_chunk", scope: !4236, file: !384, line: 185, type: !4064)
!4244 = !DILocalVariable(name: "obj_size", scope: !4236, file: !384, line: 186, type: !70)
!4245 = !DILocalVariable(name: "object_base", scope: !4236, file: !384, line: 187, type: !24)
!4246 = !DILocalVariable(name: "sum1", scope: !4236, file: !384, line: 190, type: !70)
!4247 = !DILocalVariable(name: "sum2", scope: !4236, file: !384, line: 191, type: !70)
!4248 = !DILocalVariable(name: "new_size", scope: !4236, file: !384, line: 192, type: !70)
!4249 = !DILocation(line: 182, column: 36, scope: !4236)
!4250 = !DILocation(line: 182, column: 55, scope: !4236)
!4251 = !DILocation(line: 184, column: 41, scope: !4236)
!4252 = !DILocation(line: 184, column: 26, scope: !4236)
!4253 = !DILocation(line: 185, column: 26, scope: !4236)
!4254 = !DILocation(line: 186, column: 24, scope: !4236)
!4255 = !DILocation(line: 186, column: 39, scope: !4236)
!4256 = !DILocation(line: 186, column: 34, scope: !4236)
!4257 = !DILocation(line: 186, column: 10, scope: !4236)
!4258 = !DILocation(line: 190, column: 26, scope: !4236)
!4259 = !DILocation(line: 190, column: 10, scope: !4236)
!4260 = !DILocation(line: 191, column: 27, scope: !4236)
!4261 = !DILocation(line: 191, column: 22, scope: !4236)
!4262 = !DILocation(line: 191, column: 10, scope: !4236)
!4263 = !DILocation(line: 192, column: 38, scope: !4236)
!4264 = !DILocation(line: 192, column: 26, scope: !4236)
!4265 = !DILocation(line: 192, column: 44, scope: !4236)
!4266 = !DILocation(line: 192, column: 10, scope: !4236)
!4267 = !DILocation(line: 193, column: 16, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4236, file: !384, line: 193, column: 7)
!4269 = !DILocation(line: 193, column: 7, scope: !4236)
!4270 = !DILocation(line: 195, column: 21, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4236, file: !384, line: 195, column: 7)
!4272 = !DILocation(line: 195, column: 16, scope: !4271)
!4273 = !DILocation(line: 195, column: 7, scope: !4236)
!4274 = !DILocation(line: 199, column: 16, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4236, file: !384, line: 199, column: 7)
!4276 = !DILocation(line: 199, column: 32, scope: !4275)
!4277 = !DILocation(line: 199, column: 24, scope: !4275)
!4278 = !DILocation(line: 84, column: 32, scope: !4136, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 200, column: 17, scope: !4275)
!4280 = !DILocation(line: 84, column: 42, scope: !4136, inlinedAt: !4279)
!4281 = !DILocation(line: 86, column: 10, scope: !4145, inlinedAt: !4279)
!4282 = !DILocation(line: 86, column: 7, scope: !4145, inlinedAt: !4279)
!4283 = !DILocation(line: 86, column: 7, scope: !4136, inlinedAt: !4279)
!4284 = !DILocation(line: 87, column: 24, scope: !4145, inlinedAt: !4279)
!4285 = !DILocation(line: 87, column: 34, scope: !4145, inlinedAt: !4279)
!4286 = !DILocation(line: 87, column: 12, scope: !4145, inlinedAt: !4279)
!4287 = !DILocation(line: 87, column: 5, scope: !4145, inlinedAt: !4279)
!4288 = !DILocation(line: 89, column: 24, scope: !4145, inlinedAt: !4279)
!4289 = !DILocation(line: 89, column: 12, scope: !4145, inlinedAt: !4279)
!4290 = !DILocation(line: 89, column: 5, scope: !4145, inlinedAt: !4279)
!4291 = !DILocation(line: 201, column: 8, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4236, file: !384, line: 201, column: 7)
!4293 = !DILocation(line: 201, column: 7, scope: !4236)
!4294 = !DILocation(line: 202, column: 7, scope: !4292)
!4295 = !DILocation(line: 202, column: 5, scope: !4292)
!4296 = !DILocation(line: 203, column: 12, scope: !4236)
!4297 = !DILocation(line: 204, column: 14, scope: !4236)
!4298 = !DILocation(line: 204, column: 19, scope: !4236)
!4299 = !DILocation(line: 205, column: 58, scope: !4236)
!4300 = !DILocation(line: 205, column: 25, scope: !4236)
!4301 = !DILocation(line: 205, column: 37, scope: !4236)
!4302 = !DILocation(line: 205, column: 14, scope: !4236)
!4303 = !DILocation(line: 205, column: 20, scope: !4236)
!4304 = !DILocation(line: 209, column: 5, scope: !4236)
!4305 = !DILocation(line: 187, column: 9, scope: !4236)
!4306 = !DILocation(line: 212, column: 27, scope: !4236)
!4307 = !DILocation(line: 212, column: 3, scope: !4236)
!4308 = !DILocation(line: 217, column: 11, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4236, file: !384, line: 217, column: 7)
!4310 = !DILocation(line: 217, column: 8, scope: !4309)
!4311 = !DILocation(line: 218, column: 7, scope: !4309)
!4312 = !DILocation(line: 219, column: 14, scope: !4309)
!4313 = !DILocation(line: 219, column: 11, scope: !4309)
!4314 = !DILocation(line: 217, column: 7, scope: !4236)
!4315 = !DILocation(line: 222, column: 36, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4309, file: !384, line: 221, column: 5)
!4317 = !DILocation(line: 222, column: 23, scope: !4316)
!4318 = !DILocation(line: 223, column: 24, scope: !4316)
!4319 = !DILocalVariable(name: "h", arg: 1, scope: !4320, file: !384, line: 93, type: !4059)
!4320 = distinct !DISubprogram(name: "call_freefun", scope: !384, file: !384, line: 93, type: !4321, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !380, variables: !4323)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{null, !4059, !65}
!4323 = !{!4319, !4324}
!4324 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !4320, file: !384, line: 93, type: !65)
!4325 = !DILocation(line: 93, column: 31, scope: !4320, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 223, column: 7, scope: !4316)
!4327 = !DILocation(line: 93, column: 40, scope: !4320, inlinedAt: !4326)
!4328 = !DILocation(line: 95, column: 10, scope: !4329, inlinedAt: !4326)
!4329 = distinct !DILexicalBlock(scope: !4320, file: !384, line: 95, column: 7)
!4330 = !DILocation(line: 95, column: 7, scope: !4329, inlinedAt: !4326)
!4331 = !DILocation(line: 95, column: 7, scope: !4320, inlinedAt: !4326)
!4332 = !DILocation(line: 96, column: 16, scope: !4329, inlinedAt: !4326)
!4333 = !DILocation(line: 96, column: 26, scope: !4329, inlinedAt: !4326)
!4334 = !DILocation(line: 96, column: 5, scope: !4329, inlinedAt: !4326)
!4335 = !DILocation(line: 98, column: 16, scope: !4329, inlinedAt: !4326)
!4336 = !DILocation(line: 98, column: 5, scope: !4329, inlinedAt: !4326)
!4337 = !DILocation(line: 226, column: 18, scope: !4236)
!4338 = !DILocation(line: 227, column: 33, scope: !4236)
!4339 = !DILocation(line: 227, column: 16, scope: !4236)
!4340 = !DILocation(line: 229, column: 25, scope: !4236)
!4341 = !DILocation(line: 230, column: 1, scope: !4236)
!4342 = distinct !DISubprogram(name: "_obstack_allocated_p", scope: !384, file: !384, line: 241, type: !4343, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !380, variables: !4345)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!22, !4059, !65}
!4345 = !{!4346, !4347, !4348, !4349}
!4346 = !DILocalVariable(name: "h", arg: 1, scope: !4342, file: !384, line: 241, type: !4059)
!4347 = !DILocalVariable(name: "obj", arg: 2, scope: !4342, file: !384, line: 241, type: !65)
!4348 = !DILocalVariable(name: "lp", scope: !4342, file: !384, line: 243, type: !4064)
!4349 = !DILocalVariable(name: "plp", scope: !4342, file: !384, line: 244, type: !4064)
!4350 = !DILocation(line: 241, column: 39, scope: !4342)
!4351 = !DILocation(line: 241, column: 48, scope: !4342)
!4352 = !DILocation(line: 246, column: 13, scope: !4342)
!4353 = !DIExpression(DW_OP_deref)
!4354 = !DILocation(line: 243, column: 26, scope: !4342)
!4355 = !DILocation(line: 250, column: 13, scope: !4342)
!4356 = !DILocation(line: 250, column: 18, scope: !4342)
!4357 = !DILocation(line: 250, column: 22, scope: !4342)
!4358 = !DILocation(line: 250, column: 34, scope: !4342)
!4359 = !DILocation(line: 250, column: 41, scope: !4342)
!4360 = !DILocation(line: 250, column: 59, scope: !4342)
!4361 = !DILocation(line: 250, column: 65, scope: !4342)
!4362 = !DILocation(line: 250, column: 3, scope: !4342)
!4363 = !DILocation(line: 252, column: 17, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4342, file: !384, line: 251, column: 5)
!4365 = !DILocation(line: 244, column: 26, scope: !4342)
!4366 = distinct !{!4366, !4362, !4367}
!4367 = !DILocation(line: 254, column: 5, scope: !4342)
!4368 = !DILocation(line: 255, column: 3, scope: !4342)
!4369 = distinct !DISubprogram(name: "_obstack_free", scope: !384, file: !384, line: 262, type: !4321, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !380, variables: !4370)
!4370 = !{!4371, !4372, !4373, !4374}
!4371 = !DILocalVariable(name: "h", arg: 1, scope: !4369, file: !384, line: 262, type: !4059)
!4372 = !DILocalVariable(name: "obj", arg: 2, scope: !4369, file: !384, line: 262, type: !65)
!4373 = !DILocalVariable(name: "lp", scope: !4369, file: !384, line: 264, type: !4064)
!4374 = !DILocalVariable(name: "plp", scope: !4369, file: !384, line: 265, type: !4064)
!4375 = !DILocation(line: 262, column: 32, scope: !4369)
!4376 = !DILocation(line: 262, column: 41, scope: !4369)
!4377 = !DILocation(line: 267, column: 11, scope: !4369)
!4378 = !DILocation(line: 264, column: 26, scope: !4369)
!4379 = !DILocation(line: 271, column: 13, scope: !4369)
!4380 = !DILocation(line: 271, column: 18, scope: !4369)
!4381 = !DILocation(line: 271, column: 22, scope: !4369)
!4382 = !DILocation(line: 271, column: 34, scope: !4369)
!4383 = !DILocation(line: 271, column: 41, scope: !4369)
!4384 = !DILocation(line: 271, column: 59, scope: !4369)
!4385 = !DILocation(line: 271, column: 65, scope: !4369)
!4386 = !DILocation(line: 271, column: 3, scope: !4369)
!4387 = !DILocation(line: 273, column: 17, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4369, file: !384, line: 272, column: 5)
!4389 = !DILocation(line: 265, column: 26, scope: !4369)
!4390 = !DILocation(line: 93, column: 31, scope: !4320, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 274, column: 7, scope: !4388)
!4392 = !DILocation(line: 93, column: 40, scope: !4320, inlinedAt: !4391)
!4393 = !DILocation(line: 95, column: 10, scope: !4329, inlinedAt: !4391)
!4394 = !DILocation(line: 95, column: 7, scope: !4329, inlinedAt: !4391)
!4395 = !DILocation(line: 95, column: 7, scope: !4320, inlinedAt: !4391)
!4396 = !DILocation(line: 96, column: 16, scope: !4329, inlinedAt: !4391)
!4397 = !DILocation(line: 96, column: 26, scope: !4329, inlinedAt: !4391)
!4398 = !DILocation(line: 96, column: 5, scope: !4329, inlinedAt: !4391)
!4399 = !DILocation(line: 98, column: 16, scope: !4329, inlinedAt: !4391)
!4400 = !DILocation(line: 98, column: 5, scope: !4329, inlinedAt: !4391)
!4401 = !DILocation(line: 278, column: 29, scope: !4388)
!4402 = distinct !{!4402, !4386, !4403}
!4403 = !DILocation(line: 279, column: 5, scope: !4369)
!4404 = !DILocation(line: 282, column: 27, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4406, file: !384, line: 281, column: 5)
!4406 = distinct !DILexicalBlock(scope: !4369, file: !384, line: 280, column: 7)
!4407 = !DILocation(line: 282, column: 37, scope: !4405)
!4408 = !DILocation(line: 282, column: 10, scope: !4405)
!4409 = !DILocation(line: 282, column: 22, scope: !4405)
!4410 = !DILocation(line: 283, column: 28, scope: !4405)
!4411 = !DILocation(line: 283, column: 10, scope: !4405)
!4412 = !DILocation(line: 283, column: 22, scope: !4405)
!4413 = !DILocation(line: 284, column: 16, scope: !4405)
!4414 = !DILocation(line: 285, column: 5, scope: !4405)
!4415 = !DILocation(line: 286, column: 16, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4406, file: !384, line: 286, column: 12)
!4417 = !DILocation(line: 286, column: 12, scope: !4406)
!4418 = !DILocation(line: 288, column: 5, scope: !4416)
!4419 = !DILocation(line: 289, column: 1, scope: !4369)
!4420 = distinct !DISubprogram(name: "_obstack_memory_used", scope: !384, file: !384, line: 292, type: !4421, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !380, variables: !4423)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!70, !4059}
!4423 = !{!4424, !4425, !4426}
!4424 = !DILocalVariable(name: "h", arg: 1, scope: !4420, file: !384, line: 292, type: !4059)
!4425 = !DILocalVariable(name: "lp", scope: !4420, file: !384, line: 294, type: !4064)
!4426 = !DILocalVariable(name: "nbytes", scope: !4420, file: !384, line: 295, type: !70)
!4427 = !DILocation(line: 292, column: 39, scope: !4420)
!4428 = !DILocation(line: 295, column: 19, scope: !4420)
!4429 = !DILocation(line: 297, column: 16, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4420, file: !384, line: 297, column: 3)
!4431 = !DILocation(line: 294, column: 26, scope: !4420)
!4432 = !DILocation(line: 297, column: 26, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4430, file: !384, line: 297, column: 3)
!4434 = !DILocation(line: 297, column: 3, scope: !4430)
!4435 = !DILocation(line: 299, column: 21, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4433, file: !384, line: 298, column: 5)
!4437 = !DILocation(line: 299, column: 27, scope: !4436)
!4438 = !DILocation(line: 299, column: 14, scope: !4436)
!4439 = !DILocation(line: 297, column: 41, scope: !4433)
!4440 = distinct !{!4440, !4434, !4441}
!4441 = !DILocation(line: 300, column: 5, scope: !4430)
!4442 = !DILocation(line: 301, column: 3, scope: !4420)
!4443 = distinct !DISubprogram(name: "close_stream", scope: !4444, file: !4444, line: 56, type: !4445, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !787, variables: !4487)
!4444 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!22, !4447}
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 7, baseType: !4449)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !4450)
!4450 = !{!4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4449, file: !19, line: 242, baseType: !22, size: 32)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4449, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4449, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4449, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4449, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4449, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4449, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4449, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4449, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4449, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4449, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4449, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4449, file: !19, line: 260, baseType: !4464, size: 64, offset: 768)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !4466)
!4466 = !{!4467, !4468, !4470}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4465, file: !19, line: 157, baseType: !4464, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4465, file: !19, line: 158, baseType: !4469, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4465, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4449, file: !19, line: 262, baseType: !4469, size: 64, offset: 832)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4449, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4449, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4449, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4449, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4449, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4449, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4449, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4449, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4449, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4449, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4449, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4449, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4449, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4449, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4449, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!4487 = !{!4488, !4489, !4491, !4492}
!4488 = !DILocalVariable(name: "stream", arg: 1, scope: !4443, file: !4444, line: 56, type: !4447)
!4489 = !DILocalVariable(name: "some_pending", scope: !4443, file: !4444, line: 58, type: !4490)
!4490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!4491 = !DILocalVariable(name: "prev_fail", scope: !4443, file: !4444, line: 59, type: !4490)
!4492 = !DILocalVariable(name: "fclose_fail", scope: !4443, file: !4444, line: 60, type: !4490)
!4493 = !DILocation(line: 56, column: 21, scope: !4443)
!4494 = !DILocation(line: 58, column: 30, scope: !4443)
!4495 = !DILocalVariable(name: "__stream", arg: 1, scope: !4496, file: !1038, line: 132, type: !4447)
!4496 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1038, file: !1038, line: 132, type: !4445, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !787, variables: !4497)
!4497 = !{!4495}
!4498 = !DILocation(line: 132, column: 1, scope: !4496, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 59, column: 27, scope: !4443)
!4500 = !DILocation(line: 134, column: 10, scope: !4496, inlinedAt: !4499)
!4501 = !DILocation(line: 59, column: 43, scope: !4443)
!4502 = !DILocation(line: 60, column: 29, scope: !4443)
!4503 = !DILocation(line: 60, column: 45, scope: !4443)
!4504 = !DILocation(line: 70, column: 17, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4443, file: !4444, line: 70, column: 7)
!4506 = !DILocation(line: 58, column: 50, scope: !4443)
!4507 = !DILocation(line: 70, column: 33, scope: !4505)
!4508 = !DILocation(line: 70, column: 53, scope: !4505)
!4509 = !DILocation(line: 70, column: 59, scope: !4505)
!4510 = !DILocation(line: 70, column: 7, scope: !4443)
!4511 = !DILocation(line: 72, column: 11, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4505, file: !4444, line: 71, column: 5)
!4513 = !DILocation(line: 73, column: 9, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4512, file: !4444, line: 72, column: 11)
!4515 = !DILocation(line: 73, column: 15, scope: !4514)
!4516 = !DILocation(line: 78, column: 1, scope: !4443)
!4517 = distinct !DISubprogram(name: "hard_locale", scope: !4518, file: !4518, line: 38, type: !1534, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !789, variables: !4519)
!4518 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4519 = !{!4520, !4521, !4522}
!4520 = !DILocalVariable(name: "category", arg: 1, scope: !4517, file: !4518, line: 38, type: !22)
!4521 = !DILocalVariable(name: "hard", scope: !4517, file: !4518, line: 40, type: !14)
!4522 = !DILocalVariable(name: "p", scope: !4517, file: !4518, line: 41, type: !78)
!4523 = !DILocation(line: 38, column: 18, scope: !4517)
!4524 = !DILocation(line: 40, column: 8, scope: !4517)
!4525 = !DILocation(line: 41, column: 19, scope: !4517)
!4526 = !DILocation(line: 41, column: 15, scope: !4517)
!4527 = !DILocation(line: 43, column: 7, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4517, file: !4518, line: 43, column: 7)
!4529 = !DILocation(line: 43, column: 7, scope: !4517)
!4530 = !DILocation(line: 47, column: 15, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4532, file: !4518, line: 47, column: 15)
!4532 = distinct !DILexicalBlock(scope: !4533, file: !4518, line: 46, column: 9)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !4518, line: 45, column: 11)
!4534 = distinct !DILexicalBlock(scope: !4528, file: !4518, line: 44, column: 5)
!4535 = !DILocation(line: 47, column: 31, scope: !4531)
!4536 = !DILocation(line: 47, column: 36, scope: !4531)
!4537 = !DILocation(line: 47, column: 39, scope: !4531)
!4538 = !DILocation(line: 47, column: 59, scope: !4531)
!4539 = !DILocation(line: 47, column: 15, scope: !4532)
!4540 = !DILocation(line: 48, column: 13, scope: !4531)
!4541 = !DILocation(line: 71, column: 3, scope: !4517)
!4542 = distinct !DISubprogram(name: "locale_charset", scope: !735, file: !735, line: 393, type: !4543, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !390, variables: !4545)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!78}
!4545 = !{!4546, !4547}
!4546 = !DILocalVariable(name: "codeset", scope: !4542, file: !735, line: 395, type: !78)
!4547 = !DILocalVariable(name: "aliases", scope: !4542, file: !735, line: 396, type: !78)
!4548 = !DILocalVariable(name: "buf1", scope: !4549, file: !735, line: 196, type: !4616)
!4549 = distinct !DILexicalBlock(scope: !4550, file: !735, line: 194, column: 21)
!4550 = distinct !DILexicalBlock(scope: !4551, file: !735, line: 193, column: 19)
!4551 = distinct !DILexicalBlock(scope: !4552, file: !735, line: 193, column: 19)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !735, line: 188, column: 17)
!4553 = distinct !DILexicalBlock(scope: !4554, file: !735, line: 181, column: 19)
!4554 = distinct !DILexicalBlock(scope: !4555, file: !735, line: 177, column: 13)
!4555 = distinct !DILexicalBlock(scope: !4556, file: !735, line: 173, column: 15)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !735, line: 161, column: 9)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !735, line: 157, column: 11)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !735, line: 130, column: 5)
!4559 = distinct !DILexicalBlock(scope: !4560, file: !735, line: 129, column: 7)
!4560 = distinct !DISubprogram(name: "get_charset_aliases", scope: !735, file: !735, line: 124, type: !4543, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !390, variables: !4561)
!4561 = !{!4562, !4563, !4564, !4565, !4566, !4568, !4569, !4570, !4571, !4612, !4613, !4614, !4548, !4615, !4619, !4620, !4621}
!4562 = !DILocalVariable(name: "cp", scope: !4560, file: !735, line: 126, type: !78)
!4563 = !DILocalVariable(name: "dir", scope: !4558, file: !735, line: 132, type: !78)
!4564 = !DILocalVariable(name: "base", scope: !4558, file: !735, line: 133, type: !78)
!4565 = !DILocalVariable(name: "file_name", scope: !4558, file: !735, line: 134, type: !24)
!4566 = !DILocalVariable(name: "dir_len", scope: !4567, file: !735, line: 144, type: !70)
!4567 = distinct !DILexicalBlock(scope: !4558, file: !735, line: 143, column: 7)
!4568 = !DILocalVariable(name: "base_len", scope: !4567, file: !735, line: 145, type: !70)
!4569 = !DILocalVariable(name: "add_slash", scope: !4567, file: !735, line: 146, type: !22)
!4570 = !DILocalVariable(name: "fd", scope: !4556, file: !735, line: 162, type: !22)
!4571 = !DILocalVariable(name: "fp", scope: !4554, file: !735, line: 178, type: !4572)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 7, baseType: !4574)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !4575)
!4575 = !{!4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4574, file: !19, line: 242, baseType: !22, size: 32)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4574, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4574, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4574, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4574, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4574, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4574, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4574, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4574, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4574, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4574, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4574, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4574, file: !19, line: 260, baseType: !4589, size: 64, offset: 768)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !4591)
!4591 = !{!4592, !4593, !4595}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4590, file: !19, line: 157, baseType: !4589, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4590, file: !19, line: 158, baseType: !4594, size: 64, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4590, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4574, file: !19, line: 262, baseType: !4594, size: 64, offset: 832)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4574, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4574, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4574, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4574, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4574, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4574, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4574, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4574, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4574, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4574, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4574, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4574, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4574, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4574, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4574, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!4612 = !DILocalVariable(name: "res_ptr", scope: !4552, file: !735, line: 190, type: !24)
!4613 = !DILocalVariable(name: "res_size", scope: !4552, file: !735, line: 191, type: !70)
!4614 = !DILocalVariable(name: "c", scope: !4549, file: !735, line: 195, type: !22)
!4615 = !DILocalVariable(name: "buf2", scope: !4549, file: !735, line: 197, type: !4616)
!4616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 408, elements: !4617)
!4617 = !{!4618}
!4618 = !DISubrange(count: 51)
!4619 = !DILocalVariable(name: "l1", scope: !4549, file: !735, line: 198, type: !70)
!4620 = !DILocalVariable(name: "l2", scope: !4549, file: !735, line: 198, type: !70)
!4621 = !DILocalVariable(name: "old_res_ptr", scope: !4549, file: !735, line: 199, type: !24)
!4622 = !DILocation(line: 196, column: 28, scope: !4549, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 589, column: 18, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4542, file: !735, line: 589, column: 3)
!4625 = !DILocation(line: 197, column: 28, scope: !4549, inlinedAt: !4623)
!4626 = !DILocation(line: 403, column: 13, scope: !4542)
!4627 = !DILocation(line: 395, column: 15, scope: !4542)
!4628 = !DILocation(line: 584, column: 15, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4542, file: !735, line: 584, column: 7)
!4630 = !DILocation(line: 584, column: 7, scope: !4542)
!4631 = !DILocation(line: 128, column: 8, scope: !4560, inlinedAt: !4623)
!4632 = !DILocation(line: 126, column: 15, scope: !4560, inlinedAt: !4623)
!4633 = !DILocation(line: 129, column: 10, scope: !4559, inlinedAt: !4623)
!4634 = !DILocation(line: 129, column: 7, scope: !4560, inlinedAt: !4623)
!4635 = !DILocation(line: 138, column: 13, scope: !4558, inlinedAt: !4623)
!4636 = !DILocation(line: 132, column: 19, scope: !4558, inlinedAt: !4623)
!4637 = !DILocation(line: 139, column: 15, scope: !4638, inlinedAt: !4623)
!4638 = distinct !DILexicalBlock(scope: !4558, file: !735, line: 139, column: 11)
!4639 = !DILocation(line: 139, column: 23, scope: !4638, inlinedAt: !4623)
!4640 = !DILocation(line: 139, column: 26, scope: !4638, inlinedAt: !4623)
!4641 = !DILocation(line: 139, column: 33, scope: !4638, inlinedAt: !4623)
!4642 = !DILocation(line: 139, column: 11, scope: !4558, inlinedAt: !4623)
!4643 = !DILocation(line: 140, column: 9, scope: !4638, inlinedAt: !4623)
!4644 = !DILocation(line: 144, column: 26, scope: !4567, inlinedAt: !4623)
!4645 = !DILocation(line: 144, column: 16, scope: !4567, inlinedAt: !4623)
!4646 = !DILocation(line: 145, column: 16, scope: !4567, inlinedAt: !4623)
!4647 = !DILocation(line: 146, column: 34, scope: !4567, inlinedAt: !4623)
!4648 = !DILocation(line: 146, column: 38, scope: !4567, inlinedAt: !4623)
!4649 = !DILocation(line: 146, column: 42, scope: !4567, inlinedAt: !4623)
!4650 = !DILocation(line: 147, column: 48, scope: !4567, inlinedAt: !4623)
!4651 = !DILocation(line: 147, column: 46, scope: !4567, inlinedAt: !4623)
!4652 = !DILocation(line: 147, column: 69, scope: !4567, inlinedAt: !4623)
!4653 = !DILocation(line: 147, column: 30, scope: !4567, inlinedAt: !4623)
!4654 = !DILocation(line: 134, column: 13, scope: !4558, inlinedAt: !4623)
!4655 = !DILocation(line: 148, column: 13, scope: !4567, inlinedAt: !4623)
!4656 = !DILocation(line: 150, column: 13, scope: !4657, inlinedAt: !4623)
!4657 = distinct !DILexicalBlock(scope: !4658, file: !735, line: 149, column: 11)
!4658 = distinct !DILexicalBlock(scope: !4567, file: !735, line: 148, column: 13)
!4659 = !DILocation(line: 151, column: 17, scope: !4657, inlinedAt: !4623)
!4660 = !DILocation(line: 152, column: 34, scope: !4661, inlinedAt: !4623)
!4661 = distinct !DILexicalBlock(scope: !4657, file: !735, line: 151, column: 17)
!4662 = !DILocation(line: 153, column: 41, scope: !4657, inlinedAt: !4623)
!4663 = !DILocation(line: 153, column: 13, scope: !4657, inlinedAt: !4623)
!4664 = !DILocation(line: 157, column: 11, scope: !4558, inlinedAt: !4623)
!4665 = !DILocation(line: 171, column: 16, scope: !4556, inlinedAt: !4623)
!4666 = !DILocation(line: 162, column: 15, scope: !4556, inlinedAt: !4623)
!4667 = !DILocation(line: 173, column: 18, scope: !4555, inlinedAt: !4623)
!4668 = !DILocation(line: 173, column: 15, scope: !4556, inlinedAt: !4623)
!4669 = !DILocation(line: 180, column: 20, scope: !4554, inlinedAt: !4623)
!4670 = !DILocation(line: 178, column: 21, scope: !4554, inlinedAt: !4623)
!4671 = !DILocation(line: 181, column: 22, scope: !4553, inlinedAt: !4623)
!4672 = !DILocation(line: 181, column: 19, scope: !4554, inlinedAt: !4623)
!4673 = !DILocation(line: 184, column: 19, scope: !4674, inlinedAt: !4623)
!4674 = distinct !DILexicalBlock(scope: !4553, file: !735, line: 182, column: 17)
!4675 = !DILocation(line: 186, column: 17, scope: !4674, inlinedAt: !4623)
!4676 = !DILocation(line: 190, column: 25, scope: !4552, inlinedAt: !4623)
!4677 = !DILocation(line: 191, column: 26, scope: !4552, inlinedAt: !4623)
!4678 = !DILocation(line: 193, column: 19, scope: !4552, inlinedAt: !4623)
!4679 = !DILocation(line: 196, column: 23, scope: !4549, inlinedAt: !4623)
!4680 = !DILocation(line: 197, column: 23, scope: !4549, inlinedAt: !4623)
!4681 = !DILocalVariable(name: "__fp", arg: 1, scope: !4682, file: !1038, line: 63, type: !4572)
!4682 = distinct !DISubprogram(name: "getc_unlocked", scope: !1038, file: !1038, line: 63, type: !4683, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !390, variables: !4685)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!22, !4572}
!4685 = !{!4681}
!4686 = !DILocation(line: 63, column: 22, scope: !4682, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 201, column: 27, scope: !4549, inlinedAt: !4623)
!4688 = !DILocation(line: 65, column: 10, scope: !4682, inlinedAt: !4687)
!4689 = !{!"branch_weights", i32 2000, i32 1}
!4690 = !DILocation(line: 195, column: 27, scope: !4549, inlinedAt: !4623)
!4691 = !DILocation(line: 202, column: 27, scope: !4549, inlinedAt: !4623)
!4692 = distinct !{!4692, !4693, !4696}
!4693 = !DILocation(line: 209, column: 27, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4695, file: !735, line: 207, column: 25)
!4695 = distinct !DILexicalBlock(scope: !4549, file: !735, line: 206, column: 27)
!4696 = !DILocation(line: 211, column: 58, scope: !4694)
!4697 = !DILocation(line: 65, column: 10, scope: !4682, inlinedAt: !4698)
!4698 = distinct !DILocation(line: 210, column: 33, scope: !4694, inlinedAt: !4623)
!4699 = !DILocation(line: 63, column: 22, scope: !4682, inlinedAt: !4698)
!4700 = !DILocation(line: 210, column: 29, scope: !4694, inlinedAt: !4623)
!4701 = distinct !{!4701, !4702, !4703}
!4702 = !DILocation(line: 193, column: 19, scope: !4551)
!4703 = !DILocation(line: 241, column: 21, scope: !4551)
!4704 = !DILocation(line: 216, column: 23, scope: !4549, inlinedAt: !4623)
!4705 = !DILocation(line: 217, column: 27, scope: !4706, inlinedAt: !4623)
!4706 = distinct !DILexicalBlock(scope: !4549, file: !735, line: 217, column: 27)
!4707 = !DILocation(line: 217, column: 64, scope: !4706, inlinedAt: !4623)
!4708 = !DILocation(line: 217, column: 27, scope: !4549, inlinedAt: !4623)
!4709 = !DILocation(line: 219, column: 28, scope: !4549, inlinedAt: !4623)
!4710 = !DILocation(line: 198, column: 30, scope: !4549, inlinedAt: !4623)
!4711 = !DILocation(line: 220, column: 28, scope: !4549, inlinedAt: !4623)
!4712 = !DILocation(line: 198, column: 34, scope: !4549, inlinedAt: !4623)
!4713 = !DILocation(line: 199, column: 29, scope: !4549, inlinedAt: !4623)
!4714 = !DILocation(line: 222, column: 36, scope: !4715, inlinedAt: !4623)
!4715 = distinct !DILexicalBlock(scope: !4549, file: !735, line: 222, column: 27)
!4716 = !DILocation(line: 222, column: 27, scope: !4549, inlinedAt: !4623)
!4717 = !DILocation(line: 225, column: 63, scope: !4718, inlinedAt: !4623)
!4718 = distinct !DILexicalBlock(scope: !4715, file: !735, line: 223, column: 25)
!4719 = !DILocation(line: 225, column: 46, scope: !4718, inlinedAt: !4623)
!4720 = !DILocation(line: 226, column: 25, scope: !4718, inlinedAt: !4623)
!4721 = !DILocation(line: 229, column: 36, scope: !4722, inlinedAt: !4623)
!4722 = distinct !DILexicalBlock(scope: !4715, file: !735, line: 228, column: 25)
!4723 = !DILocation(line: 230, column: 73, scope: !4722, inlinedAt: !4623)
!4724 = !DILocation(line: 230, column: 46, scope: !4722, inlinedAt: !4623)
!4725 = !DILocation(line: 232, column: 35, scope: !4726, inlinedAt: !4623)
!4726 = distinct !DILexicalBlock(scope: !4549, file: !735, line: 232, column: 27)
!4727 = !DILocation(line: 232, column: 27, scope: !4549, inlinedAt: !4623)
!4728 = !DILocation(line: 236, column: 27, scope: !4729, inlinedAt: !4623)
!4729 = distinct !DILexicalBlock(scope: !4726, file: !735, line: 233, column: 25)
!4730 = !DILocation(line: 237, column: 27, scope: !4729, inlinedAt: !4623)
!4731 = !DILocation(line: 241, column: 21, scope: !4550, inlinedAt: !4623)
!4732 = !DILocation(line: 239, column: 39, scope: !4549, inlinedAt: !4623)
!4733 = !DILocation(line: 239, column: 50, scope: !4549, inlinedAt: !4623)
!4734 = !DILocation(line: 239, column: 61, scope: !4549, inlinedAt: !4623)
!4735 = !DILocalVariable(name: "__dest", arg: 1, scope: !4736, file: !4737, line: 88, type: !4740)
!4736 = distinct !DISubprogram(name: "strcpy", scope: !4737, file: !4737, line: 88, type: !4738, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !390, variables: !4742)
!4737 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!24, !4740, !4741}
!4740 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!4741 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!4742 = !{!4735, !4743}
!4743 = !DILocalVariable(name: "__src", arg: 2, scope: !4736, file: !4737, line: 88, type: !4741)
!4744 = !DILocation(line: 88, column: 1, scope: !4736, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 239, column: 23, scope: !4549, inlinedAt: !4623)
!4746 = !DILocation(line: 90, column: 49, scope: !4736, inlinedAt: !4745)
!4747 = !DILocation(line: 90, column: 10, scope: !4736, inlinedAt: !4745)
!4748 = !DILocation(line: 88, column: 1, scope: !4736, inlinedAt: !4749)
!4749 = distinct !DILocation(line: 240, column: 23, scope: !4549, inlinedAt: !4623)
!4750 = !DILocation(line: 90, column: 49, scope: !4736, inlinedAt: !4749)
!4751 = !DILocation(line: 90, column: 10, scope: !4736, inlinedAt: !4749)
!4752 = !DILocation(line: 193, column: 19, scope: !4550, inlinedAt: !4623)
!4753 = !DILocation(line: 242, column: 19, scope: !4552, inlinedAt: !4623)
!4754 = !DILocation(line: 243, column: 32, scope: !4755, inlinedAt: !4623)
!4755 = distinct !DILexicalBlock(scope: !4552, file: !735, line: 243, column: 23)
!4756 = !DILocation(line: 243, column: 23, scope: !4552, inlinedAt: !4623)
!4757 = !DILocation(line: 247, column: 33, scope: !4758, inlinedAt: !4623)
!4758 = distinct !DILexicalBlock(scope: !4755, file: !735, line: 246, column: 21)
!4759 = !DILocation(line: 247, column: 45, scope: !4758, inlinedAt: !4623)
!4760 = !DILocation(line: 253, column: 11, scope: !4556, inlinedAt: !4623)
!4761 = !DILocation(line: 377, column: 23, scope: !4558, inlinedAt: !4623)
!4762 = !DILocation(line: 378, column: 5, scope: !4558, inlinedAt: !4623)
!4763 = !DILocation(line: 396, column: 15, scope: !4542)
!4764 = !DILocation(line: 590, column: 8, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4624, file: !735, line: 589, column: 3)
!4766 = !DILocation(line: 590, column: 17, scope: !4765)
!4767 = !DILocation(line: 589, column: 3, scope: !4624)
!4768 = !DILocation(line: 592, column: 9, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4765, file: !735, line: 592, column: 9)
!4770 = !DILocation(line: 592, column: 35, scope: !4769)
!4771 = !DILocation(line: 593, column: 9, scope: !4769)
!4772 = !DILocation(line: 593, column: 24, scope: !4769)
!4773 = !DILocation(line: 593, column: 31, scope: !4769)
!4774 = !DILocation(line: 593, column: 34, scope: !4769)
!4775 = !DILocation(line: 593, column: 45, scope: !4769)
!4776 = !DILocation(line: 592, column: 9, scope: !4765)
!4777 = !DILocation(line: 595, column: 29, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4769, file: !735, line: 594, column: 7)
!4779 = !DILocation(line: 595, column: 27, scope: !4778)
!4780 = !DILocation(line: 595, column: 46, scope: !4778)
!4781 = !DILocation(line: 596, column: 9, scope: !4778)
!4782 = !DILocation(line: 591, column: 19, scope: !4765)
!4783 = !DILocation(line: 591, column: 36, scope: !4765)
!4784 = !DILocation(line: 591, column: 16, scope: !4765)
!4785 = !DILocation(line: 591, column: 52, scope: !4765)
!4786 = !DILocation(line: 591, column: 69, scope: !4765)
!4787 = !DILocation(line: 591, column: 49, scope: !4765)
!4788 = distinct !{!4788, !4767, !4789}
!4789 = !DILocation(line: 597, column: 7, scope: !4624)
!4790 = !DILocation(line: 602, column: 7, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4542, file: !735, line: 602, column: 7)
!4792 = !DILocation(line: 602, column: 18, scope: !4791)
!4793 = !DILocation(line: 602, column: 7, scope: !4542)
!4794 = !DILocation(line: 612, column: 3, scope: !4542)
