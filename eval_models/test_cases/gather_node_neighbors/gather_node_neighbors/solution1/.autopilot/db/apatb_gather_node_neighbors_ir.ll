; ModuleID = '/home/zqy/LLM4CHIP/C2HLS/eval_models/test_cases/gather_node_neighbors/gather_node_neighbors/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_gather_node_neighbors_ir(i32 %node, i32 %node_in_degree, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="2000" %node_neighbors, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2000" %neighbor_table_offsets, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1000" %neighbor_table) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 8000)
  %node_neighbors_copy = bitcast i8* %malloccall to [2000 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 8000)
  %neighbor_table_offsets_copy = bitcast i8* %malloccall1 to [2000 x i32]*
  %neighbor_table_copy = alloca [1000 x i32], align 512
  %0 = bitcast i32* %node_neighbors to [2000 x i32]*
  %1 = bitcast i32* %neighbor_table_offsets to [2000 x i32]*
  %2 = bitcast i32* %neighbor_table to [1000 x i32]*
  call fastcc void @copy_in([2000 x i32]* nonnull %0, [2000 x i32]* %node_neighbors_copy, [2000 x i32]* nonnull %1, [2000 x i32]* %neighbor_table_offsets_copy, [1000 x i32]* nonnull %2, [1000 x i32]* nonnull align 512 %neighbor_table_copy)
  %3 = getelementptr inbounds [2000 x i32], [2000 x i32]* %node_neighbors_copy, i32 0, i32 0
  %4 = getelementptr inbounds [2000 x i32], [2000 x i32]* %neighbor_table_offsets_copy, i32 0, i32 0
  %5 = getelementptr inbounds [1000 x i32], [1000 x i32]* %neighbor_table_copy, i32 0, i32 0
  call void @apatb_gather_node_neighbors_hw(i32 %node, i32 %node_in_degree, i32* %3, i32* %4, i32* %5)
  call void @copy_back([2000 x i32]* %0, [2000 x i32]* %node_neighbors_copy, [2000 x i32]* %1, [2000 x i32]* %neighbor_table_offsets_copy, [1000 x i32]* %2, [1000 x i32]* %neighbor_table_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([2000 x i32]* noalias readonly, [2000 x i32]* noalias, [2000 x i32]* noalias readonly, [2000 x i32]* noalias, [1000 x i32]* noalias readonly, [1000 x i32]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2000i32([2000 x i32]* %1, [2000 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a2000i32([2000 x i32]* %3, [2000 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* align 512 %5, [1000 x i32]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2000i32([2000 x i32]* noalias, [2000 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2000 x i32]* %0, null
  %3 = icmp eq [2000 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2000 x i32], [2000 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [2000 x i32], [2000 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2000
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
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
define internal fastcc void @copy_out([2000 x i32]* noalias, [2000 x i32]* noalias readonly, [2000 x i32]* noalias, [2000 x i32]* noalias readonly, [1000 x i32]* noalias, [1000 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2000i32([2000 x i32]* %0, [2000 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a2000i32([2000 x i32]* %2, [2000 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* %4, [1000 x i32]* align 512 %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_gather_node_neighbors_hw(i32, i32, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([2000 x i32]* noalias, [2000 x i32]* noalias readonly, [2000 x i32]* noalias, [2000 x i32]* noalias readonly, [1000 x i32]* noalias, [1000 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2000i32([2000 x i32]* %0, [2000 x i32]* %1)
  ret void
}

define void @gather_node_neighbors_hw_stub_wrapper(i32, i32, i32*, i32*, i32*) #4 {
entry:
  %5 = bitcast i32* %2 to [2000 x i32]*
  %6 = bitcast i32* %3 to [2000 x i32]*
  %7 = bitcast i32* %4 to [1000 x i32]*
  call void @copy_out([2000 x i32]* null, [2000 x i32]* %5, [2000 x i32]* null, [2000 x i32]* %6, [1000 x i32]* null, [1000 x i32]* %7)
  %8 = bitcast [2000 x i32]* %5 to i32*
  %9 = bitcast [2000 x i32]* %6 to i32*
  %10 = bitcast [1000 x i32]* %7 to i32*
  call void @gather_node_neighbors_hw_stub(i32 %0, i32 %1, i32* %8, i32* %9, i32* %10)
  call void @copy_in([2000 x i32]* null, [2000 x i32]* %5, [2000 x i32]* null, [2000 x i32]* %6, [1000 x i32]* null, [1000 x i32]* %7)
  ret void
}

declare void @gather_node_neighbors_hw_stub(i32, i32, i32*, i32*, i32*)

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
