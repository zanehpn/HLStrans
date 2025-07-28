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
    id 7 \
    name out_local_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_local_V \
    op interface \
    ports { out_local_V_address0 { O 18 vector } out_local_V_ce0 { O 1 bit } out_local_V_we0 { O 1 bit } out_local_V_d0 { O 19 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_local_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8 \
    name in_local_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename in_local_V \
    op interface \
    ports { in_local_V_address0 { O 18 vector } in_local_V_ce0 { O 1 bit } in_local_V_q0 { I 19 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_local_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name p_arr_1_V_63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_63_out \
    op interface \
    ports { p_arr_1_V_63_out { O 19 vector } p_arr_1_V_63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name p_arr_1_V_62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_62_out \
    op interface \
    ports { p_arr_1_V_62_out { O 19 vector } p_arr_1_V_62_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name p_arr_1_V_61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_61_out \
    op interface \
    ports { p_arr_1_V_61_out { O 19 vector } p_arr_1_V_61_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name p_arr_1_V_60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_60_out \
    op interface \
    ports { p_arr_1_V_60_out { O 19 vector } p_arr_1_V_60_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name p_arr_1_V_59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_59_out \
    op interface \
    ports { p_arr_1_V_59_out { O 19 vector } p_arr_1_V_59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name p_arr_1_V_58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_58_out \
    op interface \
    ports { p_arr_1_V_58_out { O 19 vector } p_arr_1_V_58_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name p_arr_1_V_57_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_57_out \
    op interface \
    ports { p_arr_1_V_57_out { O 19 vector } p_arr_1_V_57_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name p_arr_1_V_56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_56_out \
    op interface \
    ports { p_arr_1_V_56_out { O 19 vector } p_arr_1_V_56_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name p_arr_1_V_55_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_55_out \
    op interface \
    ports { p_arr_1_V_55_out { O 19 vector } p_arr_1_V_55_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name p_arr_1_V_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_54_out \
    op interface \
    ports { p_arr_1_V_54_out { O 19 vector } p_arr_1_V_54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name p_arr_1_V_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_53_out \
    op interface \
    ports { p_arr_1_V_53_out { O 19 vector } p_arr_1_V_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name p_arr_1_V_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_52_out \
    op interface \
    ports { p_arr_1_V_52_out { O 19 vector } p_arr_1_V_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name p_arr_1_V_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_51_out \
    op interface \
    ports { p_arr_1_V_51_out { O 19 vector } p_arr_1_V_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name p_arr_1_V_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_50_out \
    op interface \
    ports { p_arr_1_V_50_out { O 19 vector } p_arr_1_V_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name p_arr_1_V_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_49_out \
    op interface \
    ports { p_arr_1_V_49_out { O 19 vector } p_arr_1_V_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name p_arr_1_V_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_48_out \
    op interface \
    ports { p_arr_1_V_48_out { O 19 vector } p_arr_1_V_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name p_arr_1_V_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_47_out \
    op interface \
    ports { p_arr_1_V_47_out { O 19 vector } p_arr_1_V_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name p_arr_1_V_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_46_out \
    op interface \
    ports { p_arr_1_V_46_out { O 19 vector } p_arr_1_V_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name p_arr_1_V_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_45_out \
    op interface \
    ports { p_arr_1_V_45_out { O 19 vector } p_arr_1_V_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name p_arr_1_V_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_44_out \
    op interface \
    ports { p_arr_1_V_44_out { O 19 vector } p_arr_1_V_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name p_arr_1_V_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_43_out \
    op interface \
    ports { p_arr_1_V_43_out { O 19 vector } p_arr_1_V_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name p_arr_1_V_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_42_out \
    op interface \
    ports { p_arr_1_V_42_out { O 19 vector } p_arr_1_V_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name p_arr_1_V_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_41_out \
    op interface \
    ports { p_arr_1_V_41_out { O 19 vector } p_arr_1_V_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name p_arr_1_V_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_40_out \
    op interface \
    ports { p_arr_1_V_40_out { O 19 vector } p_arr_1_V_40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name p_arr_1_V_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_39_out \
    op interface \
    ports { p_arr_1_V_39_out { O 19 vector } p_arr_1_V_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name p_arr_1_V_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_38_out \
    op interface \
    ports { p_arr_1_V_38_out { O 19 vector } p_arr_1_V_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name p_arr_1_V_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_37_out \
    op interface \
    ports { p_arr_1_V_37_out { O 19 vector } p_arr_1_V_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name p_arr_1_V_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_36_out \
    op interface \
    ports { p_arr_1_V_36_out { O 19 vector } p_arr_1_V_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name p_arr_1_V_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_35_out \
    op interface \
    ports { p_arr_1_V_35_out { O 19 vector } p_arr_1_V_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name p_arr_1_V_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_34_out \
    op interface \
    ports { p_arr_1_V_34_out { O 19 vector } p_arr_1_V_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name p_arr_1_V_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_33_out \
    op interface \
    ports { p_arr_1_V_33_out { O 19 vector } p_arr_1_V_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name p_arr_1_V_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_32_out \
    op interface \
    ports { p_arr_1_V_32_out { O 19 vector } p_arr_1_V_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name p_arr_1_V_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_31_out \
    op interface \
    ports { p_arr_1_V_31_out { O 19 vector } p_arr_1_V_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name p_arr_1_V_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_30_out \
    op interface \
    ports { p_arr_1_V_30_out { O 19 vector } p_arr_1_V_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name p_arr_1_V_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_29_out \
    op interface \
    ports { p_arr_1_V_29_out { O 19 vector } p_arr_1_V_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name p_arr_1_V_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_28_out \
    op interface \
    ports { p_arr_1_V_28_out { O 19 vector } p_arr_1_V_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name p_arr_1_V_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_27_out \
    op interface \
    ports { p_arr_1_V_27_out { O 19 vector } p_arr_1_V_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name p_arr_1_V_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_26_out \
    op interface \
    ports { p_arr_1_V_26_out { O 19 vector } p_arr_1_V_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name p_arr_1_V_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_25_out \
    op interface \
    ports { p_arr_1_V_25_out { O 19 vector } p_arr_1_V_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name p_arr_1_V_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_24_out \
    op interface \
    ports { p_arr_1_V_24_out { O 19 vector } p_arr_1_V_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name p_arr_1_V_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_23_out \
    op interface \
    ports { p_arr_1_V_23_out { O 19 vector } p_arr_1_V_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name p_arr_1_V_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_22_out \
    op interface \
    ports { p_arr_1_V_22_out { O 19 vector } p_arr_1_V_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name p_arr_1_V_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_21_out \
    op interface \
    ports { p_arr_1_V_21_out { O 19 vector } p_arr_1_V_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name p_arr_1_V_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_20_out \
    op interface \
    ports { p_arr_1_V_20_out { O 19 vector } p_arr_1_V_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name p_arr_1_V_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_19_out \
    op interface \
    ports { p_arr_1_V_19_out { O 19 vector } p_arr_1_V_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name p_arr_1_V_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_18_out \
    op interface \
    ports { p_arr_1_V_18_out { O 19 vector } p_arr_1_V_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name p_arr_1_V_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_17_out \
    op interface \
    ports { p_arr_1_V_17_out { O 19 vector } p_arr_1_V_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name p_arr_1_V_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_16_out \
    op interface \
    ports { p_arr_1_V_16_out { O 19 vector } p_arr_1_V_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name p_arr_1_V_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_15_out \
    op interface \
    ports { p_arr_1_V_15_out { O 19 vector } p_arr_1_V_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name p_arr_1_V_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_14_out \
    op interface \
    ports { p_arr_1_V_14_out { O 19 vector } p_arr_1_V_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name p_arr_1_V_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_13_out \
    op interface \
    ports { p_arr_1_V_13_out { O 19 vector } p_arr_1_V_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name p_arr_1_V_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_12_out \
    op interface \
    ports { p_arr_1_V_12_out { O 19 vector } p_arr_1_V_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name p_arr_1_V_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_11_out \
    op interface \
    ports { p_arr_1_V_11_out { O 19 vector } p_arr_1_V_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name p_arr_1_V_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_10_out \
    op interface \
    ports { p_arr_1_V_10_out { O 19 vector } p_arr_1_V_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name p_arr_1_V_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_9_out \
    op interface \
    ports { p_arr_1_V_9_out { O 19 vector } p_arr_1_V_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name p_arr_1_V_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_8_out \
    op interface \
    ports { p_arr_1_V_8_out { O 19 vector } p_arr_1_V_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name p_arr_1_V_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_7_out \
    op interface \
    ports { p_arr_1_V_7_out { O 19 vector } p_arr_1_V_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name p_arr_1_V_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_6_out \
    op interface \
    ports { p_arr_1_V_6_out { O 19 vector } p_arr_1_V_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name p_arr_1_V_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_5_out \
    op interface \
    ports { p_arr_1_V_5_out { O 19 vector } p_arr_1_V_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name p_arr_1_V_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_4_out \
    op interface \
    ports { p_arr_1_V_4_out { O 19 vector } p_arr_1_V_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name p_arr_1_V_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_3_out \
    op interface \
    ports { p_arr_1_V_3_out { O 19 vector } p_arr_1_V_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name p_arr_1_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_2_out \
    op interface \
    ports { p_arr_1_V_2_out { O 19 vector } p_arr_1_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name p_arr_1_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_1_out \
    op interface \
    ports { p_arr_1_V_1_out { O 19 vector } p_arr_1_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name p_arr_1_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_out \
    op interface \
    ports { p_arr_1_V_out { O 19 vector } p_arr_1_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name u_hat_arr_V_63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_63_out \
    op interface \
    ports { u_hat_arr_V_63_out { O 19 vector } u_hat_arr_V_63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name u_hat_arr_V_62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_62_out \
    op interface \
    ports { u_hat_arr_V_62_out { O 19 vector } u_hat_arr_V_62_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name u_hat_arr_V_61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_61_out \
    op interface \
    ports { u_hat_arr_V_61_out { O 19 vector } u_hat_arr_V_61_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name u_hat_arr_V_60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_60_out \
    op interface \
    ports { u_hat_arr_V_60_out { O 19 vector } u_hat_arr_V_60_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name u_hat_arr_V_59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_59_out \
    op interface \
    ports { u_hat_arr_V_59_out { O 19 vector } u_hat_arr_V_59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name u_hat_arr_V_58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_58_out \
    op interface \
    ports { u_hat_arr_V_58_out { O 19 vector } u_hat_arr_V_58_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name u_hat_arr_V_57_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_57_out \
    op interface \
    ports { u_hat_arr_V_57_out { O 19 vector } u_hat_arr_V_57_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name u_hat_arr_V_56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_56_out \
    op interface \
    ports { u_hat_arr_V_56_out { O 19 vector } u_hat_arr_V_56_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name u_hat_arr_V_55_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_55_out \
    op interface \
    ports { u_hat_arr_V_55_out { O 19 vector } u_hat_arr_V_55_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name u_hat_arr_V_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_54_out \
    op interface \
    ports { u_hat_arr_V_54_out { O 19 vector } u_hat_arr_V_54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name u_hat_arr_V_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_53_out \
    op interface \
    ports { u_hat_arr_V_53_out { O 19 vector } u_hat_arr_V_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name u_hat_arr_V_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_52_out \
    op interface \
    ports { u_hat_arr_V_52_out { O 19 vector } u_hat_arr_V_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name u_hat_arr_V_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_51_out \
    op interface \
    ports { u_hat_arr_V_51_out { O 19 vector } u_hat_arr_V_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name u_hat_arr_V_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_50_out \
    op interface \
    ports { u_hat_arr_V_50_out { O 19 vector } u_hat_arr_V_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name u_hat_arr_V_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_49_out \
    op interface \
    ports { u_hat_arr_V_49_out { O 19 vector } u_hat_arr_V_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name u_hat_arr_V_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_48_out \
    op interface \
    ports { u_hat_arr_V_48_out { O 19 vector } u_hat_arr_V_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name u_hat_arr_V_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_47_out \
    op interface \
    ports { u_hat_arr_V_47_out { O 19 vector } u_hat_arr_V_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name u_hat_arr_V_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_46_out \
    op interface \
    ports { u_hat_arr_V_46_out { O 19 vector } u_hat_arr_V_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name u_hat_arr_V_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_45_out \
    op interface \
    ports { u_hat_arr_V_45_out { O 19 vector } u_hat_arr_V_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name u_hat_arr_V_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_44_out \
    op interface \
    ports { u_hat_arr_V_44_out { O 19 vector } u_hat_arr_V_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name u_hat_arr_V_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_43_out \
    op interface \
    ports { u_hat_arr_V_43_out { O 19 vector } u_hat_arr_V_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name u_hat_arr_V_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_42_out \
    op interface \
    ports { u_hat_arr_V_42_out { O 19 vector } u_hat_arr_V_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name u_hat_arr_V_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_41_out \
    op interface \
    ports { u_hat_arr_V_41_out { O 19 vector } u_hat_arr_V_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name u_hat_arr_V_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_40_out \
    op interface \
    ports { u_hat_arr_V_40_out { O 19 vector } u_hat_arr_V_40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name u_hat_arr_V_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_39_out \
    op interface \
    ports { u_hat_arr_V_39_out { O 19 vector } u_hat_arr_V_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name u_hat_arr_V_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_38_out \
    op interface \
    ports { u_hat_arr_V_38_out { O 19 vector } u_hat_arr_V_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name u_hat_arr_V_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_37_out \
    op interface \
    ports { u_hat_arr_V_37_out { O 19 vector } u_hat_arr_V_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name u_hat_arr_V_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_36_out \
    op interface \
    ports { u_hat_arr_V_36_out { O 19 vector } u_hat_arr_V_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name u_hat_arr_V_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_35_out \
    op interface \
    ports { u_hat_arr_V_35_out { O 19 vector } u_hat_arr_V_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name u_hat_arr_V_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_34_out \
    op interface \
    ports { u_hat_arr_V_34_out { O 19 vector } u_hat_arr_V_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name u_hat_arr_V_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_33_out \
    op interface \
    ports { u_hat_arr_V_33_out { O 19 vector } u_hat_arr_V_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name u_hat_arr_V_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_32_out \
    op interface \
    ports { u_hat_arr_V_32_out { O 19 vector } u_hat_arr_V_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name u_hat_arr_V_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_31_out \
    op interface \
    ports { u_hat_arr_V_31_out { O 19 vector } u_hat_arr_V_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name u_hat_arr_V_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_30_out \
    op interface \
    ports { u_hat_arr_V_30_out { O 19 vector } u_hat_arr_V_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name u_hat_arr_V_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_29_out \
    op interface \
    ports { u_hat_arr_V_29_out { O 19 vector } u_hat_arr_V_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name u_hat_arr_V_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_28_out \
    op interface \
    ports { u_hat_arr_V_28_out { O 19 vector } u_hat_arr_V_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name u_hat_arr_V_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_27_out \
    op interface \
    ports { u_hat_arr_V_27_out { O 19 vector } u_hat_arr_V_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name u_hat_arr_V_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_26_out \
    op interface \
    ports { u_hat_arr_V_26_out { O 19 vector } u_hat_arr_V_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name u_hat_arr_V_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_25_out \
    op interface \
    ports { u_hat_arr_V_25_out { O 19 vector } u_hat_arr_V_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name u_hat_arr_V_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_24_out \
    op interface \
    ports { u_hat_arr_V_24_out { O 19 vector } u_hat_arr_V_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name u_hat_arr_V_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_23_out \
    op interface \
    ports { u_hat_arr_V_23_out { O 19 vector } u_hat_arr_V_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name u_hat_arr_V_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_22_out \
    op interface \
    ports { u_hat_arr_V_22_out { O 19 vector } u_hat_arr_V_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name u_hat_arr_V_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_21_out \
    op interface \
    ports { u_hat_arr_V_21_out { O 19 vector } u_hat_arr_V_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name u_hat_arr_V_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_20_out \
    op interface \
    ports { u_hat_arr_V_20_out { O 19 vector } u_hat_arr_V_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name u_hat_arr_V_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_19_out \
    op interface \
    ports { u_hat_arr_V_19_out { O 19 vector } u_hat_arr_V_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name u_hat_arr_V_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_18_out \
    op interface \
    ports { u_hat_arr_V_18_out { O 19 vector } u_hat_arr_V_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name u_hat_arr_V_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_17_out \
    op interface \
    ports { u_hat_arr_V_17_out { O 19 vector } u_hat_arr_V_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name u_hat_arr_V_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_16_out \
    op interface \
    ports { u_hat_arr_V_16_out { O 19 vector } u_hat_arr_V_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name u_hat_arr_V_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_15_out \
    op interface \
    ports { u_hat_arr_V_15_out { O 19 vector } u_hat_arr_V_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name u_hat_arr_V_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_14_out \
    op interface \
    ports { u_hat_arr_V_14_out { O 19 vector } u_hat_arr_V_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name u_hat_arr_V_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_13_out \
    op interface \
    ports { u_hat_arr_V_13_out { O 19 vector } u_hat_arr_V_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name u_hat_arr_V_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_12_out \
    op interface \
    ports { u_hat_arr_V_12_out { O 19 vector } u_hat_arr_V_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name u_hat_arr_V_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_11_out \
    op interface \
    ports { u_hat_arr_V_11_out { O 19 vector } u_hat_arr_V_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name u_hat_arr_V_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_10_out \
    op interface \
    ports { u_hat_arr_V_10_out { O 19 vector } u_hat_arr_V_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name u_hat_arr_V_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_9_out \
    op interface \
    ports { u_hat_arr_V_9_out { O 19 vector } u_hat_arr_V_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name u_hat_arr_V_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_8_out \
    op interface \
    ports { u_hat_arr_V_8_out { O 19 vector } u_hat_arr_V_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name u_hat_arr_V_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_7_out \
    op interface \
    ports { u_hat_arr_V_7_out { O 19 vector } u_hat_arr_V_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name u_hat_arr_V_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_6_out \
    op interface \
    ports { u_hat_arr_V_6_out { O 19 vector } u_hat_arr_V_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name u_hat_arr_V_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_5_out \
    op interface \
    ports { u_hat_arr_V_5_out { O 19 vector } u_hat_arr_V_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name u_hat_arr_V_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_4_out \
    op interface \
    ports { u_hat_arr_V_4_out { O 19 vector } u_hat_arr_V_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name u_hat_arr_V_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_3_out \
    op interface \
    ports { u_hat_arr_V_3_out { O 19 vector } u_hat_arr_V_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name u_hat_arr_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_2_out \
    op interface \
    ports { u_hat_arr_V_2_out { O 19 vector } u_hat_arr_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name u_hat_arr_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_1_out \
    op interface \
    ports { u_hat_arr_V_1_out { O 19 vector } u_hat_arr_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name u_hat_arr_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_out \
    op interface \
    ports { u_hat_arr_V_out { O 19 vector } u_hat_arr_V_out_ap_vld { O 1 bit } } \
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


