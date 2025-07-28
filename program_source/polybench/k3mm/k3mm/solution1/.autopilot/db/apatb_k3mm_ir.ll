; ModuleID = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/syn_dataset/polybench/k3mm/k3mm/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_k3mm_ir([64 x float]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %A, [64 x float]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %B, [64 x float]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %C, [64 x float]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %D, [64 x float]* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" %E_out) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 16384)
  %A_copy = bitcast i8* %malloccall to [64 x [64 x float]]*
  %malloccall1 = tail call i8* @malloc(i64 16384)
  %B_copy = bitcast i8* %malloccall1 to [64 x [64 x float]]*
  %malloccall2 = tail call i8* @malloc(i64 16384)
  %C_copy = bitcast i8* %malloccall2 to [64 x [64 x float]]*
  %malloccall3 = tail call i8* @malloc(i64 16384)
  %D_copy = bitcast i8* %malloccall3 to [64 x [64 x float]]*
  %malloccall4 = tail call i8* @malloc(i64 16384)
  %E_out_copy = bitcast i8* %malloccall4 to [64 x [64 x float]]*
  %0 = bitcast [64 x float]* %A to [64 x [64 x float]]*
  %1 = bitcast [64 x float]* %B to [64 x [64 x float]]*
  %2 = bitcast [64 x float]* %C to [64 x [64 x float]]*
  %3 = bitcast [64 x float]* %D to [64 x [64 x float]]*
  %4 = bitcast [64 x float]* %E_out to [64 x [64 x float]]*
  call fastcc void @copy_in([64 x [64 x float]]* nonnull %0, [64 x [64 x float]]* %A_copy, [64 x [64 x float]]* nonnull %1, [64 x [64 x float]]* %B_copy, [64 x [64 x float]]* nonnull %2, [64 x [64 x float]]* %C_copy, [64 x [64 x float]]* nonnull %3, [64 x [64 x float]]* %D_copy, [64 x [64 x float]]* nonnull %4, [64 x [64 x float]]* %E_out_copy)
  %5 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %A_copy, i32 0, i32 0
  %6 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %B_copy, i32 0, i32 0
  %7 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %C_copy, i32 0, i32 0
  %8 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %D_copy, i32 0, i32 0
  %9 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %E_out_copy, i32 0, i32 0
  call void @apatb_k3mm_hw([64 x float]* %5, [64 x float]* %6, [64 x float]* %7, [64 x float]* %8, [64 x float]* %9)
  call void @copy_back([64 x [64 x float]]* %0, [64 x [64 x float]]* %A_copy, [64 x [64 x float]]* %1, [64 x [64 x float]]* %B_copy, [64 x [64 x float]]* %2, [64 x [64 x float]]* %C_copy, [64 x [64 x float]]* %3, [64 x [64 x float]]* %D_copy, [64 x [64 x float]]* %4, [64 x [64 x float]]* %E_out_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  tail call void @free(i8* %malloccall4)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([64 x [64 x float]]* noalias readonly, [64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly, [64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly, [64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly, [64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly, [64 x [64 x float]]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64a64f32([64 x [64 x float]]* %1, [64 x [64 x float]]* %0)
  call fastcc void @onebyonecpy_hls.p0a64a64f32([64 x [64 x float]]* %3, [64 x [64 x float]]* %2)
  call fastcc void @onebyonecpy_hls.p0a64a64f32([64 x [64 x float]]* %5, [64 x [64 x float]]* %4)
  call fastcc void @onebyonecpy_hls.p0a64a64f32([64 x [64 x float]]* %7, [64 x [64 x float]]* %6)
  call fastcc void @onebyonecpy_hls.p0a64a64f32([64 x [64 x float]]* %9, [64 x [64 x float]]* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a64a64f32([64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [64 x [64 x float]]* %0, null
  %3 = icmp eq [64 x [64 x float]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [64 x [64 x float]], [64 x [64 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [64 x [64 x float]], [64 x [64 x float]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load float, float* %src.addr68, align 4
  store float %5, float* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 64
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly, [64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly, [64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly, [64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly, [64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64a64f32([64 x [64 x float]]* %0, [64 x [64 x float]]* %1)
  call fastcc void @onebyonecpy_hls.p0a64a64f32([64 x [64 x float]]* %2, [64 x [64 x float]]* %3)
  call fastcc void @onebyonecpy_hls.p0a64a64f32([64 x [64 x float]]* %4, [64 x [64 x float]]* %5)
  call fastcc void @onebyonecpy_hls.p0a64a64f32([64 x [64 x float]]* %6, [64 x [64 x float]]* %7)
  call fastcc void @onebyonecpy_hls.p0a64a64f32([64 x [64 x float]]* %8, [64 x [64 x float]]* %9)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_k3mm_hw([64 x float]*, [64 x float]*, [64 x float]*, [64 x float]*, [64 x float]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly, [64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly, [64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly, [64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly, [64 x [64 x float]]* noalias, [64 x [64 x float]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64a64f32([64 x [64 x float]]* %8, [64 x [64 x float]]* %9)
  ret void
}

define void @k3mm_hw_stub_wrapper([64 x float]*, [64 x float]*, [64 x float]*, [64 x float]*, [64 x float]*) #4 {
entry:
  %5 = bitcast [64 x float]* %0 to [64 x [64 x float]]*
  %6 = bitcast [64 x float]* %1 to [64 x [64 x float]]*
  %7 = bitcast [64 x float]* %2 to [64 x [64 x float]]*
  %8 = bitcast [64 x float]* %3 to [64 x [64 x float]]*
  %9 = bitcast [64 x float]* %4 to [64 x [64 x float]]*
  call void @copy_out([64 x [64 x float]]* null, [64 x [64 x float]]* %5, [64 x [64 x float]]* null, [64 x [64 x float]]* %6, [64 x [64 x float]]* null, [64 x [64 x float]]* %7, [64 x [64 x float]]* null, [64 x [64 x float]]* %8, [64 x [64 x float]]* null, [64 x [64 x float]]* %9)
  %10 = bitcast [64 x [64 x float]]* %5 to [64 x float]*
  %11 = bitcast [64 x [64 x float]]* %6 to [64 x float]*
  %12 = bitcast [64 x [64 x float]]* %7 to [64 x float]*
  %13 = bitcast [64 x [64 x float]]* %8 to [64 x float]*
  %14 = bitcast [64 x [64 x float]]* %9 to [64 x float]*
  call void @k3mm_hw_stub([64 x float]* %10, [64 x float]* %11, [64 x float]* %12, [64 x float]* %13, [64 x float]* %14)
  call void @copy_in([64 x [64 x float]]* null, [64 x [64 x float]]* %5, [64 x [64 x float]]* null, [64 x [64 x float]]* %6, [64 x [64 x float]]* null, [64 x [64 x float]]* %7, [64 x [64 x float]]* null, [64 x [64 x float]]* %8, [64 x [64 x float]]* null, [64 x [64 x float]]* %9)
  ret void
}

declare void @k3mm_hw_stub([64 x float]*, [64 x float]*, [64 x float]*, [64 x float]*, [64 x float]*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
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
