; ModuleID = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/machsuite/md_knn/hls_prj/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_md_knn_ir(double* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %force_x, double* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %force_y, double* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %force_z, double* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %position_x, double* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %position_y, double* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %position_z, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="262144" %NL) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 8192)
  %force_x_copy = bitcast i8* %malloccall to [1024 x double]*
  %malloccall1 = tail call i8* @malloc(i64 8192)
  %force_y_copy = bitcast i8* %malloccall1 to [1024 x double]*
  %malloccall2 = tail call i8* @malloc(i64 8192)
  %force_z_copy = bitcast i8* %malloccall2 to [1024 x double]*
  %malloccall3 = tail call i8* @malloc(i64 8192)
  %position_x_copy = bitcast i8* %malloccall3 to [1024 x double]*
  %malloccall4 = tail call i8* @malloc(i64 8192)
  %position_y_copy = bitcast i8* %malloccall4 to [1024 x double]*
  %malloccall5 = tail call i8* @malloc(i64 8192)
  %position_z_copy = bitcast i8* %malloccall5 to [1024 x double]*
  %malloccall6 = tail call i8* @malloc(i64 1048576)
  %NL_copy = bitcast i8* %malloccall6 to [262144 x i32]*
  %0 = bitcast double* %force_x to [1024 x double]*
  %1 = bitcast double* %force_y to [1024 x double]*
  %2 = bitcast double* %force_z to [1024 x double]*
  %3 = bitcast double* %position_x to [1024 x double]*
  %4 = bitcast double* %position_y to [1024 x double]*
  %5 = bitcast double* %position_z to [1024 x double]*
  %6 = bitcast i32* %NL to [262144 x i32]*
  call fastcc void @copy_in([1024 x double]* nonnull %0, [1024 x double]* %force_x_copy, [1024 x double]* nonnull %1, [1024 x double]* %force_y_copy, [1024 x double]* nonnull %2, [1024 x double]* %force_z_copy, [1024 x double]* nonnull %3, [1024 x double]* %position_x_copy, [1024 x double]* nonnull %4, [1024 x double]* %position_y_copy, [1024 x double]* nonnull %5, [1024 x double]* %position_z_copy, [262144 x i32]* nonnull %6, [262144 x i32]* %NL_copy)
  %7 = getelementptr inbounds [1024 x double], [1024 x double]* %force_x_copy, i32 0, i32 0
  %8 = getelementptr inbounds [1024 x double], [1024 x double]* %force_y_copy, i32 0, i32 0
  %9 = getelementptr inbounds [1024 x double], [1024 x double]* %force_z_copy, i32 0, i32 0
  %10 = getelementptr inbounds [1024 x double], [1024 x double]* %position_x_copy, i32 0, i32 0
  %11 = getelementptr inbounds [1024 x double], [1024 x double]* %position_y_copy, i32 0, i32 0
  %12 = getelementptr inbounds [1024 x double], [1024 x double]* %position_z_copy, i32 0, i32 0
  %13 = getelementptr inbounds [262144 x i32], [262144 x i32]* %NL_copy, i32 0, i32 0
  call void @apatb_md_knn_hw(double* %7, double* %8, double* %9, double* %10, double* %11, double* %12, i32* %13)
  call void @copy_back([1024 x double]* %0, [1024 x double]* %force_x_copy, [1024 x double]* %1, [1024 x double]* %force_y_copy, [1024 x double]* %2, [1024 x double]* %force_z_copy, [1024 x double]* %3, [1024 x double]* %position_x_copy, [1024 x double]* %4, [1024 x double]* %position_y_copy, [1024 x double]* %5, [1024 x double]* %position_z_copy, [262144 x i32]* %6, [262144 x i32]* %NL_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  tail call void @free(i8* %malloccall4)
  tail call void @free(i8* %malloccall5)
  tail call void @free(i8* %malloccall6)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [262144 x i32]* noalias readonly, [262144 x i32]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %1, [1024 x double]* %0)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %3, [1024 x double]* %2)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %5, [1024 x double]* %4)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %7, [1024 x double]* %6)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %9, [1024 x double]* %8)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %11, [1024 x double]* %10)
  call fastcc void @onebyonecpy_hls.p0a262144i32([262144 x i32]* %13, [262144 x i32]* %12)
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
define internal fastcc void @onebyonecpy_hls.p0a262144i32([262144 x i32]* noalias, [262144 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [262144 x i32]* %0, null
  %3 = icmp eq [262144 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [262144 x i32], [262144 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [262144 x i32], [262144 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 262144
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [262144 x i32]* noalias, [262144 x i32]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %0, [1024 x double]* %1)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %2, [1024 x double]* %3)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %4, [1024 x double]* %5)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %6, [1024 x double]* %7)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %8, [1024 x double]* %9)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %10, [1024 x double]* %11)
  call fastcc void @onebyonecpy_hls.p0a262144i32([262144 x i32]* %12, [262144 x i32]* %13)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_md_knn_hw(double*, double*, double*, double*, double*, double*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [1024 x double]* noalias, [1024 x double]* noalias readonly, [262144 x i32]* noalias, [262144 x i32]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %0, [1024 x double]* %1)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %2, [1024 x double]* %3)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %4, [1024 x double]* %5)
  ret void
}

define void @md_knn_hw_stub_wrapper(double*, double*, double*, double*, double*, double*, i32*) #4 {
entry:
  %7 = bitcast double* %0 to [1024 x double]*
  %8 = bitcast double* %1 to [1024 x double]*
  %9 = bitcast double* %2 to [1024 x double]*
  %10 = bitcast double* %3 to [1024 x double]*
  %11 = bitcast double* %4 to [1024 x double]*
  %12 = bitcast double* %5 to [1024 x double]*
  %13 = bitcast i32* %6 to [262144 x i32]*
  call void @copy_out([1024 x double]* null, [1024 x double]* %7, [1024 x double]* null, [1024 x double]* %8, [1024 x double]* null, [1024 x double]* %9, [1024 x double]* null, [1024 x double]* %10, [1024 x double]* null, [1024 x double]* %11, [1024 x double]* null, [1024 x double]* %12, [262144 x i32]* null, [262144 x i32]* %13)
  %14 = bitcast [1024 x double]* %7 to double*
  %15 = bitcast [1024 x double]* %8 to double*
  %16 = bitcast [1024 x double]* %9 to double*
  %17 = bitcast [1024 x double]* %10 to double*
  %18 = bitcast [1024 x double]* %11 to double*
  %19 = bitcast [1024 x double]* %12 to double*
  %20 = bitcast [262144 x i32]* %13 to i32*
  call void @md_knn_hw_stub(double* %14, double* %15, double* %16, double* %17, double* %18, double* %19, i32* %20)
  call void @copy_in([1024 x double]* null, [1024 x double]* %7, [1024 x double]* null, [1024 x double]* %8, [1024 x double]* null, [1024 x double]* %9, [1024 x double]* null, [1024 x double]* %10, [1024 x double]* null, [1024 x double]* %11, [1024 x double]* null, [1024 x double]* %12, [262144 x i32]* null, [262144 x i32]* %13)
  ret void
}

declare void @md_knn_hw_stub(double*, double*, double*, double*, double*, double*, i32*)

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
