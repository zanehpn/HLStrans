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
    id 652 \
    name tmp2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename tmp2 \
    op interface \
    ports { tmp2_address0 { O 6 vector } tmp2_ce0 { O 1 bit } tmp2_we0 { O 1 bit } tmp2_d0 { O 32 vector } tmp2_address1 { O 6 vector } tmp2_ce1 { O 1 bit } tmp2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 653 \
    name buff_B_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_0 \
    op interface \
    ports { buff_B_0_address0 { O 6 vector } buff_B_0_ce0 { O 1 bit } buff_B_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 656 \
    name buff_B_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_1 \
    op interface \
    ports { buff_B_1_address0 { O 6 vector } buff_B_1_ce0 { O 1 bit } buff_B_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 658 \
    name buff_B_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_2 \
    op interface \
    ports { buff_B_2_address0 { O 6 vector } buff_B_2_ce0 { O 1 bit } buff_B_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 660 \
    name buff_B_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_3 \
    op interface \
    ports { buff_B_3_address0 { O 6 vector } buff_B_3_ce0 { O 1 bit } buff_B_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 662 \
    name buff_B_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_4 \
    op interface \
    ports { buff_B_4_address0 { O 6 vector } buff_B_4_ce0 { O 1 bit } buff_B_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 664 \
    name buff_B_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_5 \
    op interface \
    ports { buff_B_5_address0 { O 6 vector } buff_B_5_ce0 { O 1 bit } buff_B_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 666 \
    name buff_B_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_6 \
    op interface \
    ports { buff_B_6_address0 { O 6 vector } buff_B_6_ce0 { O 1 bit } buff_B_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 668 \
    name buff_B_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_7 \
    op interface \
    ports { buff_B_7_address0 { O 6 vector } buff_B_7_ce0 { O 1 bit } buff_B_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 670 \
    name buff_B_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_8 \
    op interface \
    ports { buff_B_8_address0 { O 6 vector } buff_B_8_ce0 { O 1 bit } buff_B_8_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 672 \
    name buff_B_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_9 \
    op interface \
    ports { buff_B_9_address0 { O 6 vector } buff_B_9_ce0 { O 1 bit } buff_B_9_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 674 \
    name buff_B_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_10 \
    op interface \
    ports { buff_B_10_address0 { O 6 vector } buff_B_10_ce0 { O 1 bit } buff_B_10_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 676 \
    name buff_B_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_11 \
    op interface \
    ports { buff_B_11_address0 { O 6 vector } buff_B_11_ce0 { O 1 bit } buff_B_11_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 678 \
    name buff_B_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_12 \
    op interface \
    ports { buff_B_12_address0 { O 6 vector } buff_B_12_ce0 { O 1 bit } buff_B_12_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 680 \
    name buff_B_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_13 \
    op interface \
    ports { buff_B_13_address0 { O 6 vector } buff_B_13_ce0 { O 1 bit } buff_B_13_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 682 \
    name buff_B_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_14 \
    op interface \
    ports { buff_B_14_address0 { O 6 vector } buff_B_14_ce0 { O 1 bit } buff_B_14_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 684 \
    name buff_B_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_15 \
    op interface \
    ports { buff_B_15_address0 { O 6 vector } buff_B_15_ce0 { O 1 bit } buff_B_15_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 686 \
    name buff_B_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_16 \
    op interface \
    ports { buff_B_16_address0 { O 6 vector } buff_B_16_ce0 { O 1 bit } buff_B_16_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 688 \
    name buff_B_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_17 \
    op interface \
    ports { buff_B_17_address0 { O 6 vector } buff_B_17_ce0 { O 1 bit } buff_B_17_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 690 \
    name buff_B_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_18 \
    op interface \
    ports { buff_B_18_address0 { O 6 vector } buff_B_18_ce0 { O 1 bit } buff_B_18_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 692 \
    name buff_B_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_19 \
    op interface \
    ports { buff_B_19_address0 { O 6 vector } buff_B_19_ce0 { O 1 bit } buff_B_19_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 694 \
    name buff_B_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_20 \
    op interface \
    ports { buff_B_20_address0 { O 6 vector } buff_B_20_ce0 { O 1 bit } buff_B_20_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 696 \
    name buff_B_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_21 \
    op interface \
    ports { buff_B_21_address0 { O 6 vector } buff_B_21_ce0 { O 1 bit } buff_B_21_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 698 \
    name buff_B_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_22 \
    op interface \
    ports { buff_B_22_address0 { O 6 vector } buff_B_22_ce0 { O 1 bit } buff_B_22_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 700 \
    name buff_B_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_23 \
    op interface \
    ports { buff_B_23_address0 { O 6 vector } buff_B_23_ce0 { O 1 bit } buff_B_23_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 702 \
    name buff_B_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_24 \
    op interface \
    ports { buff_B_24_address0 { O 6 vector } buff_B_24_ce0 { O 1 bit } buff_B_24_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 704 \
    name buff_B_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_25 \
    op interface \
    ports { buff_B_25_address0 { O 6 vector } buff_B_25_ce0 { O 1 bit } buff_B_25_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 706 \
    name buff_B_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_26 \
    op interface \
    ports { buff_B_26_address0 { O 6 vector } buff_B_26_ce0 { O 1 bit } buff_B_26_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 708 \
    name buff_B_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_27 \
    op interface \
    ports { buff_B_27_address0 { O 6 vector } buff_B_27_ce0 { O 1 bit } buff_B_27_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 710 \
    name buff_B_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_28 \
    op interface \
    ports { buff_B_28_address0 { O 6 vector } buff_B_28_ce0 { O 1 bit } buff_B_28_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 712 \
    name buff_B_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_29 \
    op interface \
    ports { buff_B_29_address0 { O 6 vector } buff_B_29_ce0 { O 1 bit } buff_B_29_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 714 \
    name buff_B_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_30 \
    op interface \
    ports { buff_B_30_address0 { O 6 vector } buff_B_30_ce0 { O 1 bit } buff_B_30_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 716 \
    name buff_B_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_31 \
    op interface \
    ports { buff_B_31_address0 { O 6 vector } buff_B_31_ce0 { O 1 bit } buff_B_31_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 718 \
    name buff_B_32 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_32 \
    op interface \
    ports { buff_B_32_address0 { O 6 vector } buff_B_32_ce0 { O 1 bit } buff_B_32_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 720 \
    name buff_B_33 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_33 \
    op interface \
    ports { buff_B_33_address0 { O 6 vector } buff_B_33_ce0 { O 1 bit } buff_B_33_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 722 \
    name buff_B_34 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_34 \
    op interface \
    ports { buff_B_34_address0 { O 6 vector } buff_B_34_ce0 { O 1 bit } buff_B_34_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 724 \
    name buff_B_35 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_35 \
    op interface \
    ports { buff_B_35_address0 { O 6 vector } buff_B_35_ce0 { O 1 bit } buff_B_35_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 726 \
    name buff_B_36 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_36 \
    op interface \
    ports { buff_B_36_address0 { O 6 vector } buff_B_36_ce0 { O 1 bit } buff_B_36_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 728 \
    name buff_B_37 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_37 \
    op interface \
    ports { buff_B_37_address0 { O 6 vector } buff_B_37_ce0 { O 1 bit } buff_B_37_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 730 \
    name buff_B_38 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_38 \
    op interface \
    ports { buff_B_38_address0 { O 6 vector } buff_B_38_ce0 { O 1 bit } buff_B_38_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 732 \
    name buff_B_39 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_39 \
    op interface \
    ports { buff_B_39_address0 { O 6 vector } buff_B_39_ce0 { O 1 bit } buff_B_39_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 734 \
    name buff_B_40 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_40 \
    op interface \
    ports { buff_B_40_address0 { O 6 vector } buff_B_40_ce0 { O 1 bit } buff_B_40_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 736 \
    name buff_B_41 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_41 \
    op interface \
    ports { buff_B_41_address0 { O 6 vector } buff_B_41_ce0 { O 1 bit } buff_B_41_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 738 \
    name buff_B_42 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_42 \
    op interface \
    ports { buff_B_42_address0 { O 6 vector } buff_B_42_ce0 { O 1 bit } buff_B_42_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 740 \
    name buff_B_43 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_43 \
    op interface \
    ports { buff_B_43_address0 { O 6 vector } buff_B_43_ce0 { O 1 bit } buff_B_43_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 742 \
    name buff_B_44 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_44 \
    op interface \
    ports { buff_B_44_address0 { O 6 vector } buff_B_44_ce0 { O 1 bit } buff_B_44_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 744 \
    name buff_B_45 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_45 \
    op interface \
    ports { buff_B_45_address0 { O 6 vector } buff_B_45_ce0 { O 1 bit } buff_B_45_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 746 \
    name buff_B_46 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_46 \
    op interface \
    ports { buff_B_46_address0 { O 6 vector } buff_B_46_ce0 { O 1 bit } buff_B_46_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 748 \
    name buff_B_47 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_47 \
    op interface \
    ports { buff_B_47_address0 { O 6 vector } buff_B_47_ce0 { O 1 bit } buff_B_47_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 750 \
    name buff_B_48 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_48 \
    op interface \
    ports { buff_B_48_address0 { O 6 vector } buff_B_48_ce0 { O 1 bit } buff_B_48_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 752 \
    name buff_B_49 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_49 \
    op interface \
    ports { buff_B_49_address0 { O 6 vector } buff_B_49_ce0 { O 1 bit } buff_B_49_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 754 \
    name buff_B_50 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_50 \
    op interface \
    ports { buff_B_50_address0 { O 6 vector } buff_B_50_ce0 { O 1 bit } buff_B_50_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 756 \
    name buff_B_51 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_51 \
    op interface \
    ports { buff_B_51_address0 { O 6 vector } buff_B_51_ce0 { O 1 bit } buff_B_51_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 758 \
    name buff_B_52 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_52 \
    op interface \
    ports { buff_B_52_address0 { O 6 vector } buff_B_52_ce0 { O 1 bit } buff_B_52_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 760 \
    name buff_B_53 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_53 \
    op interface \
    ports { buff_B_53_address0 { O 6 vector } buff_B_53_ce0 { O 1 bit } buff_B_53_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 762 \
    name buff_B_54 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_54 \
    op interface \
    ports { buff_B_54_address0 { O 6 vector } buff_B_54_ce0 { O 1 bit } buff_B_54_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 764 \
    name buff_B_55 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_55 \
    op interface \
    ports { buff_B_55_address0 { O 6 vector } buff_B_55_ce0 { O 1 bit } buff_B_55_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 766 \
    name buff_B_56 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_56 \
    op interface \
    ports { buff_B_56_address0 { O 6 vector } buff_B_56_ce0 { O 1 bit } buff_B_56_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 768 \
    name buff_B_57 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_57 \
    op interface \
    ports { buff_B_57_address0 { O 6 vector } buff_B_57_ce0 { O 1 bit } buff_B_57_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 770 \
    name buff_B_58 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_58 \
    op interface \
    ports { buff_B_58_address0 { O 6 vector } buff_B_58_ce0 { O 1 bit } buff_B_58_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 772 \
    name buff_B_59 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_59 \
    op interface \
    ports { buff_B_59_address0 { O 6 vector } buff_B_59_ce0 { O 1 bit } buff_B_59_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 774 \
    name buff_B_60 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_60 \
    op interface \
    ports { buff_B_60_address0 { O 6 vector } buff_B_60_ce0 { O 1 bit } buff_B_60_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 776 \
    name buff_B_61 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_61 \
    op interface \
    ports { buff_B_61_address0 { O 6 vector } buff_B_61_ce0 { O 1 bit } buff_B_61_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 778 \
    name buff_B_62 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_62 \
    op interface \
    ports { buff_B_62_address0 { O 6 vector } buff_B_62_ce0 { O 1 bit } buff_B_62_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 780 \
    name buff_B_63 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_63 \
    op interface \
    ports { buff_B_63_address0 { O 6 vector } buff_B_63_ce0 { O 1 bit } buff_B_63_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_63'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 654 \
    name beta \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_beta \
    op interface \
    ports { beta { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 655 \
    name buff_x_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load \
    op interface \
    ports { buff_x_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 657 \
    name buff_x_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_1 \
    op interface \
    ports { buff_x_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 659 \
    name buff_x_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_2 \
    op interface \
    ports { buff_x_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 661 \
    name buff_x_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_3 \
    op interface \
    ports { buff_x_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 663 \
    name buff_x_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_4 \
    op interface \
    ports { buff_x_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 665 \
    name buff_x_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_5 \
    op interface \
    ports { buff_x_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 667 \
    name buff_x_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_6 \
    op interface \
    ports { buff_x_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 669 \
    name buff_x_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_7 \
    op interface \
    ports { buff_x_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 671 \
    name buff_x_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_8 \
    op interface \
    ports { buff_x_load_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 673 \
    name buff_x_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_9 \
    op interface \
    ports { buff_x_load_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 675 \
    name buff_x_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_10 \
    op interface \
    ports { buff_x_load_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 677 \
    name buff_x_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_11 \
    op interface \
    ports { buff_x_load_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 679 \
    name buff_x_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_12 \
    op interface \
    ports { buff_x_load_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 681 \
    name buff_x_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_13 \
    op interface \
    ports { buff_x_load_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 683 \
    name buff_x_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_14 \
    op interface \
    ports { buff_x_load_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 685 \
    name buff_x_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_15 \
    op interface \
    ports { buff_x_load_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 687 \
    name buff_x_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_16 \
    op interface \
    ports { buff_x_load_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 689 \
    name buff_x_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_17 \
    op interface \
    ports { buff_x_load_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 691 \
    name buff_x_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_18 \
    op interface \
    ports { buff_x_load_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 693 \
    name buff_x_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_19 \
    op interface \
    ports { buff_x_load_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 695 \
    name buff_x_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_20 \
    op interface \
    ports { buff_x_load_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 697 \
    name buff_x_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_21 \
    op interface \
    ports { buff_x_load_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 699 \
    name buff_x_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_22 \
    op interface \
    ports { buff_x_load_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 701 \
    name buff_x_load_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_23 \
    op interface \
    ports { buff_x_load_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 703 \
    name buff_x_load_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_24 \
    op interface \
    ports { buff_x_load_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 705 \
    name buff_x_load_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_25 \
    op interface \
    ports { buff_x_load_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 707 \
    name buff_x_load_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_26 \
    op interface \
    ports { buff_x_load_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 709 \
    name buff_x_load_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_27 \
    op interface \
    ports { buff_x_load_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 711 \
    name buff_x_load_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_28 \
    op interface \
    ports { buff_x_load_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 713 \
    name buff_x_load_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_29 \
    op interface \
    ports { buff_x_load_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 715 \
    name buff_x_load_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_30 \
    op interface \
    ports { buff_x_load_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 717 \
    name buff_x_load_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_31 \
    op interface \
    ports { buff_x_load_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 719 \
    name buff_x_load_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_32 \
    op interface \
    ports { buff_x_load_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 721 \
    name buff_x_load_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_33 \
    op interface \
    ports { buff_x_load_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 723 \
    name buff_x_load_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_34 \
    op interface \
    ports { buff_x_load_34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 725 \
    name buff_x_load_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_35 \
    op interface \
    ports { buff_x_load_35 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 727 \
    name buff_x_load_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_36 \
    op interface \
    ports { buff_x_load_36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 729 \
    name buff_x_load_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_37 \
    op interface \
    ports { buff_x_load_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 731 \
    name buff_x_load_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_38 \
    op interface \
    ports { buff_x_load_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 733 \
    name buff_x_load_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_39 \
    op interface \
    ports { buff_x_load_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 735 \
    name buff_x_load_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_40 \
    op interface \
    ports { buff_x_load_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 737 \
    name buff_x_load_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_41 \
    op interface \
    ports { buff_x_load_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 739 \
    name buff_x_load_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_42 \
    op interface \
    ports { buff_x_load_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 741 \
    name buff_x_load_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_43 \
    op interface \
    ports { buff_x_load_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 743 \
    name buff_x_load_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_44 \
    op interface \
    ports { buff_x_load_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 745 \
    name buff_x_load_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_45 \
    op interface \
    ports { buff_x_load_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 747 \
    name buff_x_load_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_46 \
    op interface \
    ports { buff_x_load_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 749 \
    name buff_x_load_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_47 \
    op interface \
    ports { buff_x_load_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 751 \
    name buff_x_load_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_48 \
    op interface \
    ports { buff_x_load_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 753 \
    name buff_x_load_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_49 \
    op interface \
    ports { buff_x_load_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 755 \
    name buff_x_load_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_50 \
    op interface \
    ports { buff_x_load_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 757 \
    name buff_x_load_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_51 \
    op interface \
    ports { buff_x_load_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 759 \
    name buff_x_load_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_52 \
    op interface \
    ports { buff_x_load_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 761 \
    name buff_x_load_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_53 \
    op interface \
    ports { buff_x_load_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 763 \
    name buff_x_load_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_54 \
    op interface \
    ports { buff_x_load_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 765 \
    name buff_x_load_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_55 \
    op interface \
    ports { buff_x_load_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 767 \
    name buff_x_load_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_56 \
    op interface \
    ports { buff_x_load_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 769 \
    name buff_x_load_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_57 \
    op interface \
    ports { buff_x_load_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 771 \
    name buff_x_load_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_58 \
    op interface \
    ports { buff_x_load_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 773 \
    name buff_x_load_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_59 \
    op interface \
    ports { buff_x_load_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 775 \
    name buff_x_load_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_60 \
    op interface \
    ports { buff_x_load_60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 777 \
    name buff_x_load_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_61 \
    op interface \
    ports { buff_x_load_61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 779 \
    name buff_x_load_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_62 \
    op interface \
    ports { buff_x_load_62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 781 \
    name buff_x_load_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_x_load_63 \
    op interface \
    ports { buff_x_load_63 { I 32 vector } } \
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
set InstName gesummv_flow_control_loop_pipe_sequential_init_U
set CompName gesummv_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix gesummv_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


