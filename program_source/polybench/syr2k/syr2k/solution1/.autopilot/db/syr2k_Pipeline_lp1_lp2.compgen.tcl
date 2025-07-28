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
    id 59 \
    name buff_A0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A0 \
    op interface \
    ports { buff_A0_address0 { O 12 vector } buff_A0_ce0 { O 1 bit } buff_A0_q0 { I 32 vector } buff_A0_address1 { O 12 vector } buff_A0_ce1 { O 1 bit } buff_A0_q1 { I 32 vector } buff_A0_address2 { O 12 vector } buff_A0_ce2 { O 1 bit } buff_A0_q2 { I 32 vector } buff_A0_address3 { O 12 vector } buff_A0_ce3 { O 1 bit } buff_A0_q3 { I 32 vector } buff_A0_address4 { O 12 vector } buff_A0_ce4 { O 1 bit } buff_A0_q4 { I 32 vector } buff_A0_address5 { O 12 vector } buff_A0_ce5 { O 1 bit } buff_A0_q5 { I 32 vector } buff_A0_address6 { O 12 vector } buff_A0_ce6 { O 1 bit } buff_A0_q6 { I 32 vector } buff_A0_address7 { O 12 vector } buff_A0_ce7 { O 1 bit } buff_A0_q7 { I 32 vector } buff_A0_address8 { O 12 vector } buff_A0_ce8 { O 1 bit } buff_A0_q8 { I 32 vector } buff_A0_address9 { O 12 vector } buff_A0_ce9 { O 1 bit } buff_A0_q9 { I 32 vector } buff_A0_address10 { O 12 vector } buff_A0_ce10 { O 1 bit } buff_A0_q10 { I 32 vector } buff_A0_address11 { O 12 vector } buff_A0_ce11 { O 1 bit } buff_A0_q11 { I 32 vector } buff_A0_address12 { O 12 vector } buff_A0_ce12 { O 1 bit } buff_A0_q12 { I 32 vector } buff_A0_address13 { O 12 vector } buff_A0_ce13 { O 1 bit } buff_A0_q13 { I 32 vector } buff_A0_address14 { O 12 vector } buff_A0_ce14 { O 1 bit } buff_A0_q14 { I 32 vector } buff_A0_address15 { O 12 vector } buff_A0_ce15 { O 1 bit } buff_A0_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 61 \
    name buff_B0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B0 \
    op interface \
    ports { buff_B0_address0 { O 12 vector } buff_B0_ce0 { O 1 bit } buff_B0_q0 { I 32 vector } buff_B0_address1 { O 12 vector } buff_B0_ce1 { O 1 bit } buff_B0_q1 { I 32 vector } buff_B0_address2 { O 12 vector } buff_B0_ce2 { O 1 bit } buff_B0_q2 { I 32 vector } buff_B0_address3 { O 12 vector } buff_B0_ce3 { O 1 bit } buff_B0_q3 { I 32 vector } buff_B0_address4 { O 12 vector } buff_B0_ce4 { O 1 bit } buff_B0_q4 { I 32 vector } buff_B0_address5 { O 12 vector } buff_B0_ce5 { O 1 bit } buff_B0_q5 { I 32 vector } buff_B0_address6 { O 12 vector } buff_B0_ce6 { O 1 bit } buff_B0_q6 { I 32 vector } buff_B0_address7 { O 12 vector } buff_B0_ce7 { O 1 bit } buff_B0_q7 { I 32 vector } buff_B0_address8 { O 12 vector } buff_B0_ce8 { O 1 bit } buff_B0_q8 { I 32 vector } buff_B0_address9 { O 12 vector } buff_B0_ce9 { O 1 bit } buff_B0_q9 { I 32 vector } buff_B0_address10 { O 12 vector } buff_B0_ce10 { O 1 bit } buff_B0_q10 { I 32 vector } buff_B0_address11 { O 12 vector } buff_B0_ce11 { O 1 bit } buff_B0_q11 { I 32 vector } buff_B0_address12 { O 12 vector } buff_B0_ce12 { O 1 bit } buff_B0_q12 { I 32 vector } buff_B0_address13 { O 12 vector } buff_B0_ce13 { O 1 bit } buff_B0_q13 { I 32 vector } buff_B0_address14 { O 12 vector } buff_B0_ce14 { O 1 bit } buff_B0_q14 { I 32 vector } buff_B0_address15 { O 12 vector } buff_B0_ce15 { O 1 bit } buff_B0_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 62 \
    name tmp1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename tmp1 \
    op interface \
    ports { tmp1_address0 { O 12 vector } tmp1_ce0 { O 1 bit } tmp1_we0 { O 1 bit } tmp1_d0 { O 32 vector } tmp1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name alpha \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_alpha \
    op interface \
    ports { alpha { I 32 vector } } \
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
set InstName syr2k_flow_control_loop_pipe_sequential_init_U
set CompName syr2k_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix syr2k_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


