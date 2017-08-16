; ModuleID = 'coreutils-8.27/src/libstdbuf.so.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @stdbuf, i8* null }]
@.str = private unnamed_addr constant [10 x i8] c"_STDBUF_E\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"_STDBUF_I\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"_STDBUF_O\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"failed to allocate a %lu byte stdio buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"invalid buffering mode %s for %s\0A\00", align 1
@switch.table = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)]
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"could not set buffering of %s to mode %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define internal void @stdbuf() #0 !dbg !13 {
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #5, !dbg !22
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !17, metadata !23), !dbg !24
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !25
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !20, metadata !23), !dbg !26
  %3 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !27
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !21, metadata !23), !dbg !28
  %4 = icmp eq i8* %1, null, !dbg !29
  br i1 %4, label %7, label %5, !dbg !31

; <label>:5:                                      ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !32, !tbaa !33
  tail call fastcc void @apply_mode(%struct._IO_FILE* %6, i8* nonnull %1), !dbg !37
  br label %7, !dbg !37

; <label>:7:                                      ; preds = %0, %5
  %8 = icmp eq i8* %2, null, !dbg !38
  br i1 %8, label %11, label %9, !dbg !40

; <label>:9:                                      ; preds = %7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !41, !tbaa !33
  tail call fastcc void @apply_mode(%struct._IO_FILE* %10, i8* nonnull %2), !dbg !42
  br label %11, !dbg !42

; <label>:11:                                     ; preds = %7, %9
  %12 = icmp eq i8* %3, null, !dbg !43
  br i1 %12, label %15, label %13, !dbg !45

; <label>:13:                                     ; preds = %11
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !46, !tbaa !33
  tail call fastcc void @apply_mode(%struct._IO_FILE* %14, i8* nonnull %3), !dbg !47
  br label %15, !dbg !47

; <label>:15:                                     ; preds = %11, %13
  ret void, !dbg !48
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @apply_mode(%struct._IO_FILE* nocapture, i8*) unnamed_addr #0 !dbg !49 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !114, metadata !23), !dbg !119
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !115, metadata !23), !dbg !120
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !116, metadata !23), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !118, metadata !23), !dbg !122
  %3 = load i8, i8* %1, align 1, !dbg !123, !tbaa !125
  switch i8 %3, label %5 [
    i8 48, label %27
    i8 76, label %4
  ], !dbg !126

; <label>:4:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !117, metadata !23), !dbg !127
  br label %27, !dbg !128

; <label>:5:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !117, metadata !23), !dbg !127
  %6 = tail call i64 @strtoul(i8* nocapture nonnull %1, i8** null, i32 10) #5, !dbg !130
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !118, metadata !23), !dbg !122
  %7 = icmp eq i64 %6, 0, !dbg !132
  br i1 %7, label %15, label %8, !dbg !134

; <label>:8:                                      ; preds = %5
  %9 = tail call noalias i8* @malloc(i64 %6) #5, !dbg !135
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !116, metadata !23), !dbg !121
  %10 = icmp eq i8* %9, null, !dbg !138
  br i1 %10, label %11, label %27, !dbg !139

; <label>:11:                                     ; preds = %8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !140, !tbaa !33
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 5) #5, !dbg !140
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %12, i32 1, i8* %13, i64 %6) #5, !dbg !142
  br label %45, !dbg !144

; <label>:15:                                     ; preds = %5
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !145, !tbaa !33
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 5) #5, !dbg !145
  %18 = tail call i32 @fileno(%struct._IO_FILE* %0) #5, !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !149, metadata !23), !dbg !156
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !155, metadata !23), !dbg !159
  %19 = icmp ult i32 %18, 3, !dbg !160
  br i1 %19, label %20, label %24, !dbg !160

; <label>:20:                                     ; preds = %15
  %21 = sext i32 %18 to i64, !dbg !160
  %22 = getelementptr inbounds [3 x i8*], [3 x i8*]* @switch.table, i64 0, i64 %21, !dbg !160
  %23 = load i8*, i8** %22, align 8, !dbg !160
  br label %24, !dbg !160

; <label>:24:                                     ; preds = %15, %20
  %25 = phi i8* [ %23, %20 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %15 ]
  %26 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %16, i32 1, i8* %17, i8* nonnull %1, i8* %25) #5, !dbg !161
  br label %45, !dbg !163

; <label>:27:                                     ; preds = %2, %8, %4
  %28 = phi i8* [ null, %4 ], [ %9, %8 ], [ null, %2 ]
  %29 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 2, %2 ]
  %30 = phi i64 [ 0, %4 ], [ %6, %8 ], [ 0, %2 ]
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !118, metadata !23), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !117, metadata !23), !dbg !127
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !116, metadata !23), !dbg !121
  %31 = tail call i32 @setvbuf(%struct._IO_FILE* %0, i8* %28, i32 %29, i64 %30) #5, !dbg !164
  %32 = icmp eq i32 %31, 0, !dbg !166
  br i1 %32, label %45, label %33, !dbg !167

; <label>:33:                                     ; preds = %27
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !168, !tbaa !33
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 5) #5, !dbg !168
  %36 = tail call i32 @fileno(%struct._IO_FILE* %0) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !149, metadata !23), !dbg !172
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !155, metadata !23), !dbg !175
  %37 = icmp ult i32 %36, 3, !dbg !176
  br i1 %37, label %38, label %42, !dbg !176

; <label>:38:                                     ; preds = %33
  %39 = sext i32 %36 to i64, !dbg !176
  %40 = getelementptr inbounds [3 x i8*], [3 x i8*]* @switch.table, i64 0, i64 %39, !dbg !176
  %41 = load i8*, i8** %40, align 8, !dbg !176
  br label %42, !dbg !176

; <label>:42:                                     ; preds = %33, %38
  %43 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %33 ]
  %44 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %34, i32 1, i8* %35, i8* %43, i8* nonnull %1) #5, !dbg !177
  tail call void @free(i8* %28) #5, !dbg !179
  br label %45, !dbg !180

; <label>:45:                                     ; preds = %42, %27, %24, %11
  ret void, !dbg !181
}

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #3

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!9}
!llvm.module.flags = !{!10, !11, !12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "src/libstdbuf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !5, line: 136, baseType: !6)
!5 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !7, line: 62, baseType: !8)
!7 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!8 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"PIC Level", i32 2}
!13 = distinct !DISubprogram(name: "stdbuf", scope: !1, file: !1, line: 135, type: !14, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{null}
!16 = !{!17, !20, !21}
!17 = !DILocalVariable(name: "e_mode", scope: !13, file: !1, line: 137, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DILocalVariable(name: "i_mode", scope: !13, file: !1, line: 138, type: !18)
!21 = !DILocalVariable(name: "o_mode", scope: !13, file: !1, line: 139, type: !18)
!22 = !DILocation(line: 137, column: 18, scope: !13)
!23 = !DIExpression()
!24 = !DILocation(line: 137, column: 9, scope: !13)
!25 = !DILocation(line: 138, column: 18, scope: !13)
!26 = !DILocation(line: 138, column: 9, scope: !13)
!27 = !DILocation(line: 139, column: 18, scope: !13)
!28 = !DILocation(line: 139, column: 9, scope: !13)
!29 = !DILocation(line: 140, column: 7, scope: !30)
!30 = distinct !DILexicalBlock(scope: !13, file: !1, line: 140, column: 7)
!31 = !DILocation(line: 140, column: 7, scope: !13)
!32 = !DILocation(line: 141, column: 17, scope: !30)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 141, column: 5, scope: !30)
!38 = !DILocation(line: 142, column: 7, scope: !39)
!39 = distinct !DILexicalBlock(scope: !13, file: !1, line: 142, column: 7)
!40 = !DILocation(line: 142, column: 7, scope: !13)
!41 = !DILocation(line: 143, column: 17, scope: !39)
!42 = !DILocation(line: 143, column: 5, scope: !39)
!43 = !DILocation(line: 144, column: 7, scope: !44)
!44 = distinct !DILexicalBlock(scope: !13, file: !1, line: 144, column: 7)
!45 = !DILocation(line: 144, column: 7, scope: !13)
!46 = !DILocation(line: 145, column: 17, scope: !44)
!47 = !DILocation(line: 145, column: 5, scope: !44)
!48 = !DILocation(line: 146, column: 1, scope: !13)
!49 = distinct !DISubprogram(name: "apply_mode", scope: !1, file: !1, line: 89, type: !50, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !113)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !111}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !54, line: 49, baseType: !55)
!54 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 241, size: 1728, elements: !57)
!56 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!57 = !{!58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !79, !80, !81, !82, !85, !87, !89, !93, !96, !98, !100, !101, !102, !103, !106, !107}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !55, file: !56, line: 242, baseType: !59, size: 32)
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !55, file: !56, line: 247, baseType: !18, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !55, file: !56, line: 248, baseType: !18, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !55, file: !56, line: 249, baseType: !18, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !55, file: !56, line: 250, baseType: !18, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !55, file: !56, line: 251, baseType: !18, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !55, file: !56, line: 252, baseType: !18, size: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !55, file: !56, line: 253, baseType: !18, size: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !55, file: !56, line: 254, baseType: !18, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !55, file: !56, line: 256, baseType: !18, size: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !55, file: !56, line: 257, baseType: !18, size: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !55, file: !56, line: 258, baseType: !18, size: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !55, file: !56, line: 260, baseType: !72, size: 64, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !56, line: 156, size: 192, elements: !74)
!74 = !{!75, !76, !78}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !73, file: !56, line: 157, baseType: !72, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !73, file: !56, line: 158, baseType: !77, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !73, file: !56, line: 162, baseType: !59, size: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !55, file: !56, line: 262, baseType: !77, size: 64, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !55, file: !56, line: 264, baseType: !59, size: 32, offset: 896)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !55, file: !56, line: 268, baseType: !59, size: 32, offset: 928)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !55, file: !56, line: 270, baseType: !83, size: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !7, line: 140, baseType: !84)
!84 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !55, file: !56, line: 274, baseType: !86, size: 16, offset: 1024)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !55, file: !56, line: 275, baseType: !88, size: 8, offset: 1040)
!88 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !55, file: !56, line: 276, baseType: !90, size: 8, offset: 1048)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !55, file: !56, line: 280, baseType: !94, size: 64, offset: 1088)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !56, line: 150, baseType: null)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !55, file: !56, line: 289, baseType: !97, size: 64, offset: 1152)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !7, line: 141, baseType: !84)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !55, file: !56, line: 297, baseType: !99, size: 64, offset: 1216)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !55, file: !56, line: 298, baseType: !99, size: 64, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !55, file: !56, line: 299, baseType: !99, size: 64, offset: 1344)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !55, file: !56, line: 300, baseType: !99, size: 64, offset: 1408)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !55, file: !56, line: 302, baseType: !104, size: 64, offset: 1472)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 62, baseType: !8)
!105 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !55, file: !56, line: 303, baseType: !59, size: 32, offset: 1536)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !55, file: !56, line: 305, baseType: !108, size: 160, offset: 1568)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 20)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!113 = !{!114, !115, !116, !117, !118}
!114 = !DILocalVariable(name: "stream", arg: 1, scope: !49, file: !1, line: 89, type: !52)
!115 = !DILocalVariable(name: "mode", arg: 2, scope: !49, file: !1, line: 89, type: !111)
!116 = !DILocalVariable(name: "buf", scope: !49, file: !1, line: 91, type: !18)
!117 = !DILocalVariable(name: "setvbuf_mode", scope: !49, file: !1, line: 92, type: !59)
!118 = !DILocalVariable(name: "size", scope: !49, file: !1, line: 93, type: !104)
!119 = !DILocation(line: 89, column: 19, scope: !49)
!120 = !DILocation(line: 89, column: 39, scope: !49)
!121 = !DILocation(line: 91, column: 9, scope: !49)
!122 = !DILocation(line: 93, column: 10, scope: !49)
!123 = !DILocation(line: 95, column: 7, scope: !124)
!124 = distinct !DILexicalBlock(scope: !49, file: !1, line: 95, column: 7)
!125 = !{!35, !35, i64 0}
!126 = !DILocation(line: 95, column: 7, scope: !49)
!127 = !DILocation(line: 92, column: 7, scope: !49)
!128 = !DILocation(line: 98, column: 5, scope: !129)
!129 = distinct !DILexicalBlock(scope: !124, file: !1, line: 97, column: 12)
!130 = !DILocation(line: 103, column: 14, scope: !131)
!131 = distinct !DILexicalBlock(scope: !129, file: !1, line: 100, column: 5)
!132 = !DILocation(line: 104, column: 16, scope: !133)
!133 = distinct !DILexicalBlock(scope: !131, file: !1, line: 104, column: 11)
!134 = !DILocation(line: 104, column: 11, scope: !131)
!135 = !DILocation(line: 106, column: 23, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 106, column: 15)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 105, column: 9)
!138 = !DILocation(line: 106, column: 21, scope: !136)
!139 = !DILocation(line: 106, column: 15, scope: !137)
!140 = !DILocation(line: 111, column: 15, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !1, line: 107, column: 13)
!142 = !DILocation(line: 111, column: 15, scope: !143)
!143 = !DILexicalBlockFile(scope: !141, file: !1, discriminator: 1)
!144 = !DILocation(line: 114, column: 15, scope: !141)
!145 = !DILocation(line: 119, column: 11, scope: !146)
!146 = distinct !DILexicalBlock(scope: !133, file: !1, line: 118, column: 9)
!147 = !DILocation(line: 119, column: 11, scope: !148)
!148 = !DILexicalBlockFile(scope: !146, file: !1, discriminator: 1)
!149 = !DILocalVariable(name: "fd", arg: 1, scope: !150, file: !1, line: 65, type: !153)
!150 = distinct !DISubprogram(name: "fileno_to_name", scope: !1, file: !1, line: 65, type: !151, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !154)
!151 = !DISubroutineType(types: !152)
!152 = !{!111, !153}
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!154 = !{!149, !155}
!155 = !DILocalVariable(name: "ret", scope: !150, file: !1, line: 67, type: !111)
!156 = !DILocation(line: 65, column: 27, scope: !150, inlinedAt: !157)
!157 = distinct !DILocation(line: 119, column: 11, scope: !158)
!158 = !DILexicalBlockFile(scope: !146, file: !1, discriminator: 2)
!159 = !DILocation(line: 67, column: 15, scope: !150, inlinedAt: !157)
!160 = !DILocation(line: 69, column: 3, scope: !150, inlinedAt: !157)
!161 = !DILocation(line: 119, column: 11, scope: !162)
!162 = !DILexicalBlockFile(scope: !146, file: !1, discriminator: 3)
!163 = !DILocation(line: 121, column: 11, scope: !146)
!164 = !DILocation(line: 125, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !49, file: !1, line: 125, column: 7)
!166 = !DILocation(line: 125, column: 49, scope: !165)
!167 = !DILocation(line: 125, column: 7, scope: !49)
!168 = !DILocation(line: 127, column: 7, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !1, line: 126, column: 5)
!170 = !DILocation(line: 127, column: 7, scope: !171)
!171 = !DILexicalBlockFile(scope: !169, file: !1, discriminator: 1)
!172 = !DILocation(line: 65, column: 27, scope: !150, inlinedAt: !173)
!173 = distinct !DILocation(line: 127, column: 7, scope: !174)
!174 = !DILexicalBlockFile(scope: !169, file: !1, discriminator: 2)
!175 = !DILocation(line: 67, column: 15, scope: !150, inlinedAt: !173)
!176 = !DILocation(line: 69, column: 3, scope: !150, inlinedAt: !173)
!177 = !DILocation(line: 127, column: 7, scope: !178)
!178 = !DILexicalBlockFile(scope: !169, file: !1, discriminator: 3)
!179 = !DILocation(line: 129, column: 7, scope: !169)
!180 = !DILocation(line: 130, column: 5, scope: !169)
!181 = !DILocation(line: 131, column: 1, scope: !182)
!182 = !DILexicalBlockFile(scope: !49, file: !1, discriminator: 2)
