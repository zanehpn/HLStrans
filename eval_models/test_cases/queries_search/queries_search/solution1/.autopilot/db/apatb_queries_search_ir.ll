; ModuleID = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/test_cases_3B/queries_search/queries_search/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<32, 16, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<32, 16, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_queries_search_ir(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %targets, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %queries, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="1000" %indices) local_unnamed_addr #0 {
entry:
  %targets_copy = alloca i32, align 512
  %queries_copy = alloca i32, align 512
  %indices_copy = alloca [1000 x i32], align 512
  %0 = bitcast i32* %indices to [1000 x i32]*
  call fastcc void @copy_in(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* nonnull %targets, i32* nonnull align 512 %targets_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* nonnull %queries, i32* nonnull align 512 %queries_copy, [1000 x i32]* nonnull %0, [1000 x i32]* nonnull align 512 %indices_copy)
  %1 = getelementptr inbounds [1000 x i32], [1000 x i32]* %indices_copy, i32 0, i32 0
  call void @apatb_queries_search_hw(i32* %targets_copy, i32* %queries_copy, i32* %1)
  call void @copy_back(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %targets, i32* %targets_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %queries, i32* %queries_copy, [1000 x i32]* %0, [1000 x i32]* %indices_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0.0.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="2", i32* noalias nocapture align 512 "unpacked"="3.0.0.0", [1000 x i32]* noalias readonly "unpacked"="4", [1000 x i32]* noalias align 512 "unpacked"="5") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.15.19"(i32* align 512 %1, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.15.19"(i32* align 512 %3, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %2)
  call fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* align 512 %5, [1000 x i32]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* noalias align 512, [1000 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1000 x i32]* %0, null
  %3 = icmp eq [1000 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1000 x i32], [1000 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1000 x i32], [1000 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1000
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i32* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", [1000 x i32]* noalias "unpacked"="4", [1000 x i32]* noalias readonly align 512 "unpacked"="5") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %2, i32* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* %4, [1000 x i32]* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i32* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %0, i32 0, i32 0, i32 0, i32 0
  %3 = load i32, i32* %1, align 512
  store i32 %3, i32* %.01.0.05, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.15.19"(i32* noalias nocapture align 512 "unpacked"="0.0.0.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %1, i32 0, i32 0, i32 0, i32 0
  %3 = load i32, i32* %.0.0.04, align 4
  store i32 %3, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_queries_search_hw(i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i32* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", [1000 x i32]* noalias "unpacked"="4", [1000 x i32]* noalias readonly align 512 "unpacked"="5") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* %4, [1000 x i32]* align 512 %5)
  ret void
}

define void @queries_search_hw_stub_wrapper(i32*, i32*, i32*) #4 {
entry:
  %3 = alloca %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"
  %4 = alloca %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"
  %5 = bitcast i32* %2 to [1000 x i32]*
  call void @copy_out(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %3, i32* %0, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %4, i32* %1, [1000 x i32]* null, [1000 x i32]* %5)
  %6 = bitcast [1000 x i32]* %5 to i32*
  call void @queries_search_hw_stub(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %3, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %4, i32* %6)
  call void @copy_in(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %3, i32* %0, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %4, i32* %1, [1000 x i32]* null, [1000 x i32]* %5)
  ret void
}

declare void @queries_search_hw_stub(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"*, i32*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
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
