; ModuleID = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/test_cases_3B/sparse_matrix_multiply_HLS/sparse_matrix_multiply_HLS/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 5, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 5, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_sparse_matrix_multiply_HLS_ir(%"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4096" %values_A, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4096" %column_indices_A, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="65" %row_ptr_A, %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4096" %values_B, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4096" %row_indices_B, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="65" %col_ptr_B, [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" %C) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 8192)
  %values_A_copy = bitcast i8* %malloccall to [4096 x i16]*
  %malloccall1 = tail call i8* @malloc(i64 16384)
  %column_indices_A_copy = bitcast i8* %malloccall1 to [4096 x i32]*
  %row_ptr_A_copy = alloca [65 x i32], align 512
  %malloccall2 = call i8* @malloc(i64 8192)
  %values_B_copy = bitcast i8* %malloccall2 to [4096 x i16]*
  %malloccall3 = tail call i8* @malloc(i64 16384)
  %row_indices_B_copy = bitcast i8* %malloccall3 to [4096 x i32]*
  %col_ptr_B_copy = alloca [65 x i32], align 512
  %malloccall4 = call i8* @malloc(i64 8192)
  %C_copy = bitcast i8* %malloccall4 to [64 x [64 x i16]]*
  %0 = bitcast %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* %values_A to [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast i32* %column_indices_A to [4096 x i32]*
  %2 = bitcast i32* %row_ptr_A to [65 x i32]*
  %3 = bitcast %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* %values_B to [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]*
  %4 = bitcast i32* %row_indices_B to [4096 x i32]*
  %5 = bitcast i32* %col_ptr_B to [65 x i32]*
  %6 = bitcast [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %C to [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]*
  call fastcc void @copy_in([4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [4096 x i16]* %values_A_copy, [4096 x i32]* nonnull %1, [4096 x i32]* %column_indices_A_copy, [65 x i32]* nonnull %2, [65 x i32]* nonnull align 512 %row_ptr_A_copy, [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %3, [4096 x i16]* %values_B_copy, [4096 x i32]* nonnull %4, [4096 x i32]* %row_indices_B_copy, [65 x i32]* nonnull %5, [65 x i32]* nonnull align 512 %col_ptr_B_copy, [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* nonnull %6, [64 x [64 x i16]]* %C_copy)
  %7 = getelementptr [4096 x i16], [4096 x i16]* %values_A_copy, i32 0, i32 0
  %8 = getelementptr inbounds [4096 x i32], [4096 x i32]* %column_indices_A_copy, i32 0, i32 0
  %9 = getelementptr inbounds [65 x i32], [65 x i32]* %row_ptr_A_copy, i32 0, i32 0
  %10 = getelementptr [4096 x i16], [4096 x i16]* %values_B_copy, i32 0, i32 0
  %11 = getelementptr inbounds [4096 x i32], [4096 x i32]* %row_indices_B_copy, i32 0, i32 0
  %12 = getelementptr inbounds [65 x i32], [65 x i32]* %col_ptr_B_copy, i32 0, i32 0
  %13 = getelementptr [64 x [64 x i16]], [64 x [64 x i16]]* %C_copy, i32 0, i32 0
  call void @apatb_sparse_matrix_multiply_HLS_hw(i16* %7, i32* %8, i32* %9, i16* %10, i32* %11, i32* %12, [64 x i16]* %13)
  call void @copy_back([4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %0, [4096 x i16]* %values_A_copy, [4096 x i32]* %1, [4096 x i32]* %column_indices_A_copy, [65 x i32]* %2, [65 x i32]* %row_ptr_A_copy, [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %3, [4096 x i16]* %values_B_copy, [4096 x i32]* %4, [4096 x i32]* %row_indices_B_copy, [65 x i32]* %5, [65 x i32]* %col_ptr_B_copy, [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* %6, [64 x [64 x i16]]* %C_copy)
  call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  call void @free(i8* %malloccall4)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="0", [4096 x i16]* noalias nocapture "unpacked"="1.0.0.0", [4096 x i32]* noalias readonly "unpacked"="2", [4096 x i32]* noalias "unpacked"="3", [65 x i32]* noalias readonly "unpacked"="4", [65 x i32]* noalias align 512 "unpacked"="5", [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="6", [4096 x i16]* noalias nocapture "unpacked"="7.0.0.0", [4096 x i32]* noalias readonly "unpacked"="8", [4096 x i32]* noalias "unpacked"="9", [65 x i32]* noalias readonly "unpacked"="10", [65 x i32]* noalias align 512 "unpacked"="11", [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "unpacked"="12", [64 x [64 x i16]]* noalias "unpacked"="13") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a4096struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.9.13"([4096 x i16]* %1, [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %0)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %3, [4096 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* align 512 %5, [65 x i32]* %4)
  call fastcc void @"onebyonecpy_hls.p0a4096struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.9.13"([4096 x i16]* %7, [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %6)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %9, [4096 x i32]* %8)
  call fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* align 512 %11, [65 x i32]* %10)
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([64 x [64 x i16]]* %13, [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* %12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* noalias, [4096 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4096 x i32]* %0, null
  %3 = icmp eq [4096 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4096 x i32], [4096 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [4096 x i32], [4096 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* noalias align 512, [65 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [65 x i32]* %0, null
  %3 = icmp eq [65 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [65 x i32], [65 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [65 x i32], [65 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 65
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([64 x [64 x i16]]* noalias, [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [64 x [64 x i16]]* %0, null
  %3 = icmp eq [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.0.0.013 = getelementptr [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]], [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %5 = getelementptr [64 x [64 x i16]], [64 x [64 x i16]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %6 = load i16, i16* %src.addr6.0.0.013, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 64
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [4096 x i16]* noalias nocapture readonly "unpacked"="1.0.0.0", [4096 x i32]* noalias "unpacked"="2", [4096 x i32]* noalias readonly "unpacked"="3", [65 x i32]* noalias "unpacked"="4", [65 x i32]* noalias readonly align 512 "unpacked"="5", [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="6", [4096 x i16]* noalias nocapture readonly "unpacked"="7.0.0.0", [4096 x i32]* noalias "unpacked"="8", [4096 x i32]* noalias readonly "unpacked"="9", [65 x i32]* noalias "unpacked"="10", [65 x i32]* noalias readonly align 512 "unpacked"="11", [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="12", [64 x [64 x i16]]* noalias readonly "unpacked"="13") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a4096struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %0, [4096 x i16]* %1)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %2, [4096 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* %4, [65 x i32]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a4096struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %6, [4096 x i16]* %7)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %8, [4096 x i32]* %9)
  call fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* %10, [65 x i32]* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.45"([64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* %12, [64 x [64 x i16]]* %13)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a4096struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [4096 x i16]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4096 x i16], [4096 x i16]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"], [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a4096struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.9.13"([4096 x i16]* noalias nocapture "unpacked"="0.0.0.0", [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"], [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [4096 x i16], [4096 x i16]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.45"([64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* noalias, [64 x [64 x i16]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %3 = icmp eq [64 x [64 x i16]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %5 = getelementptr [64 x [64 x i16]], [64 x [64 x i16]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %dst.addr5.0.0.014 = getelementptr [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]], [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr5.0.0.014, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 64
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_sparse_matrix_multiply_HLS_hw(i16*, i32*, i32*, i16*, i32*, i32*, [64 x i16]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [4096 x i16]* noalias nocapture readonly "unpacked"="1.0.0.0", [4096 x i32]* noalias "unpacked"="2", [4096 x i32]* noalias readonly "unpacked"="3", [65 x i32]* noalias "unpacked"="4", [65 x i32]* noalias readonly align 512 "unpacked"="5", [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="6", [4096 x i16]* noalias nocapture readonly "unpacked"="7.0.0.0", [4096 x i32]* noalias "unpacked"="8", [4096 x i32]* noalias readonly "unpacked"="9", [65 x i32]* noalias "unpacked"="10", [65 x i32]* noalias readonly align 512 "unpacked"="11", [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="12", [64 x [64 x i16]]* noalias readonly "unpacked"="13") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.45"([64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* %12, [64 x [64 x i16]]* %13)
  ret void
}

define void @sparse_matrix_multiply_HLS_hw_stub_wrapper(i16*, i32*, i32*, i16*, i32*, i32*, [64 x i16]*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 8192)
  %7 = bitcast i8* %malloccall to [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]*
  %malloccall1 = tail call i8* @malloc(i64 8192)
  %8 = bitcast i8* %malloccall1 to [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]*
  %malloccall2 = tail call i8* @malloc(i64 8192)
  %9 = bitcast i8* %malloccall2 to [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]*
  %10 = bitcast i16* %0 to [4096 x i16]*
  %11 = bitcast i32* %1 to [4096 x i32]*
  %12 = bitcast i32* %2 to [65 x i32]*
  %13 = bitcast i16* %3 to [4096 x i16]*
  %14 = bitcast i32* %4 to [4096 x i32]*
  %15 = bitcast i32* %5 to [65 x i32]*
  %16 = bitcast [64 x i16]* %6 to [64 x [64 x i16]]*
  call void @copy_out([4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %7, [4096 x i16]* %10, [4096 x i32]* null, [4096 x i32]* %11, [65 x i32]* null, [65 x i32]* %12, [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %8, [4096 x i16]* %13, [4096 x i32]* null, [4096 x i32]* %14, [65 x i32]* null, [65 x i32]* %15, [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* %9, [64 x [64 x i16]]* %16)
  %17 = bitcast [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %7 to %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"*
  %18 = bitcast [4096 x i32]* %11 to i32*
  %19 = bitcast [65 x i32]* %12 to i32*
  %20 = bitcast [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %8 to %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"*
  %21 = bitcast [4096 x i32]* %14 to i32*
  %22 = bitcast [65 x i32]* %15 to i32*
  %23 = bitcast [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* %9 to [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]*
  call void @sparse_matrix_multiply_HLS_hw_stub(%"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* %17, i32* %18, i32* %19, %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* %20, i32* %21, i32* %22, [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %23)
  call void @copy_in([4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %7, [4096 x i16]* %10, [4096 x i32]* null, [4096 x i32]* %11, [65 x i32]* null, [65 x i32]* %12, [4096 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %8, [4096 x i16]* %13, [4096 x i32]* null, [4096 x i32]* %14, [65 x i32]* null, [65 x i32]* %15, [64 x [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]]* %9, [64 x [64 x i16]]* %16)
  ret void
}

declare void @sparse_matrix_multiply_HLS_hw_stub(%"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"*, i32*, i32*, %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"*, i32*, i32*, [64 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]*)

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
