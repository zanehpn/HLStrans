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
    id 1 \
    name row_ptr_A \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_ptr_A \
    op interface \
    ports { row_ptr_A_address0 { O 7 vector } row_ptr_A_ce0 { O 1 bit } row_ptr_A_q0 { I 32 vector } row_ptr_A_address1 { O 7 vector } row_ptr_A_ce1 { O 1 bit } row_ptr_A_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_ptr_A'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name local_row_ptr_A_64_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_64_out \
    op interface \
    ports { local_row_ptr_A_64_out { O 32 vector } local_row_ptr_A_64_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name local_row_ptr_A_63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_63_out \
    op interface \
    ports { local_row_ptr_A_63_out { O 32 vector } local_row_ptr_A_63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name local_row_ptr_A_62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_62_out \
    op interface \
    ports { local_row_ptr_A_62_out { O 32 vector } local_row_ptr_A_62_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name local_row_ptr_A_61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_61_out \
    op interface \
    ports { local_row_ptr_A_61_out { O 32 vector } local_row_ptr_A_61_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name local_row_ptr_A_60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_60_out \
    op interface \
    ports { local_row_ptr_A_60_out { O 32 vector } local_row_ptr_A_60_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name local_row_ptr_A_59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_59_out \
    op interface \
    ports { local_row_ptr_A_59_out { O 32 vector } local_row_ptr_A_59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name local_row_ptr_A_58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_58_out \
    op interface \
    ports { local_row_ptr_A_58_out { O 32 vector } local_row_ptr_A_58_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name local_row_ptr_A_57_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_57_out \
    op interface \
    ports { local_row_ptr_A_57_out { O 32 vector } local_row_ptr_A_57_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name local_row_ptr_A_56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_56_out \
    op interface \
    ports { local_row_ptr_A_56_out { O 32 vector } local_row_ptr_A_56_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name local_row_ptr_A_55_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_55_out \
    op interface \
    ports { local_row_ptr_A_55_out { O 32 vector } local_row_ptr_A_55_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name local_row_ptr_A_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_54_out \
    op interface \
    ports { local_row_ptr_A_54_out { O 32 vector } local_row_ptr_A_54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name local_row_ptr_A_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_53_out \
    op interface \
    ports { local_row_ptr_A_53_out { O 32 vector } local_row_ptr_A_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name local_row_ptr_A_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_52_out \
    op interface \
    ports { local_row_ptr_A_52_out { O 32 vector } local_row_ptr_A_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name local_row_ptr_A_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_51_out \
    op interface \
    ports { local_row_ptr_A_51_out { O 32 vector } local_row_ptr_A_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name local_row_ptr_A_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_50_out \
    op interface \
    ports { local_row_ptr_A_50_out { O 32 vector } local_row_ptr_A_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name local_row_ptr_A_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_49_out \
    op interface \
    ports { local_row_ptr_A_49_out { O 32 vector } local_row_ptr_A_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name local_row_ptr_A_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_48_out \
    op interface \
    ports { local_row_ptr_A_48_out { O 32 vector } local_row_ptr_A_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name local_row_ptr_A_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_47_out \
    op interface \
    ports { local_row_ptr_A_47_out { O 32 vector } local_row_ptr_A_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name local_row_ptr_A_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_46_out \
    op interface \
    ports { local_row_ptr_A_46_out { O 32 vector } local_row_ptr_A_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name local_row_ptr_A_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_45_out \
    op interface \
    ports { local_row_ptr_A_45_out { O 32 vector } local_row_ptr_A_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name local_row_ptr_A_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_44_out \
    op interface \
    ports { local_row_ptr_A_44_out { O 32 vector } local_row_ptr_A_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name local_row_ptr_A_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_43_out \
    op interface \
    ports { local_row_ptr_A_43_out { O 32 vector } local_row_ptr_A_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name local_row_ptr_A_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_42_out \
    op interface \
    ports { local_row_ptr_A_42_out { O 32 vector } local_row_ptr_A_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name local_row_ptr_A_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_41_out \
    op interface \
    ports { local_row_ptr_A_41_out { O 32 vector } local_row_ptr_A_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name local_row_ptr_A_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_40_out \
    op interface \
    ports { local_row_ptr_A_40_out { O 32 vector } local_row_ptr_A_40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name local_row_ptr_A_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_39_out \
    op interface \
    ports { local_row_ptr_A_39_out { O 32 vector } local_row_ptr_A_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name local_row_ptr_A_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_38_out \
    op interface \
    ports { local_row_ptr_A_38_out { O 32 vector } local_row_ptr_A_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name local_row_ptr_A_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_37_out \
    op interface \
    ports { local_row_ptr_A_37_out { O 32 vector } local_row_ptr_A_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name local_row_ptr_A_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_36_out \
    op interface \
    ports { local_row_ptr_A_36_out { O 32 vector } local_row_ptr_A_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name local_row_ptr_A_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_35_out \
    op interface \
    ports { local_row_ptr_A_35_out { O 32 vector } local_row_ptr_A_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name local_row_ptr_A_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_34_out \
    op interface \
    ports { local_row_ptr_A_34_out { O 32 vector } local_row_ptr_A_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name local_row_ptr_A_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_33_out \
    op interface \
    ports { local_row_ptr_A_33_out { O 32 vector } local_row_ptr_A_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name local_row_ptr_A_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_32_out \
    op interface \
    ports { local_row_ptr_A_32_out { O 32 vector } local_row_ptr_A_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name local_row_ptr_A_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_31_out \
    op interface \
    ports { local_row_ptr_A_31_out { O 32 vector } local_row_ptr_A_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name local_row_ptr_A_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_30_out \
    op interface \
    ports { local_row_ptr_A_30_out { O 32 vector } local_row_ptr_A_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name local_row_ptr_A_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_29_out \
    op interface \
    ports { local_row_ptr_A_29_out { O 32 vector } local_row_ptr_A_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name local_row_ptr_A_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_28_out \
    op interface \
    ports { local_row_ptr_A_28_out { O 32 vector } local_row_ptr_A_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name local_row_ptr_A_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_27_out \
    op interface \
    ports { local_row_ptr_A_27_out { O 32 vector } local_row_ptr_A_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name local_row_ptr_A_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_26_out \
    op interface \
    ports { local_row_ptr_A_26_out { O 32 vector } local_row_ptr_A_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name local_row_ptr_A_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_25_out \
    op interface \
    ports { local_row_ptr_A_25_out { O 32 vector } local_row_ptr_A_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name local_row_ptr_A_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_24_out \
    op interface \
    ports { local_row_ptr_A_24_out { O 32 vector } local_row_ptr_A_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name local_row_ptr_A_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_23_out \
    op interface \
    ports { local_row_ptr_A_23_out { O 32 vector } local_row_ptr_A_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name local_row_ptr_A_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_22_out \
    op interface \
    ports { local_row_ptr_A_22_out { O 32 vector } local_row_ptr_A_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name local_row_ptr_A_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_21_out \
    op interface \
    ports { local_row_ptr_A_21_out { O 32 vector } local_row_ptr_A_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name local_row_ptr_A_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_20_out \
    op interface \
    ports { local_row_ptr_A_20_out { O 32 vector } local_row_ptr_A_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name local_row_ptr_A_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_19_out \
    op interface \
    ports { local_row_ptr_A_19_out { O 32 vector } local_row_ptr_A_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name local_row_ptr_A_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_18_out \
    op interface \
    ports { local_row_ptr_A_18_out { O 32 vector } local_row_ptr_A_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name local_row_ptr_A_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_17_out \
    op interface \
    ports { local_row_ptr_A_17_out { O 32 vector } local_row_ptr_A_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name local_row_ptr_A_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_16_out \
    op interface \
    ports { local_row_ptr_A_16_out { O 32 vector } local_row_ptr_A_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name local_row_ptr_A_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_15_out \
    op interface \
    ports { local_row_ptr_A_15_out { O 32 vector } local_row_ptr_A_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name local_row_ptr_A_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_14_out \
    op interface \
    ports { local_row_ptr_A_14_out { O 32 vector } local_row_ptr_A_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name local_row_ptr_A_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_13_out \
    op interface \
    ports { local_row_ptr_A_13_out { O 32 vector } local_row_ptr_A_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name local_row_ptr_A_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_12_out \
    op interface \
    ports { local_row_ptr_A_12_out { O 32 vector } local_row_ptr_A_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name local_row_ptr_A_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_11_out \
    op interface \
    ports { local_row_ptr_A_11_out { O 32 vector } local_row_ptr_A_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name local_row_ptr_A_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_10_out \
    op interface \
    ports { local_row_ptr_A_10_out { O 32 vector } local_row_ptr_A_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name local_row_ptr_A_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_9_out \
    op interface \
    ports { local_row_ptr_A_9_out { O 32 vector } local_row_ptr_A_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name local_row_ptr_A_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_8_out \
    op interface \
    ports { local_row_ptr_A_8_out { O 32 vector } local_row_ptr_A_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name local_row_ptr_A_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_7_out \
    op interface \
    ports { local_row_ptr_A_7_out { O 32 vector } local_row_ptr_A_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name local_row_ptr_A_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_6_out \
    op interface \
    ports { local_row_ptr_A_6_out { O 32 vector } local_row_ptr_A_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name local_row_ptr_A_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_5_out \
    op interface \
    ports { local_row_ptr_A_5_out { O 32 vector } local_row_ptr_A_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name local_row_ptr_A_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_4_out \
    op interface \
    ports { local_row_ptr_A_4_out { O 32 vector } local_row_ptr_A_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name local_row_ptr_A_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_3_out \
    op interface \
    ports { local_row_ptr_A_3_out { O 32 vector } local_row_ptr_A_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name local_row_ptr_A_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_2_out \
    op interface \
    ports { local_row_ptr_A_2_out { O 32 vector } local_row_ptr_A_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name local_row_ptr_A_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_1_out \
    op interface \
    ports { local_row_ptr_A_1_out { O 32 vector } local_row_ptr_A_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name local_row_ptr_A_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_out \
    op interface \
    ports { local_row_ptr_A_out { O 32 vector } local_row_ptr_A_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name local_row_ptr_A_98_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_98_out \
    op interface \
    ports { local_row_ptr_A_98_out { O 32 vector } local_row_ptr_A_98_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name local_row_ptr_A_97_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_97_out \
    op interface \
    ports { local_row_ptr_A_97_out { O 32 vector } local_row_ptr_A_97_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name local_row_ptr_A_96_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_96_out \
    op interface \
    ports { local_row_ptr_A_96_out { O 32 vector } local_row_ptr_A_96_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name local_row_ptr_A_95_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_95_out \
    op interface \
    ports { local_row_ptr_A_95_out { O 32 vector } local_row_ptr_A_95_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name local_row_ptr_A_94_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_94_out \
    op interface \
    ports { local_row_ptr_A_94_out { O 32 vector } local_row_ptr_A_94_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name local_row_ptr_A_93_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_93_out \
    op interface \
    ports { local_row_ptr_A_93_out { O 32 vector } local_row_ptr_A_93_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name local_row_ptr_A_92_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_92_out \
    op interface \
    ports { local_row_ptr_A_92_out { O 32 vector } local_row_ptr_A_92_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name local_row_ptr_A_91_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_91_out \
    op interface \
    ports { local_row_ptr_A_91_out { O 32 vector } local_row_ptr_A_91_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name local_row_ptr_A_90_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_90_out \
    op interface \
    ports { local_row_ptr_A_90_out { O 32 vector } local_row_ptr_A_90_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name local_row_ptr_A_89_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_89_out \
    op interface \
    ports { local_row_ptr_A_89_out { O 32 vector } local_row_ptr_A_89_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name local_row_ptr_A_88_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_88_out \
    op interface \
    ports { local_row_ptr_A_88_out { O 32 vector } local_row_ptr_A_88_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name local_row_ptr_A_87_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_87_out \
    op interface \
    ports { local_row_ptr_A_87_out { O 32 vector } local_row_ptr_A_87_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name local_row_ptr_A_86_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_86_out \
    op interface \
    ports { local_row_ptr_A_86_out { O 32 vector } local_row_ptr_A_86_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name local_row_ptr_A_85_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_85_out \
    op interface \
    ports { local_row_ptr_A_85_out { O 32 vector } local_row_ptr_A_85_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name local_row_ptr_A_84_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_84_out \
    op interface \
    ports { local_row_ptr_A_84_out { O 32 vector } local_row_ptr_A_84_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name local_row_ptr_A_83_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_83_out \
    op interface \
    ports { local_row_ptr_A_83_out { O 32 vector } local_row_ptr_A_83_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name local_row_ptr_A_82_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_82_out \
    op interface \
    ports { local_row_ptr_A_82_out { O 32 vector } local_row_ptr_A_82_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name local_row_ptr_A_81_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_81_out \
    op interface \
    ports { local_row_ptr_A_81_out { O 32 vector } local_row_ptr_A_81_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name local_row_ptr_A_80_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_80_out \
    op interface \
    ports { local_row_ptr_A_80_out { O 32 vector } local_row_ptr_A_80_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name local_row_ptr_A_79_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_79_out \
    op interface \
    ports { local_row_ptr_A_79_out { O 32 vector } local_row_ptr_A_79_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name local_row_ptr_A_78_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_78_out \
    op interface \
    ports { local_row_ptr_A_78_out { O 32 vector } local_row_ptr_A_78_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name local_row_ptr_A_77_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_77_out \
    op interface \
    ports { local_row_ptr_A_77_out { O 32 vector } local_row_ptr_A_77_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name local_row_ptr_A_76_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_76_out \
    op interface \
    ports { local_row_ptr_A_76_out { O 32 vector } local_row_ptr_A_76_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name local_row_ptr_A_75_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_75_out \
    op interface \
    ports { local_row_ptr_A_75_out { O 32 vector } local_row_ptr_A_75_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name local_row_ptr_A_74_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_74_out \
    op interface \
    ports { local_row_ptr_A_74_out { O 32 vector } local_row_ptr_A_74_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name local_row_ptr_A_73_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_73_out \
    op interface \
    ports { local_row_ptr_A_73_out { O 32 vector } local_row_ptr_A_73_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name local_row_ptr_A_72_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_72_out \
    op interface \
    ports { local_row_ptr_A_72_out { O 32 vector } local_row_ptr_A_72_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name local_row_ptr_A_71_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_71_out \
    op interface \
    ports { local_row_ptr_A_71_out { O 32 vector } local_row_ptr_A_71_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name local_row_ptr_A_70_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_70_out \
    op interface \
    ports { local_row_ptr_A_70_out { O 32 vector } local_row_ptr_A_70_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name local_row_ptr_A_69_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_69_out \
    op interface \
    ports { local_row_ptr_A_69_out { O 32 vector } local_row_ptr_A_69_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name local_row_ptr_A_68_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_68_out \
    op interface \
    ports { local_row_ptr_A_68_out { O 32 vector } local_row_ptr_A_68_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name local_row_ptr_A_67_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_67_out \
    op interface \
    ports { local_row_ptr_A_67_out { O 32 vector } local_row_ptr_A_67_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name local_row_ptr_A_66_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_row_ptr_A_66_out \
    op interface \
    ports { local_row_ptr_A_66_out { O 32 vector } local_row_ptr_A_66_out_ap_vld { O 1 bit } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


