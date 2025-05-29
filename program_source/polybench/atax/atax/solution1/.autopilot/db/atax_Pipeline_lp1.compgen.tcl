# This script segment is generated automatically by AutoPilot

set name atax_fadd_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name atax_fmul_32ns_32ns_32_4_max_dsp_1
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
    id 200 \
    name tmp1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename tmp1 \
    op interface \
    ports { tmp1_address0 { O 6 vector } tmp1_ce0 { O 1 bit } tmp1_we0 { O 1 bit } tmp1_d0 { O 32 vector } tmp1_address1 { O 6 vector } tmp1_ce1 { O 1 bit } tmp1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 201 \
    name buff_A_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_0 \
    op interface \
    ports { buff_A_0_address0 { O 6 vector } buff_A_0_ce0 { O 1 bit } buff_A_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 203 \
    name buff_A_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_1 \
    op interface \
    ports { buff_A_1_address0 { O 6 vector } buff_A_1_ce0 { O 1 bit } buff_A_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 205 \
    name buff_A_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_2 \
    op interface \
    ports { buff_A_2_address0 { O 6 vector } buff_A_2_ce0 { O 1 bit } buff_A_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 207 \
    name buff_A_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_3 \
    op interface \
    ports { buff_A_3_address0 { O 6 vector } buff_A_3_ce0 { O 1 bit } buff_A_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 209 \
    name buff_A_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_4 \
    op interface \
    ports { buff_A_4_address0 { O 6 vector } buff_A_4_ce0 { O 1 bit } buff_A_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 211 \
    name buff_A_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_5 \
    op interface \
    ports { buff_A_5_address0 { O 6 vector } buff_A_5_ce0 { O 1 bit } buff_A_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 213 \
    name buff_A_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_6 \
    op interface \
    ports { buff_A_6_address0 { O 6 vector } buff_A_6_ce0 { O 1 bit } buff_A_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 215 \
    name buff_A_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_7 \
    op interface \
    ports { buff_A_7_address0 { O 6 vector } buff_A_7_ce0 { O 1 bit } buff_A_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 217 \
    name buff_A_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_8 \
    op interface \
    ports { buff_A_8_address0 { O 6 vector } buff_A_8_ce0 { O 1 bit } buff_A_8_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 219 \
    name buff_A_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_9 \
    op interface \
    ports { buff_A_9_address0 { O 6 vector } buff_A_9_ce0 { O 1 bit } buff_A_9_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 221 \
    name buff_A_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_10 \
    op interface \
    ports { buff_A_10_address0 { O 6 vector } buff_A_10_ce0 { O 1 bit } buff_A_10_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 223 \
    name buff_A_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_11 \
    op interface \
    ports { buff_A_11_address0 { O 6 vector } buff_A_11_ce0 { O 1 bit } buff_A_11_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 225 \
    name buff_A_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_12 \
    op interface \
    ports { buff_A_12_address0 { O 6 vector } buff_A_12_ce0 { O 1 bit } buff_A_12_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 227 \
    name buff_A_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_13 \
    op interface \
    ports { buff_A_13_address0 { O 6 vector } buff_A_13_ce0 { O 1 bit } buff_A_13_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 229 \
    name buff_A_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_14 \
    op interface \
    ports { buff_A_14_address0 { O 6 vector } buff_A_14_ce0 { O 1 bit } buff_A_14_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 231 \
    name buff_A_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_15 \
    op interface \
    ports { buff_A_15_address0 { O 6 vector } buff_A_15_ce0 { O 1 bit } buff_A_15_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 233 \
    name buff_A_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_16 \
    op interface \
    ports { buff_A_16_address0 { O 6 vector } buff_A_16_ce0 { O 1 bit } buff_A_16_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 235 \
    name buff_A_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_17 \
    op interface \
    ports { buff_A_17_address0 { O 6 vector } buff_A_17_ce0 { O 1 bit } buff_A_17_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 237 \
    name buff_A_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_18 \
    op interface \
    ports { buff_A_18_address0 { O 6 vector } buff_A_18_ce0 { O 1 bit } buff_A_18_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 239 \
    name buff_A_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_19 \
    op interface \
    ports { buff_A_19_address0 { O 6 vector } buff_A_19_ce0 { O 1 bit } buff_A_19_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 241 \
    name buff_A_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_20 \
    op interface \
    ports { buff_A_20_address0 { O 6 vector } buff_A_20_ce0 { O 1 bit } buff_A_20_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 243 \
    name buff_A_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_21 \
    op interface \
    ports { buff_A_21_address0 { O 6 vector } buff_A_21_ce0 { O 1 bit } buff_A_21_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 245 \
    name buff_A_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_22 \
    op interface \
    ports { buff_A_22_address0 { O 6 vector } buff_A_22_ce0 { O 1 bit } buff_A_22_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 247 \
    name buff_A_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_23 \
    op interface \
    ports { buff_A_23_address0 { O 6 vector } buff_A_23_ce0 { O 1 bit } buff_A_23_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 249 \
    name buff_A_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_24 \
    op interface \
    ports { buff_A_24_address0 { O 6 vector } buff_A_24_ce0 { O 1 bit } buff_A_24_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 251 \
    name buff_A_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_25 \
    op interface \
    ports { buff_A_25_address0 { O 6 vector } buff_A_25_ce0 { O 1 bit } buff_A_25_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 253 \
    name buff_A_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_26 \
    op interface \
    ports { buff_A_26_address0 { O 6 vector } buff_A_26_ce0 { O 1 bit } buff_A_26_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 255 \
    name buff_A_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_27 \
    op interface \
    ports { buff_A_27_address0 { O 6 vector } buff_A_27_ce0 { O 1 bit } buff_A_27_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 257 \
    name buff_A_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_28 \
    op interface \
    ports { buff_A_28_address0 { O 6 vector } buff_A_28_ce0 { O 1 bit } buff_A_28_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 259 \
    name buff_A_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_29 \
    op interface \
    ports { buff_A_29_address0 { O 6 vector } buff_A_29_ce0 { O 1 bit } buff_A_29_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 261 \
    name buff_A_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_30 \
    op interface \
    ports { buff_A_30_address0 { O 6 vector } buff_A_30_ce0 { O 1 bit } buff_A_30_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 263 \
    name buff_A_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_31 \
    op interface \
    ports { buff_A_31_address0 { O 6 vector } buff_A_31_ce0 { O 1 bit } buff_A_31_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 265 \
    name buff_A_32 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_32 \
    op interface \
    ports { buff_A_32_address0 { O 6 vector } buff_A_32_ce0 { O 1 bit } buff_A_32_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 267 \
    name buff_A_33 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_33 \
    op interface \
    ports { buff_A_33_address0 { O 6 vector } buff_A_33_ce0 { O 1 bit } buff_A_33_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 269 \
    name buff_A_34 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_34 \
    op interface \
    ports { buff_A_34_address0 { O 6 vector } buff_A_34_ce0 { O 1 bit } buff_A_34_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 271 \
    name buff_A_35 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_35 \
    op interface \
    ports { buff_A_35_address0 { O 6 vector } buff_A_35_ce0 { O 1 bit } buff_A_35_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 273 \
    name buff_A_36 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_36 \
    op interface \
    ports { buff_A_36_address0 { O 6 vector } buff_A_36_ce0 { O 1 bit } buff_A_36_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name buff_A_37 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_37 \
    op interface \
    ports { buff_A_37_address0 { O 6 vector } buff_A_37_ce0 { O 1 bit } buff_A_37_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 277 \
    name buff_A_38 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_38 \
    op interface \
    ports { buff_A_38_address0 { O 6 vector } buff_A_38_ce0 { O 1 bit } buff_A_38_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 279 \
    name buff_A_39 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_39 \
    op interface \
    ports { buff_A_39_address0 { O 6 vector } buff_A_39_ce0 { O 1 bit } buff_A_39_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 281 \
    name buff_A_40 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_40 \
    op interface \
    ports { buff_A_40_address0 { O 6 vector } buff_A_40_ce0 { O 1 bit } buff_A_40_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 283 \
    name buff_A_41 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_41 \
    op interface \
    ports { buff_A_41_address0 { O 6 vector } buff_A_41_ce0 { O 1 bit } buff_A_41_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 285 \
    name buff_A_42 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_42 \
    op interface \
    ports { buff_A_42_address0 { O 6 vector } buff_A_42_ce0 { O 1 bit } buff_A_42_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 287 \
    name buff_A_43 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_43 \
    op interface \
    ports { buff_A_43_address0 { O 6 vector } buff_A_43_ce0 { O 1 bit } buff_A_43_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 289 \
    name buff_A_44 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_44 \
    op interface \
    ports { buff_A_44_address0 { O 6 vector } buff_A_44_ce0 { O 1 bit } buff_A_44_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 291 \
    name buff_A_45 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_45 \
    op interface \
    ports { buff_A_45_address0 { O 6 vector } buff_A_45_ce0 { O 1 bit } buff_A_45_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 293 \
    name buff_A_46 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_46 \
    op interface \
    ports { buff_A_46_address0 { O 6 vector } buff_A_46_ce0 { O 1 bit } buff_A_46_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 295 \
    name buff_A_47 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_47 \
    op interface \
    ports { buff_A_47_address0 { O 6 vector } buff_A_47_ce0 { O 1 bit } buff_A_47_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 297 \
    name buff_A_48 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_48 \
    op interface \
    ports { buff_A_48_address0 { O 6 vector } buff_A_48_ce0 { O 1 bit } buff_A_48_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 299 \
    name buff_A_49 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_49 \
    op interface \
    ports { buff_A_49_address0 { O 6 vector } buff_A_49_ce0 { O 1 bit } buff_A_49_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 301 \
    name buff_A_50 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_50 \
    op interface \
    ports { buff_A_50_address0 { O 6 vector } buff_A_50_ce0 { O 1 bit } buff_A_50_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 303 \
    name buff_A_51 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_51 \
    op interface \
    ports { buff_A_51_address0 { O 6 vector } buff_A_51_ce0 { O 1 bit } buff_A_51_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 305 \
    name buff_A_52 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_52 \
    op interface \
    ports { buff_A_52_address0 { O 6 vector } buff_A_52_ce0 { O 1 bit } buff_A_52_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 307 \
    name buff_A_53 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_53 \
    op interface \
    ports { buff_A_53_address0 { O 6 vector } buff_A_53_ce0 { O 1 bit } buff_A_53_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 309 \
    name buff_A_54 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_54 \
    op interface \
    ports { buff_A_54_address0 { O 6 vector } buff_A_54_ce0 { O 1 bit } buff_A_54_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 311 \
    name buff_A_55 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_55 \
    op interface \
    ports { buff_A_55_address0 { O 6 vector } buff_A_55_ce0 { O 1 bit } buff_A_55_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 313 \
    name buff_A_56 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_56 \
    op interface \
    ports { buff_A_56_address0 { O 6 vector } buff_A_56_ce0 { O 1 bit } buff_A_56_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 315 \
    name buff_A_57 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_57 \
    op interface \
    ports { buff_A_57_address0 { O 6 vector } buff_A_57_ce0 { O 1 bit } buff_A_57_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 317 \
    name buff_A_58 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_58 \
    op interface \
    ports { buff_A_58_address0 { O 6 vector } buff_A_58_ce0 { O 1 bit } buff_A_58_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 319 \
    name buff_A_59 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_59 \
    op interface \
    ports { buff_A_59_address0 { O 6 vector } buff_A_59_ce0 { O 1 bit } buff_A_59_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 321 \
    name buff_A_60 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_60 \
    op interface \
    ports { buff_A_60_address0 { O 6 vector } buff_A_60_ce0 { O 1 bit } buff_A_60_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 323 \
    name buff_A_61 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_61 \
    op interface \
    ports { buff_A_61_address0 { O 6 vector } buff_A_61_ce0 { O 1 bit } buff_A_61_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 325 \
    name buff_A_62 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_62 \
    op interface \
    ports { buff_A_62_address0 { O 6 vector } buff_A_62_ce0 { O 1 bit } buff_A_62_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 327 \
    name buff_A_63 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A_63 \
    op interface \
    ports { buff_A_63_address0 { O 6 vector } buff_A_63_ce0 { O 1 bit } buff_A_63_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A_63'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
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
    id 204 \
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
    id 206 \
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
    id 208 \
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
    id 210 \
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
    id 212 \
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
    id 214 \
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
    id 216 \
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
    id 218 \
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
    id 220 \
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
    id 222 \
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
    id 224 \
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
    id 226 \
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
    id 228 \
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
    id 230 \
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
    id 232 \
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
    id 234 \
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
    id 236 \
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
    id 238 \
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
    id 240 \
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
    id 242 \
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
    id 244 \
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
    id 246 \
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
    id 248 \
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
    id 250 \
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
    id 252 \
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
    id 254 \
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
    id 256 \
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
    id 258 \
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
    id 260 \
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
    id 262 \
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
    id 264 \
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
    id 266 \
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
    id 268 \
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
    id 270 \
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
    id 272 \
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
    id 274 \
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
    id 276 \
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
    id 278 \
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
    id 280 \
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
    id 282 \
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
    id 284 \
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
    id 286 \
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
    id 288 \
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
    id 290 \
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
    id 292 \
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
    id 294 \
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
    id 296 \
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
    id 298 \
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
    id 300 \
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
    id 302 \
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
    id 304 \
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
    id 306 \
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
    id 308 \
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
    id 310 \
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
    id 312 \
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
    id 314 \
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
    id 316 \
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
    id 318 \
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
    id 320 \
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
    id 322 \
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
    id 324 \
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
    id 326 \
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
    id 328 \
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
set InstName atax_flow_control_loop_pipe_sequential_init_U
set CompName atax_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix atax_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


