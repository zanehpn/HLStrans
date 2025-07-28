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
    id 101 \
    name column_indices_A \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename column_indices_A \
    op interface \
    ports { column_indices_A_address0 { O 12 vector } column_indices_A_ce0 { O 1 bit } column_indices_A_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'column_indices_A'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 102 \
    name local_column_indices_A \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_column_indices_A \
    op interface \
    ports { local_column_indices_A_address0 { O 11 vector } local_column_indices_A_ce0 { O 1 bit } local_column_indices_A_we0 { O 1 bit } local_column_indices_A_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_column_indices_A'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 103 \
    name local_column_indices_A_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_column_indices_A_1 \
    op interface \
    ports { local_column_indices_A_1_address0 { O 11 vector } local_column_indices_A_1_ce0 { O 1 bit } local_column_indices_A_1_we0 { O 1 bit } local_column_indices_A_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_column_indices_A_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name local_values_A_V_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_31 \
    op interface \
    ports { local_values_A_V_31_address0 { O 7 vector } local_values_A_V_31_ce0 { O 1 bit } local_values_A_V_31_we0 { O 1 bit } local_values_A_V_31_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 105 \
    name local_values_A_V_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_30 \
    op interface \
    ports { local_values_A_V_30_address0 { O 7 vector } local_values_A_V_30_ce0 { O 1 bit } local_values_A_V_30_we0 { O 1 bit } local_values_A_V_30_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 106 \
    name local_values_A_V_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_29 \
    op interface \
    ports { local_values_A_V_29_address0 { O 7 vector } local_values_A_V_29_ce0 { O 1 bit } local_values_A_V_29_we0 { O 1 bit } local_values_A_V_29_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 107 \
    name local_values_A_V_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_28 \
    op interface \
    ports { local_values_A_V_28_address0 { O 7 vector } local_values_A_V_28_ce0 { O 1 bit } local_values_A_V_28_we0 { O 1 bit } local_values_A_V_28_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name local_values_A_V_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_27 \
    op interface \
    ports { local_values_A_V_27_address0 { O 7 vector } local_values_A_V_27_ce0 { O 1 bit } local_values_A_V_27_we0 { O 1 bit } local_values_A_V_27_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name local_values_A_V_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_26 \
    op interface \
    ports { local_values_A_V_26_address0 { O 7 vector } local_values_A_V_26_ce0 { O 1 bit } local_values_A_V_26_we0 { O 1 bit } local_values_A_V_26_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name local_values_A_V_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_25 \
    op interface \
    ports { local_values_A_V_25_address0 { O 7 vector } local_values_A_V_25_ce0 { O 1 bit } local_values_A_V_25_we0 { O 1 bit } local_values_A_V_25_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name local_values_A_V_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_24 \
    op interface \
    ports { local_values_A_V_24_address0 { O 7 vector } local_values_A_V_24_ce0 { O 1 bit } local_values_A_V_24_we0 { O 1 bit } local_values_A_V_24_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name local_values_A_V_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_23 \
    op interface \
    ports { local_values_A_V_23_address0 { O 7 vector } local_values_A_V_23_ce0 { O 1 bit } local_values_A_V_23_we0 { O 1 bit } local_values_A_V_23_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
    name local_values_A_V_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_22 \
    op interface \
    ports { local_values_A_V_22_address0 { O 7 vector } local_values_A_V_22_ce0 { O 1 bit } local_values_A_V_22_we0 { O 1 bit } local_values_A_V_22_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name local_values_A_V_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_21 \
    op interface \
    ports { local_values_A_V_21_address0 { O 7 vector } local_values_A_V_21_ce0 { O 1 bit } local_values_A_V_21_we0 { O 1 bit } local_values_A_V_21_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name local_values_A_V_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_20 \
    op interface \
    ports { local_values_A_V_20_address0 { O 7 vector } local_values_A_V_20_ce0 { O 1 bit } local_values_A_V_20_we0 { O 1 bit } local_values_A_V_20_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name local_values_A_V_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_19 \
    op interface \
    ports { local_values_A_V_19_address0 { O 7 vector } local_values_A_V_19_ce0 { O 1 bit } local_values_A_V_19_we0 { O 1 bit } local_values_A_V_19_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name local_values_A_V_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_18 \
    op interface \
    ports { local_values_A_V_18_address0 { O 7 vector } local_values_A_V_18_ce0 { O 1 bit } local_values_A_V_18_we0 { O 1 bit } local_values_A_V_18_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name local_values_A_V_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_17 \
    op interface \
    ports { local_values_A_V_17_address0 { O 7 vector } local_values_A_V_17_ce0 { O 1 bit } local_values_A_V_17_we0 { O 1 bit } local_values_A_V_17_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name local_values_A_V_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_16 \
    op interface \
    ports { local_values_A_V_16_address0 { O 7 vector } local_values_A_V_16_ce0 { O 1 bit } local_values_A_V_16_we0 { O 1 bit } local_values_A_V_16_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name local_values_A_V_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_15 \
    op interface \
    ports { local_values_A_V_15_address0 { O 7 vector } local_values_A_V_15_ce0 { O 1 bit } local_values_A_V_15_we0 { O 1 bit } local_values_A_V_15_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name local_values_A_V_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_14 \
    op interface \
    ports { local_values_A_V_14_address0 { O 7 vector } local_values_A_V_14_ce0 { O 1 bit } local_values_A_V_14_we0 { O 1 bit } local_values_A_V_14_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name local_values_A_V_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_13 \
    op interface \
    ports { local_values_A_V_13_address0 { O 7 vector } local_values_A_V_13_ce0 { O 1 bit } local_values_A_V_13_we0 { O 1 bit } local_values_A_V_13_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name local_values_A_V_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_12 \
    op interface \
    ports { local_values_A_V_12_address0 { O 7 vector } local_values_A_V_12_ce0 { O 1 bit } local_values_A_V_12_we0 { O 1 bit } local_values_A_V_12_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 124 \
    name local_values_A_V_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_11 \
    op interface \
    ports { local_values_A_V_11_address0 { O 7 vector } local_values_A_V_11_ce0 { O 1 bit } local_values_A_V_11_we0 { O 1 bit } local_values_A_V_11_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name local_values_A_V_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_10 \
    op interface \
    ports { local_values_A_V_10_address0 { O 7 vector } local_values_A_V_10_ce0 { O 1 bit } local_values_A_V_10_we0 { O 1 bit } local_values_A_V_10_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name local_values_A_V_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_9 \
    op interface \
    ports { local_values_A_V_9_address0 { O 7 vector } local_values_A_V_9_ce0 { O 1 bit } local_values_A_V_9_we0 { O 1 bit } local_values_A_V_9_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name local_values_A_V_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_8 \
    op interface \
    ports { local_values_A_V_8_address0 { O 7 vector } local_values_A_V_8_ce0 { O 1 bit } local_values_A_V_8_we0 { O 1 bit } local_values_A_V_8_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name local_values_A_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_7 \
    op interface \
    ports { local_values_A_V_7_address0 { O 7 vector } local_values_A_V_7_ce0 { O 1 bit } local_values_A_V_7_we0 { O 1 bit } local_values_A_V_7_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name local_values_A_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_6 \
    op interface \
    ports { local_values_A_V_6_address0 { O 7 vector } local_values_A_V_6_ce0 { O 1 bit } local_values_A_V_6_we0 { O 1 bit } local_values_A_V_6_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name local_values_A_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_5 \
    op interface \
    ports { local_values_A_V_5_address0 { O 7 vector } local_values_A_V_5_ce0 { O 1 bit } local_values_A_V_5_we0 { O 1 bit } local_values_A_V_5_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name local_values_A_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_4 \
    op interface \
    ports { local_values_A_V_4_address0 { O 7 vector } local_values_A_V_4_ce0 { O 1 bit } local_values_A_V_4_we0 { O 1 bit } local_values_A_V_4_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name local_values_A_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_3 \
    op interface \
    ports { local_values_A_V_3_address0 { O 7 vector } local_values_A_V_3_ce0 { O 1 bit } local_values_A_V_3_we0 { O 1 bit } local_values_A_V_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name local_values_A_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_2 \
    op interface \
    ports { local_values_A_V_2_address0 { O 7 vector } local_values_A_V_2_ce0 { O 1 bit } local_values_A_V_2_we0 { O 1 bit } local_values_A_V_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name local_values_A_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V_1 \
    op interface \
    ports { local_values_A_V_1_address0 { O 7 vector } local_values_A_V_1_ce0 { O 1 bit } local_values_A_V_1_we0 { O 1 bit } local_values_A_V_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name local_values_A_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_A_V \
    op interface \
    ports { local_values_A_V_address0 { O 7 vector } local_values_A_V_ce0 { O 1 bit } local_values_A_V_we0 { O 1 bit } local_values_A_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_A_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name values_A \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename values_A \
    op interface \
    ports { values_A_address0 { O 12 vector } values_A_ce0 { O 1 bit } values_A_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'values_A'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name nnzA \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nnzA \
    op interface \
    ports { nnzA { I 32 vector } } \
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


