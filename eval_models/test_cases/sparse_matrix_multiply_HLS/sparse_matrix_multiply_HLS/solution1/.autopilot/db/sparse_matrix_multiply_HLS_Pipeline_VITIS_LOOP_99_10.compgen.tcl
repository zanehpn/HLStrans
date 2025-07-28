# This script segment is generated automatically by AutoPilot

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
    id 222 \
    name C \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C \
    op interface \
    ports { C_address0 { O 12 vector } C_ce0 { O 1 bit } C_we0 { O 1 bit } C_d0 { O 16 vector } C_address1 { O 12 vector } C_ce1 { O 1 bit } C_we1 { O 1 bit } C_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 223 \
    name accum_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename accum_V \
    op interface \
    ports { accum_V_address0 { O 9 vector } accum_V_ce0 { O 1 bit } accum_V_q0 { I 16 vector } accum_V_address1 { O 9 vector } accum_V_ce1 { O 1 bit } accum_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 224 \
    name accum_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename accum_V_1 \
    op interface \
    ports { accum_V_1_address0 { O 9 vector } accum_V_1_ce0 { O 1 bit } accum_V_1_q0 { I 16 vector } accum_V_1_address1 { O 9 vector } accum_V_1_ce1 { O 1 bit } accum_V_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 225 \
    name accum_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename accum_V_2 \
    op interface \
    ports { accum_V_2_address0 { O 9 vector } accum_V_2_ce0 { O 1 bit } accum_V_2_q0 { I 16 vector } accum_V_2_address1 { O 9 vector } accum_V_2_ce1 { O 1 bit } accum_V_2_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 226 \
    name accum_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename accum_V_3 \
    op interface \
    ports { accum_V_3_address0 { O 9 vector } accum_V_3_ce0 { O 1 bit } accum_V_3_q0 { I 16 vector } accum_V_3_address1 { O 9 vector } accum_V_3_ce1 { O 1 bit } accum_V_3_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 227 \
    name accum_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename accum_V_4 \
    op interface \
    ports { accum_V_4_address0 { O 9 vector } accum_V_4_ce0 { O 1 bit } accum_V_4_q0 { I 16 vector } accum_V_4_address1 { O 9 vector } accum_V_4_ce1 { O 1 bit } accum_V_4_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 228 \
    name accum_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename accum_V_5 \
    op interface \
    ports { accum_V_5_address0 { O 9 vector } accum_V_5_ce0 { O 1 bit } accum_V_5_q0 { I 16 vector } accum_V_5_address1 { O 9 vector } accum_V_5_ce1 { O 1 bit } accum_V_5_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 229 \
    name accum_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename accum_V_6 \
    op interface \
    ports { accum_V_6_address0 { O 9 vector } accum_V_6_ce0 { O 1 bit } accum_V_6_q0 { I 16 vector } accum_V_6_address1 { O 9 vector } accum_V_6_ce1 { O 1 bit } accum_V_6_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 230 \
    name accum_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename accum_V_7 \
    op interface \
    ports { accum_V_7_address0 { O 9 vector } accum_V_7_ce0 { O 1 bit } accum_V_7_q0 { I 16 vector } accum_V_7_address1 { O 9 vector } accum_V_7_ce1 { O 1 bit } accum_V_7_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V_7'"
}
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
set InstName sparse_matrix_multiply_HLS_flow_control_loop_pipe_sequential_init_U
set CompName sparse_matrix_multiply_HLS_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix sparse_matrix_multiply_HLS_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


