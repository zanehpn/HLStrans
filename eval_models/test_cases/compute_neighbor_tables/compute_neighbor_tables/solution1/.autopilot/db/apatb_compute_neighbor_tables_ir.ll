; ModuleID = '/home/zqy/LLM4CHIP/C2HLS/eval_models/test_cases/compute_neighbor_tables/compute_neighbor_tables/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_compute_neighbor_tables_ir([2 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1000" %edge_list, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="100" %in_degree_table, i32* noalias nocapture nonnull readnone "fpga.decayed.dim.hint"="100" %out_degree_table, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="100" %neighbor_table_offsets, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="1000" %neighbor_table, i32 %num_nodes, i32 %num_edges) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 8000)
  %edge_list_copy = bitcast i8* %malloccall to [1000 x [2 x i32]]*
  %in_degree_table_copy = alloca [100 x i32], align 512
  %out_degree_table_copy = alloca [100 x i32], align 512
  %neighbor_table_offsets_copy = alloca [100 x i32], align 512
  %neighbor_table_copy = alloca [1000 x i32], align 512
  %0 = bitcast [2 x i32]* %edge_list to [1000 x [2 x i32]]*
  %1 = bitcast i32* %in_degree_table to [100 x i32]*
  %2 = bitcast i32* %out_degree_table to [100 x i32]*
  %3 = bitcast i32* %neighbor_table_offsets to [100 x i32]*
  %4 = bitcast i32* %neighbor_table to [1000 x i32]*
  call fastcc void @copy_in([1000 x [2 x i32]]* nonnull %0, [1000 x [2 x i32]]* %edge_list_copy, [100 x i32]* nonnull %1, [100 x i32]* nonnull align 512 %in_degree_table_copy, [100 x i32]* nonnull %2, [100 x i32]* nonnull align 512 %out_degree_table_copy, [100 x i32]* nonnull %3, [100 x i32]* nonnull align 512 %neighbor_table_offsets_copy, [1000 x i32]* nonnull %4, [1000 x i32]* nonnull align 512 %neighbor_table_copy)
  %5 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* %edge_list_copy, i32 0, i32 0
  %6 = getelementptr inbounds [100 x i32], [100 x i32]* %in_degree_table_copy, i32 0, i32 0
  %7 = getelementptr inbounds [100 x i32], [100 x i32]* %out_degree_table_copy, i32 0, i32 0
  %8 = getelementptr inbounds [100 x i32], [100 x i32]* %neighbor_table_offsets_copy, i32 0, i32 0
  %9 = getelementptr inbounds [1000 x i32], [1000 x i32]* %neighbor_table_copy, i32 0, i32 0
  call void @apatb_compute_neighbor_tables_hw([2 x i32]* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32 %num_nodes, i32 %num_edges)
  call void @copy_back([1000 x [2 x i32]]* %0, [1000 x [2 x i32]]* %edge_list_copy, [100 x i32]* %1, [100 x i32]* %in_degree_table_copy, [100 x i32]* %2, [100 x i32]* %out_degree_table_copy, [100 x i32]* %3, [100 x i32]* %neighbor_table_offsets_copy, [1000 x i32]* %4, [1000 x i32]* %neighbor_table_copy)
  tail call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1000 x [2 x i32]]* noalias readonly, [1000 x [2 x i32]]* noalias, [100 x i32]* noalias readonly, [100 x i32]* noalias align 512, [100 x i32]* noalias readonly, [100 x i32]* noalias align 512, [100 x i32]* noalias readonly, [100 x i32]* noalias align 512, [1000 x i32]* noalias readonly, [1000 x i32]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1000a2i32([1000 x [2 x i32]]* %1, [1000 x [2 x i32]]* %0)
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* align 512 %3, [100 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* align 512 %5, [100 x i32]* %4)
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* align 512 %7, [100 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* align 512 %9, [1000 x i32]* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1000a2i32([1000 x [2 x i32]]* noalias, [1000 x [2 x i32]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1000 x [2 x i32]]* %0, null
  %3 = icmp eq [1000 x [2 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [1000 x [2 x i32]], [1000 x [2 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [1000 x [2 x i32]], [1000 x [2 x i32]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i32, i32* %src.addr68, align 4
  store i32 %5, i32* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 2
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 1000
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* noalias align 512, [100 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [100 x i32]* %0, null
  %3 = icmp eq [100 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x i32], [100 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [100 x i32], [100 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 100
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
define internal fastcc void @copy_out([1000 x [2 x i32]]* noalias, [1000 x [2 x i32]]* noalias readonly, [100 x i32]* noalias, [100 x i32]* noalias readonly align 512, [100 x i32]* noalias, [100 x i32]* noalias readonly align 512, [100 x i32]* noalias, [100 x i32]* noalias readonly align 512, [1000 x i32]* noalias, [1000 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1000a2i32([1000 x [2 x i32]]* %0, [1000 x [2 x i32]]* %1)
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* %2, [100 x i32]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* %4, [100 x i32]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* %6, [100 x i32]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* %8, [1000 x i32]* align 512 %9)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_compute_neighbor_tables_hw([2 x i32]*, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1000 x [2 x i32]]* noalias, [1000 x [2 x i32]]* noalias readonly, [100 x i32]* noalias, [100 x i32]* noalias readonly align 512, [100 x i32]* noalias, [100 x i32]* noalias readonly align 512, [100 x i32]* noalias, [100 x i32]* noalias readonly align 512, [1000 x i32]* noalias, [1000 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* %6, [100 x i32]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* %8, [1000 x i32]* align 512 %9)
  ret void
}

define void @compute_neighbor_tables_hw_stub_wrapper([2 x i32]*, i32*, i32*, i32*, i32*, i32, i32) #4 {
entry:
  %7 = bitcast [2 x i32]* %0 to [1000 x [2 x i32]]*
  %8 = bitcast i32* %1 to [100 x i32]*
  %9 = bitcast i32* %2 to [100 x i32]*
  %10 = bitcast i32* %3 to [100 x i32]*
  %11 = bitcast i32* %4 to [1000 x i32]*
  call void @copy_out([1000 x [2 x i32]]* null, [1000 x [2 x i32]]* %7, [100 x i32]* null, [100 x i32]* %8, [100 x i32]* null, [100 x i32]* %9, [100 x i32]* null, [100 x i32]* %10, [1000 x i32]* null, [1000 x i32]* %11)
  %12 = bitcast [1000 x [2 x i32]]* %7 to [2 x i32]*
  %13 = bitcast [100 x i32]* %8 to i32*
  %14 = bitcast [100 x i32]* %9 to i32*
  %15 = bitcast [100 x i32]* %10 to i32*
  %16 = bitcast [1000 x i32]* %11 to i32*
  call void @compute_neighbor_tables_hw_stub([2 x i32]* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32 %5, i32 %6)
  call void @copy_in([1000 x [2 x i32]]* null, [1000 x [2 x i32]]* %7, [100 x i32]* null, [100 x i32]* %8, [100 x i32]* null, [100 x i32]* %9, [100 x i32]* null, [100 x i32]* %10, [1000 x i32]* null, [1000 x i32]* %11)
  ret void
}

declare void @compute_neighbor_tables_hw_stub([2 x i32]*, i32*, i32*, i32*, i32*, i32, i32)

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
