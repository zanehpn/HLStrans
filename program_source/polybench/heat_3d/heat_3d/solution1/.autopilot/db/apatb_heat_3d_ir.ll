; ModuleID = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/SYN_dataset/polybench/heat_3d/heat_3d/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_heat_3d_ir(i32 %tsteps, i32 %n, [20 x [20 x double]]* noalias nocapture nonnull "fpga.decayed.dim.hint"="20" %A, [20 x [20 x double]]* noalias nocapture nonnull "fpga.decayed.dim.hint"="20" %B) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 64000)
  %A_copy = bitcast i8* %malloccall to [20 x [20 x [20 x double]]]*
  %malloccall1 = tail call i8* @malloc(i64 64000)
  %B_copy = bitcast i8* %malloccall1 to [20 x [20 x [20 x double]]]*
  %0 = bitcast [20 x [20 x double]]* %A to [20 x [20 x [20 x double]]]*
  %1 = bitcast [20 x [20 x double]]* %B to [20 x [20 x [20 x double]]]*
  call fastcc void @copy_in([20 x [20 x [20 x double]]]* nonnull %0, [20 x [20 x [20 x double]]]* %A_copy, [20 x [20 x [20 x double]]]* nonnull %1, [20 x [20 x [20 x double]]]* %B_copy)
  %2 = getelementptr inbounds [20 x [20 x [20 x double]]], [20 x [20 x [20 x double]]]* %A_copy, i32 0, i32 0
  %3 = getelementptr inbounds [20 x [20 x [20 x double]]], [20 x [20 x [20 x double]]]* %B_copy, i32 0, i32 0
  call void @apatb_heat_3d_hw(i32 %tsteps, i32 %n, [20 x [20 x double]]* %2, [20 x [20 x double]]* %3)
  call void @copy_back([20 x [20 x [20 x double]]]* %0, [20 x [20 x [20 x double]]]* %A_copy, [20 x [20 x [20 x double]]]* %1, [20 x [20 x [20 x double]]]* %B_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([20 x [20 x [20 x double]]]* noalias readonly, [20 x [20 x [20 x double]]]* noalias, [20 x [20 x [20 x double]]]* noalias readonly, [20 x [20 x [20 x double]]]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a20a20a20f64([20 x [20 x [20 x double]]]* %1, [20 x [20 x [20 x double]]]* %0)
  call fastcc void @onebyonecpy_hls.p0a20a20a20f64([20 x [20 x [20 x double]]]* %3, [20 x [20 x [20 x double]]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a20a20a20f64([20 x [20 x [20 x double]]]* noalias, [20 x [20 x [20 x double]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [20 x [20 x [20 x double]]]* %0, null
  %3 = icmp eq [20 x [20 x [20 x double]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx19 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx318 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx917 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %dst.addr1115 = getelementptr [20 x [20 x [20 x double]]], [20 x [20 x [20 x double]]]* %0, i64 0, i64 %for.loop.idx19, i64 %for.loop.idx318, i64 %for.loop.idx917
  %src.addr1216 = getelementptr [20 x [20 x [20 x double]]], [20 x [20 x [20 x double]]]* %1, i64 0, i64 %for.loop.idx19, i64 %for.loop.idx318, i64 %for.loop.idx917
  %5 = load double, double* %src.addr1216, align 8
  store double %5, double* %dst.addr1115, align 8
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx917, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 20
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx318, 1
  %exitcond20 = icmp ne i64 %for.loop.idx3.next, 20
  br i1 %exitcond20, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx19, 1
  %exitcond21 = icmp ne i64 %for.loop.idx.next, 20
  br i1 %exitcond21, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([20 x [20 x [20 x double]]]* noalias, [20 x [20 x [20 x double]]]* noalias readonly, [20 x [20 x [20 x double]]]* noalias, [20 x [20 x [20 x double]]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a20a20a20f64([20 x [20 x [20 x double]]]* %0, [20 x [20 x [20 x double]]]* %1)
  call fastcc void @onebyonecpy_hls.p0a20a20a20f64([20 x [20 x [20 x double]]]* %2, [20 x [20 x [20 x double]]]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_heat_3d_hw(i32, i32, [20 x [20 x double]]*, [20 x [20 x double]]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([20 x [20 x [20 x double]]]* noalias, [20 x [20 x [20 x double]]]* noalias readonly, [20 x [20 x [20 x double]]]* noalias, [20 x [20 x [20 x double]]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a20a20a20f64([20 x [20 x [20 x double]]]* %0, [20 x [20 x [20 x double]]]* %1)
  call fastcc void @onebyonecpy_hls.p0a20a20a20f64([20 x [20 x [20 x double]]]* %2, [20 x [20 x [20 x double]]]* %3)
  ret void
}

define void @heat_3d_hw_stub_wrapper(i32, i32, [20 x [20 x double]]*, [20 x [20 x double]]*) #4 {
entry:
  %4 = bitcast [20 x [20 x double]]* %2 to [20 x [20 x [20 x double]]]*
  %5 = bitcast [20 x [20 x double]]* %3 to [20 x [20 x [20 x double]]]*
  call void @copy_out([20 x [20 x [20 x double]]]* null, [20 x [20 x [20 x double]]]* %4, [20 x [20 x [20 x double]]]* null, [20 x [20 x [20 x double]]]* %5)
  %6 = bitcast [20 x [20 x [20 x double]]]* %4 to [20 x [20 x double]]*
  %7 = bitcast [20 x [20 x [20 x double]]]* %5 to [20 x [20 x double]]*
  call void @heat_3d_hw_stub(i32 %0, i32 %1, [20 x [20 x double]]* %6, [20 x [20 x double]]* %7)
  call void @copy_in([20 x [20 x [20 x double]]]* null, [20 x [20 x [20 x double]]]* %4, [20 x [20 x [20 x double]]]* null, [20 x [20 x [20 x double]]]* %5)
  ret void
}

declare void @heat_3d_hw_stub(i32, i32, [20 x [20 x double]]*, [20 x [20 x double]]*)

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
