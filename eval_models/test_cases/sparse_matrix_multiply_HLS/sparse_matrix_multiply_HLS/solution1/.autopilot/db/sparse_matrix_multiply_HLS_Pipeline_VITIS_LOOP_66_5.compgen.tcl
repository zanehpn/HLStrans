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
    id 170 \
    name accum_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename accum_V \
    op interface \
    ports { accum_V_address0 { O 9 vector } accum_V_ce0 { O 1 bit } accum_V_we0 { O 1 bit } accum_V_d0 { O 16 vector } accum_V_address1 { O 9 vector } accum_V_ce1 { O 1 bit } accum_V_we1 { O 1 bit } accum_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 171 \
    name accum_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename accum_V_1 \
    op interface \
    ports { accum_V_1_address0 { O 9 vector } accum_V_1_ce0 { O 1 bit } accum_V_1_we0 { O 1 bit } accum_V_1_d0 { O 16 vector } accum_V_1_address1 { O 9 vector } accum_V_1_ce1 { O 1 bit } accum_V_1_we1 { O 1 bit } accum_V_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
    name accum_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename accum_V_2 \
    op interface \
    ports { accum_V_2_address0 { O 9 vector } accum_V_2_ce0 { O 1 bit } accum_V_2_we0 { O 1 bit } accum_V_2_d0 { O 16 vector } accum_V_2_address1 { O 9 vector } accum_V_2_ce1 { O 1 bit } accum_V_2_we1 { O 1 bit } accum_V_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 173 \
    name accum_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename accum_V_3 \
    op interface \
    ports { accum_V_3_address0 { O 9 vector } accum_V_3_ce0 { O 1 bit } accum_V_3_we0 { O 1 bit } accum_V_3_d0 { O 16 vector } accum_V_3_address1 { O 9 vector } accum_V_3_ce1 { O 1 bit } accum_V_3_we1 { O 1 bit } accum_V_3_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 174 \
    name accum_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename accum_V_4 \
    op interface \
    ports { accum_V_4_address0 { O 9 vector } accum_V_4_ce0 { O 1 bit } accum_V_4_we0 { O 1 bit } accum_V_4_d0 { O 16 vector } accum_V_4_address1 { O 9 vector } accum_V_4_ce1 { O 1 bit } accum_V_4_we1 { O 1 bit } accum_V_4_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 175 \
    name accum_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename accum_V_5 \
    op interface \
    ports { accum_V_5_address0 { O 9 vector } accum_V_5_ce0 { O 1 bit } accum_V_5_we0 { O 1 bit } accum_V_5_d0 { O 16 vector } accum_V_5_address1 { O 9 vector } accum_V_5_ce1 { O 1 bit } accum_V_5_we1 { O 1 bit } accum_V_5_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 176 \
    name accum_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename accum_V_6 \
    op interface \
    ports { accum_V_6_address0 { O 9 vector } accum_V_6_ce0 { O 1 bit } accum_V_6_we0 { O 1 bit } accum_V_6_d0 { O 16 vector } accum_V_6_address1 { O 9 vector } accum_V_6_ce1 { O 1 bit } accum_V_6_we1 { O 1 bit } accum_V_6_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'accum_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 177 \
    name accum_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename accum_V_7 \
    op interface \
    ports { accum_V_7_address0 { O 9 vector } accum_V_7_ce0 { O 1 bit } accum_V_7_we0 { O 1 bit } accum_V_7_d0 { O 16 vector } accum_V_7_address1 { O 9 vector } accum_V_7_ce1 { O 1 bit } accum_V_7_we1 { O 1 bit } accum_V_7_d1 { O 16 vector } } \
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


