; ModuleID = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/SYN_dataset/polybench/doitgen/doitgen/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_doitgen_ir(i32 %nr, i32 %nq, i32 %np, [20 x [30 x double]]* noalias nocapture nonnull "fpga.decayed.dim.hint"="25" %A, [30 x double]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="30" %C4, double* noalias nocapture nonnull "fpga.decayed.dim.hint"="30" %sum) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 120000)
  %A_copy = bitcast i8* %malloccall to [25 x [20 x [30 x double]]]*
  %malloccall1 = tail call i8* @malloc(i64 7200)
  %C4_copy = bitcast i8* %malloccall1 to [30 x [30 x double]]*
  %sum_copy = alloca [30 x double], align 512
  %0 = bitcast [20 x [30 x double]]* %A to [25 x [20 x [30 x double]]]*
  %1 = bitcast [30 x double]* %C4 to [30 x [30 x double]]*
  %2 = bitcast double* %sum to [30 x double]*
  call fastcc void @copy_in([25 x [20 x [30 x double]]]* nonnull %0, [25 x [20 x [30 x double]]]* %A_copy, [30 x [30 x double]]* nonnull %1, [30 x [30 x double]]* %C4_copy, [30 x double]* nonnull %2, [30 x double]* nonnull align 512 %sum_copy)
  %3 = getelementptr inbounds [25 x [20 x [30 x double]]], [25 x [20 x [30 x double]]]* %A_copy, i32 0, i32 0
  %4 = getelementptr inbounds [30 x [30 x double]], [30 x [30 x double]]* %C4_copy, i32 0, i32 0
  %5 = getelementptr inbounds [30 x double], [30 x double]* %sum_copy, i32 0, i32 0
  call void @apatb_doitgen_hw(i32 %nr, i32 %nq, i32 %np, [20 x [30 x double]]* %3, [30 x double]* %4, double* %5)
  call void @copy_back([25 x [20 x [30 x double]]]* %0, [25 x [20 x [30 x double]]]* %A_copy, [30 x [30 x double]]* %1, [30 x [30 x double]]* %C4_copy, [30 x double]* %2, [30 x double]* %sum_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([25 x [20 x [30 x double]]]* noalias readonly, [25 x [20 x [30 x double]]]* noalias, [30 x [30 x double]]* noalias readonly, [30 x [30 x double]]* noalias, [30 x double]* noalias readonly, [30 x double]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a25a20a30f64([25 x [20 x [30 x double]]]* %1, [25 x [20 x [30 x double]]]* %0)
  call fastcc void @onebyonecpy_hls.p0a30a30f64([30 x [30 x double]]* %3, [30 x [30 x double]]* %2)
  call fastcc void @onebyonecpy_hls.p0a30f64([30 x double]* align 512 %5, [30 x double]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a25a20a30f64([25 x [20 x [30 x double]]]* noalias, [25 x [20 x [30 x double]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [25 x [20 x [30 x double]]]* %0, null
  %3 = icmp eq [25 x [20 x [30 x double]]]* %1, null
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
  %dst.addr1115 = getelementptr [25 x [20 x [30 x double]]], [25 x [20 x [30 x double]]]* %0, i64 0, i64 %for.loop.idx19, i64 %for.loop.idx318, i64 %for.loop.idx917
  %src.addr1216 = getelementptr [25 x [20 x [30 x double]]], [25 x [20 x [30 x double]]]* %1, i64 0, i64 %for.loop.idx19, i64 %for.loop.idx318, i64 %for.loop.idx917
  %5 = load double, double* %src.addr1216, align 8
  store double %5, double* %dst.addr1115, align 8
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx917, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 30
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx318, 1
  %exitcond20 = icmp ne i64 %for.loop.idx3.next, 20
  br i1 %exitcond20, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx19, 1
  %exitcond21 = icmp ne i64 %for.loop.idx.next, 25
  br i1 %exitcond21, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a30a30f64([30 x [30 x double]]* noalias, [30 x [30 x double]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [30 x [30 x double]]* %0, null
  %3 = icmp eq [30 x [30 x double]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [30 x [30 x double]], [30 x [30 x double]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [30 x [30 x double]], [30 x [30 x double]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load double, double* %src.addr68, align 8
  store double %5, double* %dst.addr57, align 8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 30
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 30
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a30f64([30 x double]* noalias align 512, [30 x double]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [30 x double]* %0, null
  %3 = icmp eq [30 x double]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [30 x double], [30 x double]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [30 x double], [30 x double]* %1, i64 0, i64 %for.loop.idx1
  %5 = load double, double* %src.addr, align 8
  store double %5, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 30
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([25 x [20 x [30 x double]]]* noalias, [25 x [20 x [30 x double]]]* noalias readonly, [30 x [30 x double]]* noalias, [30 x [30 x double]]* noalias readonly, [30 x double]* noalias, [30 x double]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a25a20a30f64([25 x [20 x [30 x double]]]* %0, [25 x [20 x [30 x double]]]* %1)
  call fastcc void @onebyonecpy_hls.p0a30a30f64([30 x [30 x double]]* %2, [30 x [30 x double]]* %3)
  call fastcc void @onebyonecpy_hls.p0a30f64([30 x double]* %4, [30 x double]* align 512 %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_doitgen_hw(i32, i32, i32, [20 x [30 x double]]*, [30 x double]*, double*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([25 x [20 x [30 x double]]]* noalias, [25 x [20 x [30 x double]]]* noalias readonly, [30 x [30 x double]]* noalias, [30 x [30 x double]]* noalias readonly, [30 x double]* noalias, [30 x double]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a25a20a30f64([25 x [20 x [30 x double]]]* %0, [25 x [20 x [30 x double]]]* %1)
  call fastcc void @onebyonecpy_hls.p0a30f64([30 x double]* %4, [30 x double]* align 512 %5)
  ret void
}

define void @doitgen_hw_stub_wrapper(i32, i32, i32, [20 x [30 x double]]*, [30 x double]*, double*) #4 {
entry:
  %6 = bitcast [20 x [30 x double]]* %3 to [25 x [20 x [30 x double]]]*
  %7 = bitcast [30 x double]* %4 to [30 x [30 x double]]*
  %8 = bitcast double* %5 to [30 x double]*
  call void @copy_out([25 x [20 x [30 x double]]]* null, [25 x [20 x [30 x double]]]* %6, [30 x [30 x double]]* null, [30 x [30 x double]]* %7, [30 x double]* null, [30 x double]* %8)
  %9 = bitcast [25 x [20 x [30 x double]]]* %6 to [20 x [30 x double]]*
  %10 = bitcast [30 x [30 x double]]* %7 to [30 x double]*
  %11 = bitcast [30 x double]* %8 to double*
  call void @doitgen_hw_stub(i32 %0, i32 %1, i32 %2, [20 x [30 x double]]* %9, [30 x double]* %10, double* %11)
  call void @copy_in([25 x [20 x [30 x double]]]* null, [25 x [20 x [30 x double]]]* %6, [30 x [30 x double]]* null, [30 x [30 x double]]* %7, [30 x double]* null, [30 x double]* %8)
  ret void
}

declare void @doitgen_hw_stub(i32, i32, i32, [20 x [30 x double]]*, [30 x double]*, double*)

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
