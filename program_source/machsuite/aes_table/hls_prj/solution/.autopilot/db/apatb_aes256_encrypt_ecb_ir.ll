; ModuleID = '/home/zqy/LLM4CHIP/HLSFactory/hlsfactory/hls_dataset_sources/machsuite/aes_table/hls_prj/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.aes256_context = type { [32 x i8], [32 x i8], [32 x i8] }

; Function Attrs: argmemonly noinline
define void @apatb_aes256_encrypt_ecb_ir(%struct.aes256_context* noalias nonnull %ctx, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="32" %k, i8* noalias nonnull "fpga.decayed.dim.hint"="16" %buf) local_unnamed_addr #0 {
entry:
  %ctx_copy = alloca i768, align 512
  %k_copy = alloca [32 x i8], align 512
  %buf_copy = alloca [16 x i8], align 512
  %0 = bitcast i8* %k to [32 x i8]*
  %1 = bitcast i8* %buf to [16 x i8]*
  call fastcc void @copy_in(%struct.aes256_context* nonnull %ctx, i768* nonnull align 512 %ctx_copy, [32 x i8]* nonnull %0, [32 x i8]* nonnull align 512 %k_copy, [16 x i8]* nonnull %1, [16 x i8]* nonnull align 512 %buf_copy)
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %k_copy, i32 0, i32 0
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %buf_copy, i32 0, i32 0
  call void @apatb_aes256_encrypt_ecb_hw(i768* %ctx_copy, i8* %2, i8* %3)
  call void @copy_back(%struct.aes256_context* %ctx, i768* %ctx_copy, [32 x i8]* %0, [32 x i8]* %k_copy, [16 x i8]* %1, [16 x i8]* %buf_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(%struct.aes256_context* noalias readonly, i768* noalias align 512, [32 x i8]* noalias readonly, [32 x i8]* noalias align 512, [16 x i8]* noalias readonly, [16 x i8]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.aes256_context(i768* align 512 %1, %struct.aes256_context* %0)
  call fastcc void @onebyonecpy_hls.p0a32i8([32 x i8]* align 512 %3, [32 x i8]* %2)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* align 512 %5, [16 x i8]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.aes256_context(i768* noalias align 512, %struct.aes256_context* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i768* %0, null
  %3 = icmp eq %struct.aes256_context* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.promoted = load i768, i768* %0, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %5 = phi i768 [ %.promoted, %copy ], [ %.partset, %for.loop ]
  %for.loop.idx24 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %6 = mul nuw nsw i64 8, %for.loop.idx24
  %src.addr21 = getelementptr %struct.aes256_context, %struct.aes256_context* %1, i32 0, i32 0, i64 %for.loop.idx24
  %7 = load i8, i8* %src.addr21, align 1
  %8 = zext i64 %6 to i768
  %9 = shl i768 255, %8
  %10 = zext i8 %7 to i768
  %11 = shl i768 %10, %8
  %12 = xor i768 %9, -1
  %13 = and i768 %5, %12
  %.partset = or i768 %13, %11
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx24, 1
  %exitcond26 = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond26, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop
  store i768 %.partset, i768* %0, align 512
  br label %for.loop4

for.loop4:                                        ; preds = %for.loop4, %copy.split
  %14 = phi i768 [ %.partset, %copy.split ], [ %.partset1, %for.loop4 ]
  %for.loop.idx523 = phi i64 [ 0, %copy.split ], [ %for.loop.idx5.next, %for.loop4 ]
  %15 = mul nuw nsw i64 8, %for.loop.idx523
  %16 = add nuw nsw i64 256, %15
  %src.addr819 = getelementptr %struct.aes256_context, %struct.aes256_context* %1, i32 0, i32 1, i64 %for.loop.idx523
  %17 = load i8, i8* %src.addr819, align 1
  %18 = zext i64 %16 to i768
  %19 = shl i768 255, %18
  %20 = zext i8 %17 to i768
  %21 = shl i768 %20, %18
  %22 = xor i768 %19, -1
  %23 = and i768 %14, %22
  %.partset1 = or i768 %23, %21
  %for.loop.idx5.next = add nuw nsw i64 %for.loop.idx523, 1
  %exitcond25 = icmp ne i64 %for.loop.idx5.next, 32
  br i1 %exitcond25, label %for.loop4, label %copy.split.split

copy.split.split:                                 ; preds = %for.loop4
  store i768 %.partset1, i768* %0, align 512
  br label %for.loop11

for.loop11:                                       ; preds = %for.loop11, %copy.split.split
  %24 = phi i768 [ %.partset1, %copy.split.split ], [ %.partset2, %for.loop11 ]
  %for.loop.idx1222 = phi i64 [ 0, %copy.split.split ], [ %for.loop.idx12.next, %for.loop11 ]
  %25 = mul nuw nsw i64 8, %for.loop.idx1222
  %26 = add nuw nsw i64 512, %25
  %src.addr1517 = getelementptr %struct.aes256_context, %struct.aes256_context* %1, i32 0, i32 2, i64 %for.loop.idx1222
  %27 = load i8, i8* %src.addr1517, align 1
  %28 = zext i64 %26 to i768
  %29 = shl i768 255, %28
  %30 = zext i8 %27 to i768
  %31 = shl i768 %30, %28
  %32 = xor i768 %29, -1
  %33 = and i768 %24, %32
  %.partset2 = or i768 %33, %31
  %for.loop.idx12.next = add nuw nsw i64 %for.loop.idx1222, 1
  %exitcond = icmp ne i64 %for.loop.idx12.next, 32
  br i1 %exitcond, label %for.loop11, label %ret.loopexit

ret.loopexit:                                     ; preds = %for.loop11
  store i768 %.partset2, i768* %0, align 512
  br label %ret

ret:                                              ; preds = %ret.loopexit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a32i8([32 x i8]* noalias align 512, [32 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [32 x i8]* %0, null
  %3 = icmp eq [32 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x i8], [32 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [32 x i8], [32 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* noalias align 512, [16 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [16 x i8]* %0, null
  %3 = icmp eq [16 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x i8], [16 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [16 x i8], [16 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(%struct.aes256_context* noalias, i768* noalias readonly align 512, [32 x i8]* noalias, [32 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.aes256_context.4(%struct.aes256_context* %0, i768* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a32i8([32 x i8]* %2, [32 x i8]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* %4, [16 x i8]* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.aes256_context.4(%struct.aes256_context* noalias, i768* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.aes256_context* %0, null
  %3 = icmp eq i768* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i768, i768* %1, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx24 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr20 = getelementptr %struct.aes256_context, %struct.aes256_context* %0, i32 0, i32 0, i64 %for.loop.idx24
  %6 = mul nuw nsw i64 8, %for.loop.idx24
  %7 = zext i64 %6 to i768
  %8 = lshr i768 %5, %7
  %.partselect2 = trunc i768 %8 to i8
  store i8 %.partselect2, i8* %dst.addr20, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx24, 1
  %exitcond26 = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond26, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop
  br label %for.loop4

for.loop4:                                        ; preds = %for.loop4, %copy.split
  %for.loop.idx523 = phi i64 [ 0, %copy.split ], [ %for.loop.idx5.next, %for.loop4 ]
  %dst.addr718 = getelementptr %struct.aes256_context, %struct.aes256_context* %0, i32 0, i32 1, i64 %for.loop.idx523
  %9 = mul nuw nsw i64 8, %for.loop.idx523
  %10 = add nuw nsw i64 256, %9
  %11 = zext i64 %10 to i768
  %12 = lshr i768 %5, %11
  %.partselect1 = trunc i768 %12 to i8
  store i8 %.partselect1, i8* %dst.addr718, align 1
  %for.loop.idx5.next = add nuw nsw i64 %for.loop.idx523, 1
  %exitcond25 = icmp ne i64 %for.loop.idx5.next, 32
  br i1 %exitcond25, label %for.loop4, label %copy.split.split

copy.split.split:                                 ; preds = %for.loop4
  br label %for.loop11

for.loop11:                                       ; preds = %for.loop11, %copy.split.split
  %for.loop.idx1222 = phi i64 [ 0, %copy.split.split ], [ %for.loop.idx12.next, %for.loop11 ]
  %dst.addr1416 = getelementptr %struct.aes256_context, %struct.aes256_context* %0, i32 0, i32 2, i64 %for.loop.idx1222
  %13 = mul nuw nsw i64 8, %for.loop.idx1222
  %14 = add nuw nsw i64 512, %13
  %15 = zext i64 %14 to i768
  %16 = lshr i768 %5, %15
  %.partselect = trunc i768 %16 to i8
  store i8 %.partselect, i8* %dst.addr1416, align 1
  %for.loop.idx12.next = add nuw nsw i64 %for.loop.idx1222, 1
  %exitcond = icmp ne i64 %for.loop.idx12.next, 32
  br i1 %exitcond, label %for.loop11, label %ret

ret:                                              ; preds = %for.loop11, %entry
  ret void
}

declare void @apatb_aes256_encrypt_ecb_hw(i768*, i8*, i8*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(%struct.aes256_context* noalias, i768* noalias readonly align 512, [32 x i8]* noalias, [32 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.aes256_context.4(%struct.aes256_context* %0, i768* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* %4, [16 x i8]* align 512 %5)
  ret void
}

define void @aes256_encrypt_ecb_hw_stub_wrapper(i768*, i8*, i8*) #4 {
entry:
  %3 = alloca %struct.aes256_context
  %4 = bitcast i8* %1 to [32 x i8]*
  %5 = bitcast i8* %2 to [16 x i8]*
  call void @copy_out(%struct.aes256_context* %3, i768* %0, [32 x i8]* null, [32 x i8]* %4, [16 x i8]* null, [16 x i8]* %5)
  %6 = bitcast [32 x i8]* %4 to i8*
  %7 = bitcast [16 x i8]* %5 to i8*
  call void @aes256_encrypt_ecb_hw_stub(%struct.aes256_context* %3, i8* %6, i8* %7)
  call void @copy_in(%struct.aes256_context* %3, i768* %0, [32 x i8]* null, [32 x i8]* %4, [16 x i8]* null, [16 x i8]* %5)
  ret void
}

declare void @aes256_encrypt_ecb_hw_stub(%struct.aes256_context*, i8*, i8*)

attributes #0 = { argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
