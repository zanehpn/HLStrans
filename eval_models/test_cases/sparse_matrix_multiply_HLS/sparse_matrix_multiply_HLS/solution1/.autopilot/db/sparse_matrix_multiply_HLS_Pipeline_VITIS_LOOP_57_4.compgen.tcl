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
    id 144 \
    name row_indices_B \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_indices_B \
    op interface \
    ports { row_indices_B_address0 { O 12 vector } row_indices_B_ce0 { O 1 bit } row_indices_B_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_indices_B'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name local_row_indices_B \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_row_indices_B \
    op interface \
    ports { local_row_indices_B_address0 { O 9 vector } local_row_indices_B_ce0 { O 1 bit } local_row_indices_B_we0 { O 1 bit } local_row_indices_B_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_row_indices_B'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name local_row_indices_B_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_row_indices_B_1 \
    op interface \
    ports { local_row_indices_B_1_address0 { O 9 vector } local_row_indices_B_1_ce0 { O 1 bit } local_row_indices_B_1_we0 { O 1 bit } local_row_indices_B_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_row_indices_B_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name local_row_indices_B_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_row_indices_B_2 \
    op interface \
    ports { local_row_indices_B_2_address0 { O 9 vector } local_row_indices_B_2_ce0 { O 1 bit } local_row_indices_B_2_we0 { O 1 bit } local_row_indices_B_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_row_indices_B_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name local_row_indices_B_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_row_indices_B_3 \
    op interface \
    ports { local_row_indices_B_3_address0 { O 9 vector } local_row_indices_B_3_ce0 { O 1 bit } local_row_indices_B_3_we0 { O 1 bit } local_row_indices_B_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_row_indices_B_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name local_row_indices_B_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_row_indices_B_4 \
    op interface \
    ports { local_row_indices_B_4_address0 { O 9 vector } local_row_indices_B_4_ce0 { O 1 bit } local_row_indices_B_4_we0 { O 1 bit } local_row_indices_B_4_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_row_indices_B_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name local_row_indices_B_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_row_indices_B_5 \
    op interface \
    ports { local_row_indices_B_5_address0 { O 9 vector } local_row_indices_B_5_ce0 { O 1 bit } local_row_indices_B_5_we0 { O 1 bit } local_row_indices_B_5_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_row_indices_B_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name local_row_indices_B_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_row_indices_B_6 \
    op interface \
    ports { local_row_indices_B_6_address0 { O 9 vector } local_row_indices_B_6_ce0 { O 1 bit } local_row_indices_B_6_we0 { O 1 bit } local_row_indices_B_6_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_row_indices_B_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name local_row_indices_B_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_row_indices_B_7 \
    op interface \
    ports { local_row_indices_B_7_address0 { O 9 vector } local_row_indices_B_7_ce0 { O 1 bit } local_row_indices_B_7_we0 { O 1 bit } local_row_indices_B_7_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_row_indices_B_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name local_values_B_V_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_15 \
    op interface \
    ports { local_values_B_V_15_address0 { O 8 vector } local_values_B_V_15_ce0 { O 1 bit } local_values_B_V_15_we0 { O 1 bit } local_values_B_V_15_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name local_values_B_V_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_14 \
    op interface \
    ports { local_values_B_V_14_address0 { O 8 vector } local_values_B_V_14_ce0 { O 1 bit } local_values_B_V_14_we0 { O 1 bit } local_values_B_V_14_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name local_values_B_V_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_13 \
    op interface \
    ports { local_values_B_V_13_address0 { O 8 vector } local_values_B_V_13_ce0 { O 1 bit } local_values_B_V_13_we0 { O 1 bit } local_values_B_V_13_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name local_values_B_V_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_12 \
    op interface \
    ports { local_values_B_V_12_address0 { O 8 vector } local_values_B_V_12_ce0 { O 1 bit } local_values_B_V_12_we0 { O 1 bit } local_values_B_V_12_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name local_values_B_V_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_11 \
    op interface \
    ports { local_values_B_V_11_address0 { O 8 vector } local_values_B_V_11_ce0 { O 1 bit } local_values_B_V_11_we0 { O 1 bit } local_values_B_V_11_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name local_values_B_V_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_10 \
    op interface \
    ports { local_values_B_V_10_address0 { O 8 vector } local_values_B_V_10_ce0 { O 1 bit } local_values_B_V_10_we0 { O 1 bit } local_values_B_V_10_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 159 \
    name local_values_B_V_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_9 \
    op interface \
    ports { local_values_B_V_9_address0 { O 8 vector } local_values_B_V_9_ce0 { O 1 bit } local_values_B_V_9_we0 { O 1 bit } local_values_B_V_9_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name local_values_B_V_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_8 \
    op interface \
    ports { local_values_B_V_8_address0 { O 8 vector } local_values_B_V_8_ce0 { O 1 bit } local_values_B_V_8_we0 { O 1 bit } local_values_B_V_8_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name local_values_B_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_7 \
    op interface \
    ports { local_values_B_V_7_address0 { O 8 vector } local_values_B_V_7_ce0 { O 1 bit } local_values_B_V_7_we0 { O 1 bit } local_values_B_V_7_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name local_values_B_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_6 \
    op interface \
    ports { local_values_B_V_6_address0 { O 8 vector } local_values_B_V_6_ce0 { O 1 bit } local_values_B_V_6_we0 { O 1 bit } local_values_B_V_6_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name local_values_B_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_5 \
    op interface \
    ports { local_values_B_V_5_address0 { O 8 vector } local_values_B_V_5_ce0 { O 1 bit } local_values_B_V_5_we0 { O 1 bit } local_values_B_V_5_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name local_values_B_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_4 \
    op interface \
    ports { local_values_B_V_4_address0 { O 8 vector } local_values_B_V_4_ce0 { O 1 bit } local_values_B_V_4_we0 { O 1 bit } local_values_B_V_4_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name local_values_B_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_3 \
    op interface \
    ports { local_values_B_V_3_address0 { O 8 vector } local_values_B_V_3_ce0 { O 1 bit } local_values_B_V_3_we0 { O 1 bit } local_values_B_V_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name local_values_B_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_2 \
    op interface \
    ports { local_values_B_V_2_address0 { O 8 vector } local_values_B_V_2_ce0 { O 1 bit } local_values_B_V_2_we0 { O 1 bit } local_values_B_V_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name local_values_B_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V_1 \
    op interface \
    ports { local_values_B_V_1_address0 { O 8 vector } local_values_B_V_1_ce0 { O 1 bit } local_values_B_V_1_we0 { O 1 bit } local_values_B_V_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name local_values_B_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_values_B_V \
    op interface \
    ports { local_values_B_V_address0 { O 8 vector } local_values_B_V_ce0 { O 1 bit } local_values_B_V_we0 { O 1 bit } local_values_B_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_values_B_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name values_B \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename values_B \
    op interface \
    ports { values_B_address0 { O 12 vector } values_B_ce0 { O 1 bit } values_B_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'values_B'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name nnzB \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nnzB \
    op interface \
    ports { nnzB { I 32 vector } } \
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


