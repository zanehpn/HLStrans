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
    id 85 \
    name buff_A \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_A \
    op interface \
    ports { buff_A_address0 { O 12 vector } buff_A_ce0 { O 1 bit } buff_A_q0 { I 32 vector } buff_A_address1 { O 12 vector } buff_A_ce1 { O 1 bit } buff_A_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_A'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 86 \
    name buff_x2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_x2 \
    op interface \
    ports { buff_x2_address0 { O 6 vector } buff_x2_ce0 { O 1 bit } buff_x2_we0 { O 1 bit } buff_x2_d0 { O 32 vector } buff_x2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_x2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name buff_y2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load \
    op interface \
    ports { buff_y2_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name buff_y2_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_1 \
    op interface \
    ports { buff_y2_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name buff_y2_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_2 \
    op interface \
    ports { buff_y2_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name buff_y2_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_3 \
    op interface \
    ports { buff_y2_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name buff_y2_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_4 \
    op interface \
    ports { buff_y2_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name buff_y2_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_5 \
    op interface \
    ports { buff_y2_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name buff_y2_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_6 \
    op interface \
    ports { buff_y2_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name buff_y2_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_7 \
    op interface \
    ports { buff_y2_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name buff_y2_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_8 \
    op interface \
    ports { buff_y2_load_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name buff_y2_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_9 \
    op interface \
    ports { buff_y2_load_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name buff_y2_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_10 \
    op interface \
    ports { buff_y2_load_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name buff_y2_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_11 \
    op interface \
    ports { buff_y2_load_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name buff_y2_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_12 \
    op interface \
    ports { buff_y2_load_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name buff_y2_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_13 \
    op interface \
    ports { buff_y2_load_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name buff_y2_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_14 \
    op interface \
    ports { buff_y2_load_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name buff_y2_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_15 \
    op interface \
    ports { buff_y2_load_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name buff_y2_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_16 \
    op interface \
    ports { buff_y2_load_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name buff_y2_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_17 \
    op interface \
    ports { buff_y2_load_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name buff_y2_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_18 \
    op interface \
    ports { buff_y2_load_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name buff_y2_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_19 \
    op interface \
    ports { buff_y2_load_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name buff_y2_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_20 \
    op interface \
    ports { buff_y2_load_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name buff_y2_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_21 \
    op interface \
    ports { buff_y2_load_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name buff_y2_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_22 \
    op interface \
    ports { buff_y2_load_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name buff_y2_load_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_23 \
    op interface \
    ports { buff_y2_load_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name buff_y2_load_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_24 \
    op interface \
    ports { buff_y2_load_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name buff_y2_load_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_25 \
    op interface \
    ports { buff_y2_load_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name buff_y2_load_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_26 \
    op interface \
    ports { buff_y2_load_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name buff_y2_load_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_27 \
    op interface \
    ports { buff_y2_load_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name buff_y2_load_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_28 \
    op interface \
    ports { buff_y2_load_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name buff_y2_load_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_29 \
    op interface \
    ports { buff_y2_load_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name buff_y2_load_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_30 \
    op interface \
    ports { buff_y2_load_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name buff_y2_load_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_31 \
    op interface \
    ports { buff_y2_load_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name buff_y2_load_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_32 \
    op interface \
    ports { buff_y2_load_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name buff_y2_load_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_33 \
    op interface \
    ports { buff_y2_load_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name buff_y2_load_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_34 \
    op interface \
    ports { buff_y2_load_34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name buff_y2_load_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_35 \
    op interface \
    ports { buff_y2_load_35 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name buff_y2_load_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_36 \
    op interface \
    ports { buff_y2_load_36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name buff_y2_load_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_37 \
    op interface \
    ports { buff_y2_load_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name buff_y2_load_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_38 \
    op interface \
    ports { buff_y2_load_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name buff_y2_load_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_39 \
    op interface \
    ports { buff_y2_load_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name buff_y2_load_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_40 \
    op interface \
    ports { buff_y2_load_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name buff_y2_load_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_41 \
    op interface \
    ports { buff_y2_load_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name buff_y2_load_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_42 \
    op interface \
    ports { buff_y2_load_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name buff_y2_load_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_43 \
    op interface \
    ports { buff_y2_load_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name buff_y2_load_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_44 \
    op interface \
    ports { buff_y2_load_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name buff_y2_load_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_45 \
    op interface \
    ports { buff_y2_load_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name buff_y2_load_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_46 \
    op interface \
    ports { buff_y2_load_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name buff_y2_load_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_47 \
    op interface \
    ports { buff_y2_load_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name buff_y2_load_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_48 \
    op interface \
    ports { buff_y2_load_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name buff_y2_load_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_49 \
    op interface \
    ports { buff_y2_load_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name buff_y2_load_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_50 \
    op interface \
    ports { buff_y2_load_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name buff_y2_load_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_51 \
    op interface \
    ports { buff_y2_load_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name buff_y2_load_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_52 \
    op interface \
    ports { buff_y2_load_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name buff_y2_load_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_53 \
    op interface \
    ports { buff_y2_load_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name buff_y2_load_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_54 \
    op interface \
    ports { buff_y2_load_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name buff_y2_load_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_55 \
    op interface \
    ports { buff_y2_load_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name buff_y2_load_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_56 \
    op interface \
    ports { buff_y2_load_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name buff_y2_load_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_57 \
    op interface \
    ports { buff_y2_load_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name buff_y2_load_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_58 \
    op interface \
    ports { buff_y2_load_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name buff_y2_load_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_59 \
    op interface \
    ports { buff_y2_load_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name buff_y2_load_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_60 \
    op interface \
    ports { buff_y2_load_60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name buff_y2_load_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_61 \
    op interface \
    ports { buff_y2_load_61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name buff_y2_load_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_62 \
    op interface \
    ports { buff_y2_load_62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name buff_y2_load_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buff_y2_load_63 \
    op interface \
    ports { buff_y2_load_63 { I 32 vector } } \
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
set InstName mvt_flow_control_loop_pipe_sequential_init_U
set CompName mvt_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix mvt_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


