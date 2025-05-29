; ModuleID = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/machsuite/spmv_ellpack/hls_prj/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_spmv_ellpack_ir(double* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1048576" %nzval, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1048576" %cols, double* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %vec, double* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %out) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 8388608)
  %nzval_copy = bitcast i8* %malloccall to [1048576 x double]*
  %malloccall1 = tail call i8* @malloc(i64 4194304)
  %cols_copy = bitcast i8* %malloccall1 to [1048576 x i32]*
  %malloccall2 = tail call i8* @malloc(i64 8192)
  %vec_copy = bitcast i8* %malloccall2 to [1024 x double]*
  %malloccall3 = tail call i8* @malloc(i64 8192)
  %out_copy = bitcast i8* %malloccall3 to [1024 x double]*
  %0 = bitcast double* %nzval to [1048576 x double]*
  %1 = bitcast i32* %cols to [1048576 x i32]*
  %2 = bitcast double* %vec to [1024 x double]*
  %3 = bitcast double* %out to [1024 x double]*
  call fastcc void @copy_in([1048576 x double]* nonnull %0, [1048576 x double]* %nzval_copy, [1048576 x i32]* nonnull %1, [1048576 x i32]* %cols_copy, [1024 x double]* nonnull %2, [1024 x double]* %vec_copy, [1024 x double]* nonnull %3, [1024 x double]* %out_copy)
  %4 = getelementptr inbounds [1048576 x double], [1048576 x double]* %nzval_copy, i32 0, i32 0
  %5 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %cols_copy, i32 0, i32 0
  %6 = getelementptr inbounds [1024 x double], [1024 x double]* %vec_copy, i32 0, i32 0
  %7 = getelementptr inbounds [1024 x double], [1024 x double]* %out_copy, i32 0, i32 0
  call void @apatb_spmv_ellpack_hw(double* %4, i32* %5, double* %6, double* %7)
  call void @copy_back([1048576 x double]* %0, [1048576 x double]* %nzval_copy, [1048576 x i32]* %1, [1048576 x i32]* %cols_copy, [1024 x double]* %2, [1024 x double]* %vec_copy, [1024 x double]* %3, [1024 x double]* %out_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1048576 x double]* noalias readonly, [1048576 x double]* noalias, [1048576 x i32]* noalias readonly, [1048576 x i32]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1048576f64([1048576 x double]* %1, [1048576 x double]* %0)
  call fastcc void @onebyonecpy_hls.p0a1048576i32([1048576 x i32]* %3, [1048576 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %5, [1024 x double]* %4)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %7, [1024 x double]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1048576f64([1048576 x double]* noalias, [1048576 x double]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1048576 x double]* %0, null
  %3 = icmp eq [1048576 x double]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1048576 x double], [1048576 x double]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1048576 x double], [1048576 x double]* %1, i64 0, i64 %for.loop.idx1
  %5 = load double, double* %src.addr, align 8
  store double %5, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1048576
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1048576i32([1048576 x i32]* noalias, [1048576 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1048576 x i32]* %0, null
  %3 = icmp eq [1048576 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1048576 x i32], [1048576 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1048576 x i32], [1048576 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1048576
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* noalias, [1024 x double]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1024 x double]* %0, null
  %3 = icmp eq [1024 x double]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1024 x double], [1024 x double]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1024 x double], [1024 x double]* %1, i64 0, i64 %for.loop.idx1
  %5 = load double, double* %src.addr, align 8
  store double %5, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1048576 x double]* noalias, [1048576 x double]* noalias readonly, [1048576 x i32]* noalias, [1048576 x i32]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1048576f64([1048576 x double]* %0, [1048576 x double]* %1)
  call fastcc void @onebyonecpy_hls.p0a1048576i32([1048576 x i32]* %2, [1048576 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %4, [1024 x double]* %5)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %6, [1024 x double]* %7)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_spmv_ellpack_hw(double*, i32*, double*, double*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1048576 x double]* noalias, [1048576 x double]* noalias readonly, [1048576 x i32]* noalias, [1048576 x i32]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %6, [1024 x double]* %7)
  ret void
}

define void @spmv_ellpack_hw_stub_wrapper(double*, i32*, double*, double*) #4 {
entry:
  %4 = bitcast double* %0 to [1048576 x double]*
  %5 = bitcast i32* %1 to [1048576 x i32]*
  %6 = bitcast double* %2 to [1024 x double]*
  %7 = bitcast double* %3 to [1024 x double]*
  call void @copy_out([1048576 x double]* null, [1048576 x double]* %4, [1048576 x i32]* null, [1048576 x i32]* %5, [1024 x double]* null, [1024 x double]* %6, [1024 x double]* null, [1024 x double]* %7)
  %8 = bitcast [1048576 x double]* %4 to double*
  %9 = bitcast [1048576 x i32]* %5 to i32*
  %10 = bitcast [1024 x double]* %6 to double*
  %11 = bitcast [1024 x double]* %7 to double*
  call void @spmv_ellpack_hw_stub(double* %8, i32* %9, double* %10, double* %11)
  call void @copy_in([1048576 x double]* null, [1048576 x double]* %4, [1048576 x i32]* null, [1048576 x i32]* %5, [1024 x double]* null, [1024 x double]* %6, [1024 x double]* null, [1024 x double]* %7)
  ret void
}

declare void @spmv_ellpack_hw_stub(double*, i32*, double*, double*)

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
