; ModuleID = 'coreutils-8.27/src/make-prime-list.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.prime = type { i32, i64, i64 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [56 x i8] c"Usage: %s LIMIT\0AProduces a list of odd primes <= LIMIT\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Virtual memory exhausted.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"/* Generated file -- DO NOT EDIT */\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"#define WIDE_UINT_BITS %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"P (%u, %u,\0A   (\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"),\0A   UINTMAX_MAX / %u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\0A#undef FIRST_OMITTED_PRIME\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"#define FIRST_OMITTED_PRIME %u\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"write error: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c")\0A%*s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" << %d | \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"(uintmax_t) \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"0x%0*xU\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #0 !dbg !15 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !19, metadata !47), !dbg !48
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !20, metadata !47), !dbg !49
  %3 = icmp eq i32 %0, 2, !dbg !50
  br i1 %3, label %8, label %4, !dbg !52

; <label>:4:                                      ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !53, !tbaa !55
  %6 = load i8*, i8** %1, align 8, !dbg !53, !tbaa !55
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %6) #8, !dbg !53
  br label %173, !dbg !59

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !60
  %10 = load i8*, i8** %9, align 8, !dbg !60, !tbaa !55
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !61, metadata !47) #8, !dbg !69
  %11 = tail call i64 @strtol(i8* nocapture nonnull %10, i8** null, i32 10) #8, !dbg !71
  %12 = trunc i64 %11 to i32, !dbg !72
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !21, metadata !47), !dbg !73
  %13 = icmp slt i32 %12, 3, !dbg !74
  br i1 %13, label %173, label %14, !dbg !76

; <label>:14:                                     ; preds = %8
  %15 = and i32 %12, 1, !dbg !77
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !21, metadata !47), !dbg !73
  %16 = add i32 %12, -2, !dbg !79
  %17 = add i32 %16, %15, !dbg !80
  %18 = sdiv i32 %17, 2, !dbg !81
  %19 = sext i32 %18 to i64, !dbg !82
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !23, metadata !47), !dbg !83
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !84, metadata !47) #8, !dbg !90
  %20 = tail call noalias i8* @malloc(i64 %19) #8, !dbg !92
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !89, metadata !47) #8, !dbg !93
  %21 = icmp eq i8* %20, null, !dbg !94
  br i1 %21, label %22, label %25, !dbg !96

; <label>:22:                                     ; preds = %14
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !97, !tbaa !55
  %24 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %23, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !97
  tail call void @exit(i32 1) #9, !dbg !98
  unreachable, !dbg !98

; <label>:25:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !22, metadata !47), !dbg !99
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %20, i8 1, i64 %19, i32 1, i1 false), !dbg !100
  %26 = mul nsw i64 %19, 24, !dbg !101
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !84, metadata !47) #8, !dbg !102
  %27 = tail call noalias i8* @malloc(i64 %26) #8, !dbg !104
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !89, metadata !47) #8, !dbg !105
  %28 = icmp eq i8* %27, null, !dbg !106
  br i1 %28, label %29, label %32, !dbg !107

; <label>:29:                                     ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !108, !tbaa !55
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %30, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !108
  tail call void @exit(i32 1) #9, !dbg !109
  unreachable, !dbg !109

; <label>:32:                                     ; preds = %25
  %33 = bitcast i8* %27 to %struct.prime*, !dbg !110
  tail call void @llvm.dbg.value(metadata %struct.prime* %33, i64 0, metadata !28, metadata !47), !dbg !111
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !41, metadata !47), !dbg !112
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !27, metadata !47), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !41, metadata !47), !dbg !112
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !27, metadata !47), !dbg !113
  %34 = add i32 %17, 1, !dbg !114
  %35 = icmp ugt i32 %34, 2, !dbg !114
  br i1 %35, label %36, label %89, !dbg !115

; <label>:36:                                     ; preds = %32
  br label %37, !dbg !116

; <label>:37:                                     ; preds = %36, %86
  %38 = phi i32 [ %57, %86 ], [ 0, %36 ]
  %39 = phi i64 [ %87, %86 ], [ 0, %36 ]
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !27, metadata !47), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !41, metadata !47), !dbg !112
  %40 = shl i64 %39, 1, !dbg !116
  %41 = add i64 %40, 3, !dbg !117
  %42 = trunc i64 %41 to i32, !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !42, metadata !47), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !41, metadata !47), !dbg !112
  %43 = zext i32 %38 to i64, !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !121, metadata !47), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !127, metadata !47), !dbg !130
  %44 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %43, i32 0, !dbg !131
  store i32 %42, i32* %44, align 8, !dbg !132, !tbaa !133
  %45 = and i64 %41, 4294967295, !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !138, metadata !47), !dbg !148
  %46 = shl i32 %42, 1, !dbg !150
  %47 = and i32 %46, 28, !dbg !150
  %48 = lshr i32 -180781647, %47, !dbg !150
  %49 = zext i32 %48 to i64, !dbg !151
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !143, metadata !47), !dbg !152
  br label %50, !dbg !153

; <label>:50:                                     ; preds = %50, %37
  %51 = phi i64 [ %49, %37 ], [ %54, %50 ]
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !143, metadata !47), !dbg !152
  %52 = mul i64 %51, %45, !dbg !154
  %53 = sub i64 2, %52, !dbg !155
  %54 = mul i64 %53, %51, !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !144, metadata !47), !dbg !156
  %55 = icmp eq i64 %54, %51, !dbg !157
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !143, metadata !47), !dbg !152
  br i1 %55, label %56, label %50, !llvm.loop !159

; <label>:56:                                     ; preds = %50
  %57 = add i32 %38, 1, !dbg !162
  %58 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %43, i32 1, !dbg !163
  store i64 %51, i64* %58, align 8, !dbg !164, !tbaa !165
  %59 = udiv i64 -1, %45, !dbg !166
  %60 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %43, i32 2, !dbg !167
  store i64 %59, i64* %60, align 8, !dbg !168, !tbaa !169
  %61 = mul i32 %42, %42, !dbg !170
  %62 = add i32 %61, -3, !dbg !172
  %63 = lshr i32 %62, 1, !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !46, metadata !47), !dbg !174
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !46, metadata !47), !dbg !174
  %64 = zext i32 %63 to i64, !dbg !175
  %65 = icmp ult i64 %64, %19, !dbg !177
  br i1 %65, label %66, label %74, !dbg !178

; <label>:66:                                     ; preds = %56
  br label %67, !dbg !179

; <label>:67:                                     ; preds = %66, %67
  %68 = phi i64 [ %72, %67 ], [ %64, %66 ]
  %69 = phi i32 [ %71, %67 ], [ %63, %66 ]
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !46, metadata !47), !dbg !174
  %70 = getelementptr inbounds i8, i8* %20, i64 %68, !dbg !179
  store i8 0, i8* %70, align 1, !dbg !180, !tbaa !181
  %71 = add i32 %69, %42, !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !46, metadata !47), !dbg !174
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !46, metadata !47), !dbg !174
  %72 = zext i32 %71 to i64, !dbg !175
  %73 = icmp ult i64 %72, %19, !dbg !177
  br i1 %73, label %67, label %74, !dbg !178, !llvm.loop !183

; <label>:74:                                     ; preds = %67, %56
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !27, metadata !47), !dbg !113
  %75 = add i64 %39, 1, !dbg !185
  tail call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !27, metadata !47), !dbg !113
  %76 = icmp ult i64 %75, %19, !dbg !186
  br i1 %76, label %77, label %86, !dbg !187

; <label>:77:                                     ; preds = %74
  br label %81, !dbg !188

; <label>:78:                                     ; preds = %81
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !27, metadata !47), !dbg !113
  %79 = add i64 %82, 1, !dbg !185
  tail call void @llvm.dbg.value(metadata i64 %79, i64 0, metadata !27, metadata !47), !dbg !113
  %80 = icmp ult i64 %79, %19, !dbg !186
  br i1 %80, label %81, label %86, !dbg !187, !llvm.loop !189

; <label>:81:                                     ; preds = %77, %78
  %82 = phi i64 [ %79, %78 ], [ %75, %77 ]
  %83 = getelementptr inbounds i8, i8* %20, i64 %82, !dbg !188
  %84 = load i8, i8* %83, align 1, !dbg !188, !tbaa !181
  %85 = icmp eq i8 %84, 0, !dbg !192
  br i1 %85, label %78, label %86, !dbg !190

; <label>:86:                                     ; preds = %81, %78, %74
  %87 = phi i64 [ %75, %74 ], [ %79, %78 ], [ %82, %81 ]
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !41, metadata !47), !dbg !112
  tail call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !27, metadata !47), !dbg !113
  %88 = icmp ult i64 %87, %19, !dbg !114
  br i1 %88, label %37, label %89, !dbg !115, !llvm.loop !193

; <label>:89:                                     ; preds = %86, %32
  %90 = phi i32 [ 0, %32 ], [ %57, %86 ]
  tail call void @llvm.dbg.value(metadata %struct.prime* %33, i64 0, metadata !195, metadata !47) #8, !dbg !212
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !202, metadata !47) #8, !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !206, metadata !47) #8, !dbg !215
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !207, metadata !47) #8, !dbg !216
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !206, metadata !47) #8, !dbg !215
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !207, metadata !47) #8, !dbg !216
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !206, metadata !47) #8, !dbg !215
  %91 = tail call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !217
  %92 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 64) #8, !dbg !218
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !203, metadata !47) #8, !dbg !219
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !204, metadata !47) #8, !dbg !220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !203, metadata !47) #8, !dbg !219
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !204, metadata !47) #8, !dbg !220
  %93 = icmp eq i32 %90, 0, !dbg !221
  br i1 %93, label %129, label %94, !dbg !222

; <label>:94:                                     ; preds = %89
  %95 = zext i32 %90 to i64, !dbg !222
  br label %96, !dbg !222

; <label>:96:                                     ; preds = %114, %94
  %97 = phi i64 [ 0, %94 ], [ %125, %114 ]
  %98 = phi i32 [ 2, %94 ], [ %124, %114 ]
  tail call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !204, metadata !47) #8, !dbg !220
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !203, metadata !47) #8, !dbg !219
  %99 = trunc i64 %97 to i32, !dbg !223
  %100 = add i32 %99, 8, !dbg !223
  %101 = icmp ult i32 %100, %90, !dbg !224
  br i1 %101, label %105, label %102, !dbg !225

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %97, i32 0
  %104 = load i32, i32* %103, align 8, !dbg !226, !tbaa !133
  br label %114, !dbg !225

; <label>:105:                                    ; preds = %96
  %106 = zext i32 %100 to i64, !dbg !227
  %107 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %106, i32 0, !dbg !228
  %108 = load i32, i32* %107, align 8, !dbg !228, !tbaa !133
  %109 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %97, i32 0, !dbg !229
  %110 = load i32, i32* %109, align 8, !dbg !229, !tbaa !133
  %111 = sub i32 %108, %110, !dbg !230
  tail call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !208, metadata !47) #8, !dbg !231
  %112 = icmp ugt i32 %111, 255, !dbg !232
  br i1 %112, label %113, label %114, !dbg !234

; <label>:113:                                    ; preds = %105
  tail call void @abort() #9, !dbg !235
  unreachable, !dbg !235

; <label>:114:                                    ; preds = %105, %102
  %115 = phi i32* [ %103, %102 ], [ %109, %105 ], !dbg !226
  %116 = phi i32 [ %104, %102 ], [ %110, %105 ], !dbg !226
  %117 = phi i32 [ 255, %102 ], [ %111, %105 ]
  %118 = sub i32 %116, %98, !dbg !226
  %119 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %118, i32 %117) #8, !dbg !226
  %120 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %97, i32 1, !dbg !236
  %121 = load i64, i64* %120, align 8, !dbg !236, !tbaa !165
  tail call fastcc void @print_wide_uint(i64 %121, i32 0, i32 64) #8, !dbg !237
  %122 = load i32, i32* %115, align 8, !dbg !238, !tbaa !133
  %123 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %122) #8, !dbg !238
  %124 = load i32, i32* %115, align 8, !dbg !239, !tbaa !133
  tail call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !204, metadata !47) #8, !dbg !220
  %125 = add nuw nsw i64 %97, 1, !dbg !240
  tail call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !204, metadata !47) #8, !dbg !220
  %126 = icmp ult i64 %125, %95, !dbg !221
  br i1 %126, label %96, label %127, !dbg !222, !llvm.loop !241

; <label>:127:                                    ; preds = %114
  %128 = add i32 %124, 2, !dbg !244
  br label %129, !dbg !244

; <label>:129:                                    ; preds = %127, %89
  %130 = phi i32 [ 4, %89 ], [ %128, %127 ]
  %131 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !244
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !204, metadata !47) #8, !dbg !220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !203, metadata !47) #8, !dbg !219
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !205, metadata !47) #8, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !203, metadata !47) #8, !dbg !219
  %132 = bitcast i8* %27 to i32*, !dbg !246
  %133 = load i32, i32* %132, align 8, !dbg !246, !tbaa !133
  %134 = mul i32 %133, %133, !dbg !252
  %135 = icmp ugt i32 %134, %130, !dbg !253
  br i1 %135, label %159, label %136, !dbg !254

; <label>:136:                                    ; preds = %129
  br label %140

; <label>:137:                                    ; preds = %149
  tail call void @llvm.dbg.value(metadata i32 %141, i64 0, metadata !204, metadata !47) #8, !dbg !220
  %138 = add i32 %141, 2, !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %138, i64 0, metadata !204, metadata !47) #8, !dbg !220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !203, metadata !47) #8, !dbg !219
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !205, metadata !47) #8, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !203, metadata !47) #8, !dbg !219
  %139 = icmp ugt i32 %134, %138, !dbg !253
  br i1 %139, label %159, label %140, !dbg !254

; <label>:140:                                    ; preds = %136, %137
  %141 = phi i32 [ %138, %137 ], [ %130, %136 ]
  %142 = zext i32 %141 to i64
  br label %149, !dbg !254

; <label>:143:                                    ; preds = %149
  tail call void @llvm.dbg.value(metadata i32 %158, i64 0, metadata !203, metadata !47) #8, !dbg !219
  %144 = zext i32 %158 to i64, !dbg !256
  %145 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %144, i32 0, !dbg !246
  %146 = load i32, i32* %145, align 8, !dbg !246, !tbaa !133
  %147 = mul i32 %146, %146, !dbg !252
  %148 = icmp ugt i32 %147, %141, !dbg !253
  br i1 %148, label %159, label %149, !dbg !254, !llvm.loop !257

; <label>:149:                                    ; preds = %143, %140
  %150 = phi i64 [ 0, %140 ], [ %144, %143 ]
  %151 = phi i32 [ 0, %140 ], [ %158, %143 ]
  tail call void @llvm.dbg.value(metadata i32 %151, i64 0, metadata !203, metadata !47) #8, !dbg !219
  %152 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %150, i32 1, !dbg !260
  %153 = load i64, i64* %152, align 8, !dbg !260, !tbaa !165
  %154 = mul i64 %153, %142, !dbg !262
  %155 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %150, i32 2, !dbg !263
  %156 = load i64, i64* %155, align 8, !dbg !263, !tbaa !169
  %157 = icmp ugt i64 %154, %156, !dbg !264
  %158 = add i32 %151, 1, !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %158, i64 0, metadata !203, metadata !47) #8, !dbg !219
  br i1 %157, label %143, label %137, !dbg !266

; <label>:159:                                    ; preds = %137, %143, %129
  %160 = phi i32 [ %130, %129 ], [ %141, %143 ], [ %138, %137 ]
  %161 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %160) #8, !dbg !267
  tail call void @free(i8* %20) #8, !dbg !268
  tail call void @free(i8* nonnull %27) #8, !dbg !269
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !270, !tbaa !55
  %163 = tail call i32 @ferror(%struct._IO_FILE* %162) #8, !dbg !272
  %164 = tail call i32 @fclose(%struct._IO_FILE* %162), !dbg !273
  %165 = sub i32 0, %164, !dbg !274
  %166 = icmp eq i32 %163, %165, !dbg !274
  br i1 %166, label %173, label %167, !dbg !275

; <label>:167:                                    ; preds = %159
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !276, !tbaa !55
  %169 = tail call i32* @__errno_location() #10, !dbg !276
  %170 = load i32, i32* %169, align 4, !dbg !276, !tbaa !278
  %171 = tail call i8* @strerror(i32 %170) #8, !dbg !276
  %172 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %168, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %171) #8, !dbg !276
  br label %173, !dbg !279

; <label>:173:                                    ; preds = %159, %8, %167, %4
  %174 = phi i32 [ 1, %4 ], [ 1, %167 ], [ 0, %8 ], [ 0, %159 ]
  ret i32 %174, !dbg !280
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_wide_uint(i64, i32, i32) unnamed_addr #0 !dbg !281 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !285, metadata !47), !dbg !294
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !286, metadata !47), !dbg !295
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !287, metadata !47), !dbg !296
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !288, metadata !47), !dbg !297
  tail call void @llvm.dbg.value(metadata i32 28, i64 0, metadata !289, metadata !47), !dbg !298
  %4 = trunc i64 %0 to i32, !dbg !299
  %5 = and i32 %4, 268435455, !dbg !299
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !290, metadata !47), !dbg !300
  %6 = zext i32 %5 to i64, !dbg !301
  %7 = icmp eq i64 %6, %0, !dbg !302
  br i1 %7, label %20, label %8, !dbg !303

; <label>:8:                                      ; preds = %3
  %9 = lshr i64 %0, 28, !dbg !304
  %10 = icmp ugt i64 %0, 72057594037927935, !dbg !305
  br i1 %10, label %11, label %16, !dbg !306

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !307
  %13 = add nsw i32 %1, 1, !dbg !309
  tail call fastcc void @print_wide_uint(i64 %9, i32 %13, i32 %2), !dbg !310
  %14 = add nsw i32 %1, 3, !dbg !311
  %15 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !311
  br label %18, !dbg !311

; <label>:16:                                     ; preds = %8
  %17 = add nsw i32 %1, 1, !dbg !309
  tail call fastcc void @print_wide_uint(i64 %9, i32 %17, i32 %2), !dbg !310
  br label %18

; <label>:18:                                     ; preds = %16, %11
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 28) #8, !dbg !313
  br label %28, !dbg !314

; <label>:20:                                     ; preds = %3
  %21 = icmp eq i32 %1, 0, !dbg !315
  br i1 %21, label %28, label %22, !dbg !317

; <label>:22:                                     ; preds = %20
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !318
  %24 = add i32 %2, -1, !dbg !320
  %25 = urem i32 %24, 28, !dbg !321
  %26 = and i32 %25, 3, !dbg !322
  %27 = add nuw nsw i32 %26, 1, !dbg !323
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !288, metadata !47), !dbg !297
  br label %28, !dbg !324

; <label>:28:                                     ; preds = %20, %22, %18
  %29 = phi i32 [ 7, %18 ], [ %27, %22 ], [ 7, %20 ]
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !288, metadata !47), !dbg !297
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %29, i32 %5) #8, !dbg !325
  ret void, !dbg !326
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i8* @strerror(i32) local_unnamed_addr #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "src/make-prime-list.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 172, type: !16, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !23, !27, !28, !41, !42, !46}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 172, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 172, type: !5)
!21 = !DILocalVariable(name: "limit", scope: !15, file: !1, line: 174, type: !4)
!22 = !DILocalVariable(name: "sieve", scope: !15, file: !1, line: 176, type: !6)
!23 = !DILocalVariable(name: "size", scope: !15, file: !1, line: 177, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 62, baseType: !26)
!25 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!26 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 177, type: !24)
!28 = !DILocalVariable(name: "prime_list", scope: !15, file: !1, line: 179, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prime", file: !1, line: 49, size: 192, elements: !31)
!31 = !{!32, !34, !40}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !30, file: !1, line: 51, baseType: !33, size: 32)
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "pinv", scope: !30, file: !1, line: 52, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "wide_uint", file: !1, line: 45, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !37, line: 112, baseType: !38)
!37 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !39, line: 62, baseType: !26)
!39 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!40 = !DIDerivedType(tag: DW_TAG_member, name: "lim", scope: !30, file: !1, line: 53, baseType: !35, size: 64, offset: 128)
!41 = !DILocalVariable(name: "nprimes", scope: !15, file: !1, line: 180, type: !33)
!42 = !DILocalVariable(name: "p", scope: !43, file: !1, line: 206, type: !33)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 205, column: 5)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 204, column: 3)
!45 = distinct !DILexicalBlock(scope: !15, file: !1, line: 204, column: 3)
!46 = !DILocalVariable(name: "j", scope: !43, file: !1, line: 207, type: !33)
!47 = !DIExpression()
!48 = !DILocation(line: 172, column: 11, scope: !15)
!49 = !DILocation(line: 172, column: 24, scope: !15)
!50 = !DILocation(line: 182, column: 12, scope: !51)
!51 = distinct !DILexicalBlock(scope: !15, file: !1, line: 182, column: 7)
!52 = !DILocation(line: 182, column: 7, scope: !15)
!53 = !DILocation(line: 184, column: 7, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 183, column: 5)
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !DILocation(line: 186, column: 7, scope: !54)
!60 = !DILocation(line: 188, column: 17, scope: !15)
!61 = !DILocalVariable(name: "__nptr", arg: 1, scope: !62, file: !63, line: 246, type: !66)
!62 = distinct !DISubprogram(name: "atoi", scope: !63, file: !63, line: 246, type: !64, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !68)
!63 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!64 = !DISubroutineType(types: !65)
!65 = !{!4, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!68 = !{!61}
!69 = !DILocation(line: 246, column: 1, scope: !62, inlinedAt: !70)
!70 = distinct !DILocation(line: 188, column: 11, scope: !15)
!71 = !DILocation(line: 248, column: 16, scope: !62, inlinedAt: !70)
!72 = !DILocation(line: 248, column: 10, scope: !62, inlinedAt: !70)
!73 = !DILocation(line: 174, column: 7, scope: !15)
!74 = !DILocation(line: 189, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !15, file: !1, line: 189, column: 7)
!76 = !DILocation(line: 189, column: 7, scope: !15)
!77 = !DILocation(line: 193, column: 16, scope: !78)
!78 = distinct !DILexicalBlock(scope: !15, file: !1, line: 193, column: 8)
!79 = !DILocation(line: 193, column: 8, scope: !15)
!80 = !DILocation(line: 196, column: 16, scope: !15)
!81 = !DILocation(line: 196, column: 19, scope: !15)
!82 = !DILocation(line: 196, column: 10, scope: !15)
!83 = !DILocation(line: 177, column: 10, scope: !15)
!84 = !DILocalVariable(name: "s", arg: 1, scope: !85, file: !1, line: 161, type: !24)
!85 = distinct !DISubprogram(name: "xalloc", scope: !1, file: !1, line: 161, type: !86, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{!8, !24}
!88 = !{!84, !89}
!89 = !DILocalVariable(name: "p", scope: !85, file: !1, line: 163, type: !8)
!90 = !DILocation(line: 161, column: 16, scope: !85, inlinedAt: !91)
!91 = distinct !DILocation(line: 198, column: 11, scope: !15)
!92 = !DILocation(line: 163, column: 13, scope: !85, inlinedAt: !91)
!93 = !DILocation(line: 163, column: 9, scope: !85, inlinedAt: !91)
!94 = !DILocation(line: 164, column: 7, scope: !95, inlinedAt: !91)
!95 = distinct !DILexicalBlock(scope: !85, file: !1, line: 164, column: 7)
!96 = !DILocation(line: 164, column: 7, scope: !85, inlinedAt: !91)
!97 = !DILocation(line: 167, column: 3, scope: !85, inlinedAt: !91)
!98 = !DILocation(line: 168, column: 3, scope: !85, inlinedAt: !91)
!99 = !DILocation(line: 176, column: 9, scope: !15)
!100 = !DILocation(line: 199, column: 3, scope: !15)
!101 = !DILocation(line: 201, column: 29, scope: !15)
!102 = !DILocation(line: 161, column: 16, scope: !85, inlinedAt: !103)
!103 = distinct !DILocation(line: 201, column: 16, scope: !15)
!104 = !DILocation(line: 163, column: 13, scope: !85, inlinedAt: !103)
!105 = !DILocation(line: 163, column: 9, scope: !85, inlinedAt: !103)
!106 = !DILocation(line: 164, column: 7, scope: !95, inlinedAt: !103)
!107 = !DILocation(line: 164, column: 7, scope: !85, inlinedAt: !103)
!108 = !DILocation(line: 167, column: 3, scope: !85, inlinedAt: !103)
!109 = !DILocation(line: 168, column: 3, scope: !85, inlinedAt: !103)
!110 = !DILocation(line: 201, column: 16, scope: !15)
!111 = !DILocation(line: 179, column: 17, scope: !15)
!112 = !DILocation(line: 180, column: 12, scope: !15)
!113 = !DILocation(line: 177, column: 16, scope: !15)
!114 = !DILocation(line: 204, column: 17, scope: !44)
!115 = !DILocation(line: 204, column: 3, scope: !45)
!116 = !DILocation(line: 206, column: 23, scope: !43)
!117 = !DILocation(line: 206, column: 21, scope: !43)
!118 = !DILocation(line: 206, column: 20, scope: !43)
!119 = !DILocation(line: 206, column: 16, scope: !43)
!120 = !DILocation(line: 209, column: 23, scope: !43)
!121 = !DILocalVariable(name: "p", arg: 2, scope: !122, file: !1, line: 70, type: !33)
!122 = distinct !DISubprogram(name: "process_prime", scope: !1, file: !1, line: 70, type: !123, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !29, !33}
!125 = !{!126, !121, !127}
!126 = !DILocalVariable(name: "info", arg: 1, scope: !122, file: !1, line: 70, type: !29)
!127 = !DILocalVariable(name: "max", scope: !122, file: !1, line: 72, type: !35)
!128 = !DILocation(line: 70, column: 45, scope: !122, inlinedAt: !129)
!129 = distinct !DILocation(line: 209, column: 7, scope: !43)
!130 = !DILocation(line: 72, column: 13, scope: !122, inlinedAt: !129)
!131 = !DILocation(line: 73, column: 9, scope: !122, inlinedAt: !129)
!132 = !DILocation(line: 73, column: 11, scope: !122, inlinedAt: !129)
!133 = !{!134, !135, i64 0}
!134 = !{!"prime", !135, i64 0, !136, i64 8, !136, i64 16}
!135 = !{!"int", !57, i64 0}
!136 = !{!"long", !57, i64 0}
!137 = !DILocation(line: 74, column: 25, scope: !122, inlinedAt: !129)
!138 = !DILocalVariable(name: "a", arg: 1, scope: !139, file: !1, line: 57, type: !35)
!139 = distinct !DISubprogram(name: "binvert", scope: !1, file: !1, line: 57, type: !140, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !142)
!140 = !DISubroutineType(types: !141)
!141 = !{!35, !35}
!142 = !{!138, !143, !144}
!143 = !DILocalVariable(name: "x", scope: !139, file: !1, line: 59, type: !35)
!144 = !DILocalVariable(name: "y", scope: !145, file: !1, line: 62, type: !35)
!145 = distinct !DILexicalBlock(scope: !146, file: !1, line: 61, column: 5)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 60, column: 3)
!147 = distinct !DILexicalBlock(scope: !139, file: !1, line: 60, column: 3)
!148 = !DILocation(line: 57, column: 20, scope: !139, inlinedAt: !149)
!149 = distinct !DILocation(line: 74, column: 16, scope: !122, inlinedAt: !129)
!150 = !DILocation(line: 59, column: 28, scope: !139, inlinedAt: !149)
!151 = !DILocation(line: 59, column: 17, scope: !139, inlinedAt: !149)
!152 = !DILocation(line: 59, column: 13, scope: !139, inlinedAt: !149)
!153 = !DILocation(line: 60, column: 3, scope: !139, inlinedAt: !149)
!154 = !DILocation(line: 62, column: 28, scope: !145, inlinedAt: !149)
!155 = !DILocation(line: 62, column: 25, scope: !145, inlinedAt: !149)
!156 = !DILocation(line: 62, column: 17, scope: !145, inlinedAt: !149)
!157 = !DILocation(line: 63, column: 13, scope: !158, inlinedAt: !149)
!158 = distinct !DILexicalBlock(scope: !145, file: !1, line: 63, column: 11)
!159 = distinct !{!159, !160, !161}
!160 = !DILocation(line: 60, column: 3, scope: !147)
!161 = !DILocation(line: 66, column: 5, scope: !147)
!162 = !DILocation(line: 209, column: 41, scope: !43)
!163 = !DILocation(line: 74, column: 9, scope: !122, inlinedAt: !129)
!164 = !DILocation(line: 74, column: 14, scope: !122, inlinedAt: !129)
!165 = !{!134, !136, i64 8}
!166 = !DILocation(line: 75, column: 19, scope: !122, inlinedAt: !129)
!167 = !DILocation(line: 75, column: 9, scope: !122, inlinedAt: !129)
!168 = !DILocation(line: 75, column: 13, scope: !122, inlinedAt: !129)
!169 = !{!134, !136, i64 16}
!170 = !DILocation(line: 211, column: 18, scope: !171)
!171 = distinct !DILexicalBlock(scope: !43, file: !1, line: 211, column: 7)
!172 = !DILocation(line: 211, column: 21, scope: !171)
!173 = !DILocation(line: 211, column: 25, scope: !171)
!174 = !DILocation(line: 207, column: 16, scope: !43)
!175 = !DILocation(line: 211, column: 29, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !1, line: 211, column: 7)
!177 = !DILocation(line: 211, column: 31, scope: !176)
!178 = !DILocation(line: 211, column: 7, scope: !171)
!179 = !DILocation(line: 212, column: 9, scope: !176)
!180 = !DILocation(line: 212, column: 18, scope: !176)
!181 = !{!57, !57, i64 0}
!182 = !DILocation(line: 211, column: 40, scope: !176)
!183 = distinct !{!183, !178, !184}
!184 = !DILocation(line: 212, column: 20, scope: !171)
!185 = !DILocation(line: 214, column: 14, scope: !43)
!186 = !DILocation(line: 214, column: 18, scope: !43)
!187 = !DILocation(line: 214, column: 25, scope: !43)
!188 = !DILocation(line: 214, column: 28, scope: !43)
!189 = distinct !{!189, !190, !191}
!190 = !DILocation(line: 214, column: 7, scope: !43)
!191 = !DILocation(line: 215, column: 9, scope: !43)
!192 = !DILocation(line: 214, column: 37, scope: !43)
!193 = distinct !{!193, !115, !194}
!194 = !DILocation(line: 216, column: 5, scope: !45)
!195 = !DILocalVariable(name: "primes", arg: 1, scope: !196, file: !1, line: 110, type: !199)
!196 = distinct !DISubprogram(name: "output_primes", scope: !1, file: !1, line: 110, type: !197, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !201)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !199, !33}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!201 = !{!195, !202, !203, !204, !205, !206, !207, !208}
!202 = !DILocalVariable(name: "nprimes", arg: 2, scope: !196, file: !1, line: 110, type: !33)
!203 = !DILocalVariable(name: "i", scope: !196, file: !1, line: 112, type: !33)
!204 = !DILocalVariable(name: "p", scope: !196, file: !1, line: 113, type: !33)
!205 = !DILocalVariable(name: "is_prime", scope: !196, file: !1, line: 114, type: !4)
!206 = !DILocalVariable(name: "wide_uint_bits", scope: !196, file: !1, line: 119, type: !33)
!207 = !DILocalVariable(name: "mask", scope: !196, file: !1, line: 120, type: !35)
!208 = !DILocalVariable(name: "d8", scope: !209, file: !1, line: 129, type: !33)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 128, column: 5)
!210 = distinct !DILexicalBlock(scope: !211, file: !1, line: 127, column: 3)
!211 = distinct !DILexicalBlock(scope: !196, file: !1, line: 127, column: 3)
!212 = !DILocation(line: 110, column: 36, scope: !196, inlinedAt: !213)
!213 = distinct !DILocation(line: 218, column: 3, scope: !15)
!214 = !DILocation(line: 110, column: 53, scope: !196, inlinedAt: !213)
!215 = !DILocation(line: 119, column: 12, scope: !196, inlinedAt: !213)
!216 = !DILocation(line: 120, column: 13, scope: !196, inlinedAt: !213)
!217 = !DILocation(line: 124, column: 3, scope: !196, inlinedAt: !213)
!218 = !DILocation(line: 125, column: 3, scope: !196, inlinedAt: !213)
!219 = !DILocation(line: 112, column: 12, scope: !196, inlinedAt: !213)
!220 = !DILocation(line: 113, column: 12, scope: !196, inlinedAt: !213)
!221 = !DILocation(line: 127, column: 24, scope: !210, inlinedAt: !213)
!222 = !DILocation(line: 127, column: 3, scope: !211, inlinedAt: !213)
!223 = !DILocation(line: 129, column: 27, scope: !209, inlinedAt: !213)
!224 = !DILocation(line: 129, column: 31, scope: !209, inlinedAt: !213)
!225 = !DILocation(line: 129, column: 25, scope: !209, inlinedAt: !213)
!226 = !DILocation(line: 132, column: 7, scope: !209, inlinedAt: !213)
!227 = !DILocation(line: 129, column: 43, scope: !209, inlinedAt: !213)
!228 = !DILocation(line: 129, column: 57, scope: !209, inlinedAt: !213)
!229 = !DILocation(line: 129, column: 71, scope: !209, inlinedAt: !213)
!230 = !DILocation(line: 129, column: 59, scope: !209, inlinedAt: !213)
!231 = !DILocation(line: 129, column: 20, scope: !209, inlinedAt: !213)
!232 = !DILocation(line: 130, column: 15, scope: !233, inlinedAt: !213)
!233 = distinct !DILexicalBlock(scope: !209, file: !1, line: 130, column: 11)
!234 = !DILocation(line: 130, column: 11, scope: !209, inlinedAt: !213)
!235 = !DILocation(line: 131, column: 9, scope: !233, inlinedAt: !213)
!236 = !DILocation(line: 133, column: 34, scope: !209, inlinedAt: !213)
!237 = !DILocation(line: 133, column: 7, scope: !209, inlinedAt: !213)
!238 = !DILocation(line: 134, column: 7, scope: !209, inlinedAt: !213)
!239 = !DILocation(line: 135, column: 21, scope: !209, inlinedAt: !213)
!240 = !DILocation(line: 127, column: 36, scope: !210, inlinedAt: !213)
!241 = distinct !{!241, !242, !243}
!242 = !DILocation(line: 127, column: 3, scope: !211)
!243 = !DILocation(line: 136, column: 5, scope: !211)
!244 = !DILocation(line: 138, column: 3, scope: !196, inlinedAt: !213)
!245 = !DILocation(line: 114, column: 7, scope: !196, inlinedAt: !213)
!246 = !DILocation(line: 146, column: 25, scope: !247, inlinedAt: !213)
!247 = distinct !DILexicalBlock(scope: !248, file: !1, line: 146, column: 15)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 145, column: 9)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 144, column: 7)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 144, column: 7)
!251 = distinct !DILexicalBlock(scope: !196, file: !1, line: 142, column: 5)
!252 = !DILocation(line: 146, column: 27, scope: !247, inlinedAt: !213)
!253 = !DILocation(line: 146, column: 41, scope: !247, inlinedAt: !213)
!254 = !DILocation(line: 146, column: 15, scope: !248, inlinedAt: !213)
!255 = !DILocation(line: 143, column: 9, scope: !251, inlinedAt: !213)
!256 = !DILocation(line: 146, column: 15, scope: !247, inlinedAt: !213)
!257 = distinct !{!257, !258, !259}
!258 = !DILocation(line: 144, column: 7, scope: !250)
!259 = !DILocation(line: 153, column: 9, scope: !250)
!260 = !DILocation(line: 148, column: 29, scope: !261, inlinedAt: !213)
!261 = distinct !DILexicalBlock(scope: !248, file: !1, line: 148, column: 15)
!262 = !DILocation(line: 148, column: 17, scope: !261, inlinedAt: !213)
!263 = !DILocation(line: 148, column: 47, scope: !261, inlinedAt: !213)
!264 = !DILocation(line: 148, column: 34, scope: !261, inlinedAt: !213)
!265 = !DILocation(line: 144, column: 44, scope: !249, inlinedAt: !213)
!266 = !DILocation(line: 148, column: 15, scope: !248, inlinedAt: !213)
!267 = !DILocation(line: 157, column: 3, scope: !196, inlinedAt: !213)
!268 = !DILocation(line: 220, column: 3, scope: !15)
!269 = !DILocation(line: 221, column: 3, scope: !15)
!270 = !DILocation(line: 223, column: 15, scope: !271)
!271 = distinct !DILexicalBlock(scope: !15, file: !1, line: 223, column: 7)
!272 = !DILocation(line: 223, column: 7, scope: !271)
!273 = !DILocation(line: 223, column: 25, scope: !271)
!274 = !DILocation(line: 223, column: 23, scope: !271)
!275 = !DILocation(line: 223, column: 7, scope: !15)
!276 = !DILocation(line: 225, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !271, file: !1, line: 224, column: 5)
!278 = !{!135, !135, i64 0}
!279 = !DILocation(line: 226, column: 7, scope: !277)
!280 = !DILocation(line: 230, column: 1, scope: !15)
!281 = distinct !DISubprogram(name: "print_wide_uint", scope: !1, file: !1, line: 79, type: !282, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !35, !4, !33}
!284 = !{!285, !286, !287, !288, !289, !290, !291}
!285 = !DILocalVariable(name: "n", arg: 1, scope: !281, file: !1, line: 79, type: !35)
!286 = !DILocalVariable(name: "nesting", arg: 2, scope: !281, file: !1, line: 79, type: !4)
!287 = !DILocalVariable(name: "wide_uint_bits", arg: 3, scope: !281, file: !1, line: 79, type: !33)
!288 = !DILocalVariable(name: "hex_digits_per_literal", scope: !281, file: !1, line: 84, type: !4)
!289 = !DILocalVariable(name: "bits_per_literal", scope: !281, file: !1, line: 85, type: !4)
!290 = !DILocalVariable(name: "remainder", scope: !281, file: !1, line: 87, type: !33)
!291 = !DILocalVariable(name: "needs_parentheses", scope: !292, file: !1, line: 91, type: !4)
!292 = distinct !DILexicalBlock(scope: !293, file: !1, line: 90, column: 5)
!293 = distinct !DILexicalBlock(scope: !281, file: !1, line: 89, column: 7)
!294 = !DILocation(line: 79, column: 28, scope: !281)
!295 = !DILocation(line: 79, column: 35, scope: !281)
!296 = !DILocation(line: 79, column: 53, scope: !281)
!297 = !DILocation(line: 84, column: 7, scope: !281)
!298 = !DILocation(line: 85, column: 7, scope: !281)
!299 = !DILocation(line: 87, column: 24, scope: !281)
!300 = !DILocation(line: 87, column: 12, scope: !281)
!301 = !DILocation(line: 89, column: 12, scope: !293)
!302 = !DILocation(line: 89, column: 9, scope: !293)
!303 = !DILocation(line: 89, column: 7, scope: !281)
!304 = !DILocation(line: 91, column: 33, scope: !292)
!305 = !DILocation(line: 91, column: 73, scope: !292)
!306 = !DILocation(line: 92, column: 11, scope: !292)
!307 = !DILocation(line: 93, column: 9, scope: !308)
!308 = distinct !DILexicalBlock(scope: !292, file: !1, line: 92, column: 11)
!309 = !DILocation(line: 94, column: 55, scope: !292)
!310 = !DILocation(line: 94, column: 7, scope: !292)
!311 = !DILocation(line: 96, column: 9, scope: !312)
!312 = distinct !DILexicalBlock(scope: !292, file: !1, line: 95, column: 11)
!313 = !DILocation(line: 97, column: 7, scope: !292)
!314 = !DILocation(line: 98, column: 5, scope: !292)
!315 = !DILocation(line: 99, column: 12, scope: !316)
!316 = distinct !DILexicalBlock(scope: !293, file: !1, line: 99, column: 12)
!317 = !DILocation(line: 99, column: 12, scope: !293)
!318 = !DILocation(line: 101, column: 7, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !1, line: 100, column: 5)
!320 = !DILocation(line: 103, column: 28, scope: !319)
!321 = !DILocation(line: 103, column: 33, scope: !319)
!322 = !DILocation(line: 103, column: 53, scope: !319)
!323 = !DILocation(line: 103, column: 57, scope: !319)
!324 = !DILocation(line: 104, column: 5, scope: !319)
!325 = !DILocation(line: 106, column: 3, scope: !281)
!326 = !DILocation(line: 107, column: 1, scope: !281)
