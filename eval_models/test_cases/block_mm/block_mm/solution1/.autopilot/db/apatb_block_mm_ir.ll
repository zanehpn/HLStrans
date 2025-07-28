; ModuleID = '/home/zqy/LLM4CHIP/C2HLS/eval_models/test_cases/block_mm/block_mm/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<blockvec, 0>" = type { %struct.blockvec }
%struct.blockvec = type { [4 x i32] }
%struct.blockmat = type { [4 x [4 x i32]] }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_block_mm_ir(%"class.hls::stream<blockvec, 0>"* noalias nocapture nonnull dereferenceable(16) %Arows, %"class.hls::stream<blockvec, 0>"* noalias nocapture nonnull dereferenceable(16) %Bcols, %struct.blockmat* noalias nocapture nonnull dereferenceable(64) %ABpartial, i32 %it) local_unnamed_addr #1 {
entry:
  %Arows_copy = alloca i128, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i128* %Arows_copy, i32 0) ]
  %Bcols_copy = alloca i128, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i128* %Bcols_copy, i32 0) ]
  %ABpartial_copy = alloca i512, align 512
  call fastcc void @copy_in(%"class.hls::stream<blockvec, 0>"* nonnull %Arows, i128* nonnull align 512 %Arows_copy, %"class.hls::stream<blockvec, 0>"* nonnull %Bcols, i128* nonnull align 512 %Bcols_copy, %struct.blockmat* nonnull %ABpartial, i512* nonnull align 512 %ABpartial_copy)
  call void @apatb_block_mm_hw(i128* %Arows_copy, i128* %Bcols_copy, i512* %ABpartial_copy, i32 %it)
  call void @copy_back(%"class.hls::stream<blockvec, 0>"* %Arows, i128* %Arows_copy, %"class.hls::stream<blockvec, 0>"* %Bcols, i128* %Bcols_copy, %struct.blockmat* %ABpartial, i512* %ABpartial_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<blockvec, 0>"* noalias, i128* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<blockvec, 0>"* noalias, i128* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %struct.blockmat* noalias readonly, i512* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>"(i128* align 512 %1, %"class.hls::stream<blockvec, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>"(i128* align 512 %3, %"class.hls::stream<blockvec, 0>"* %2)
  call fastcc void @onebyonecpy_hls.p0struct.blockmat(i512* align 512 %5, %struct.blockmat* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.blockmat(i512* noalias align 512, %struct.blockmat* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq i512* %0, null
  %3 = icmp eq %struct.blockmat* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.promoted1 = load i512, i512* %0, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %.partset.lcssa2 = phi i512 [ %.promoted1, %copy ], [ %.partset, %for.loop.split ]
  %for.loop.idx13 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = mul nuw nsw i64 128, %for.loop.idx13
  br label %for.loop3

for.loop3:                                        ; preds = %for.loop3, %for.loop
  %6 = phi i512 [ %.partset.lcssa2, %for.loop ], [ %.partset, %for.loop3 ]
  %for.loop.idx412 = phi i64 [ 0, %for.loop ], [ %for.loop.idx4.next, %for.loop3 ]
  %7 = mul nuw nsw i64 32, %for.loop.idx412
  %8 = add nuw nsw i64 %5, %7
  %src.addr711 = getelementptr %struct.blockmat, %struct.blockmat* %1, i32 0, i32 0, i64 %for.loop.idx13, i64 %for.loop.idx412
  %9 = load i32, i32* %src.addr711, align 4
  %10 = zext i64 %8 to i512
  %11 = shl i512 4294967295, %10
  %12 = zext i32 %9 to i512
  %13 = shl i512 %12, %10
  %14 = xor i512 %11, -1
  %15 = and i512 %6, %14
  %.partset = or i512 %15, %13
  %for.loop.idx4.next = add nuw nsw i64 %for.loop.idx412, 1
  %exitcond = icmp ne i64 %for.loop.idx4.next, 4
  br i1 %exitcond, label %for.loop3, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop3
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx13, 1
  %exitcond14 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond14, label %for.loop, label %ret.loopexit

ret.loopexit:                                     ; preds = %for.loop.split
  store i512 %.partset, i512* %0, align 512
  br label %ret

ret:                                              ; preds = %ret.loopexit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<blockvec, 0>"* noalias, i128* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<blockvec, 0>"* noalias, i128* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %struct.blockmat* noalias, i512* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>.19"(%"class.hls::stream<blockvec, 0>"* %0, i128* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>.19"(%"class.hls::stream<blockvec, 0>"* %2, i128* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0struct.blockmat.4(%struct.blockmat* %4, i512* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.blockmat.4(%struct.blockmat* noalias, i512* noalias readonly align 512) unnamed_addr #3 {
entry:
  %2 = icmp eq %struct.blockmat* %0, null
  %3 = icmp eq i512* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i512, i512* %1, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx13 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %6 = mul nuw nsw i64 128, %for.loop.idx13
  br label %for.loop3

for.loop3:                                        ; preds = %for.loop3, %for.loop
  %for.loop.idx412 = phi i64 [ 0, %for.loop ], [ %for.loop.idx4.next, %for.loop3 ]
  %dst.addr610 = getelementptr %struct.blockmat, %struct.blockmat* %0, i32 0, i32 0, i64 %for.loop.idx13, i64 %for.loop.idx412
  %7 = mul nuw nsw i64 32, %for.loop.idx412
  %8 = add nuw nsw i64 %6, %7
  %9 = zext i64 %8 to i512
  %10 = lshr i512 %5, %9
  %.partselect = trunc i512 %10 to i32
  store i32 %.partselect, i32* %dst.addr610, align 4
  %for.loop.idx4.next = add nuw nsw i64 %for.loop.idx412, 1
  %exitcond = icmp ne i64 %for.loop.idx4.next, 4
  br i1 %exitcond, label %for.loop3, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop3
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx13, 1
  %exitcond14 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond14, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>"(i128* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<blockvec, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = icmp eq i128* %0, null
  %3 = icmp eq %"class.hls::stream<blockvec, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<blockvec, 0>.14"(i128* nonnull align 512 %0, %"class.hls::stream<blockvec, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<blockvec, 0>.14"(i128* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<blockvec, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  %2 = alloca %"class.hls::stream<blockvec, 0>"
  %3 = alloca i128
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<blockvec, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<blockvec, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<blockvec, 0>"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<blockvec, 0>", %"class.hls::stream<blockvec, 0>"* %2
  %9 = call i128 @"_llvm.fpga.pack.bits.i128.s_class.hls::stream<blockvec, 0>s"(%"class.hls::stream<blockvec, 0>" %8)
  store i128 %9, i128* %3
  %10 = bitcast i128* %3 to i8*
  %11 = bitcast i128* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i128 @"_llvm.fpga.pack.bits.i128.s_class.hls::stream<blockvec, 0>s"(%"class.hls::stream<blockvec, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<blockvec, 0>" %A, 0
  %A.0.0 = extractvalue %struct.blockvec %A.0, 0
  %A.0.0.0 = extractvalue [4 x i32] %A.0.0, 0
  %1 = zext i32 %A.0.0.0 to i128
  %A.0.0.1 = extractvalue [4 x i32] %A.0.0, 1
  %2 = zext i32 %A.0.0.1 to i128
  %3 = shl i128 %2, 32
  %4 = or i128 %3, %1
  %A.0.0.2 = extractvalue [4 x i32] %A.0.0, 2
  %5 = zext i32 %A.0.0.2 to i128
  %6 = shl i128 %5, 64
  %7 = or i128 %4, %6
  %A.0.0.3 = extractvalue [4 x i32] %A.0.0, 3
  %8 = zext i32 %A.0.0.3 to i128
  %9 = shl i128 %8, 96
  %10 = or i128 %7, %9
  ret i128 %10
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>.19"(%"class.hls::stream<blockvec, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i128* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = icmp eq %"class.hls::stream<blockvec, 0>"* %0, null
  %3 = icmp eq i128* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<blockvec, 0>.22"(%"class.hls::stream<blockvec, 0>"* nonnull %0, i128* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<blockvec, 0>.22"(%"class.hls::stream<blockvec, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i128* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  %2 = alloca i128
  %3 = alloca %"class.hls::stream<blockvec, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i128* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i128* %2 to i8*
  %7 = bitcast i128* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile i128, i128* %2
  %9 = call [4 x i32] @"_llvm.fpga.unpack.bits.s_class.hls::stream<blockvec, 0>s.i128"(i128 %8)
  %oldret1 = insertvalue %struct.blockvec undef, [4 x i32] %9, 0
  %oldret = insertvalue %"class.hls::stream<blockvec, 0>" undef, %struct.blockvec %oldret1, 0
  store %"class.hls::stream<blockvec, 0>" %oldret, %"class.hls::stream<blockvec, 0>"* %3
  %10 = bitcast %"class.hls::stream<blockvec, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<blockvec, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal [4 x i32] @"_llvm.fpga.unpack.bits.s_class.hls::stream<blockvec, 0>s.i128"(i128 %A) #7 {
  %1 = trunc i128 %A to i32
  %.0 = insertvalue [4 x i32] undef, i32 %1, 0
  %2 = lshr i128 %A, 32
  %3 = trunc i128 %2 to i32
  %.1 = insertvalue [4 x i32] %.0, i32 %3, 1
  %4 = lshr i128 %A, 64
  %5 = trunc i128 %4 to i32
  %.2 = insertvalue [4 x i32] %.1, i32 %5, 2
  %6 = lshr i128 %A, 96
  %7 = trunc i128 %6 to i32
  %.3 = insertvalue [4 x i32] %.2, i32 %7, 3
  ret [4 x i32] %.3
}

declare void @apatb_block_mm_hw(i128*, i128*, i512*, i32)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<blockvec, 0>"* noalias, i128* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<blockvec, 0>"* noalias, i128* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %struct.blockmat* noalias, i512* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>.19"(%"class.hls::stream<blockvec, 0>"* %0, i128* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>.19"(%"class.hls::stream<blockvec, 0>"* %2, i128* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0struct.blockmat.4(%struct.blockmat* %4, i512* align 512 %5)
  ret void
}

define void @block_mm_hw_stub_wrapper(i128*, i128*, i512*, i32) #8 {
entry:
  %4 = alloca %"class.hls::stream<blockvec, 0>"
  %5 = alloca %"class.hls::stream<blockvec, 0>"
  %6 = alloca %struct.blockmat
  call void @copy_out(%"class.hls::stream<blockvec, 0>"* %4, i128* %0, %"class.hls::stream<blockvec, 0>"* %5, i128* %1, %struct.blockmat* %6, i512* %2)
  call void @block_mm_hw_stub(%"class.hls::stream<blockvec, 0>"* %4, %"class.hls::stream<blockvec, 0>"* %5, %struct.blockmat* %6, i32 %3)
  call void @copy_in(%"class.hls::stream<blockvec, 0>"* %4, i128* %0, %"class.hls::stream<blockvec, 0>"* %5, i128* %1, %struct.blockmat* %6, i512* %2)
  ret void
}

declare void @block_mm_hw_stub(%"class.hls::stream<blockvec, 0>"*, %"class.hls::stream<blockvec, 0>"*, %struct.blockmat*, i32)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #7 = { alwaysinline nounwind readnone }
attributes #8 = { "fpga.wrapper.func"="stub" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="128" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
