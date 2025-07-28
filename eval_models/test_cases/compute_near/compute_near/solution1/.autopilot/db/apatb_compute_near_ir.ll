; ModuleID = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/test_cases_3B/compute_near/compute_near/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_compute_near_ir(float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" %inputQuery, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2097152" %searchSpace, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="1048576" %distance) local_unnamed_addr #0 {
entry:
  %inputQuery_copy = alloca [2 x float], align 512
  %malloccall = tail call i8* @malloc(i64 8388608)
  %searchSpace_copy = bitcast i8* %malloccall to [2097152 x float]*
  %malloccall1 = tail call i8* @malloc(i64 4194304)
  %distance_copy = bitcast i8* %malloccall1 to [1048576 x float]*
  %0 = bitcast float* %inputQuery to [2 x float]*
  %1 = bitcast float* %searchSpace to [2097152 x float]*
  %2 = bitcast float* %distance to [1048576 x float]*
  call fastcc void @copy_in([2 x float]* nonnull %0, [2 x float]* nonnull align 512 %inputQuery_copy, [2097152 x float]* nonnull %1, [2097152 x float]* %searchSpace_copy, [1048576 x float]* nonnull %2, [1048576 x float]* %distance_copy)
  %3 = getelementptr inbounds [2 x float], [2 x float]* %inputQuery_copy, i32 0, i32 0
  %4 = getelementptr inbounds [2097152 x float], [2097152 x float]* %searchSpace_copy, i32 0, i32 0
  %5 = getelementptr inbounds [1048576 x float], [1048576 x float]* %distance_copy, i32 0, i32 0
  call void @apatb_compute_near_hw(float* %3, float* %4, float* %5)
  call void @copy_back([2 x float]* %0, [2 x float]* %inputQuery_copy, [2097152 x float]* %1, [2097152 x float]* %searchSpace_copy, [1048576 x float]* %2, [1048576 x float]* %distance_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([2 x float]* noalias readonly, [2 x float]* noalias align 512, [2097152 x float]* noalias readonly, [2097152 x float]* noalias, [1048576 x float]* noalias readonly, [1048576 x float]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2f32([2 x float]* align 512 %1, [2 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a2097152f32([2097152 x float]* %3, [2097152 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a1048576f32([1048576 x float]* %5, [1048576 x float]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2f32([2 x float]* noalias align 512, [2 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2 x float]* %0, null
  %3 = icmp eq [2 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2 x float], [2 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [2 x float], [2 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2097152f32([2097152 x float]* noalias, [2097152 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2097152 x float]* %0, null
  %3 = icmp eq [2097152 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2097152 x float], [2097152 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [2097152 x float], [2097152 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2097152
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1048576f32([1048576 x float]* noalias, [1048576 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1048576 x float]* %0, null
  %3 = icmp eq [1048576 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1048576 x float], [1048576 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1048576 x float], [1048576 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1048576
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([2 x float]* noalias, [2 x float]* noalias readonly align 512, [2097152 x float]* noalias, [2097152 x float]* noalias readonly, [1048576 x float]* noalias, [1048576 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2f32([2 x float]* %0, [2 x float]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a2097152f32([2097152 x float]* %2, [2097152 x float]* %3)
  call fastcc void @onebyonecpy_hls.p0a1048576f32([1048576 x float]* %4, [1048576 x float]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_compute_near_hw(float*, float*, float*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([2 x float]* noalias, [2 x float]* noalias readonly align 512, [2097152 x float]* noalias, [2097152 x float]* noalias readonly, [1048576 x float]* noalias, [1048576 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1048576f32([1048576 x float]* %4, [1048576 x float]* %5)
  ret void
}

define void @compute_near_hw_stub_wrapper(float*, float*, float*) #4 {
entry:
  %3 = bitcast float* %0 to [2 x float]*
  %4 = bitcast float* %1 to [2097152 x float]*
  %5 = bitcast float* %2 to [1048576 x float]*
  call void @copy_out([2 x float]* null, [2 x float]* %3, [2097152 x float]* null, [2097152 x float]* %4, [1048576 x float]* null, [1048576 x float]* %5)
  %6 = bitcast [2 x float]* %3 to float*
  %7 = bitcast [2097152 x float]* %4 to float*
  %8 = bitcast [1048576 x float]* %5 to float*
  call void @compute_near_hw_stub(float* %6, float* %7, float* %8)
  call void @copy_in([2 x float]* null, [2 x float]* %3, [2097152 x float]* null, [2097152 x float]* %4, [1048576 x float]* null, [1048576 x float]* %5)
  ret void
}

declare void @compute_near_hw_stub(float*, float*, float*)

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
