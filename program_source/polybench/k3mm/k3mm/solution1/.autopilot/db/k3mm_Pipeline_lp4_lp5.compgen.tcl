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
    id 79 \
    name buff_C \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_C \
    op interface \
    ports { buff_C_address0 { O 12 vector } buff_C_ce0 { O 1 bit } buff_C_q0 { I 32 vector } buff_C_address1 { O 12 vector } buff_C_ce1 { O 1 bit } buff_C_q1 { I 32 vector } buff_C_address2 { O 12 vector } buff_C_ce2 { O 1 bit } buff_C_q2 { I 32 vector } buff_C_address3 { O 12 vector } buff_C_ce3 { O 1 bit } buff_C_q3 { I 32 vector } buff_C_address4 { O 12 vector } buff_C_ce4 { O 1 bit } buff_C_q4 { I 32 vector } buff_C_address5 { O 12 vector } buff_C_ce5 { O 1 bit } buff_C_q5 { I 32 vector } buff_C_address6 { O 12 vector } buff_C_ce6 { O 1 bit } buff_C_q6 { I 32 vector } buff_C_address7 { O 12 vector } buff_C_ce7 { O 1 bit } buff_C_q7 { I 32 vector } buff_C_address8 { O 12 vector } buff_C_ce8 { O 1 bit } buff_C_q8 { I 32 vector } buff_C_address9 { O 12 vector } buff_C_ce9 { O 1 bit } buff_C_q9 { I 32 vector } buff_C_address10 { O 12 vector } buff_C_ce10 { O 1 bit } buff_C_q10 { I 32 vector } buff_C_address11 { O 12 vector } buff_C_ce11 { O 1 bit } buff_C_q11 { I 32 vector } buff_C_address12 { O 12 vector } buff_C_ce12 { O 1 bit } buff_C_q12 { I 32 vector } buff_C_address13 { O 12 vector } buff_C_ce13 { O 1 bit } buff_C_q13 { I 32 vector } buff_C_address14 { O 12 vector } buff_C_ce14 { O 1 bit } buff_C_q14 { I 32 vector } buff_C_address15 { O 12 vector } buff_C_ce15 { O 1 bit } buff_C_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_C'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 80 \
    name buff_D \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_D \
    op interface \
    ports { buff_D_address0 { O 12 vector } buff_D_ce0 { O 1 bit } buff_D_q0 { I 32 vector } buff_D_address1 { O 12 vector } buff_D_ce1 { O 1 bit } buff_D_q1 { I 32 vector } buff_D_address2 { O 12 vector } buff_D_ce2 { O 1 bit } buff_D_q2 { I 32 vector } buff_D_address3 { O 12 vector } buff_D_ce3 { O 1 bit } buff_D_q3 { I 32 vector } buff_D_address4 { O 12 vector } buff_D_ce4 { O 1 bit } buff_D_q4 { I 32 vector } buff_D_address5 { O 12 vector } buff_D_ce5 { O 1 bit } buff_D_q5 { I 32 vector } buff_D_address6 { O 12 vector } buff_D_ce6 { O 1 bit } buff_D_q6 { I 32 vector } buff_D_address7 { O 12 vector } buff_D_ce7 { O 1 bit } buff_D_q7 { I 32 vector } buff_D_address8 { O 12 vector } buff_D_ce8 { O 1 bit } buff_D_q8 { I 32 vector } buff_D_address9 { O 12 vector } buff_D_ce9 { O 1 bit } buff_D_q9 { I 32 vector } buff_D_address10 { O 12 vector } buff_D_ce10 { O 1 bit } buff_D_q10 { I 32 vector } buff_D_address11 { O 12 vector } buff_D_ce11 { O 1 bit } buff_D_q11 { I 32 vector } buff_D_address12 { O 12 vector } buff_D_ce12 { O 1 bit } buff_D_q12 { I 32 vector } buff_D_address13 { O 12 vector } buff_D_ce13 { O 1 bit } buff_D_q13 { I 32 vector } buff_D_address14 { O 12 vector } buff_D_ce14 { O 1 bit } buff_D_q14 { I 32 vector } buff_D_address15 { O 12 vector } buff_D_ce15 { O 1 bit } buff_D_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_D'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 81 \
    name tmp2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename tmp2 \
    op interface \
    ports { tmp2_address0 { O 12 vector } tmp2_ce0 { O 1 bit } tmp2_we0 { O 1 bit } tmp2_d0 { O 32 vector } tmp2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp2'"
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
set InstName k3mm_flow_control_loop_pipe_sequential_init_U
set CompName k3mm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix k3mm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


