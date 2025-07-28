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
    id 405 \
    name int_state_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename int_state_V \
    op interface \
    ports { int_state_V_address0 { O 6 vector } int_state_V_ce0 { O 1 bit } int_state_V_q0 { I 32 vector } int_state_V_address1 { O 6 vector } int_state_V_ce1 { O 1 bit } int_state_V_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'int_state_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name internal_state_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_1 \
    op interface \
    ports { internal_state_1 { O 32 vector } internal_state_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name internal_state_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_2 \
    op interface \
    ports { internal_state_2 { O 32 vector } internal_state_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name internal_state_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_3 \
    op interface \
    ports { internal_state_3 { O 32 vector } internal_state_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name internal_state_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_0 \
    op interface \
    ports { internal_state_0 { O 32 vector } internal_state_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name internal_state_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_4 \
    op interface \
    ports { internal_state_4 { O 32 vector } internal_state_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name internal_state_8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_8 \
    op interface \
    ports { internal_state_8 { O 32 vector } internal_state_8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name internal_state_12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_12 \
    op interface \
    ports { internal_state_12 { O 32 vector } internal_state_12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name internal_state_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_16 \
    op interface \
    ports { internal_state_16 { O 32 vector } internal_state_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name internal_state_20 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_20 \
    op interface \
    ports { internal_state_20 { O 32 vector } internal_state_20_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name internal_state_24 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_24 \
    op interface \
    ports { internal_state_24 { O 32 vector } internal_state_24_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name internal_state_28 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_28 \
    op interface \
    ports { internal_state_28 { O 32 vector } internal_state_28_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name internal_state_32 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_32 \
    op interface \
    ports { internal_state_32 { O 32 vector } internal_state_32_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name internal_state_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_5 \
    op interface \
    ports { internal_state_5 { O 32 vector } internal_state_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name internal_state_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_6 \
    op interface \
    ports { internal_state_6 { O 32 vector } internal_state_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name internal_state_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_7 \
    op interface \
    ports { internal_state_7 { O 32 vector } internal_state_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name internal_state_9 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_9 \
    op interface \
    ports { internal_state_9 { O 32 vector } internal_state_9_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name internal_state_10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_10 \
    op interface \
    ports { internal_state_10 { O 32 vector } internal_state_10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name internal_state_11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_11 \
    op interface \
    ports { internal_state_11 { O 32 vector } internal_state_11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name internal_state_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_13 \
    op interface \
    ports { internal_state_13 { O 32 vector } internal_state_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name internal_state_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_14 \
    op interface \
    ports { internal_state_14 { O 32 vector } internal_state_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name internal_state_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_15 \
    op interface \
    ports { internal_state_15 { O 32 vector } internal_state_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name internal_state_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_17 \
    op interface \
    ports { internal_state_17 { O 32 vector } internal_state_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name internal_state_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_18 \
    op interface \
    ports { internal_state_18 { O 32 vector } internal_state_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name internal_state_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_19 \
    op interface \
    ports { internal_state_19 { O 32 vector } internal_state_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name internal_state_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_21 \
    op interface \
    ports { internal_state_21 { O 32 vector } internal_state_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name internal_state_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_22 \
    op interface \
    ports { internal_state_22 { O 32 vector } internal_state_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name internal_state_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_23 \
    op interface \
    ports { internal_state_23 { O 32 vector } internal_state_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name internal_state_25 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_25 \
    op interface \
    ports { internal_state_25 { O 32 vector } internal_state_25_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name internal_state_26 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_26 \
    op interface \
    ports { internal_state_26 { O 32 vector } internal_state_26_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name internal_state_27 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_27 \
    op interface \
    ports { internal_state_27 { O 32 vector } internal_state_27_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name internal_state_29 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_29 \
    op interface \
    ports { internal_state_29 { O 32 vector } internal_state_29_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name internal_state_30 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_30 \
    op interface \
    ports { internal_state_30 { O 32 vector } internal_state_30_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name internal_state_31 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_31 \
    op interface \
    ports { internal_state_31 { O 32 vector } internal_state_31_ap_vld { O 1 bit } } \
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
set InstName latnrm_flow_control_loop_pipe_sequential_init_U
set CompName latnrm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix latnrm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


