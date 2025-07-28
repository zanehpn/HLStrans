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
    id 28 \
    name in_local_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename in_local_V \
    op interface \
    ports { in_local_V_address0 { O 14 vector } in_local_V_ce0 { O 1 bit } in_local_V_q0 { I 19 vector } in_local_V_address1 { O 14 vector } in_local_V_ce1 { O 1 bit } in_local_V_q1 { I 19 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_local_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name u_hat_arr_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename u_hat_arr_V_3 \
    op interface \
    ports { u_hat_arr_V_3_address0 { O 4 vector } u_hat_arr_V_3_ce0 { O 1 bit } u_hat_arr_V_3_we0 { O 1 bit } u_hat_arr_V_3_d0 { O 19 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'u_hat_arr_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name p_arr_1_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_arr_1_V_3 \
    op interface \
    ports { p_arr_1_V_3_address0 { O 4 vector } p_arr_1_V_3_ce0 { O 1 bit } p_arr_1_V_3_we0 { O 1 bit } p_arr_1_V_3_d0 { O 19 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_arr_1_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name out_local_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_local_V \
    op interface \
    ports { out_local_V_address0 { O 17 vector } out_local_V_ce0 { O 1 bit } out_local_V_we0 { O 1 bit } out_local_V_d0 { O 19 vector } out_local_V_address1 { O 17 vector } out_local_V_ce1 { O 1 bit } out_local_V_we1 { O 1 bit } out_local_V_d1 { O 19 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_local_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name out_local_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_local_V_1 \
    op interface \
    ports { out_local_V_1_address0 { O 17 vector } out_local_V_1_ce0 { O 1 bit } out_local_V_1_we0 { O 1 bit } out_local_V_1_d0 { O 19 vector } out_local_V_1_address1 { O 17 vector } out_local_V_1_ce1 { O 1 bit } out_local_V_1_we1 { O 1 bit } out_local_V_1_d1 { O 19 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_local_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name u_hat_arr_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename u_hat_arr_V_2 \
    op interface \
    ports { u_hat_arr_V_2_address0 { O 4 vector } u_hat_arr_V_2_ce0 { O 1 bit } u_hat_arr_V_2_we0 { O 1 bit } u_hat_arr_V_2_d0 { O 19 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'u_hat_arr_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name p_arr_1_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_arr_1_V_2 \
    op interface \
    ports { p_arr_1_V_2_address0 { O 4 vector } p_arr_1_V_2_ce0 { O 1 bit } p_arr_1_V_2_we0 { O 1 bit } p_arr_1_V_2_d0 { O 19 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_arr_1_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 35 \
    name u_hat_arr_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename u_hat_arr_V_1 \
    op interface \
    ports { u_hat_arr_V_1_address0 { O 4 vector } u_hat_arr_V_1_ce0 { O 1 bit } u_hat_arr_V_1_we0 { O 1 bit } u_hat_arr_V_1_d0 { O 19 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'u_hat_arr_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 36 \
    name p_arr_1_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_arr_1_V_1 \
    op interface \
    ports { p_arr_1_V_1_address0 { O 4 vector } p_arr_1_V_1_ce0 { O 1 bit } p_arr_1_V_1_we0 { O 1 bit } p_arr_1_V_1_d0 { O 19 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_arr_1_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 37 \
    name u_hat_arr_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename u_hat_arr_V \
    op interface \
    ports { u_hat_arr_V_address0 { O 4 vector } u_hat_arr_V_ce0 { O 1 bit } u_hat_arr_V_we0 { O 1 bit } u_hat_arr_V_d0 { O 19 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'u_hat_arr_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name p_arr_1_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_arr_1_V \
    op interface \
    ports { p_arr_1_V_address0 { O 4 vector } p_arr_1_V_ce0 { O 1 bit } p_arr_1_V_we0 { O 1 bit } p_arr_1_V_d0 { O 19 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_arr_1_V'"
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
set InstName kalman_filter_flow_control_loop_pipe_sequential_init_U
set CompName kalman_filter_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix kalman_filter_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


