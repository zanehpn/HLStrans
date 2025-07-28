# This script segment is generated automatically by AutoPilot

set name latnrm_fpext_32ns_64_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fpext} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler latnrm_coeff_V_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler latnrm_int_state_V_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 443 \
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
    id 444 \
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
    id 445 \
    name coefficient_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_0 \
    op interface \
    ports { coefficient_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name coefficient_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_1 \
    op interface \
    ports { coefficient_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name coefficient_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_2 \
    op interface \
    ports { coefficient_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name coefficient_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_3 \
    op interface \
    ports { coefficient_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name coefficient_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_4 \
    op interface \
    ports { coefficient_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name coefficient_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_5 \
    op interface \
    ports { coefficient_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name coefficient_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_6 \
    op interface \
    ports { coefficient_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name coefficient_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_7 \
    op interface \
    ports { coefficient_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name coefficient_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_8 \
    op interface \
    ports { coefficient_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name coefficient_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_9 \
    op interface \
    ports { coefficient_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name coefficient_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_10 \
    op interface \
    ports { coefficient_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name coefficient_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_11 \
    op interface \
    ports { coefficient_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name coefficient_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_12 \
    op interface \
    ports { coefficient_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name coefficient_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_13 \
    op interface \
    ports { coefficient_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name coefficient_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_14 \
    op interface \
    ports { coefficient_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name coefficient_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_15 \
    op interface \
    ports { coefficient_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name coefficient_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_16 \
    op interface \
    ports { coefficient_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name coefficient_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_17 \
    op interface \
    ports { coefficient_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name coefficient_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_18 \
    op interface \
    ports { coefficient_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name coefficient_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_19 \
    op interface \
    ports { coefficient_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name coefficient_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_20 \
    op interface \
    ports { coefficient_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name coefficient_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_21 \
    op interface \
    ports { coefficient_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name coefficient_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_22 \
    op interface \
    ports { coefficient_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name coefficient_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_23 \
    op interface \
    ports { coefficient_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name coefficient_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_24 \
    op interface \
    ports { coefficient_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name coefficient_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_25 \
    op interface \
    ports { coefficient_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name coefficient_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_26 \
    op interface \
    ports { coefficient_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name coefficient_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_27 \
    op interface \
    ports { coefficient_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name coefficient_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_28 \
    op interface \
    ports { coefficient_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name coefficient_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_29 \
    op interface \
    ports { coefficient_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name coefficient_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_30 \
    op interface \
    ports { coefficient_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name coefficient_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_31 \
    op interface \
    ports { coefficient_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name coefficient_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_32 \
    op interface \
    ports { coefficient_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name coefficient_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_33 \
    op interface \
    ports { coefficient_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name coefficient_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_34 \
    op interface \
    ports { coefficient_34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name coefficient_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_35 \
    op interface \
    ports { coefficient_35 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name coefficient_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_36 \
    op interface \
    ports { coefficient_36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name coefficient_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_37 \
    op interface \
    ports { coefficient_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name coefficient_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_38 \
    op interface \
    ports { coefficient_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name coefficient_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_39 \
    op interface \
    ports { coefficient_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name coefficient_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_40 \
    op interface \
    ports { coefficient_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name coefficient_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_41 \
    op interface \
    ports { coefficient_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name coefficient_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_42 \
    op interface \
    ports { coefficient_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name coefficient_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_43 \
    op interface \
    ports { coefficient_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name coefficient_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_44 \
    op interface \
    ports { coefficient_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name coefficient_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_45 \
    op interface \
    ports { coefficient_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name coefficient_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_46 \
    op interface \
    ports { coefficient_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name coefficient_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_47 \
    op interface \
    ports { coefficient_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name coefficient_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_48 \
    op interface \
    ports { coefficient_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name coefficient_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_49 \
    op interface \
    ports { coefficient_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name coefficient_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_50 \
    op interface \
    ports { coefficient_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name coefficient_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_51 \
    op interface \
    ports { coefficient_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name coefficient_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_52 \
    op interface \
    ports { coefficient_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name coefficient_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_53 \
    op interface \
    ports { coefficient_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name coefficient_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_54 \
    op interface \
    ports { coefficient_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name coefficient_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_55 \
    op interface \
    ports { coefficient_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name coefficient_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_56 \
    op interface \
    ports { coefficient_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name coefficient_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_57 \
    op interface \
    ports { coefficient_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name coefficient_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_58 \
    op interface \
    ports { coefficient_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name coefficient_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_59 \
    op interface \
    ports { coefficient_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name coefficient_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_60 \
    op interface \
    ports { coefficient_60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name coefficient_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_61 \
    op interface \
    ports { coefficient_61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name coefficient_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_62 \
    op interface \
    ports { coefficient_62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 508 \
    name coefficient_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coefficient_63 \
    op interface \
    ports { coefficient_63 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name internal_state_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_0 \
    op interface \
    ports { internal_state_0_i { I 32 vector } internal_state_0_o { O 32 vector } internal_state_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
    name internal_state_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_1 \
    op interface \
    ports { internal_state_1_i { I 32 vector } internal_state_1_o { O 32 vector } internal_state_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 511 \
    name internal_state_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_2 \
    op interface \
    ports { internal_state_2_i { I 32 vector } internal_state_2_o { O 32 vector } internal_state_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name internal_state_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_3 \
    op interface \
    ports { internal_state_3_i { I 32 vector } internal_state_3_o { O 32 vector } internal_state_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name internal_state_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_4 \
    op interface \
    ports { internal_state_4_i { I 32 vector } internal_state_4_o { O 32 vector } internal_state_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name internal_state_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_5 \
    op interface \
    ports { internal_state_5_i { I 32 vector } internal_state_5_o { O 32 vector } internal_state_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name internal_state_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_6 \
    op interface \
    ports { internal_state_6_i { I 32 vector } internal_state_6_o { O 32 vector } internal_state_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name internal_state_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_7 \
    op interface \
    ports { internal_state_7_i { I 32 vector } internal_state_7_o { O 32 vector } internal_state_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name internal_state_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_8 \
    op interface \
    ports { internal_state_8_i { I 32 vector } internal_state_8_o { O 32 vector } internal_state_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name internal_state_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_9 \
    op interface \
    ports { internal_state_9_i { I 32 vector } internal_state_9_o { O 32 vector } internal_state_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name internal_state_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_10 \
    op interface \
    ports { internal_state_10_i { I 32 vector } internal_state_10_o { O 32 vector } internal_state_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name internal_state_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_11 \
    op interface \
    ports { internal_state_11_i { I 32 vector } internal_state_11_o { O 32 vector } internal_state_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name internal_state_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_12 \
    op interface \
    ports { internal_state_12_i { I 32 vector } internal_state_12_o { O 32 vector } internal_state_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name internal_state_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_13 \
    op interface \
    ports { internal_state_13_i { I 32 vector } internal_state_13_o { O 32 vector } internal_state_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name internal_state_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_14 \
    op interface \
    ports { internal_state_14_i { I 32 vector } internal_state_14_o { O 32 vector } internal_state_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name internal_state_15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_15 \
    op interface \
    ports { internal_state_15_i { I 32 vector } internal_state_15_o { O 32 vector } internal_state_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name internal_state_16 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_16 \
    op interface \
    ports { internal_state_16_i { I 32 vector } internal_state_16_o { O 32 vector } internal_state_16_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name internal_state_17 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_17 \
    op interface \
    ports { internal_state_17_i { I 32 vector } internal_state_17_o { O 32 vector } internal_state_17_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name internal_state_18 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_18 \
    op interface \
    ports { internal_state_18_i { I 32 vector } internal_state_18_o { O 32 vector } internal_state_18_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name internal_state_19 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_19 \
    op interface \
    ports { internal_state_19_i { I 32 vector } internal_state_19_o { O 32 vector } internal_state_19_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name internal_state_20 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_20 \
    op interface \
    ports { internal_state_20_i { I 32 vector } internal_state_20_o { O 32 vector } internal_state_20_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name internal_state_21 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_21 \
    op interface \
    ports { internal_state_21_i { I 32 vector } internal_state_21_o { O 32 vector } internal_state_21_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name internal_state_22 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_22 \
    op interface \
    ports { internal_state_22_i { I 32 vector } internal_state_22_o { O 32 vector } internal_state_22_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name internal_state_23 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_23 \
    op interface \
    ports { internal_state_23_i { I 32 vector } internal_state_23_o { O 32 vector } internal_state_23_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name internal_state_24 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_24 \
    op interface \
    ports { internal_state_24_i { I 32 vector } internal_state_24_o { O 32 vector } internal_state_24_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name internal_state_25 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_25 \
    op interface \
    ports { internal_state_25_i { I 32 vector } internal_state_25_o { O 32 vector } internal_state_25_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name internal_state_26 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_26 \
    op interface \
    ports { internal_state_26_i { I 32 vector } internal_state_26_o { O 32 vector } internal_state_26_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name internal_state_27 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_27 \
    op interface \
    ports { internal_state_27_i { I 32 vector } internal_state_27_o { O 32 vector } internal_state_27_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name internal_state_28 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_28 \
    op interface \
    ports { internal_state_28_i { I 32 vector } internal_state_28_o { O 32 vector } internal_state_28_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name internal_state_29 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_29 \
    op interface \
    ports { internal_state_29_i { I 32 vector } internal_state_29_o { O 32 vector } internal_state_29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name internal_state_30 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_30 \
    op interface \
    ports { internal_state_30_i { I 32 vector } internal_state_30_o { O 32 vector } internal_state_30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name internal_state_31 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_31 \
    op interface \
    ports { internal_state_31_i { I 32 vector } internal_state_31_o { O 32 vector } internal_state_31_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name internal_state_32 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_internal_state_32 \
    op interface \
    ports { internal_state_32_i { I 32 vector } internal_state_32_o { O 32 vector } internal_state_32_o_ap_vld { O 1 bit } } \
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


