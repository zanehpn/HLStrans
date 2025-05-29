; ModuleID = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/SYN_dataset/polybench/jacobi_1d/jacobi_1d/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly noinline
define void @apatb_jacobi_1d_ir(i32 %tsteps, i32 %n, double* noalias nocapture nonnull "fpga.decayed.dim.hint"="120" %A, double* noalias nocapture nonnull "fpga.decayed.dim.hint"="120" %B) local_unnamed_addr #0 {
entry:
  %A_copy = alloca [120 x double], align 512
  %B_copy = alloca [120 x double], align 512
  %0 = bitcast double* %A to [120 x double]*
  %1 = bitcast double* %B to [120 x double]*
  call fastcc void @copy_in([120 x double]* nonnull %0, [120 x double]* nonnull align 512 %A_copy, [120 x double]* nonnull %1, [120 x double]* nonnull align 512 %B_copy)
  %2 = getelementptr inbounds [120 x double], [120 x double]* %A_copy, i32 0, i32 0
  %3 = getelementptr inbounds [120 x double], [120 x double]* %B_copy, i32 0, i32 0
  call void @apatb_jacobi_1d_hw(i32 %tsteps, i32 %n, double* %2, double* %3)
  call void @copy_back([120 x double]* %0, [120 x double]* %A_copy, [120 x double]* %1, [120 x double]* %B_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([120 x double]* noalias readonly, [120 x double]* noalias align 512, [120 x double]* noalias readonly, [120 x double]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a120f64([120 x double]* align 512 %1, [120 x double]* %0)
  call fastcc void @onebyonecpy_hls.p0a120f64([120 x double]* align 512 %3, [120 x double]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a120f64([120 x double]* noalias align 512, [120 x double]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [120 x double]* %0, null
  %3 = icmp eq [120 x double]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [120 x double], [120 x double]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [120 x double], [120 x double]* %1, i64 0, i64 %for.loop.idx1
  %5 = load double, double* %src.addr, align 8
  store double %5, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 120
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([120 x double]* noalias, [120 x double]* noalias readonly align 512, [120 x double]* noalias, [120 x double]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a120f64([120 x double]* %0, [120 x double]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a120f64([120 x double]* %2, [120 x double]* align 512 %3)
  ret void
}

declare void @apatb_jacobi_1d_hw(i32, i32, double*, double*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([120 x double]* noalias, [120 x double]* noalias readonly align 512, [120 x double]* noalias, [120 x double]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a120f64([120 x double]* %0, [120 x double]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a120f64([120 x double]* %2, [120 x double]* align 512 %3)
  ret void
}

define void @jacobi_1d_hw_stub_wrapper(i32, i32, double*, double*) #4 {
entry:
  %4 = bitcast double* %2 to [120 x double]*
  %5 = bitcast double* %3 to [120 x double]*
  call void @copy_out([120 x double]* null, [120 x double]* %4, [120 x double]* null, [120 x double]* %5)
  %6 = bitcast [120 x double]* %4 to double*
  %7 = bitcast [120 x double]* %5 to double*
  call void @jacobi_1d_hw_stub(i32 %0, i32 %1, double* %6, double* %7)
  call void @copy_in([120 x double]* null, [120 x double]* %4, [120 x double]* null, [120 x double]* %5)
  ret void
}

declare void @jacobi_1d_hw_stub(i32, i32, double*, double*)

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
