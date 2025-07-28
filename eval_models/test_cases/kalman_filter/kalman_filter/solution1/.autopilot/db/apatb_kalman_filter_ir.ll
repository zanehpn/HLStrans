; ModuleID = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/test_cases_3B/kalman_filter/kalman_filter/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<256>" = type { %"struct.ap_int_base<256, false>" }
%"struct.ap_int_base<256, false>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }

; Function Attrs: noinline
define void @apatb_kalman_filter_ir(%"struct.ap_uint<256>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="32768" %in, %"struct.ap_uint<256>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="32768" %out) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 1048576)
  %in_copy = bitcast i8* %malloccall to [32768 x i256]*
  %malloccall1 = call i8* @malloc(i64 1048576)
  %out_copy = bitcast i8* %malloccall1 to [32768 x i256]*
  %0 = bitcast %"struct.ap_uint<256>"* %in to [32768 x %"struct.ap_uint<256>"]*
  %1 = bitcast %"struct.ap_uint<256>"* %out to [32768 x %"struct.ap_uint<256>"]*
  call fastcc void @copy_in([32768 x %"struct.ap_uint<256>"]* nonnull %0, [32768 x i256]* %in_copy, [32768 x %"struct.ap_uint<256>"]* nonnull %1, [32768 x i256]* %out_copy)
  %2 = getelementptr [32768 x i256], [32768 x i256]* %in_copy, i32 0, i32 0
  %3 = getelementptr [32768 x i256], [32768 x i256]* %out_copy, i32 0, i32 0
  call void @apatb_kalman_filter_hw(i256* %2, i256* %3)
  call void @copy_back([32768 x %"struct.ap_uint<256>"]* %0, [32768 x i256]* %in_copy, [32768 x %"struct.ap_uint<256>"]* %1, [32768 x i256]* %out_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([32768 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="0", [32768 x i256]* noalias nocapture "unpacked"="1.0.0.0", [32768 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="2", [32768 x i256]* noalias nocapture "unpacked"="3.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a32768struct.ap_uint<256>.19.23"([32768 x i256]* %1, [32768 x %"struct.ap_uint<256>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a32768struct.ap_uint<256>.19.23"([32768 x i256]* %3, [32768 x %"struct.ap_uint<256>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([32768 x %"struct.ap_uint<256>"]* noalias "unpacked"="0", [32768 x i256]* noalias nocapture readonly "unpacked"="1.0.0.0", [32768 x %"struct.ap_uint<256>"]* noalias "unpacked"="2", [32768 x i256]* noalias nocapture readonly "unpacked"="3.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a32768struct.ap_uint<256>"([32768 x %"struct.ap_uint<256>"]* %0, [32768 x i256]* %1)
  call fastcc void @"onebyonecpy_hls.p0a32768struct.ap_uint<256>"([32768 x %"struct.ap_uint<256>"]* %2, [32768 x i256]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a32768struct.ap_uint<256>"([32768 x %"struct.ap_uint<256>"]* noalias "unpacked"="0", [32768 x i256]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [32768 x %"struct.ap_uint<256>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [32768 x i256], [32768 x i256]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [32768 x %"struct.ap_uint<256>"], [32768 x %"struct.ap_uint<256>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %3, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32768
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a32768struct.ap_uint<256>.19.23"([32768 x i256]* noalias nocapture "unpacked"="0.0.0.0", [32768 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [32768 x %"struct.ap_uint<256>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [32768 x %"struct.ap_uint<256>"], [32768 x %"struct.ap_uint<256>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [32768 x i256], [32768 x i256]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %3, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32768
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_kalman_filter_hw(i256*, i256*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([32768 x %"struct.ap_uint<256>"]* noalias "unpacked"="0", [32768 x i256]* noalias nocapture readonly "unpacked"="1.0.0.0", [32768 x %"struct.ap_uint<256>"]* noalias "unpacked"="2", [32768 x i256]* noalias nocapture readonly "unpacked"="3.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a32768struct.ap_uint<256>"([32768 x %"struct.ap_uint<256>"]* %2, [32768 x i256]* %3)
  ret void
}

define void @kalman_filter_hw_stub_wrapper(i256*, i256*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 1048576)
  %2 = bitcast i8* %malloccall to [32768 x %"struct.ap_uint<256>"]*
  %malloccall1 = tail call i8* @malloc(i64 1048576)
  %3 = bitcast i8* %malloccall1 to [32768 x %"struct.ap_uint<256>"]*
  %4 = bitcast i256* %0 to [32768 x i256]*
  %5 = bitcast i256* %1 to [32768 x i256]*
  call void @copy_out([32768 x %"struct.ap_uint<256>"]* %2, [32768 x i256]* %4, [32768 x %"struct.ap_uint<256>"]* %3, [32768 x i256]* %5)
  %6 = bitcast [32768 x %"struct.ap_uint<256>"]* %2 to %"struct.ap_uint<256>"*
  %7 = bitcast [32768 x %"struct.ap_uint<256>"]* %3 to %"struct.ap_uint<256>"*
  call void @kalman_filter_hw_stub(%"struct.ap_uint<256>"* %6, %"struct.ap_uint<256>"* %7)
  call void @copy_in([32768 x %"struct.ap_uint<256>"]* %2, [32768 x i256]* %4, [32768 x %"struct.ap_uint<256>"]* %3, [32768 x i256]* %5)
  ret void
}

declare void @kalman_filter_hw_stub(%"struct.ap_uint<256>"*, %"struct.ap_uint<256>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
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
