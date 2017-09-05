; ModuleID = 'src/if_n64.c'
source_filename = "src/if_n64.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind sspstrong uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %390

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %389

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %388

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %387

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %29, label %386

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 6
  br i1 %33, label %34, label %385

; <label>:34:                                     ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 7
  br i1 %38, label %39, label %384

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %383

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 9
  br i1 %48, label %49, label %382

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 10
  br i1 %53, label %54, label %381

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 11
  br i1 %58, label %59, label %380

; <label>:59:                                     ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 12
  br i1 %63, label %64, label %379

; <label>:64:                                     ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 13
  br i1 %68, label %69, label %378

; <label>:69:                                     ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 14
  br i1 %73, label %74, label %377

; <label>:74:                                     ; preds = %69
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 15
  br i1 %78, label %79, label %376

; <label>:79:                                     ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 16
  br i1 %83, label %84, label %375

; <label>:84:                                     ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 17
  br i1 %88, label %89, label %374

; <label>:89:                                     ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 18
  br i1 %93, label %94, label %373

; <label>:94:                                     ; preds = %89
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 19
  br i1 %98, label %99, label %372

; <label>:99:                                     ; preds = %94
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 20
  br i1 %103, label %104, label %371

; <label>:104:                                    ; preds = %99
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 21
  br i1 %108, label %109, label %370

; <label>:109:                                    ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 22
  br i1 %113, label %114, label %369

; <label>:114:                                    ; preds = %109
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 23
  br i1 %118, label %119, label %368

; <label>:119:                                    ; preds = %114
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %122, 24
  br i1 %123, label %124, label %367

; <label>:124:                                    ; preds = %119
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 25
  br i1 %128, label %129, label %366

; <label>:129:                                    ; preds = %124
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 26
  br i1 %133, label %134, label %365

; <label>:134:                                    ; preds = %129
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %137, 27
  br i1 %138, label %139, label %364

; <label>:139:                                    ; preds = %134
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %142, 28
  br i1 %143, label %144, label %363

; <label>:144:                                    ; preds = %139
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 29
  br i1 %148, label %149, label %362

; <label>:149:                                    ; preds = %144
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp slt i32 %152, 30
  br i1 %153, label %154, label %361

; <label>:154:                                    ; preds = %149
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp slt i32 %157, 31
  br i1 %158, label %159, label %360

; <label>:159:                                    ; preds = %154
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp slt i32 %162, 32
  br i1 %163, label %164, label %359

; <label>:164:                                    ; preds = %159
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp slt i32 %167, 33
  br i1 %168, label %169, label %358

; <label>:169:                                    ; preds = %164
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp slt i32 %172, 34
  br i1 %173, label %174, label %357

; <label>:174:                                    ; preds = %169
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp slt i32 %177, 35
  br i1 %178, label %179, label %356

; <label>:179:                                    ; preds = %174
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %182, 36
  br i1 %183, label %184, label %355

; <label>:184:                                    ; preds = %179
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp slt i32 %187, 37
  br i1 %188, label %189, label %354

; <label>:189:                                    ; preds = %184
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp slt i32 %192, 38
  br i1 %193, label %194, label %353

; <label>:194:                                    ; preds = %189
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = icmp slt i32 %197, 39
  br i1 %198, label %199, label %352

; <label>:199:                                    ; preds = %194
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp slt i32 %202, 40
  br i1 %203, label %204, label %351

; <label>:204:                                    ; preds = %199
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* %6, align 4
  %208 = icmp slt i32 %207, 41
  br i1 %208, label %209, label %350

; <label>:209:                                    ; preds = %204
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp slt i32 %212, 42
  br i1 %213, label %214, label %349

; <label>:214:                                    ; preds = %209
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp slt i32 %217, 43
  br i1 %218, label %219, label %348

; <label>:219:                                    ; preds = %214
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp slt i32 %222, 44
  br i1 %223, label %224, label %347

; <label>:224:                                    ; preds = %219
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* %6, align 4
  %228 = icmp slt i32 %227, 45
  br i1 %228, label %229, label %346

; <label>:229:                                    ; preds = %224
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp slt i32 %232, 46
  br i1 %233, label %234, label %345

; <label>:234:                                    ; preds = %229
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %6, align 4
  %237 = load i32, i32* %6, align 4
  %238 = icmp slt i32 %237, 47
  br i1 %238, label %239, label %344

; <label>:239:                                    ; preds = %234
  %240 = load i32, i32* %6, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* %6, align 4
  %243 = icmp slt i32 %242, 48
  br i1 %243, label %244, label %343

; <label>:244:                                    ; preds = %239
  %245 = load i32, i32* %6, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = icmp slt i32 %247, 49
  br i1 %248, label %249, label %342

; <label>:249:                                    ; preds = %244
  %250 = load i32, i32* %6, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp slt i32 %252, 50
  br i1 %253, label %254, label %341

; <label>:254:                                    ; preds = %249
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %6, align 4
  %257 = load i32, i32* %6, align 4
  %258 = icmp slt i32 %257, 51
  br i1 %258, label %259, label %340

; <label>:259:                                    ; preds = %254
  %260 = load i32, i32* %6, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %6, align 4
  %262 = load i32, i32* %6, align 4
  %263 = icmp slt i32 %262, 52
  br i1 %263, label %264, label %339

; <label>:264:                                    ; preds = %259
  %265 = load i32, i32* %6, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %6, align 4
  %267 = load i32, i32* %6, align 4
  %268 = icmp slt i32 %267, 53
  br i1 %268, label %269, label %338

; <label>:269:                                    ; preds = %264
  %270 = load i32, i32* %6, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %6, align 4
  %272 = load i32, i32* %6, align 4
  %273 = icmp slt i32 %272, 54
  br i1 %273, label %274, label %337

; <label>:274:                                    ; preds = %269
  %275 = load i32, i32* %6, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %6, align 4
  %277 = load i32, i32* %6, align 4
  %278 = icmp slt i32 %277, 55
  br i1 %278, label %279, label %336

; <label>:279:                                    ; preds = %274
  %280 = load i32, i32* %6, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %6, align 4
  %282 = load i32, i32* %6, align 4
  %283 = icmp slt i32 %282, 56
  br i1 %283, label %284, label %335

; <label>:284:                                    ; preds = %279
  %285 = load i32, i32* %6, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %6, align 4
  %287 = load i32, i32* %6, align 4
  %288 = icmp slt i32 %287, 57
  br i1 %288, label %289, label %334

; <label>:289:                                    ; preds = %284
  %290 = load i32, i32* %6, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %6, align 4
  %292 = load i32, i32* %6, align 4
  %293 = icmp slt i32 %292, 58
  br i1 %293, label %294, label %333

; <label>:294:                                    ; preds = %289
  %295 = load i32, i32* %6, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %6, align 4
  %297 = load i32, i32* %6, align 4
  %298 = icmp slt i32 %297, 59
  br i1 %298, label %299, label %332

; <label>:299:                                    ; preds = %294
  %300 = load i32, i32* %6, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %6, align 4
  %302 = load i32, i32* %6, align 4
  %303 = icmp slt i32 %302, 60
  br i1 %303, label %304, label %331

; <label>:304:                                    ; preds = %299
  %305 = load i32, i32* %6, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %6, align 4
  %307 = load i32, i32* %6, align 4
  %308 = icmp slt i32 %307, 61
  br i1 %308, label %309, label %330

; <label>:309:                                    ; preds = %304
  %310 = load i32, i32* %6, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %6, align 4
  %312 = load i32, i32* %6, align 4
  %313 = icmp slt i32 %312, 62
  br i1 %313, label %314, label %329

; <label>:314:                                    ; preds = %309
  %315 = load i32, i32* %6, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %6, align 4
  %317 = load i32, i32* %6, align 4
  %318 = icmp slt i32 %317, 63
  br i1 %318, label %319, label %328

; <label>:319:                                    ; preds = %314
  %320 = load i32, i32* %6, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %6, align 4
  %322 = load i32, i32* %6, align 4
  %323 = icmp slt i32 %322, 64
  br i1 %323, label %324, label %327

; <label>:324:                                    ; preds = %319
  %325 = load i32, i32* %6, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %6, align 4
  br label %327

; <label>:327:                                    ; preds = %324, %319
  br label %328

; <label>:328:                                    ; preds = %327, %314
  br label %329

; <label>:329:                                    ; preds = %328, %309
  br label %330

; <label>:330:                                    ; preds = %329, %304
  br label %331

; <label>:331:                                    ; preds = %330, %299
  br label %332

; <label>:332:                                    ; preds = %331, %294
  br label %333

; <label>:333:                                    ; preds = %332, %289
  br label %334

; <label>:334:                                    ; preds = %333, %284
  br label %335

; <label>:335:                                    ; preds = %334, %279
  br label %336

; <label>:336:                                    ; preds = %335, %274
  br label %337

; <label>:337:                                    ; preds = %336, %269
  br label %338

; <label>:338:                                    ; preds = %337, %264
  br label %339

; <label>:339:                                    ; preds = %338, %259
  br label %340

; <label>:340:                                    ; preds = %339, %254
  br label %341

; <label>:341:                                    ; preds = %340, %249
  br label %342

; <label>:342:                                    ; preds = %341, %244
  br label %343

; <label>:343:                                    ; preds = %342, %239
  br label %344

; <label>:344:                                    ; preds = %343, %234
  br label %345

; <label>:345:                                    ; preds = %344, %229
  br label %346

; <label>:346:                                    ; preds = %345, %224
  br label %347

; <label>:347:                                    ; preds = %346, %219
  br label %348

; <label>:348:                                    ; preds = %347, %214
  br label %349

; <label>:349:                                    ; preds = %348, %209
  br label %350

; <label>:350:                                    ; preds = %349, %204
  br label %351

; <label>:351:                                    ; preds = %350, %199
  br label %352

; <label>:352:                                    ; preds = %351, %194
  br label %353

; <label>:353:                                    ; preds = %352, %189
  br label %354

; <label>:354:                                    ; preds = %353, %184
  br label %355

; <label>:355:                                    ; preds = %354, %179
  br label %356

; <label>:356:                                    ; preds = %355, %174
  br label %357

; <label>:357:                                    ; preds = %356, %169
  br label %358

; <label>:358:                                    ; preds = %357, %164
  br label %359

; <label>:359:                                    ; preds = %358, %159
  br label %360

; <label>:360:                                    ; preds = %359, %154
  br label %361

; <label>:361:                                    ; preds = %360, %149
  br label %362

; <label>:362:                                    ; preds = %361, %144
  br label %363

; <label>:363:                                    ; preds = %362, %139
  br label %364

; <label>:364:                                    ; preds = %363, %134
  br label %365

; <label>:365:                                    ; preds = %364, %129
  br label %366

; <label>:366:                                    ; preds = %365, %124
  br label %367

; <label>:367:                                    ; preds = %366, %119
  br label %368

; <label>:368:                                    ; preds = %367, %114
  br label %369

; <label>:369:                                    ; preds = %368, %109
  br label %370

; <label>:370:                                    ; preds = %369, %104
  br label %371

; <label>:371:                                    ; preds = %370, %99
  br label %372

; <label>:372:                                    ; preds = %371, %94
  br label %373

; <label>:373:                                    ; preds = %372, %89
  br label %374

; <label>:374:                                    ; preds = %373, %84
  br label %375

; <label>:375:                                    ; preds = %374, %79
  br label %376

; <label>:376:                                    ; preds = %375, %74
  br label %377

; <label>:377:                                    ; preds = %376, %69
  br label %378

; <label>:378:                                    ; preds = %377, %64
  br label %379

; <label>:379:                                    ; preds = %378, %59
  br label %380

; <label>:380:                                    ; preds = %379, %54
  br label %381

; <label>:381:                                    ; preds = %380, %49
  br label %382

; <label>:382:                                    ; preds = %381, %44
  br label %383

; <label>:383:                                    ; preds = %382, %39
  br label %384

; <label>:384:                                    ; preds = %383, %34
  br label %385

; <label>:385:                                    ; preds = %384, %29
  br label %386

; <label>:386:                                    ; preds = %385, %24
  br label %387

; <label>:387:                                    ; preds = %386, %19
  br label %388

; <label>:388:                                    ; preds = %387, %14
  br label %389

; <label>:389:                                    ; preds = %388, %9
  br label %390

; <label>:390:                                    ; preds = %389, %2
  %391 = load i32, i32* %6, align 4
  %392 = srem i32 %391, 123
  ret i32 %392
}

attributes #0 = { noinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{i32 1, !"PIE Level", i32 2}
!2 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
