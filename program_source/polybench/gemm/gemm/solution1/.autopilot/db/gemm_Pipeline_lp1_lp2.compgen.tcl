# This script segment is generated automatically by AutoPilot

set name gemm_fadd_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name gemm_fmul_32ns_32ns_32_4_max_dsp_1
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
    id 58 \
    name buff_A \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A \
    op interface \
    ports { buff_A_address0 { O 12 vector } buff_A_ce0 { O 1 bit } buff_A_q0 { I 32 vector } buff_A_address1 { O 12 vector } buff_A_ce1 { O 1 bit } buff_A_q1 { I 32 vector } buff_A_address2 { O 12 vector } buff_A_ce2 { O 1 bit } buff_A_q2 { I 32 vector } buff_A_address3 { O 12 vector } buff_A_ce3 { O 1 bit } buff_A_q3 { I 32 vector } buff_A_address4 { O 12 vector } buff_A_ce4 { O 1 bit } buff_A_q4 { I 32 vector } buff_A_address5 { O 12 vector } buff_A_ce5 { O 1 bit } buff_A_q5 { I 32 vector } buff_A_address6 { O 12 vector } buff_A_ce6 { O 1 bit } buff_A_q6 { I 32 vector } buff_A_address7 { O 12 vector } buff_A_ce7 { O 1 bit } buff_A_q7 { I 32 vector } buff_A_address8 { O 12 vector } buff_A_ce8 { O 1 bit } buff_A_q8 { I 32 vector } buff_A_address9 { O 12 vector } buff_A_ce9 { O 1 bit } buff_A_q9 { I 32 vector } buff_A_address10 { O 12 vector } buff_A_ce10 { O 1 bit } buff_A_q10 { I 32 vector } buff_A_address11 { O 12 vector } buff_A_ce11 { O 1 bit } buff_A_q11 { I 32 vector } buff_A_address12 { O 12 vector } buff_A_ce12 { O 1 bit } buff_A_q12 { I 32 vector } buff_A_address13 { O 12 vector } buff_A_ce13 { O 1 bit } buff_A_q13 { I 32 vector } buff_A_address14 { O 12 vector } buff_A_ce14 { O 1 bit } buff_A_q14 { I 32 vector } buff_A_address15 { O 12 vector } buff_A_ce15 { O 1 bit } buff_A_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 60 \
    name buff_B \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B \
    op interface \
    ports { buff_B_address0 { O 12 vector } buff_B_ce0 { O 1 bit } buff_B_q0 { I 32 vector } buff_B_address1 { O 12 vector } buff_B_ce1 { O 1 bit } buff_B_q1 { I 32 vector } buff_B_address2 { O 12 vector } buff_B_ce2 { O 1 bit } buff_B_q2 { I 32 vector } buff_B_address3 { O 12 vector } buff_B_ce3 { O 1 bit } buff_B_q3 { I 32 vector } buff_B_address4 { O 12 vector } buff_B_ce4 { O 1 bit } buff_B_q4 { I 32 vector } buff_B_address5 { O 12 vector } buff_B_ce5 { O 1 bit } buff_B_q5 { I 32 vector } buff_B_address6 { O 12 vector } buff_B_ce6 { O 1 bit } buff_B_q6 { I 32 vector } buff_B_address7 { O 12 vector } buff_B_ce7 { O 1 bit } buff_B_q7 { I 32 vector } buff_B_address8 { O 12 vector } buff_B_ce8 { O 1 bit } buff_B_q8 { I 32 vector } buff_B_address9 { O 12 vector } buff_B_ce9 { O 1 bit } buff_B_q9 { I 32 vector } buff_B_address10 { O 12 vector } buff_B_ce10 { O 1 bit } buff_B_q10 { I 32 vector } buff_B_address11 { O 12 vector } buff_B_ce11 { O 1 bit } buff_B_q11 { I 32 vector } buff_B_address12 { O 12 vector } buff_B_ce12 { O 1 bit } buff_B_q12 { I 32 vector } buff_B_address13 { O 12 vector } buff_B_ce13 { O 1 bit } buff_B_q13 { I 32 vector } buff_B_address14 { O 12 vector } buff_B_ce14 { O 1 bit } buff_B_q14 { I 32 vector } buff_B_address15 { O 12 vector } buff_B_ce15 { O 1 bit } buff_B_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 61 \
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
    id 59 \
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
set InstName gemm_flow_control_loop_pipe_sequential_init_U
set CompName gemm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix gemm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


