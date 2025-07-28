# This script segment is generated automatically by AutoPilot

set name syrk_fadd_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name syrk_fmul_32ns_32ns_32_4_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 3 ALLOW_PRAGMA 1
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
    id 57 \
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
    id 59 \
    name buff_A1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A1 \
    op interface \
    ports { buff_A1_address0 { O 12 vector } buff_A1_ce0 { O 1 bit } buff_A1_q0 { I 32 vector } buff_A1_address1 { O 12 vector } buff_A1_ce1 { O 1 bit } buff_A1_q1 { I 32 vector } buff_A1_address2 { O 12 vector } buff_A1_ce2 { O 1 bit } buff_A1_q2 { I 32 vector } buff_A1_address3 { O 12 vector } buff_A1_ce3 { O 1 bit } buff_A1_q3 { I 32 vector } buff_A1_address4 { O 12 vector } buff_A1_ce4 { O 1 bit } buff_A1_q4 { I 32 vector } buff_A1_address5 { O 12 vector } buff_A1_ce5 { O 1 bit } buff_A1_q5 { I 32 vector } buff_A1_address6 { O 12 vector } buff_A1_ce6 { O 1 bit } buff_A1_q6 { I 32 vector } buff_A1_address7 { O 12 vector } buff_A1_ce7 { O 1 bit } buff_A1_q7 { I 32 vector } buff_A1_address8 { O 12 vector } buff_A1_ce8 { O 1 bit } buff_A1_q8 { I 32 vector } buff_A1_address9 { O 12 vector } buff_A1_ce9 { O 1 bit } buff_A1_q9 { I 32 vector } buff_A1_address10 { O 12 vector } buff_A1_ce10 { O 1 bit } buff_A1_q10 { I 32 vector } buff_A1_address11 { O 12 vector } buff_A1_ce11 { O 1 bit } buff_A1_q11 { I 32 vector } buff_A1_address12 { O 12 vector } buff_A1_ce12 { O 1 bit } buff_A1_q12 { I 32 vector } buff_A1_address13 { O 12 vector } buff_A1_ce13 { O 1 bit } buff_A1_q13 { I 32 vector } buff_A1_address14 { O 12 vector } buff_A1_ce14 { O 1 bit } buff_A1_q14 { I 32 vector } buff_A1_address15 { O 12 vector } buff_A1_ce15 { O 1 bit } buff_A1_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 60 \
    name buff_C_out \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_C_out \
    op interface \
    ports { buff_C_out_address0 { O 12 vector } buff_C_out_ce0 { O 1 bit } buff_C_out_we0 { O 1 bit } buff_C_out_d0 { O 32 vector } buff_C_out_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_C_out'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
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
set InstName syrk_flow_control_loop_pipe_sequential_init_U
set CompName syrk_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix syrk_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


