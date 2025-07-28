; ModuleID = '/home/zqy/LLM4CHIP/HLSFactory/hlsfactory/hls_dataset_sources/machsuite/bfs_queue/hls_prj/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.node_t_struct = type { i64, i64 }
%struct.edge_t_struct = type { i64 }

; Function Attrs: noinline
define void @apatb_bfs_ir(%struct.node_t_struct* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="256" %nodes, %struct.edge_t_struct* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4096" %edges, i64 %starting_node, i8* noalias nocapture nonnull "fpga.decayed.dim.hint"="256" %level, i64* noalias nocapture nonnull "fpga.decayed.dim.hint"="10" %level_counts) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 4096)
  %nodes_copy = bitcast i8* %malloccall to [256 x i128]*
  %malloccall1 = call i8* @malloc(i64 32768)
  %edges_copy = bitcast i8* %malloccall1 to [4096 x i64]*
  %level_copy = alloca [256 x i8], align 512
  %level_counts_copy = alloca [10 x i64], align 512
  %0 = bitcast %struct.node_t_struct* %nodes to [256 x %struct.node_t_struct]*
  %1 = bitcast %struct.edge_t_struct* %edges to [4096 x %struct.edge_t_struct]*
  %2 = bitcast i8* %level to [256 x i8]*
  %3 = bitcast i64* %level_counts to [10 x i64]*
  call fastcc void @copy_in([256 x %struct.node_t_struct]* nonnull %0, [256 x i128]* %nodes_copy, [4096 x %struct.edge_t_struct]* nonnull %1, [4096 x i64]* %edges_copy, [256 x i8]* nonnull %2, [256 x i8]* nonnull align 512 %level_copy, [10 x i64]* nonnull %3, [10 x i64]* nonnull align 512 %level_counts_copy)
  %4 = getelementptr [256 x i128], [256 x i128]* %nodes_copy, i32 0, i32 0
  %5 = getelementptr [4096 x i64], [4096 x i64]* %edges_copy, i32 0, i32 0
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %level_copy, i32 0, i32 0
  %7 = getelementptr inbounds [10 x i64], [10 x i64]* %level_counts_copy, i32 0, i32 0
  call void @apatb_bfs_hw(i128* %4, i64* %5, i64 %starting_node, i8* %6, i64* %7)
  call void @copy_back([256 x %struct.node_t_struct]* %0, [256 x i128]* %nodes_copy, [4096 x %struct.edge_t_struct]* %1, [4096 x i64]* %edges_copy, [256 x i8]* %2, [256 x i8]* %level_copy, [10 x i64]* %3, [10 x i64]* %level_counts_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([256 x %struct.node_t_struct]* noalias readonly "unpacked"="0", [256 x i128]* noalias "unpacked"="1", [4096 x %struct.edge_t_struct]* noalias readonly "unpacked"="2", [4096 x i64]* noalias nocapture "unpacked"="3.0", [256 x i8]* noalias readonly "unpacked"="4", [256 x i8]* noalias align 512 "unpacked"="5", [10 x i64]* noalias readonly "unpacked"="6", [10 x i64]* noalias align 512 "unpacked"="7") unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256struct.node_t_struct.11([256 x i128]* %1, [256 x %struct.node_t_struct]* %0)
  call fastcc void @onebyonecpy_hls.p0a4096struct.edge_t_struct([4096 x i64]* %3, [4096 x %struct.edge_t_struct]* %2)
  call fastcc void @onebyonecpy_hls.p0a256i8([256 x i8]* align 512 %5, [256 x i8]* %4)
  call fastcc void @onebyonecpy_hls.p0a10i64([10 x i64]* align 512 %7, [10 x i64]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a256struct.node_t_struct([256 x %struct.node_t_struct]* noalias, [256 x i128]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [256 x %struct.node_t_struct]* %0, null
  %3 = icmp eq [256 x i128]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx5 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [256 x i128], [256 x i128]* %1, i64 0, i64 %for.loop.idx5
  %dst.addr.02 = getelementptr [256 x %struct.node_t_struct], [256 x %struct.node_t_struct]* %0, i64 0, i64 %for.loop.idx5, i32 0
  %6 = load i128, i128* %5, align 8
  %.partselect1 = trunc i128 %6 to i64
  store i64 %.partselect1, i64* %dst.addr.02, align 8
  %dst.addr.14 = getelementptr [256 x %struct.node_t_struct], [256 x %struct.node_t_struct]* %0, i64 0, i64 %for.loop.idx5, i32 1
  %7 = lshr i128 %6, 64
  %.partselect = trunc i128 %7 to i64
  store i64 %.partselect, i64* %dst.addr.14, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx5, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4096struct.edge_t_struct([4096 x i64]* noalias nocapture "unpacked"="0.0", [4096 x %struct.edge_t_struct]* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [4096 x %struct.edge_t_struct]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [4096 x %struct.edge_t_struct], [4096 x %struct.edge_t_struct]* %1, i64 0, i64 %for.loop.idx1, i32 0
  %dst.addr.02 = getelementptr [4096 x i64], [4096 x i64]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i64, i64* %src.addr.01, align 8
  store i64 %3, i64* %dst.addr.02, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a256i8([256 x i8]* noalias align 512, [256 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [256 x i8]* %0, null
  %3 = icmp eq [256 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [256 x i8], [256 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [256 x i8], [256 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a10i64([10 x i64]* noalias align 512, [10 x i64]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [10 x i64]* %0, null
  %3 = icmp eq [10 x i64]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i64, i64* %src.addr, align 8
  store i64 %5, i64* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([256 x %struct.node_t_struct]* noalias "unpacked"="0", [256 x i128]* noalias readonly "unpacked"="1", [4096 x %struct.edge_t_struct]* noalias "unpacked"="2", [4096 x i64]* noalias nocapture readonly "unpacked"="3.0", [256 x i8]* noalias "unpacked"="4", [256 x i8]* noalias readonly align 512 "unpacked"="5", [10 x i64]* noalias "unpacked"="6", [10 x i64]* noalias readonly align 512 "unpacked"="7") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256struct.node_t_struct([256 x %struct.node_t_struct]* %0, [256 x i128]* %1)
  call fastcc void @onebyonecpy_hls.p0a4096struct.edge_t_struct.5([4096 x %struct.edge_t_struct]* %2, [4096 x i64]* %3)
  call fastcc void @onebyonecpy_hls.p0a256i8([256 x i8]* %4, [256 x i8]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a10i64([10 x i64]* %6, [10 x i64]* align 512 %7)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4096struct.edge_t_struct.5([4096 x %struct.edge_t_struct]* noalias "unpacked"="0", [4096 x i64]* noalias nocapture readonly "unpacked"="1.0") unnamed_addr #2 {
entry:
  %2 = icmp eq [4096 x %struct.edge_t_struct]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [4096 x i64], [4096 x i64]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.02 = getelementptr [4096 x %struct.edge_t_struct], [4096 x %struct.edge_t_struct]* %0, i64 0, i64 %for.loop.idx1, i32 0
  %3 = load i64, i64* %src.addr.01, align 8
  store i64 %3, i64* %dst.addr.02, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a256struct.node_t_struct.11([256 x i128]* noalias, [256 x %struct.node_t_struct]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [256 x i128]* %0, null
  %3 = icmp eq [256 x %struct.node_t_struct]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx5 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [256 x %struct.node_t_struct], [256 x %struct.node_t_struct]* %1, i64 0, i64 %for.loop.idx5, i32 0
  %5 = getelementptr [256 x i128], [256 x i128]* %0, i64 0, i64 %for.loop.idx5
  %6 = load i64, i64* %src.addr.01, align 8
  %7 = zext i64 %6 to i128
  %src.addr.13 = getelementptr [256 x %struct.node_t_struct], [256 x %struct.node_t_struct]* %1, i64 0, i64 %for.loop.idx5, i32 1
  %8 = load i64, i64* %src.addr.13, align 8
  %9 = zext i64 %8 to i128
  %10 = shl i128 %9, 64
  %.partset = or i128 %10, %7
  store i128 %.partset, i128* %5, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx5, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_bfs_hw(i128*, i64*, i64, i8*, i64*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([256 x %struct.node_t_struct]* noalias "unpacked"="0", [256 x i128]* noalias readonly "unpacked"="1", [4096 x %struct.edge_t_struct]* noalias "unpacked"="2", [4096 x i64]* noalias nocapture readonly "unpacked"="3.0", [256 x i8]* noalias "unpacked"="4", [256 x i8]* noalias readonly align 512 "unpacked"="5", [10 x i64]* noalias "unpacked"="6", [10 x i64]* noalias readonly align 512 "unpacked"="7") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256i8([256 x i8]* %4, [256 x i8]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a10i64([10 x i64]* %6, [10 x i64]* align 512 %7)
  ret void
}

define void @bfs_hw_stub_wrapper(i128*, i64*, i64, i8*, i64*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %5 = bitcast i8* %malloccall to [256 x %struct.node_t_struct]*
  %malloccall1 = tail call i8* @malloc(i64 32768)
  %6 = bitcast i8* %malloccall1 to [4096 x %struct.edge_t_struct]*
  %7 = bitcast i128* %0 to [256 x i128]*
  %8 = bitcast i64* %1 to [4096 x i64]*
  %9 = bitcast i8* %3 to [256 x i8]*
  %10 = bitcast i64* %4 to [10 x i64]*
  call void @copy_out([256 x %struct.node_t_struct]* %5, [256 x i128]* %7, [4096 x %struct.edge_t_struct]* %6, [4096 x i64]* %8, [256 x i8]* null, [256 x i8]* %9, [10 x i64]* null, [10 x i64]* %10)
  %11 = bitcast [256 x %struct.node_t_struct]* %5 to %struct.node_t_struct*
  %12 = bitcast [4096 x %struct.edge_t_struct]* %6 to %struct.edge_t_struct*
  %13 = bitcast [256 x i8]* %9 to i8*
  %14 = bitcast [10 x i64]* %10 to i64*
  call void @bfs_hw_stub(%struct.node_t_struct* %11, %struct.edge_t_struct* %12, i64 %2, i8* %13, i64* %14)
  call void @copy_in([256 x %struct.node_t_struct]* %5, [256 x i128]* %7, [4096 x %struct.edge_t_struct]* %6, [4096 x i64]* %8, [256 x i8]* null, [256 x i8]* %9, [10 x i64]* null, [10 x i64]* %10)
  ret void
}

declare void @bfs_hw_stub(%struct.node_t_struct*, %struct.edge_t_struct*, i64, i8*, i64*)

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
