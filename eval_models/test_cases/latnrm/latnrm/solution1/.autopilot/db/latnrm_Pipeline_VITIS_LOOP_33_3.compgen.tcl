# This script segment is generated automatically by AutoPilot

set name latnrm_mul_32s_32s_64_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
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
    id 302 \
    name data \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data \
    op interface \
    ports { data_address0 { O 6 vector } data_ce0 { O 1 bit } data_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 367 \
    name outa \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename outa \
    op interface \
    ports { outa_address0 { O 6 vector } outa_ce0 { O 1 bit } outa_we0 { O 1 bit } outa_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outa'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name int_state_V_load_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_31 \
    op interface \
    ports { int_state_V_load_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name int_state_V_load_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_30 \
    op interface \
    ports { int_state_V_load_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name int_state_V_load_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_29 \
    op interface \
    ports { int_state_V_load_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name int_state_V_load_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_28 \
    op interface \
    ports { int_state_V_load_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name int_state_V_load_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_27 \
    op interface \
    ports { int_state_V_load_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name int_state_V_load_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_26 \
    op interface \
    ports { int_state_V_load_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name int_state_V_load_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_25 \
    op interface \
    ports { int_state_V_load_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name int_state_V_load_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_24 \
    op interface \
    ports { int_state_V_load_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name int_state_V_load_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_23 \
    op interface \
    ports { int_state_V_load_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name int_state_V_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_22 \
    op interface \
    ports { int_state_V_load_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name int_state_V_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_21 \
    op interface \
    ports { int_state_V_load_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name int_state_V_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_20 \
    op interface \
    ports { int_state_V_load_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name int_state_V_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_19 \
    op interface \
    ports { int_state_V_load_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name int_state_V_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_18 \
    op interface \
    ports { int_state_V_load_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name int_state_V_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_17 \
    op interface \
    ports { int_state_V_load_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name int_state_V_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_16 \
    op interface \
    ports { int_state_V_load_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name int_state_V_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_15 \
    op interface \
    ports { int_state_V_load_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name int_state_V_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_14 \
    op interface \
    ports { int_state_V_load_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name int_state_V_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_13 \
    op interface \
    ports { int_state_V_load_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name int_state_V_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_12 \
    op interface \
    ports { int_state_V_load_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name int_state_V_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_11 \
    op interface \
    ports { int_state_V_load_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name int_state_V_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_10 \
    op interface \
    ports { int_state_V_load_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name int_state_V_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_9 \
    op interface \
    ports { int_state_V_load_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name int_state_V_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_8 \
    op interface \
    ports { int_state_V_load_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name int_state_V_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_7 \
    op interface \
    ports { int_state_V_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name int_state_V_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_6 \
    op interface \
    ports { int_state_V_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name int_state_V_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_5 \
    op interface \
    ports { int_state_V_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name int_state_V_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_4 \
    op interface \
    ports { int_state_V_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name int_state_V_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_3 \
    op interface \
    ports { int_state_V_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name int_state_V_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_2 \
    op interface \
    ports { int_state_V_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name int_state_V_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_int_state_V_load_1 \
    op interface \
    ports { int_state_V_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name r_V_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_5 \
    op interface \
    ports { r_V_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name r_V_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_7 \
    op interface \
    ports { r_V_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name r_V_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_12 \
    op interface \
    ports { r_V_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name r_V_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_17 \
    op interface \
    ports { r_V_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name r_V_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_22 \
    op interface \
    ports { r_V_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name r_V_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_27 \
    op interface \
    ports { r_V_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name r_V_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_32 \
    op interface \
    ports { r_V_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name r_V_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_37 \
    op interface \
    ports { r_V_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name r_V_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_42 \
    op interface \
    ports { r_V_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name r_V_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_47 \
    op interface \
    ports { r_V_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name r_V_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_52 \
    op interface \
    ports { r_V_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name r_V_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_57 \
    op interface \
    ports { r_V_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name r_V_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_62 \
    op interface \
    ports { r_V_62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name r_V_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_67 \
    op interface \
    ports { r_V_67 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name r_V_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_72 \
    op interface \
    ports { r_V_72 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name r_V_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_77 \
    op interface \
    ports { r_V_77 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name r_V_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_82 \
    op interface \
    ports { r_V_82 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name r_V_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_87 \
    op interface \
    ports { r_V_87 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name r_V_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_92 \
    op interface \
    ports { r_V_92 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name r_V_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_97 \
    op interface \
    ports { r_V_97 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name r_V_102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_102 \
    op interface \
    ports { r_V_102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name r_V_107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_107 \
    op interface \
    ports { r_V_107 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name r_V_112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_112 \
    op interface \
    ports { r_V_112 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name r_V_117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_117 \
    op interface \
    ports { r_V_117 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name r_V_122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_122 \
    op interface \
    ports { r_V_122 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name r_V_127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_127 \
    op interface \
    ports { r_V_127 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name r_V_132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_132 \
    op interface \
    ports { r_V_132 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name r_V_137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_137 \
    op interface \
    ports { r_V_137 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name r_V_142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_142 \
    op interface \
    ports { r_V_142 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name r_V_147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_147 \
    op interface \
    ports { r_V_147 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name r_V_152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_152 \
    op interface \
    ports { r_V_152 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name r_V_156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_156 \
    op interface \
    ports { r_V_156 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name conv7_i_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_1 \
    op interface \
    ports { conv7_i_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name sext_ln33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln33 \
    op interface \
    ports { sext_ln33 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name conv7_i_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_2 \
    op interface \
    ports { conv7_i_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name conv7_i_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_3 \
    op interface \
    ports { conv7_i_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name conv7_i_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_4 \
    op interface \
    ports { conv7_i_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name conv7_i_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_5 \
    op interface \
    ports { conv7_i_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name conv7_i_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_6 \
    op interface \
    ports { conv7_i_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name conv7_i_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_7 \
    op interface \
    ports { conv7_i_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name conv7_i_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_8 \
    op interface \
    ports { conv7_i_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name conv7_i_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_9 \
    op interface \
    ports { conv7_i_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name conv7_i_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_10 \
    op interface \
    ports { conv7_i_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name conv7_i_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_11 \
    op interface \
    ports { conv7_i_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name conv7_i_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_12 \
    op interface \
    ports { conv7_i_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name conv7_i_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_13 \
    op interface \
    ports { conv7_i_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name conv7_i_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_14 \
    op interface \
    ports { conv7_i_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name conv7_i_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_15 \
    op interface \
    ports { conv7_i_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name conv7_i_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_16 \
    op interface \
    ports { conv7_i_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name conv7_i_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_17 \
    op interface \
    ports { conv7_i_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name conv7_i_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_18 \
    op interface \
    ports { conv7_i_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name conv7_i_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_19 \
    op interface \
    ports { conv7_i_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name conv7_i_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_20 \
    op interface \
    ports { conv7_i_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name conv7_i_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_21 \
    op interface \
    ports { conv7_i_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name conv7_i_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_22 \
    op interface \
    ports { conv7_i_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name conv7_i_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_23 \
    op interface \
    ports { conv7_i_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name conv7_i_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_24 \
    op interface \
    ports { conv7_i_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name conv7_i_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_25 \
    op interface \
    ports { conv7_i_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name conv7_i_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_26 \
    op interface \
    ports { conv7_i_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name conv7_i_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_27 \
    op interface \
    ports { conv7_i_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name conv7_i_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_28 \
    op interface \
    ports { conv7_i_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name conv7_i_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_29 \
    op interface \
    ports { conv7_i_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name conv7_i_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_30 \
    op interface \
    ports { conv7_i_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name conv7_i_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i_31 \
    op interface \
    ports { conv7_i_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name right_V_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_30_out \
    op interface \
    ports { right_V_30_out { O 32 vector } right_V_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name right_V_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_29_out \
    op interface \
    ports { right_V_29_out { O 32 vector } right_V_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name right_V_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_28_out \
    op interface \
    ports { right_V_28_out { O 32 vector } right_V_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name right_V_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_27_out \
    op interface \
    ports { right_V_27_out { O 32 vector } right_V_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name right_V_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_26_out \
    op interface \
    ports { right_V_26_out { O 32 vector } right_V_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name right_V_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_25_out \
    op interface \
    ports { right_V_25_out { O 32 vector } right_V_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name right_V_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_24_out \
    op interface \
    ports { right_V_24_out { O 32 vector } right_V_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name right_V_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_23_out \
    op interface \
    ports { right_V_23_out { O 32 vector } right_V_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name right_V_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_22_out \
    op interface \
    ports { right_V_22_out { O 32 vector } right_V_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name right_V_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_21_out \
    op interface \
    ports { right_V_21_out { O 32 vector } right_V_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name right_V_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_20_out \
    op interface \
    ports { right_V_20_out { O 32 vector } right_V_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name right_V_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_19_out \
    op interface \
    ports { right_V_19_out { O 32 vector } right_V_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name right_V_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_18_out \
    op interface \
    ports { right_V_18_out { O 32 vector } right_V_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name right_V_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_17_out \
    op interface \
    ports { right_V_17_out { O 32 vector } right_V_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name right_V_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_16_out \
    op interface \
    ports { right_V_16_out { O 32 vector } right_V_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name right_V_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_15_out \
    op interface \
    ports { right_V_15_out { O 32 vector } right_V_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name right_V_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_14_out \
    op interface \
    ports { right_V_14_out { O 32 vector } right_V_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name right_V_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_13_out \
    op interface \
    ports { right_V_13_out { O 32 vector } right_V_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name right_V_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_12_out \
    op interface \
    ports { right_V_12_out { O 32 vector } right_V_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name right_V_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_11_out \
    op interface \
    ports { right_V_11_out { O 32 vector } right_V_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name right_V_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_10_out \
    op interface \
    ports { right_V_10_out { O 32 vector } right_V_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name right_V_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_9_out \
    op interface \
    ports { right_V_9_out { O 32 vector } right_V_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name right_V_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_8_out \
    op interface \
    ports { right_V_8_out { O 32 vector } right_V_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name right_V_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_7_out \
    op interface \
    ports { right_V_7_out { O 32 vector } right_V_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name right_V_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_6_out \
    op interface \
    ports { right_V_6_out { O 32 vector } right_V_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name right_V_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_5_out \
    op interface \
    ports { right_V_5_out { O 32 vector } right_V_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name right_V_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_4_out \
    op interface \
    ports { right_V_4_out { O 32 vector } right_V_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name right_V_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_3_out \
    op interface \
    ports { right_V_3_out { O 32 vector } right_V_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name right_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_2_out \
    op interface \
    ports { right_V_2_out { O 32 vector } right_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name right_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_1_out \
    op interface \
    ports { right_V_1_out { O 32 vector } right_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name right_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_V_out \
    op interface \
    ports { right_V_out { O 32 vector } right_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name bottom_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bottom_V_out \
    op interface \
    ports { bottom_V_out { O 32 vector } bottom_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name conv7_i158_30_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i158_30_phi_out \
    op interface \
    ports { conv7_i158_30_phi_out { O 32 vector } conv7_i158_30_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name conv7_i491_30_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7_i491_30_phi_out \
    op interface \
    ports { conv7_i491_30_phi_out { O 32 vector } conv7_i491_30_phi_out_ap_vld { O 1 bit } } \
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


