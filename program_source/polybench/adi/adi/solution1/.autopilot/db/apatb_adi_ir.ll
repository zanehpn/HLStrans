; ModuleID = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/SYN_dataset/polybench/adi/adi/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_adi_ir(i32 %tsteps, i32 %n, [60 x double]* noalias nocapture nonnull "fpga.decayed.dim.hint"="60" %u, [60 x double]* noalias nocapture nonnull "fpga.decayed.dim.hint"="60" %v, [60 x double]* noalias nocapture nonnull "fpga.decayed.dim.hint"="60" %p, [60 x double]* noalias nocapture nonnull "fpga.decayed.dim.hint"="60" %q) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 28800)
  %u_copy = bitcast i8* %malloccall to [60 x [60 x double]]*
  %malloccall1 = tail call i8* @malloc(i64 28800)
  %v_copy = bitcast i8* %malloccall1 to [60 x [60 x double]]*
  %malloccall2 = tail call i8* @malloc(i64 28800)
  %p_copy = bitcast i8* %malloccall2 to [60 x [60 x double]]*
  %malloccall3 = tail call i8* @malloc(i64 28800)
  %q_copy = bitcast i8* %malloccall3 to [60 x [60 x double]]*
  %0 = bitcast [60 x double]* %u to [60 x [60 x double]]*
  %1 = bitcast [60 x double]* %v to [60 x [60 x double]]*
  %2 = bitcast [60 x double]* %p to [60 x [60 x double]]*
  %3 = bitcast [60 x double]* %q to [60 x [60 x double]]*
  call fastcc void @copy_in([60 x [60 x double]]* nonnull %0, [60 x [60 x double]]* %u_copy, [60 x [60 x double]]* nonnull %1, [60 x [60 x double]]* %v_copy, [60 x [60 x double]]* nonnull %2, [60 x [60 x double]]* %p_copy, [60 x [60 x double]]* nonnull %3, [60 x [60 x double]]* %q_copy)
  %4 = getelementptr inbounds [60 x [60 x double]], [60 x [60 x double]]* %u_copy, i32 0, i32 0
  %5 = getelementptr inbounds [60 x [60 x double]], [60 x [60 x double]]* %v_copy, i32 0, i32 0
  %6 = getelementptr inbounds [60 x [60 x double]], [60 x [60 x double]]* %p_copy, i32 0, i32 0
  %7 = getelementptr inbounds [60 x [60 x double]], [60 x [60 x double]]* %q_copy, i32 0, i32 0
  call void @apatb_adi_hw(i32 %tsteps, i32 %n, [60 x double]* %4, [60 x double]* %5, [60 x double]* %6, [60 x double]* %7)
  call void @copy_back([60 x [60 x double]]* %0, [60 x [60 x double]]* %u_copy, [60 x [60 x double]]* %1, [60 x [60 x double]]* %v_copy, [60 x [60 x double]]* %2, [60 x [60 x double]]* %p_copy, [60 x [60 x double]]* %3, [60 x [60 x double]]* %q_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([60 x [60 x double]]* noalias readonly, [60 x [60 x double]]* noalias, [60 x [60 x double]]* noalias readonly, [60 x [60 x double]]* noalias, [60 x [60 x double]]* noalias readonly, [60 x [60 x double]]* noalias, [60 x [60 x double]]* noalias readonly, [60 x [60 x double]]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a60a60f64([60 x [60 x double]]* %1, [60 x [60 x double]]* %0)
  call fastcc void @onebyonecpy_hls.p0a60a60f64([60 x [60 x double]]* %3, [60 x [60 x double]]* %2)
  call fastcc void @onebyonecpy_hls.p0a60a60f64([60 x [60 x double]]* %5, [60 x [60 x double]]* %4)
  call fastcc void @onebyonecpy_hls.p0a60a60f64([60 x [60 x double]]* %7, [60 x [60 x double]]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a60a60f64([60 x [60 x double]]* noalias, [60 x [60 x double]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [60 x [60 x double]]* %0, null
  %3 = icmp eq [60 x [60 x double]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [60 x [60 x double]], [60 x [60 x double]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [60 x [60 x double]], [60 x [60 x double]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load double, double* %src.addr68, align 8
  store double %5, double* %dst.addr57, align 8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 60
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 60
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([60 x [60 x double]]* noalias, [60 x [60 x double]]* noalias readonly, [60 x [60 x double]]* noalias, [60 x [60 x double]]* noalias readonly, [60 x [60 x double]]* noalias, [60 x [60 x double]]* noalias readonly, [60 x [60 x double]]* noalias, [60 x [60 x double]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a60a60f64([60 x [60 x double]]* %0, [60 x [60 x double]]* %1)
  call fastcc void @onebyonecpy_hls.p0a60a60f64([60 x [60 x double]]* %2, [60 x [60 x double]]* %3)
  call fastcc void @onebyonecpy_hls.p0a60a60f64([60 x [60 x double]]* %4, [60 x [60 x double]]* %5)
  call fastcc void @onebyonecpy_hls.p0a60a60f64([60 x [60 x double]]* %6, [60 x [60 x double]]* %7)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_adi_hw(i32, i32, [60 x double]*, [60 x double]*, [60 x double]*, [60 x double]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([60 x [60 x double]]* noalias, [60 x [60 x double]]* noalias readonly, [60 x [60 x double]]* noalias, [60 x [60 x double]]* noalias readonly, [60 x [60 x double]]* noalias, [60 x [60 x double]]* noalias readonly, [60 x [60 x double]]* noalias, [60 x [60 x double]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a60a60f64([60 x [60 x double]]* %0, [60 x [60 x double]]* %1)
  call fastcc void @onebyonecpy_hls.p0a60a60f64([60 x [60 x double]]* %2, [60 x [60 x double]]* %3)
  call fastcc void @onebyonecpy_hls.p0a60a60f64([60 x [60 x double]]* %4, [60 x [60 x double]]* %5)
  call fastcc void @onebyonecpy_hls.p0a60a60f64([60 x [60 x double]]* %6, [60 x [60 x double]]* %7)
  ret void
}

define void @adi_hw_stub_wrapper(i32, i32, [60 x double]*, [60 x double]*, [60 x double]*, [60 x double]*) #4 {
entry:
  %6 = bitcast [60 x double]* %2 to [60 x [60 x double]]*
  %7 = bitcast [60 x double]* %3 to [60 x [60 x double]]*
  %8 = bitcast [60 x double]* %4 to [60 x [60 x double]]*
  %9 = bitcast [60 x double]* %5 to [60 x [60 x double]]*
  call void @copy_out([60 x [60 x double]]* null, [60 x [60 x double]]* %6, [60 x [60 x double]]* null, [60 x [60 x double]]* %7, [60 x [60 x double]]* null, [60 x [60 x double]]* %8, [60 x [60 x double]]* null, [60 x [60 x double]]* %9)
  %10 = bitcast [60 x [60 x double]]* %6 to [60 x double]*
  %11 = bitcast [60 x [60 x double]]* %7 to [60 x double]*
  %12 = bitcast [60 x [60 x double]]* %8 to [60 x double]*
  %13 = bitcast [60 x [60 x double]]* %9 to [60 x double]*
  call void @adi_hw_stub(i32 %0, i32 %1, [60 x double]* %10, [60 x double]* %11, [60 x double]* %12, [60 x double]* %13)
  call void @copy_in([60 x [60 x double]]* null, [60 x [60 x double]]* %6, [60 x [60 x double]]* null, [60 x [60 x double]]* %7, [60 x [60 x double]]* null, [60 x [60 x double]]* %8, [60 x [60 x double]]* null, [60 x [60 x double]]* %9)
  ret void
}

declare void @adi_hw_stub(i32, i32, [60 x double]*, [60 x double]*, [60 x double]*, [60 x double]*)

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
