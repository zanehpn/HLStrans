; ModuleID = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/machsuite/md_grid/hls_prj/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.dvector_t = type { double, double, double }

; Function Attrs: noinline
define void @apatb_md_ir([4 x [4 x i32]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" %n_points, [4 x [4 x [10 x %struct.dvector_t]]]* noalias nocapture nonnull "fpga.decayed.dim.hint"="4" %force, [4 x [4 x [10 x %struct.dvector_t]]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" %position) local_unnamed_addr #0 {
entry:
  %n_points_copy = alloca [4 x [4 x [4 x i32]]], align 512
  %malloccall = call i8* @malloc(i64 20480)
  %force_copy = bitcast i8* %malloccall to [4 x [4 x [4 x [10 x i192]]]]*
  %malloccall1 = call i8* @malloc(i64 20480)
  %position_copy = bitcast i8* %malloccall1 to [4 x [4 x [4 x [10 x i192]]]]*
  %0 = bitcast [4 x [4 x i32]]* %n_points to [4 x [4 x [4 x i32]]]*
  %1 = bitcast [4 x [4 x [10 x %struct.dvector_t]]]* %force to [4 x [4 x [4 x [10 x %struct.dvector_t]]]]*
  %2 = bitcast [4 x [4 x [10 x %struct.dvector_t]]]* %position to [4 x [4 x [4 x [10 x %struct.dvector_t]]]]*
  call fastcc void @copy_in([4 x [4 x [4 x i32]]]* nonnull %0, [4 x [4 x [4 x i32]]]* nonnull align 512 %n_points_copy, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* nonnull %1, [4 x [4 x [4 x [10 x i192]]]]* %force_copy, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* nonnull %2, [4 x [4 x [4 x [10 x i192]]]]* %position_copy)
  %3 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %n_points_copy, i32 0, i32 0
  %4 = getelementptr [4 x [4 x [4 x [10 x i192]]]], [4 x [4 x [4 x [10 x i192]]]]* %force_copy, i32 0, i32 0
  %5 = getelementptr [4 x [4 x [4 x [10 x i192]]]], [4 x [4 x [4 x [10 x i192]]]]* %position_copy, i32 0, i32 0
  call void @apatb_md_hw([4 x [4 x i32]]* %3, [4 x [4 x [10 x i192]]]* %4, [4 x [4 x [10 x i192]]]* %5)
  call void @copy_back([4 x [4 x [4 x i32]]]* %0, [4 x [4 x [4 x i32]]]* %n_points_copy, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %1, [4 x [4 x [4 x [10 x i192]]]]* %force_copy, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %2, [4 x [4 x [4 x [10 x i192]]]]* %position_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([4 x [4 x [4 x i32]]]* noalias readonly, [4 x [4 x [4 x i32]]]* noalias align 512, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* noalias readonly, [4 x [4 x [4 x [10 x i192]]]]* noalias, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* noalias readonly, [4 x [4 x [4 x [10 x i192]]]]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4a4a4i32([4 x [4 x [4 x i32]]]* align 512 %1, [4 x [4 x [4 x i32]]]* %0)
  call fastcc void @onebyonecpy_hls.p0a4a4a4a10struct.dvector_t.9([4 x [4 x [4 x [10 x i192]]]]* %3, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %2)
  call fastcc void @onebyonecpy_hls.p0a4a4a4a10struct.dvector_t.9([4 x [4 x [4 x [10 x i192]]]]* %5, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4a4a4i32([4 x [4 x [4 x i32]]]* noalias align 512, [4 x [4 x [4 x i32]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x [4 x [4 x i32]]]* %0, null
  %3 = icmp eq [4 x [4 x [4 x i32]]]* %1, null
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
  %dst.addr1115 = getelementptr [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %0, i64 0, i64 %for.loop.idx19, i64 %for.loop.idx318, i64 %for.loop.idx917
  %src.addr1216 = getelementptr [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %1, i64 0, i64 %for.loop.idx19, i64 %for.loop.idx318, i64 %for.loop.idx917
  %5 = load i32, i32* %src.addr1216, align 4
  store i32 %5, i32* %dst.addr1115, align 4
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx917, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 4
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx318, 1
  %exitcond20 = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond20, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx19, 1
  %exitcond21 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond21, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([4 x [4 x [4 x i32]]]* noalias, [4 x [4 x [4 x i32]]]* noalias readonly align 512, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* noalias, [4 x [4 x [4 x [10 x i192]]]]* noalias readonly, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* noalias, [4 x [4 x [4 x [10 x i192]]]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4a4a4i32([4 x [4 x [4 x i32]]]* %0, [4 x [4 x [4 x i32]]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a4a4a4a10struct.dvector_t([4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %2, [4 x [4 x [4 x [10 x i192]]]]* %3)
  call fastcc void @onebyonecpy_hls.p0a4a4a4a10struct.dvector_t([4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %4, [4 x [4 x [4 x [10 x i192]]]]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: alwaysinline nounwind readnone
define internal double @_llvm.fpga.unpack.bits.f64.i64(i64 %A) #4 {
  %A.cast = bitcast i64 %A to double
  ret double %A.cast
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4a4a4a10struct.dvector_t([4 x [4 x [4 x [10 x %struct.dvector_t]]]]* noalias, [4 x [4 x [4 x [10 x i192]]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %0, null
  %3 = icmp eq [4 x [4 x [4 x [10 x i192]]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx34 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx333 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8.split, %for.loop2
  %for.loop.idx932 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8.split ]
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop8
  %for.loop.idx1531 = phi i64 [ 0, %for.loop8 ], [ %for.loop.idx15.next, %for.loop14 ]
  %5 = getelementptr [4 x [4 x [4 x [10 x i192]]]], [4 x [4 x [4 x [10 x i192]]]]* %1, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531
  %dst.addr17.026 = getelementptr [4 x [4 x [4 x [10 x %struct.dvector_t]]]], [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %0, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531, i32 0
  %6 = load i192, i192* %5, align 8
  %.partselect2 = trunc i192 %6 to i64
  %7 = call double @_llvm.fpga.unpack.bits.f64.i64(i64 %.partselect2)
  store double %7, double* %dst.addr17.026, align 8
  %dst.addr17.128 = getelementptr [4 x [4 x [4 x [10 x %struct.dvector_t]]]], [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %0, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531, i32 1
  %8 = lshr i192 %6, 64
  %.partselect1 = trunc i192 %8 to i64
  %9 = call double @_llvm.fpga.unpack.bits.f64.i64(i64 %.partselect1)
  store double %9, double* %dst.addr17.128, align 8
  %dst.addr17.230 = getelementptr [4 x [4 x [4 x [10 x %struct.dvector_t]]]], [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %0, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531, i32 2
  %10 = lshr i192 %6, 128
  %.partselect = trunc i192 %10 to i64
  %11 = call double @_llvm.fpga.unpack.bits.f64.i64(i64 %.partselect)
  store double %11, double* %dst.addr17.230, align 8
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1531, 1
  %exitcond = icmp ne i64 %for.loop.idx15.next, 10
  br i1 %exitcond, label %for.loop14, label %for.loop8.split

for.loop8.split:                                  ; preds = %for.loop14
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx932, 1
  %exitcond35 = icmp ne i64 %for.loop.idx9.next, 4
  br i1 %exitcond35, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8.split
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx333, 1
  %exitcond36 = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond36, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx34, 1
  %exitcond37 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond37, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4a4a4a10struct.dvector_t.9([4 x [4 x [4 x [10 x i192]]]]* noalias, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x [4 x [4 x [10 x i192]]]]* %0, null
  %3 = icmp eq [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx34 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx333 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8.split, %for.loop2
  %for.loop.idx932 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8.split ]
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop8
  %for.loop.idx1531 = phi i64 [ 0, %for.loop8 ], [ %for.loop.idx15.next, %for.loop14 ]
  %src.addr18.025 = getelementptr [4 x [4 x [4 x [10 x %struct.dvector_t]]]], [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %1, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531, i32 0
  %5 = getelementptr [4 x [4 x [4 x [10 x i192]]]], [4 x [4 x [4 x [10 x i192]]]]* %0, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531
  %6 = load double, double* %src.addr18.025, align 8
  %7 = call i64 @_llvm.fpga.pack.bits.i64.f64(double %6)
  %8 = zext i64 %7 to i192
  %src.addr18.127 = getelementptr [4 x [4 x [4 x [10 x %struct.dvector_t]]]], [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %1, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531, i32 1
  %9 = load double, double* %src.addr18.127, align 8
  %10 = call i64 @_llvm.fpga.pack.bits.i64.f64(double %9)
  %11 = zext i64 %10 to i192
  %12 = shl i192 %11, 64
  %.partset1 = or i192 %12, %8
  %src.addr18.229 = getelementptr [4 x [4 x [4 x [10 x %struct.dvector_t]]]], [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %1, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531, i32 2
  %13 = load double, double* %src.addr18.229, align 8
  %14 = call i64 @_llvm.fpga.pack.bits.i64.f64(double %13)
  %15 = zext i64 %14 to i192
  %16 = shl i192 %15, 128
  %.partset = or i192 %.partset1, %16
  store i192 %.partset, i192* %5, align 8
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1531, 1
  %exitcond = icmp ne i64 %for.loop.idx15.next, 10
  br i1 %exitcond, label %for.loop14, label %for.loop8.split

for.loop8.split:                                  ; preds = %for.loop14
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx932, 1
  %exitcond35 = icmp ne i64 %for.loop.idx9.next, 4
  br i1 %exitcond35, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8.split
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx333, 1
  %exitcond36 = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond36, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx34, 1
  %exitcond37 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond37, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i64 @_llvm.fpga.pack.bits.i64.f64(double %A) #4 {
  %A.cast = bitcast double %A to i64
  ret i64 %A.cast
}

declare void @apatb_md_hw([4 x [4 x i32]]*, [4 x [4 x [10 x i192]]]*, [4 x [4 x [10 x i192]]]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([4 x [4 x [4 x i32]]]* noalias, [4 x [4 x [4 x i32]]]* noalias readonly align 512, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* noalias, [4 x [4 x [4 x [10 x i192]]]]* noalias readonly, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* noalias, [4 x [4 x [4 x [10 x i192]]]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4a4a4a10struct.dvector_t([4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %2, [4 x [4 x [4 x [10 x i192]]]]* %3)
  ret void
}

define void @md_hw_stub_wrapper([4 x [4 x i32]]*, [4 x [4 x [10 x i192]]]*, [4 x [4 x [10 x i192]]]*) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 15360)
  %3 = bitcast i8* %malloccall to [4 x [4 x [4 x [10 x %struct.dvector_t]]]]*
  %malloccall1 = tail call i8* @malloc(i64 15360)
  %4 = bitcast i8* %malloccall1 to [4 x [4 x [4 x [10 x %struct.dvector_t]]]]*
  %5 = bitcast [4 x [4 x i32]]* %0 to [4 x [4 x [4 x i32]]]*
  %6 = bitcast [4 x [4 x [10 x i192]]]* %1 to [4 x [4 x [4 x [10 x i192]]]]*
  %7 = bitcast [4 x [4 x [10 x i192]]]* %2 to [4 x [4 x [4 x [10 x i192]]]]*
  call void @copy_out([4 x [4 x [4 x i32]]]* null, [4 x [4 x [4 x i32]]]* %5, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %3, [4 x [4 x [4 x [10 x i192]]]]* %6, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %4, [4 x [4 x [4 x [10 x i192]]]]* %7)
  %8 = bitcast [4 x [4 x [4 x i32]]]* %5 to [4 x [4 x i32]]*
  %9 = bitcast [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %3 to [4 x [4 x [10 x %struct.dvector_t]]]*
  %10 = bitcast [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %4 to [4 x [4 x [10 x %struct.dvector_t]]]*
  call void @md_hw_stub([4 x [4 x i32]]* %8, [4 x [4 x [10 x %struct.dvector_t]]]* %9, [4 x [4 x [10 x %struct.dvector_t]]]* %10)
  call void @copy_in([4 x [4 x [4 x i32]]]* null, [4 x [4 x [4 x i32]]]* %5, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %3, [4 x [4 x [4 x [10 x i192]]]]* %6, [4 x [4 x [4 x [10 x %struct.dvector_t]]]]* %4, [4 x [4 x [4 x [10 x i192]]]]* %7)
  ret void
}

declare void @md_hw_stub([4 x [4 x i32]]*, [4 x [4 x [10 x %struct.dvector_t]]]*, [4 x [4 x [10 x %struct.dvector_t]]]*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { alwaysinline nounwind readnone }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
