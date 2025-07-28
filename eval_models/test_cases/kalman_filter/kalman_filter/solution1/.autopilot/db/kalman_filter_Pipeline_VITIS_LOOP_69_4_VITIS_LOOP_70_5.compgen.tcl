# This script segment is generated automatically by AutoPilot

set id 137
set name kalman_filter_mux_646_19_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 19
set din0_signed 0
set din1_width 19
set din1_signed 0
set din2_width 19
set din2_signed 0
set din3_width 19
set din3_signed 0
set din4_width 19
set din4_signed 0
set din5_width 19
set din5_signed 0
set din6_width 19
set din6_signed 0
set din7_width 19
set din7_signed 0
set din8_width 19
set din8_signed 0
set din9_width 19
set din9_signed 0
set din10_width 19
set din10_signed 0
set din11_width 19
set din11_signed 0
set din12_width 19
set din12_signed 0
set din13_width 19
set din13_signed 0
set din14_width 19
set din14_signed 0
set din15_width 19
set din15_signed 0
set din16_width 19
set din16_signed 0
set din17_width 19
set din17_signed 0
set din18_width 19
set din18_signed 0
set din19_width 19
set din19_signed 0
set din20_width 19
set din20_signed 0
set din21_width 19
set din21_signed 0
set din22_width 19
set din22_signed 0
set din23_width 19
set din23_signed 0
set din24_width 19
set din24_signed 0
set din25_width 19
set din25_signed 0
set din26_width 19
set din26_signed 0
set din27_width 19
set din27_signed 0
set din28_width 19
set din28_signed 0
set din29_width 19
set din29_signed 0
set din30_width 19
set din30_signed 0
set din31_width 19
set din31_signed 0
set din32_width 19
set din32_signed 0
set din33_width 19
set din33_signed 0
set din34_width 19
set din34_signed 0
set din35_width 19
set din35_signed 0
set din36_width 19
set din36_signed 0
set din37_width 19
set din37_signed 0
set din38_width 19
set din38_signed 0
set din39_width 19
set din39_signed 0
set din40_width 19
set din40_signed 0
set din41_width 19
set din41_signed 0
set din42_width 19
set din42_signed 0
set din43_width 19
set din43_signed 0
set din44_width 19
set din44_signed 0
set din45_width 19
set din45_signed 0
set din46_width 19
set din46_signed 0
set din47_width 19
set din47_signed 0
set din48_width 19
set din48_signed 0
set din49_width 19
set din49_signed 0
set din50_width 19
set din50_signed 0
set din51_width 19
set din51_signed 0
set din52_width 19
set din52_signed 0
set din53_width 19
set din53_signed 0
set din54_width 19
set din54_signed 0
set din55_width 19
set din55_signed 0
set din56_width 19
set din56_signed 0
set din57_width 19
set din57_signed 0
set din58_width 19
set din58_signed 0
set din59_width 19
set din59_signed 0
set din60_width 19
set din60_signed 0
set din61_width 19
set din61_signed 0
set din62_width 19
set din62_signed 0
set din63_width 19
set din63_signed 0
set din64_width 6
set din64_signed 0
set dout_width 19
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
    din61_width ${din61_width} \
    din61_signed ${din61_signed} \
    din62_width ${din62_width} \
    din62_signed ${din62_signed} \
    din63_width ${din63_width} \
    din63_signed ${din63_signed} \
    din64_width ${din64_width} \
    din64_signed ${din64_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set name kalman_filter_sdiv_25ns_20s_19_29_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sdiv} IMPL {auto} LATENCY 28 ALLOW_PRAGMA 1
}


set id 140
set name kalman_filter_mul_mul_20s_19s_39_4_1
set corename simcore_mul
set op mul
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 20
set in0_signed 1
set in1_width 19
set in1_signed 1
set ce_width 1
set ce_signed 0
set out_width 39
set arg_lists {i0 {20 1 +} i1 {19 1 +} p {39 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
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
    id 273 \
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
    id 274 \
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
    id 145 \
    name p_arr_1_V_63_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_63_reload \
    op interface \
    ports { p_arr_1_V_63_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name p_arr_1_V_62_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_62_reload \
    op interface \
    ports { p_arr_1_V_62_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name p_arr_1_V_61_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_61_reload \
    op interface \
    ports { p_arr_1_V_61_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name p_arr_1_V_60_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_60_reload \
    op interface \
    ports { p_arr_1_V_60_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name p_arr_1_V_59_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_59_reload \
    op interface \
    ports { p_arr_1_V_59_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name p_arr_1_V_58_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_58_reload \
    op interface \
    ports { p_arr_1_V_58_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name p_arr_1_V_57_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_57_reload \
    op interface \
    ports { p_arr_1_V_57_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name p_arr_1_V_56_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_56_reload \
    op interface \
    ports { p_arr_1_V_56_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name p_arr_1_V_55_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_55_reload \
    op interface \
    ports { p_arr_1_V_55_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name p_arr_1_V_54_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_54_reload \
    op interface \
    ports { p_arr_1_V_54_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name p_arr_1_V_53_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_53_reload \
    op interface \
    ports { p_arr_1_V_53_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name p_arr_1_V_52_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_52_reload \
    op interface \
    ports { p_arr_1_V_52_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name p_arr_1_V_51_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_51_reload \
    op interface \
    ports { p_arr_1_V_51_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name p_arr_1_V_50_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_50_reload \
    op interface \
    ports { p_arr_1_V_50_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name p_arr_1_V_49_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_49_reload \
    op interface \
    ports { p_arr_1_V_49_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name p_arr_1_V_48_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_48_reload \
    op interface \
    ports { p_arr_1_V_48_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name p_arr_1_V_47_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_47_reload \
    op interface \
    ports { p_arr_1_V_47_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name p_arr_1_V_46_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_46_reload \
    op interface \
    ports { p_arr_1_V_46_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name p_arr_1_V_45_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_45_reload \
    op interface \
    ports { p_arr_1_V_45_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name p_arr_1_V_44_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_44_reload \
    op interface \
    ports { p_arr_1_V_44_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name p_arr_1_V_43_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_43_reload \
    op interface \
    ports { p_arr_1_V_43_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name p_arr_1_V_42_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_42_reload \
    op interface \
    ports { p_arr_1_V_42_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name p_arr_1_V_41_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_41_reload \
    op interface \
    ports { p_arr_1_V_41_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name p_arr_1_V_40_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_40_reload \
    op interface \
    ports { p_arr_1_V_40_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name p_arr_1_V_39_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_39_reload \
    op interface \
    ports { p_arr_1_V_39_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name p_arr_1_V_38_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_38_reload \
    op interface \
    ports { p_arr_1_V_38_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name p_arr_1_V_37_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_37_reload \
    op interface \
    ports { p_arr_1_V_37_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name p_arr_1_V_36_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_36_reload \
    op interface \
    ports { p_arr_1_V_36_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name p_arr_1_V_35_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_35_reload \
    op interface \
    ports { p_arr_1_V_35_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name p_arr_1_V_34_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_34_reload \
    op interface \
    ports { p_arr_1_V_34_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name p_arr_1_V_33_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_33_reload \
    op interface \
    ports { p_arr_1_V_33_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name p_arr_1_V_32_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_32_reload \
    op interface \
    ports { p_arr_1_V_32_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name p_arr_1_V_31_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_31_reload \
    op interface \
    ports { p_arr_1_V_31_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name p_arr_1_V_30_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_30_reload \
    op interface \
    ports { p_arr_1_V_30_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name p_arr_1_V_29_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_29_reload \
    op interface \
    ports { p_arr_1_V_29_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name p_arr_1_V_28_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_28_reload \
    op interface \
    ports { p_arr_1_V_28_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name p_arr_1_V_27_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_27_reload \
    op interface \
    ports { p_arr_1_V_27_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name p_arr_1_V_26_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_26_reload \
    op interface \
    ports { p_arr_1_V_26_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name p_arr_1_V_25_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_25_reload \
    op interface \
    ports { p_arr_1_V_25_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name p_arr_1_V_24_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_24_reload \
    op interface \
    ports { p_arr_1_V_24_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name p_arr_1_V_23_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_23_reload \
    op interface \
    ports { p_arr_1_V_23_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name p_arr_1_V_22_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_22_reload \
    op interface \
    ports { p_arr_1_V_22_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name p_arr_1_V_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_21_reload \
    op interface \
    ports { p_arr_1_V_21_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name p_arr_1_V_20_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_20_reload \
    op interface \
    ports { p_arr_1_V_20_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name p_arr_1_V_19_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_19_reload \
    op interface \
    ports { p_arr_1_V_19_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name p_arr_1_V_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_18_reload \
    op interface \
    ports { p_arr_1_V_18_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name p_arr_1_V_17_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_17_reload \
    op interface \
    ports { p_arr_1_V_17_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name p_arr_1_V_16_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_16_reload \
    op interface \
    ports { p_arr_1_V_16_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name p_arr_1_V_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_15_reload \
    op interface \
    ports { p_arr_1_V_15_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name p_arr_1_V_14_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_14_reload \
    op interface \
    ports { p_arr_1_V_14_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name p_arr_1_V_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_13_reload \
    op interface \
    ports { p_arr_1_V_13_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name p_arr_1_V_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_12_reload \
    op interface \
    ports { p_arr_1_V_12_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name p_arr_1_V_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_11_reload \
    op interface \
    ports { p_arr_1_V_11_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name p_arr_1_V_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_10_reload \
    op interface \
    ports { p_arr_1_V_10_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name p_arr_1_V_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_9_reload \
    op interface \
    ports { p_arr_1_V_9_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name p_arr_1_V_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_8_reload \
    op interface \
    ports { p_arr_1_V_8_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name p_arr_1_V_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_7_reload \
    op interface \
    ports { p_arr_1_V_7_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name p_arr_1_V_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_6_reload \
    op interface \
    ports { p_arr_1_V_6_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name p_arr_1_V_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_5_reload \
    op interface \
    ports { p_arr_1_V_5_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name p_arr_1_V_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_4_reload \
    op interface \
    ports { p_arr_1_V_4_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name p_arr_1_V_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_3_reload \
    op interface \
    ports { p_arr_1_V_3_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name p_arr_1_V_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_2_reload \
    op interface \
    ports { p_arr_1_V_2_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name p_arr_1_V_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_1_reload \
    op interface \
    ports { p_arr_1_V_1_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name p_arr_1_V_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_arr_1_V_reload \
    op interface \
    ports { p_arr_1_V_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name u_hat_arr_V_63_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_63_reload \
    op interface \
    ports { u_hat_arr_V_63_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name u_hat_arr_V_62_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_62_reload \
    op interface \
    ports { u_hat_arr_V_62_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name u_hat_arr_V_61_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_61_reload \
    op interface \
    ports { u_hat_arr_V_61_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name u_hat_arr_V_60_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_60_reload \
    op interface \
    ports { u_hat_arr_V_60_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name u_hat_arr_V_59_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_59_reload \
    op interface \
    ports { u_hat_arr_V_59_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name u_hat_arr_V_58_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_58_reload \
    op interface \
    ports { u_hat_arr_V_58_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name u_hat_arr_V_57_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_57_reload \
    op interface \
    ports { u_hat_arr_V_57_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name u_hat_arr_V_56_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_56_reload \
    op interface \
    ports { u_hat_arr_V_56_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name u_hat_arr_V_55_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_55_reload \
    op interface \
    ports { u_hat_arr_V_55_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name u_hat_arr_V_54_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_54_reload \
    op interface \
    ports { u_hat_arr_V_54_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name u_hat_arr_V_53_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_53_reload \
    op interface \
    ports { u_hat_arr_V_53_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name u_hat_arr_V_52_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_52_reload \
    op interface \
    ports { u_hat_arr_V_52_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name u_hat_arr_V_51_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_51_reload \
    op interface \
    ports { u_hat_arr_V_51_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name u_hat_arr_V_50_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_50_reload \
    op interface \
    ports { u_hat_arr_V_50_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name u_hat_arr_V_49_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_49_reload \
    op interface \
    ports { u_hat_arr_V_49_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name u_hat_arr_V_48_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_48_reload \
    op interface \
    ports { u_hat_arr_V_48_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name u_hat_arr_V_47_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_47_reload \
    op interface \
    ports { u_hat_arr_V_47_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name u_hat_arr_V_46_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_46_reload \
    op interface \
    ports { u_hat_arr_V_46_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name u_hat_arr_V_45_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_45_reload \
    op interface \
    ports { u_hat_arr_V_45_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name u_hat_arr_V_44_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_44_reload \
    op interface \
    ports { u_hat_arr_V_44_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name u_hat_arr_V_43_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_43_reload \
    op interface \
    ports { u_hat_arr_V_43_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name u_hat_arr_V_42_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_42_reload \
    op interface \
    ports { u_hat_arr_V_42_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name u_hat_arr_V_41_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_41_reload \
    op interface \
    ports { u_hat_arr_V_41_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name u_hat_arr_V_40_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_40_reload \
    op interface \
    ports { u_hat_arr_V_40_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name u_hat_arr_V_39_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_39_reload \
    op interface \
    ports { u_hat_arr_V_39_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name u_hat_arr_V_38_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_38_reload \
    op interface \
    ports { u_hat_arr_V_38_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name u_hat_arr_V_37_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_37_reload \
    op interface \
    ports { u_hat_arr_V_37_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name u_hat_arr_V_36_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_36_reload \
    op interface \
    ports { u_hat_arr_V_36_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name u_hat_arr_V_35_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_35_reload \
    op interface \
    ports { u_hat_arr_V_35_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name u_hat_arr_V_34_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_34_reload \
    op interface \
    ports { u_hat_arr_V_34_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name u_hat_arr_V_33_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_33_reload \
    op interface \
    ports { u_hat_arr_V_33_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name u_hat_arr_V_32_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_32_reload \
    op interface \
    ports { u_hat_arr_V_32_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name u_hat_arr_V_31_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_31_reload \
    op interface \
    ports { u_hat_arr_V_31_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name u_hat_arr_V_30_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_30_reload \
    op interface \
    ports { u_hat_arr_V_30_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name u_hat_arr_V_29_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_29_reload \
    op interface \
    ports { u_hat_arr_V_29_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name u_hat_arr_V_28_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_28_reload \
    op interface \
    ports { u_hat_arr_V_28_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name u_hat_arr_V_27_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_27_reload \
    op interface \
    ports { u_hat_arr_V_27_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name u_hat_arr_V_26_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_26_reload \
    op interface \
    ports { u_hat_arr_V_26_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name u_hat_arr_V_25_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_25_reload \
    op interface \
    ports { u_hat_arr_V_25_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name u_hat_arr_V_24_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_24_reload \
    op interface \
    ports { u_hat_arr_V_24_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name u_hat_arr_V_23_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_23_reload \
    op interface \
    ports { u_hat_arr_V_23_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name u_hat_arr_V_22_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_22_reload \
    op interface \
    ports { u_hat_arr_V_22_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name u_hat_arr_V_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_21_reload \
    op interface \
    ports { u_hat_arr_V_21_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name u_hat_arr_V_20_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_20_reload \
    op interface \
    ports { u_hat_arr_V_20_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name u_hat_arr_V_19_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_19_reload \
    op interface \
    ports { u_hat_arr_V_19_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name u_hat_arr_V_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_18_reload \
    op interface \
    ports { u_hat_arr_V_18_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name u_hat_arr_V_17_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_17_reload \
    op interface \
    ports { u_hat_arr_V_17_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name u_hat_arr_V_16_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_16_reload \
    op interface \
    ports { u_hat_arr_V_16_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name u_hat_arr_V_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_15_reload \
    op interface \
    ports { u_hat_arr_V_15_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name u_hat_arr_V_14_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_14_reload \
    op interface \
    ports { u_hat_arr_V_14_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name u_hat_arr_V_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_13_reload \
    op interface \
    ports { u_hat_arr_V_13_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name u_hat_arr_V_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_12_reload \
    op interface \
    ports { u_hat_arr_V_12_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name u_hat_arr_V_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_11_reload \
    op interface \
    ports { u_hat_arr_V_11_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name u_hat_arr_V_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_10_reload \
    op interface \
    ports { u_hat_arr_V_10_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name u_hat_arr_V_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_9_reload \
    op interface \
    ports { u_hat_arr_V_9_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name u_hat_arr_V_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_8_reload \
    op interface \
    ports { u_hat_arr_V_8_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name u_hat_arr_V_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_7_reload \
    op interface \
    ports { u_hat_arr_V_7_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name u_hat_arr_V_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_6_reload \
    op interface \
    ports { u_hat_arr_V_6_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name u_hat_arr_V_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_5_reload \
    op interface \
    ports { u_hat_arr_V_5_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name u_hat_arr_V_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_4_reload \
    op interface \
    ports { u_hat_arr_V_4_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name u_hat_arr_V_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_3_reload \
    op interface \
    ports { u_hat_arr_V_3_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name u_hat_arr_V_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_2_reload \
    op interface \
    ports { u_hat_arr_V_2_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name u_hat_arr_V_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_1_reload \
    op interface \
    ports { u_hat_arr_V_1_reload { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name u_hat_arr_V_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_hat_arr_V_reload \
    op interface \
    ports { u_hat_arr_V_reload { I 19 vector } } \
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


