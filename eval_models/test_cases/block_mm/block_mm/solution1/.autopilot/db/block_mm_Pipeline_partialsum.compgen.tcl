# This script segment is generated automatically by AutoPilot

set name block_mm_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 72 \
    name block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A \
    op interface \
    ports { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0 { O 3 vector } block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0 { O 1 bit } block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 73 \
    name block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 \
    op interface \
    ports { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0 { O 3 vector } block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0 { O 1 bit } block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 74 \
    name block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 \
    op interface \
    ports { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0 { O 3 vector } block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0 { O 1 bit } block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 75 \
    name block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 \
    op interface \
    ports { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0 { O 3 vector } block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0 { O 1 bit } block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name AB_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_15_reload \
    op interface \
    ports { AB_15_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name AB_14_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_14_reload \
    op interface \
    ports { AB_14_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name AB_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_13_reload \
    op interface \
    ports { AB_13_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name AB_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_12_reload \
    op interface \
    ports { AB_12_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name AB_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_11_reload \
    op interface \
    ports { AB_11_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name AB_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_10_reload \
    op interface \
    ports { AB_10_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name AB_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_9_reload \
    op interface \
    ports { AB_9_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name AB_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_8_reload \
    op interface \
    ports { AB_8_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name AB_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_7_reload \
    op interface \
    ports { AB_7_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name AB_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_6_reload \
    op interface \
    ports { AB_6_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name AB_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_5_reload \
    op interface \
    ports { AB_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name AB_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_4_reload \
    op interface \
    ports { AB_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name AB_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_3_reload \
    op interface \
    ports { AB_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name AB_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_2_reload \
    op interface \
    ports { AB_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name AB_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_1_reload \
    op interface \
    ports { AB_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name AB_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_reload \
    op interface \
    ports { AB_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name Bcols \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bcols \
    op interface \
    ports { Bcols_dout { I 128 vector } Bcols_empty_n { I 1 bit } Bcols_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name add_3_375_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_375_out \
    op interface \
    ports { add_3_375_out { O 32 vector } add_3_375_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name add_3_274_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_274_out \
    op interface \
    ports { add_3_274_out { O 32 vector } add_3_274_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name add_3_173_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_173_out \
    op interface \
    ports { add_3_173_out { O 32 vector } add_3_173_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name add_372_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_372_out \
    op interface \
    ports { add_372_out { O 32 vector } add_372_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name add_2_371_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_371_out \
    op interface \
    ports { add_2_371_out { O 32 vector } add_2_371_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name add_2_270_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_270_out \
    op interface \
    ports { add_2_270_out { O 32 vector } add_2_270_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name add_2_169_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_169_out \
    op interface \
    ports { add_2_169_out { O 32 vector } add_2_169_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name add_268_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_268_out \
    op interface \
    ports { add_268_out { O 32 vector } add_268_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name add_1_367_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_367_out \
    op interface \
    ports { add_1_367_out { O 32 vector } add_1_367_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name add_1_266_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_266_out \
    op interface \
    ports { add_1_266_out { O 32 vector } add_1_266_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name add_1_165_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_165_out \
    op interface \
    ports { add_1_165_out { O 32 vector } add_1_165_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name add_164_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_164_out \
    op interface \
    ports { add_164_out { O 32 vector } add_164_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name add_33963_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_33963_out \
    op interface \
    ports { add_33963_out { O 32 vector } add_33963_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name add_23462_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_23462_out \
    op interface \
    ports { add_23462_out { O 32 vector } add_23462_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name add_12961_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_12961_out \
    op interface \
    ports { add_12961_out { O 32 vector } add_12961_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name p_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out { O 32 vector } p_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName block_mm_flow_control_loop_pipe_sequential_init_U
set CompName block_mm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix block_mm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


