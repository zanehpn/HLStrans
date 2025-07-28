#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_signal_handler.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_data "../tv/cdatafile/c.latnrm.autotvin_data.dat"
#define AUTOTB_TVOUT_data "../tv/cdatafile/c.latnrm.autotvout_data.dat"
#define AUTOTB_TVIN_outa "../tv/cdatafile/c.latnrm.autotvin_outa.dat"
#define AUTOTB_TVOUT_outa "../tv/cdatafile/c.latnrm.autotvout_outa.dat"
#define AUTOTB_TVIN_coefficient_0 "../tv/cdatafile/c.latnrm.autotvin_coefficient_0.dat"
#define AUTOTB_TVOUT_coefficient_0 "../tv/cdatafile/c.latnrm.autotvout_coefficient_0.dat"
#define AUTOTB_TVIN_coefficient_1 "../tv/cdatafile/c.latnrm.autotvin_coefficient_1.dat"
#define AUTOTB_TVOUT_coefficient_1 "../tv/cdatafile/c.latnrm.autotvout_coefficient_1.dat"
#define AUTOTB_TVIN_coefficient_2 "../tv/cdatafile/c.latnrm.autotvin_coefficient_2.dat"
#define AUTOTB_TVOUT_coefficient_2 "../tv/cdatafile/c.latnrm.autotvout_coefficient_2.dat"
#define AUTOTB_TVIN_coefficient_3 "../tv/cdatafile/c.latnrm.autotvin_coefficient_3.dat"
#define AUTOTB_TVOUT_coefficient_3 "../tv/cdatafile/c.latnrm.autotvout_coefficient_3.dat"
#define AUTOTB_TVIN_coefficient_4 "../tv/cdatafile/c.latnrm.autotvin_coefficient_4.dat"
#define AUTOTB_TVOUT_coefficient_4 "../tv/cdatafile/c.latnrm.autotvout_coefficient_4.dat"
#define AUTOTB_TVIN_coefficient_5 "../tv/cdatafile/c.latnrm.autotvin_coefficient_5.dat"
#define AUTOTB_TVOUT_coefficient_5 "../tv/cdatafile/c.latnrm.autotvout_coefficient_5.dat"
#define AUTOTB_TVIN_coefficient_6 "../tv/cdatafile/c.latnrm.autotvin_coefficient_6.dat"
#define AUTOTB_TVOUT_coefficient_6 "../tv/cdatafile/c.latnrm.autotvout_coefficient_6.dat"
#define AUTOTB_TVIN_coefficient_7 "../tv/cdatafile/c.latnrm.autotvin_coefficient_7.dat"
#define AUTOTB_TVOUT_coefficient_7 "../tv/cdatafile/c.latnrm.autotvout_coefficient_7.dat"
#define AUTOTB_TVIN_coefficient_8 "../tv/cdatafile/c.latnrm.autotvin_coefficient_8.dat"
#define AUTOTB_TVOUT_coefficient_8 "../tv/cdatafile/c.latnrm.autotvout_coefficient_8.dat"
#define AUTOTB_TVIN_coefficient_9 "../tv/cdatafile/c.latnrm.autotvin_coefficient_9.dat"
#define AUTOTB_TVOUT_coefficient_9 "../tv/cdatafile/c.latnrm.autotvout_coefficient_9.dat"
#define AUTOTB_TVIN_coefficient_10 "../tv/cdatafile/c.latnrm.autotvin_coefficient_10.dat"
#define AUTOTB_TVOUT_coefficient_10 "../tv/cdatafile/c.latnrm.autotvout_coefficient_10.dat"
#define AUTOTB_TVIN_coefficient_11 "../tv/cdatafile/c.latnrm.autotvin_coefficient_11.dat"
#define AUTOTB_TVOUT_coefficient_11 "../tv/cdatafile/c.latnrm.autotvout_coefficient_11.dat"
#define AUTOTB_TVIN_coefficient_12 "../tv/cdatafile/c.latnrm.autotvin_coefficient_12.dat"
#define AUTOTB_TVOUT_coefficient_12 "../tv/cdatafile/c.latnrm.autotvout_coefficient_12.dat"
#define AUTOTB_TVIN_coefficient_13 "../tv/cdatafile/c.latnrm.autotvin_coefficient_13.dat"
#define AUTOTB_TVOUT_coefficient_13 "../tv/cdatafile/c.latnrm.autotvout_coefficient_13.dat"
#define AUTOTB_TVIN_coefficient_14 "../tv/cdatafile/c.latnrm.autotvin_coefficient_14.dat"
#define AUTOTB_TVOUT_coefficient_14 "../tv/cdatafile/c.latnrm.autotvout_coefficient_14.dat"
#define AUTOTB_TVIN_coefficient_15 "../tv/cdatafile/c.latnrm.autotvin_coefficient_15.dat"
#define AUTOTB_TVOUT_coefficient_15 "../tv/cdatafile/c.latnrm.autotvout_coefficient_15.dat"
#define AUTOTB_TVIN_coefficient_16 "../tv/cdatafile/c.latnrm.autotvin_coefficient_16.dat"
#define AUTOTB_TVOUT_coefficient_16 "../tv/cdatafile/c.latnrm.autotvout_coefficient_16.dat"
#define AUTOTB_TVIN_coefficient_17 "../tv/cdatafile/c.latnrm.autotvin_coefficient_17.dat"
#define AUTOTB_TVOUT_coefficient_17 "../tv/cdatafile/c.latnrm.autotvout_coefficient_17.dat"
#define AUTOTB_TVIN_coefficient_18 "../tv/cdatafile/c.latnrm.autotvin_coefficient_18.dat"
#define AUTOTB_TVOUT_coefficient_18 "../tv/cdatafile/c.latnrm.autotvout_coefficient_18.dat"
#define AUTOTB_TVIN_coefficient_19 "../tv/cdatafile/c.latnrm.autotvin_coefficient_19.dat"
#define AUTOTB_TVOUT_coefficient_19 "../tv/cdatafile/c.latnrm.autotvout_coefficient_19.dat"
#define AUTOTB_TVIN_coefficient_20 "../tv/cdatafile/c.latnrm.autotvin_coefficient_20.dat"
#define AUTOTB_TVOUT_coefficient_20 "../tv/cdatafile/c.latnrm.autotvout_coefficient_20.dat"
#define AUTOTB_TVIN_coefficient_21 "../tv/cdatafile/c.latnrm.autotvin_coefficient_21.dat"
#define AUTOTB_TVOUT_coefficient_21 "../tv/cdatafile/c.latnrm.autotvout_coefficient_21.dat"
#define AUTOTB_TVIN_coefficient_22 "../tv/cdatafile/c.latnrm.autotvin_coefficient_22.dat"
#define AUTOTB_TVOUT_coefficient_22 "../tv/cdatafile/c.latnrm.autotvout_coefficient_22.dat"
#define AUTOTB_TVIN_coefficient_23 "../tv/cdatafile/c.latnrm.autotvin_coefficient_23.dat"
#define AUTOTB_TVOUT_coefficient_23 "../tv/cdatafile/c.latnrm.autotvout_coefficient_23.dat"
#define AUTOTB_TVIN_coefficient_24 "../tv/cdatafile/c.latnrm.autotvin_coefficient_24.dat"
#define AUTOTB_TVOUT_coefficient_24 "../tv/cdatafile/c.latnrm.autotvout_coefficient_24.dat"
#define AUTOTB_TVIN_coefficient_25 "../tv/cdatafile/c.latnrm.autotvin_coefficient_25.dat"
#define AUTOTB_TVOUT_coefficient_25 "../tv/cdatafile/c.latnrm.autotvout_coefficient_25.dat"
#define AUTOTB_TVIN_coefficient_26 "../tv/cdatafile/c.latnrm.autotvin_coefficient_26.dat"
#define AUTOTB_TVOUT_coefficient_26 "../tv/cdatafile/c.latnrm.autotvout_coefficient_26.dat"
#define AUTOTB_TVIN_coefficient_27 "../tv/cdatafile/c.latnrm.autotvin_coefficient_27.dat"
#define AUTOTB_TVOUT_coefficient_27 "../tv/cdatafile/c.latnrm.autotvout_coefficient_27.dat"
#define AUTOTB_TVIN_coefficient_28 "../tv/cdatafile/c.latnrm.autotvin_coefficient_28.dat"
#define AUTOTB_TVOUT_coefficient_28 "../tv/cdatafile/c.latnrm.autotvout_coefficient_28.dat"
#define AUTOTB_TVIN_coefficient_29 "../tv/cdatafile/c.latnrm.autotvin_coefficient_29.dat"
#define AUTOTB_TVOUT_coefficient_29 "../tv/cdatafile/c.latnrm.autotvout_coefficient_29.dat"
#define AUTOTB_TVIN_coefficient_30 "../tv/cdatafile/c.latnrm.autotvin_coefficient_30.dat"
#define AUTOTB_TVOUT_coefficient_30 "../tv/cdatafile/c.latnrm.autotvout_coefficient_30.dat"
#define AUTOTB_TVIN_coefficient_31 "../tv/cdatafile/c.latnrm.autotvin_coefficient_31.dat"
#define AUTOTB_TVOUT_coefficient_31 "../tv/cdatafile/c.latnrm.autotvout_coefficient_31.dat"
#define AUTOTB_TVIN_coefficient_32 "../tv/cdatafile/c.latnrm.autotvin_coefficient_32.dat"
#define AUTOTB_TVOUT_coefficient_32 "../tv/cdatafile/c.latnrm.autotvout_coefficient_32.dat"
#define AUTOTB_TVIN_coefficient_33 "../tv/cdatafile/c.latnrm.autotvin_coefficient_33.dat"
#define AUTOTB_TVOUT_coefficient_33 "../tv/cdatafile/c.latnrm.autotvout_coefficient_33.dat"
#define AUTOTB_TVIN_coefficient_34 "../tv/cdatafile/c.latnrm.autotvin_coefficient_34.dat"
#define AUTOTB_TVOUT_coefficient_34 "../tv/cdatafile/c.latnrm.autotvout_coefficient_34.dat"
#define AUTOTB_TVIN_coefficient_35 "../tv/cdatafile/c.latnrm.autotvin_coefficient_35.dat"
#define AUTOTB_TVOUT_coefficient_35 "../tv/cdatafile/c.latnrm.autotvout_coefficient_35.dat"
#define AUTOTB_TVIN_coefficient_36 "../tv/cdatafile/c.latnrm.autotvin_coefficient_36.dat"
#define AUTOTB_TVOUT_coefficient_36 "../tv/cdatafile/c.latnrm.autotvout_coefficient_36.dat"
#define AUTOTB_TVIN_coefficient_37 "../tv/cdatafile/c.latnrm.autotvin_coefficient_37.dat"
#define AUTOTB_TVOUT_coefficient_37 "../tv/cdatafile/c.latnrm.autotvout_coefficient_37.dat"
#define AUTOTB_TVIN_coefficient_38 "../tv/cdatafile/c.latnrm.autotvin_coefficient_38.dat"
#define AUTOTB_TVOUT_coefficient_38 "../tv/cdatafile/c.latnrm.autotvout_coefficient_38.dat"
#define AUTOTB_TVIN_coefficient_39 "../tv/cdatafile/c.latnrm.autotvin_coefficient_39.dat"
#define AUTOTB_TVOUT_coefficient_39 "../tv/cdatafile/c.latnrm.autotvout_coefficient_39.dat"
#define AUTOTB_TVIN_coefficient_40 "../tv/cdatafile/c.latnrm.autotvin_coefficient_40.dat"
#define AUTOTB_TVOUT_coefficient_40 "../tv/cdatafile/c.latnrm.autotvout_coefficient_40.dat"
#define AUTOTB_TVIN_coefficient_41 "../tv/cdatafile/c.latnrm.autotvin_coefficient_41.dat"
#define AUTOTB_TVOUT_coefficient_41 "../tv/cdatafile/c.latnrm.autotvout_coefficient_41.dat"
#define AUTOTB_TVIN_coefficient_42 "../tv/cdatafile/c.latnrm.autotvin_coefficient_42.dat"
#define AUTOTB_TVOUT_coefficient_42 "../tv/cdatafile/c.latnrm.autotvout_coefficient_42.dat"
#define AUTOTB_TVIN_coefficient_43 "../tv/cdatafile/c.latnrm.autotvin_coefficient_43.dat"
#define AUTOTB_TVOUT_coefficient_43 "../tv/cdatafile/c.latnrm.autotvout_coefficient_43.dat"
#define AUTOTB_TVIN_coefficient_44 "../tv/cdatafile/c.latnrm.autotvin_coefficient_44.dat"
#define AUTOTB_TVOUT_coefficient_44 "../tv/cdatafile/c.latnrm.autotvout_coefficient_44.dat"
#define AUTOTB_TVIN_coefficient_45 "../tv/cdatafile/c.latnrm.autotvin_coefficient_45.dat"
#define AUTOTB_TVOUT_coefficient_45 "../tv/cdatafile/c.latnrm.autotvout_coefficient_45.dat"
#define AUTOTB_TVIN_coefficient_46 "../tv/cdatafile/c.latnrm.autotvin_coefficient_46.dat"
#define AUTOTB_TVOUT_coefficient_46 "../tv/cdatafile/c.latnrm.autotvout_coefficient_46.dat"
#define AUTOTB_TVIN_coefficient_47 "../tv/cdatafile/c.latnrm.autotvin_coefficient_47.dat"
#define AUTOTB_TVOUT_coefficient_47 "../tv/cdatafile/c.latnrm.autotvout_coefficient_47.dat"
#define AUTOTB_TVIN_coefficient_48 "../tv/cdatafile/c.latnrm.autotvin_coefficient_48.dat"
#define AUTOTB_TVOUT_coefficient_48 "../tv/cdatafile/c.latnrm.autotvout_coefficient_48.dat"
#define AUTOTB_TVIN_coefficient_49 "../tv/cdatafile/c.latnrm.autotvin_coefficient_49.dat"
#define AUTOTB_TVOUT_coefficient_49 "../tv/cdatafile/c.latnrm.autotvout_coefficient_49.dat"
#define AUTOTB_TVIN_coefficient_50 "../tv/cdatafile/c.latnrm.autotvin_coefficient_50.dat"
#define AUTOTB_TVOUT_coefficient_50 "../tv/cdatafile/c.latnrm.autotvout_coefficient_50.dat"
#define AUTOTB_TVIN_coefficient_51 "../tv/cdatafile/c.latnrm.autotvin_coefficient_51.dat"
#define AUTOTB_TVOUT_coefficient_51 "../tv/cdatafile/c.latnrm.autotvout_coefficient_51.dat"
#define AUTOTB_TVIN_coefficient_52 "../tv/cdatafile/c.latnrm.autotvin_coefficient_52.dat"
#define AUTOTB_TVOUT_coefficient_52 "../tv/cdatafile/c.latnrm.autotvout_coefficient_52.dat"
#define AUTOTB_TVIN_coefficient_53 "../tv/cdatafile/c.latnrm.autotvin_coefficient_53.dat"
#define AUTOTB_TVOUT_coefficient_53 "../tv/cdatafile/c.latnrm.autotvout_coefficient_53.dat"
#define AUTOTB_TVIN_coefficient_54 "../tv/cdatafile/c.latnrm.autotvin_coefficient_54.dat"
#define AUTOTB_TVOUT_coefficient_54 "../tv/cdatafile/c.latnrm.autotvout_coefficient_54.dat"
#define AUTOTB_TVIN_coefficient_55 "../tv/cdatafile/c.latnrm.autotvin_coefficient_55.dat"
#define AUTOTB_TVOUT_coefficient_55 "../tv/cdatafile/c.latnrm.autotvout_coefficient_55.dat"
#define AUTOTB_TVIN_coefficient_56 "../tv/cdatafile/c.latnrm.autotvin_coefficient_56.dat"
#define AUTOTB_TVOUT_coefficient_56 "../tv/cdatafile/c.latnrm.autotvout_coefficient_56.dat"
#define AUTOTB_TVIN_coefficient_57 "../tv/cdatafile/c.latnrm.autotvin_coefficient_57.dat"
#define AUTOTB_TVOUT_coefficient_57 "../tv/cdatafile/c.latnrm.autotvout_coefficient_57.dat"
#define AUTOTB_TVIN_coefficient_58 "../tv/cdatafile/c.latnrm.autotvin_coefficient_58.dat"
#define AUTOTB_TVOUT_coefficient_58 "../tv/cdatafile/c.latnrm.autotvout_coefficient_58.dat"
#define AUTOTB_TVIN_coefficient_59 "../tv/cdatafile/c.latnrm.autotvin_coefficient_59.dat"
#define AUTOTB_TVOUT_coefficient_59 "../tv/cdatafile/c.latnrm.autotvout_coefficient_59.dat"
#define AUTOTB_TVIN_coefficient_60 "../tv/cdatafile/c.latnrm.autotvin_coefficient_60.dat"
#define AUTOTB_TVOUT_coefficient_60 "../tv/cdatafile/c.latnrm.autotvout_coefficient_60.dat"
#define AUTOTB_TVIN_coefficient_61 "../tv/cdatafile/c.latnrm.autotvin_coefficient_61.dat"
#define AUTOTB_TVOUT_coefficient_61 "../tv/cdatafile/c.latnrm.autotvout_coefficient_61.dat"
#define AUTOTB_TVIN_coefficient_62 "../tv/cdatafile/c.latnrm.autotvin_coefficient_62.dat"
#define AUTOTB_TVOUT_coefficient_62 "../tv/cdatafile/c.latnrm.autotvout_coefficient_62.dat"
#define AUTOTB_TVIN_coefficient_63 "../tv/cdatafile/c.latnrm.autotvin_coefficient_63.dat"
#define AUTOTB_TVOUT_coefficient_63 "../tv/cdatafile/c.latnrm.autotvout_coefficient_63.dat"
#define AUTOTB_TVIN_internal_state_0 "../tv/cdatafile/c.latnrm.autotvin_internal_state_0.dat"
#define AUTOTB_TVOUT_internal_state_0 "../tv/cdatafile/c.latnrm.autotvout_internal_state_0.dat"
#define AUTOTB_TVIN_internal_state_1 "../tv/cdatafile/c.latnrm.autotvin_internal_state_1.dat"
#define AUTOTB_TVOUT_internal_state_1 "../tv/cdatafile/c.latnrm.autotvout_internal_state_1.dat"
#define AUTOTB_TVIN_internal_state_2 "../tv/cdatafile/c.latnrm.autotvin_internal_state_2.dat"
#define AUTOTB_TVOUT_internal_state_2 "../tv/cdatafile/c.latnrm.autotvout_internal_state_2.dat"
#define AUTOTB_TVIN_internal_state_3 "../tv/cdatafile/c.latnrm.autotvin_internal_state_3.dat"
#define AUTOTB_TVOUT_internal_state_3 "../tv/cdatafile/c.latnrm.autotvout_internal_state_3.dat"
#define AUTOTB_TVIN_internal_state_4 "../tv/cdatafile/c.latnrm.autotvin_internal_state_4.dat"
#define AUTOTB_TVOUT_internal_state_4 "../tv/cdatafile/c.latnrm.autotvout_internal_state_4.dat"
#define AUTOTB_TVIN_internal_state_5 "../tv/cdatafile/c.latnrm.autotvin_internal_state_5.dat"
#define AUTOTB_TVOUT_internal_state_5 "../tv/cdatafile/c.latnrm.autotvout_internal_state_5.dat"
#define AUTOTB_TVIN_internal_state_6 "../tv/cdatafile/c.latnrm.autotvin_internal_state_6.dat"
#define AUTOTB_TVOUT_internal_state_6 "../tv/cdatafile/c.latnrm.autotvout_internal_state_6.dat"
#define AUTOTB_TVIN_internal_state_7 "../tv/cdatafile/c.latnrm.autotvin_internal_state_7.dat"
#define AUTOTB_TVOUT_internal_state_7 "../tv/cdatafile/c.latnrm.autotvout_internal_state_7.dat"
#define AUTOTB_TVIN_internal_state_8 "../tv/cdatafile/c.latnrm.autotvin_internal_state_8.dat"
#define AUTOTB_TVOUT_internal_state_8 "../tv/cdatafile/c.latnrm.autotvout_internal_state_8.dat"
#define AUTOTB_TVIN_internal_state_9 "../tv/cdatafile/c.latnrm.autotvin_internal_state_9.dat"
#define AUTOTB_TVOUT_internal_state_9 "../tv/cdatafile/c.latnrm.autotvout_internal_state_9.dat"
#define AUTOTB_TVIN_internal_state_10 "../tv/cdatafile/c.latnrm.autotvin_internal_state_10.dat"
#define AUTOTB_TVOUT_internal_state_10 "../tv/cdatafile/c.latnrm.autotvout_internal_state_10.dat"
#define AUTOTB_TVIN_internal_state_11 "../tv/cdatafile/c.latnrm.autotvin_internal_state_11.dat"
#define AUTOTB_TVOUT_internal_state_11 "../tv/cdatafile/c.latnrm.autotvout_internal_state_11.dat"
#define AUTOTB_TVIN_internal_state_12 "../tv/cdatafile/c.latnrm.autotvin_internal_state_12.dat"
#define AUTOTB_TVOUT_internal_state_12 "../tv/cdatafile/c.latnrm.autotvout_internal_state_12.dat"
#define AUTOTB_TVIN_internal_state_13 "../tv/cdatafile/c.latnrm.autotvin_internal_state_13.dat"
#define AUTOTB_TVOUT_internal_state_13 "../tv/cdatafile/c.latnrm.autotvout_internal_state_13.dat"
#define AUTOTB_TVIN_internal_state_14 "../tv/cdatafile/c.latnrm.autotvin_internal_state_14.dat"
#define AUTOTB_TVOUT_internal_state_14 "../tv/cdatafile/c.latnrm.autotvout_internal_state_14.dat"
#define AUTOTB_TVIN_internal_state_15 "../tv/cdatafile/c.latnrm.autotvin_internal_state_15.dat"
#define AUTOTB_TVOUT_internal_state_15 "../tv/cdatafile/c.latnrm.autotvout_internal_state_15.dat"
#define AUTOTB_TVIN_internal_state_16 "../tv/cdatafile/c.latnrm.autotvin_internal_state_16.dat"
#define AUTOTB_TVOUT_internal_state_16 "../tv/cdatafile/c.latnrm.autotvout_internal_state_16.dat"
#define AUTOTB_TVIN_internal_state_17 "../tv/cdatafile/c.latnrm.autotvin_internal_state_17.dat"
#define AUTOTB_TVOUT_internal_state_17 "../tv/cdatafile/c.latnrm.autotvout_internal_state_17.dat"
#define AUTOTB_TVIN_internal_state_18 "../tv/cdatafile/c.latnrm.autotvin_internal_state_18.dat"
#define AUTOTB_TVOUT_internal_state_18 "../tv/cdatafile/c.latnrm.autotvout_internal_state_18.dat"
#define AUTOTB_TVIN_internal_state_19 "../tv/cdatafile/c.latnrm.autotvin_internal_state_19.dat"
#define AUTOTB_TVOUT_internal_state_19 "../tv/cdatafile/c.latnrm.autotvout_internal_state_19.dat"
#define AUTOTB_TVIN_internal_state_20 "../tv/cdatafile/c.latnrm.autotvin_internal_state_20.dat"
#define AUTOTB_TVOUT_internal_state_20 "../tv/cdatafile/c.latnrm.autotvout_internal_state_20.dat"
#define AUTOTB_TVIN_internal_state_21 "../tv/cdatafile/c.latnrm.autotvin_internal_state_21.dat"
#define AUTOTB_TVOUT_internal_state_21 "../tv/cdatafile/c.latnrm.autotvout_internal_state_21.dat"
#define AUTOTB_TVIN_internal_state_22 "../tv/cdatafile/c.latnrm.autotvin_internal_state_22.dat"
#define AUTOTB_TVOUT_internal_state_22 "../tv/cdatafile/c.latnrm.autotvout_internal_state_22.dat"
#define AUTOTB_TVIN_internal_state_23 "../tv/cdatafile/c.latnrm.autotvin_internal_state_23.dat"
#define AUTOTB_TVOUT_internal_state_23 "../tv/cdatafile/c.latnrm.autotvout_internal_state_23.dat"
#define AUTOTB_TVIN_internal_state_24 "../tv/cdatafile/c.latnrm.autotvin_internal_state_24.dat"
#define AUTOTB_TVOUT_internal_state_24 "../tv/cdatafile/c.latnrm.autotvout_internal_state_24.dat"
#define AUTOTB_TVIN_internal_state_25 "../tv/cdatafile/c.latnrm.autotvin_internal_state_25.dat"
#define AUTOTB_TVOUT_internal_state_25 "../tv/cdatafile/c.latnrm.autotvout_internal_state_25.dat"
#define AUTOTB_TVIN_internal_state_26 "../tv/cdatafile/c.latnrm.autotvin_internal_state_26.dat"
#define AUTOTB_TVOUT_internal_state_26 "../tv/cdatafile/c.latnrm.autotvout_internal_state_26.dat"
#define AUTOTB_TVIN_internal_state_27 "../tv/cdatafile/c.latnrm.autotvin_internal_state_27.dat"
#define AUTOTB_TVOUT_internal_state_27 "../tv/cdatafile/c.latnrm.autotvout_internal_state_27.dat"
#define AUTOTB_TVIN_internal_state_28 "../tv/cdatafile/c.latnrm.autotvin_internal_state_28.dat"
#define AUTOTB_TVOUT_internal_state_28 "../tv/cdatafile/c.latnrm.autotvout_internal_state_28.dat"
#define AUTOTB_TVIN_internal_state_29 "../tv/cdatafile/c.latnrm.autotvin_internal_state_29.dat"
#define AUTOTB_TVOUT_internal_state_29 "../tv/cdatafile/c.latnrm.autotvout_internal_state_29.dat"
#define AUTOTB_TVIN_internal_state_30 "../tv/cdatafile/c.latnrm.autotvin_internal_state_30.dat"
#define AUTOTB_TVOUT_internal_state_30 "../tv/cdatafile/c.latnrm.autotvout_internal_state_30.dat"
#define AUTOTB_TVIN_internal_state_31 "../tv/cdatafile/c.latnrm.autotvin_internal_state_31.dat"
#define AUTOTB_TVOUT_internal_state_31 "../tv/cdatafile/c.latnrm.autotvout_internal_state_31.dat"
#define AUTOTB_TVIN_internal_state_32 "../tv/cdatafile/c.latnrm.autotvin_internal_state_32.dat"
#define AUTOTB_TVOUT_internal_state_32 "../tv/cdatafile/c.latnrm.autotvout_internal_state_32.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_outa "../tv/rtldatafile/rtl.latnrm.autotvout_outa.dat"
#define AUTOTB_TVOUT_PC_internal_state_0 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_0.dat"
#define AUTOTB_TVOUT_PC_internal_state_1 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_1.dat"
#define AUTOTB_TVOUT_PC_internal_state_2 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_2.dat"
#define AUTOTB_TVOUT_PC_internal_state_3 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_3.dat"
#define AUTOTB_TVOUT_PC_internal_state_4 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_4.dat"
#define AUTOTB_TVOUT_PC_internal_state_5 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_5.dat"
#define AUTOTB_TVOUT_PC_internal_state_6 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_6.dat"
#define AUTOTB_TVOUT_PC_internal_state_7 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_7.dat"
#define AUTOTB_TVOUT_PC_internal_state_8 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_8.dat"
#define AUTOTB_TVOUT_PC_internal_state_9 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_9.dat"
#define AUTOTB_TVOUT_PC_internal_state_10 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_10.dat"
#define AUTOTB_TVOUT_PC_internal_state_11 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_11.dat"
#define AUTOTB_TVOUT_PC_internal_state_12 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_12.dat"
#define AUTOTB_TVOUT_PC_internal_state_13 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_13.dat"
#define AUTOTB_TVOUT_PC_internal_state_14 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_14.dat"
#define AUTOTB_TVOUT_PC_internal_state_15 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_15.dat"
#define AUTOTB_TVOUT_PC_internal_state_16 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_16.dat"
#define AUTOTB_TVOUT_PC_internal_state_17 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_17.dat"
#define AUTOTB_TVOUT_PC_internal_state_18 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_18.dat"
#define AUTOTB_TVOUT_PC_internal_state_19 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_19.dat"
#define AUTOTB_TVOUT_PC_internal_state_20 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_20.dat"
#define AUTOTB_TVOUT_PC_internal_state_21 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_21.dat"
#define AUTOTB_TVOUT_PC_internal_state_22 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_22.dat"
#define AUTOTB_TVOUT_PC_internal_state_23 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_23.dat"
#define AUTOTB_TVOUT_PC_internal_state_24 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_24.dat"
#define AUTOTB_TVOUT_PC_internal_state_25 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_25.dat"
#define AUTOTB_TVOUT_PC_internal_state_26 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_26.dat"
#define AUTOTB_TVOUT_PC_internal_state_27 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_27.dat"
#define AUTOTB_TVOUT_PC_internal_state_28 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_28.dat"
#define AUTOTB_TVOUT_PC_internal_state_29 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_29.dat"
#define AUTOTB_TVOUT_PC_internal_state_30 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_30.dat"
#define AUTOTB_TVOUT_PC_internal_state_31 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_31.dat"
#define AUTOTB_TVOUT_PC_internal_state_32 "../tv/rtldatafile/rtl.latnrm.autotvout_internal_state_32.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}

namespace hls::sim
{
  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put)
  {
    size_t wbytes = (strlen(data)-2+1)>>1;
    put = LE ? put : put+wbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + strlen(data) - 1;
    auto next = [&] () {
      char res = ord(*c);
      --c;
      return res;
    };
    size_t fbytes = (strlen(data)-2)>>1;
    for (size_t i = 0; i < fbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
    if (wbytes > fbytes) {
      *nextp() = next();
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t psize, size_t depth)
    {
      for (size_t i = 0; i < depth; ++i) {
        read(param, wbytes);
        param += psize;
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t psize, size_t depth, size_t skip)
    {
      param -= psize*skip;
      for (size_t i = 0; i < depth; ++i) {
        write(param, wbytes);
        param += psize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> depth;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = depth[0];
      } else {
        tcl.set(name[0], sum(depth));
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct FIFO {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t depth;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~FIFO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = port.offset[i];
        size_t depth = port.depth[i] - skip;
        port.reader->advance(wbytes*skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                          port.asize, depth);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                            port.asize, port.depth[i]);
        } else {
          port.reader->advance(wbytes*port.depth[i]);
        }
      }
    }
  }
#endif
  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        for (size_t j = 0; j < port.depth[i]-port.offset[i]; ++j) {
          if (char *s = port.reader->next()) {
            foundX |= RTLOutputCheckAndReplacement(s);
            unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
          }
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          for (size_t j = 0; j < port.depth[i]; ++j) {
            if (char *s = port.reader->next()) {
              foundX |= RTLOutputCheckAndReplacement(s);
              unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
            }
          }
        } else {
          port.reader->skip(port.depth[i]);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(FIFO &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      for (size_t j = 0; j < port.depth; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, (unsigned char*)port.param+j*port.asize);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(sum(port.depth));
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.depth[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      for (size_t j = 0; j < port.depth[i]; ++j) {
        std::string &&s {
          formatData((unsigned char*)port.param[i]+j*port.asize, port.width)
        };
        writer->next(s.data());
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(FIFO &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t j = 0; j < port.depth; ++j) {
      std::string &&s {
        formatData((unsigned char*)port.param+j*port.asize, port.width)
      };
      writer->next(s.data());
    }
    writer->end();
  }


  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void latnrm_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_latnrm_hw(void* __xlx_apatb_param_data, void* __xlx_apatb_param_outa, void* __xlx_apatb_param_coefficient_0, void* __xlx_apatb_param_coefficient_1, void* __xlx_apatb_param_coefficient_2, void* __xlx_apatb_param_coefficient_3, void* __xlx_apatb_param_coefficient_4, void* __xlx_apatb_param_coefficient_5, void* __xlx_apatb_param_coefficient_6, void* __xlx_apatb_param_coefficient_7, void* __xlx_apatb_param_coefficient_8, void* __xlx_apatb_param_coefficient_9, void* __xlx_apatb_param_coefficient_10, void* __xlx_apatb_param_coefficient_11, void* __xlx_apatb_param_coefficient_12, void* __xlx_apatb_param_coefficient_13, void* __xlx_apatb_param_coefficient_14, void* __xlx_apatb_param_coefficient_15, void* __xlx_apatb_param_coefficient_16, void* __xlx_apatb_param_coefficient_17, void* __xlx_apatb_param_coefficient_18, void* __xlx_apatb_param_coefficient_19, void* __xlx_apatb_param_coefficient_20, void* __xlx_apatb_param_coefficient_21, void* __xlx_apatb_param_coefficient_22, void* __xlx_apatb_param_coefficient_23, void* __xlx_apatb_param_coefficient_24, void* __xlx_apatb_param_coefficient_25, void* __xlx_apatb_param_coefficient_26, void* __xlx_apatb_param_coefficient_27, void* __xlx_apatb_param_coefficient_28, void* __xlx_apatb_param_coefficient_29, void* __xlx_apatb_param_coefficient_30, void* __xlx_apatb_param_coefficient_31, void* __xlx_apatb_param_coefficient_32, void* __xlx_apatb_param_coefficient_33, void* __xlx_apatb_param_coefficient_34, void* __xlx_apatb_param_coefficient_35, void* __xlx_apatb_param_coefficient_36, void* __xlx_apatb_param_coefficient_37, void* __xlx_apatb_param_coefficient_38, void* __xlx_apatb_param_coefficient_39, void* __xlx_apatb_param_coefficient_40, void* __xlx_apatb_param_coefficient_41, void* __xlx_apatb_param_coefficient_42, void* __xlx_apatb_param_coefficient_43, void* __xlx_apatb_param_coefficient_44, void* __xlx_apatb_param_coefficient_45, void* __xlx_apatb_param_coefficient_46, void* __xlx_apatb_param_coefficient_47, void* __xlx_apatb_param_coefficient_48, void* __xlx_apatb_param_coefficient_49, void* __xlx_apatb_param_coefficient_50, void* __xlx_apatb_param_coefficient_51, void* __xlx_apatb_param_coefficient_52, void* __xlx_apatb_param_coefficient_53, void* __xlx_apatb_param_coefficient_54, void* __xlx_apatb_param_coefficient_55, void* __xlx_apatb_param_coefficient_56, void* __xlx_apatb_param_coefficient_57, void* __xlx_apatb_param_coefficient_58, void* __xlx_apatb_param_coefficient_59, void* __xlx_apatb_param_coefficient_60, void* __xlx_apatb_param_coefficient_61, void* __xlx_apatb_param_coefficient_62, void* __xlx_apatb_param_coefficient_63, void* __xlx_apatb_param_internal_state_0, void* __xlx_apatb_param_internal_state_1, void* __xlx_apatb_param_internal_state_2, void* __xlx_apatb_param_internal_state_3, void* __xlx_apatb_param_internal_state_4, void* __xlx_apatb_param_internal_state_5, void* __xlx_apatb_param_internal_state_6, void* __xlx_apatb_param_internal_state_7, void* __xlx_apatb_param_internal_state_8, void* __xlx_apatb_param_internal_state_9, void* __xlx_apatb_param_internal_state_10, void* __xlx_apatb_param_internal_state_11, void* __xlx_apatb_param_internal_state_12, void* __xlx_apatb_param_internal_state_13, void* __xlx_apatb_param_internal_state_14, void* __xlx_apatb_param_internal_state_15, void* __xlx_apatb_param_internal_state_16, void* __xlx_apatb_param_internal_state_17, void* __xlx_apatb_param_internal_state_18, void* __xlx_apatb_param_internal_state_19, void* __xlx_apatb_param_internal_state_20, void* __xlx_apatb_param_internal_state_21, void* __xlx_apatb_param_internal_state_22, void* __xlx_apatb_param_internal_state_23, void* __xlx_apatb_param_internal_state_24, void* __xlx_apatb_param_internal_state_25, void* __xlx_apatb_param_internal_state_26, void* __xlx_apatb_param_internal_state_27, void* __xlx_apatb_param_internal_state_28, void* __xlx_apatb_param_internal_state_29, void* __xlx_apatb_param_internal_state_30, void* __xlx_apatb_param_internal_state_31, void* __xlx_apatb_param_internal_state_32)
{
  static hls::sim::Register port0 {
    .name = "coefficient_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_0),
#endif
  };
  port0.param = __xlx_apatb_param_coefficient_0;

  static hls::sim::Register port1 {
    .name = "coefficient_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_1),
#endif
  };
  port1.param = __xlx_apatb_param_coefficient_1;

  static hls::sim::Register port2 {
    .name = "coefficient_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_2),
#endif
  };
  port2.param = __xlx_apatb_param_coefficient_2;

  static hls::sim::Register port3 {
    .name = "coefficient_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_3),
#endif
  };
  port3.param = __xlx_apatb_param_coefficient_3;

  static hls::sim::Register port4 {
    .name = "coefficient_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_4),
#endif
  };
  port4.param = __xlx_apatb_param_coefficient_4;

  static hls::sim::Register port5 {
    .name = "coefficient_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_5),
#endif
  };
  port5.param = __xlx_apatb_param_coefficient_5;

  static hls::sim::Register port6 {
    .name = "coefficient_6",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_6),
#endif
  };
  port6.param = __xlx_apatb_param_coefficient_6;

  static hls::sim::Register port7 {
    .name = "coefficient_7",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_7),
#endif
  };
  port7.param = __xlx_apatb_param_coefficient_7;

  static hls::sim::Register port8 {
    .name = "coefficient_8",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_8),
#endif
  };
  port8.param = __xlx_apatb_param_coefficient_8;

  static hls::sim::Register port9 {
    .name = "coefficient_9",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_9),
#endif
  };
  port9.param = __xlx_apatb_param_coefficient_9;

  static hls::sim::Register port10 {
    .name = "coefficient_10",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_10),
#endif
  };
  port10.param = __xlx_apatb_param_coefficient_10;

  static hls::sim::Register port11 {
    .name = "coefficient_11",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_11),
#endif
  };
  port11.param = __xlx_apatb_param_coefficient_11;

  static hls::sim::Register port12 {
    .name = "coefficient_12",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_12),
#endif
  };
  port12.param = __xlx_apatb_param_coefficient_12;

  static hls::sim::Register port13 {
    .name = "coefficient_13",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_13),
#endif
  };
  port13.param = __xlx_apatb_param_coefficient_13;

  static hls::sim::Register port14 {
    .name = "coefficient_14",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_14),
#endif
  };
  port14.param = __xlx_apatb_param_coefficient_14;

  static hls::sim::Register port15 {
    .name = "coefficient_15",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_15),
#endif
  };
  port15.param = __xlx_apatb_param_coefficient_15;

  static hls::sim::Register port16 {
    .name = "coefficient_16",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_16),
#endif
  };
  port16.param = __xlx_apatb_param_coefficient_16;

  static hls::sim::Register port17 {
    .name = "coefficient_17",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_17),
#endif
  };
  port17.param = __xlx_apatb_param_coefficient_17;

  static hls::sim::Register port18 {
    .name = "coefficient_18",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_18),
#endif
  };
  port18.param = __xlx_apatb_param_coefficient_18;

  static hls::sim::Register port19 {
    .name = "coefficient_19",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_19),
#endif
  };
  port19.param = __xlx_apatb_param_coefficient_19;

  static hls::sim::Register port20 {
    .name = "coefficient_20",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_20),
#endif
  };
  port20.param = __xlx_apatb_param_coefficient_20;

  static hls::sim::Register port21 {
    .name = "coefficient_21",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_21),
#endif
  };
  port21.param = __xlx_apatb_param_coefficient_21;

  static hls::sim::Register port22 {
    .name = "coefficient_22",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_22),
#endif
  };
  port22.param = __xlx_apatb_param_coefficient_22;

  static hls::sim::Register port23 {
    .name = "coefficient_23",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_23),
#endif
  };
  port23.param = __xlx_apatb_param_coefficient_23;

  static hls::sim::Register port24 {
    .name = "coefficient_24",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_24),
#endif
  };
  port24.param = __xlx_apatb_param_coefficient_24;

  static hls::sim::Register port25 {
    .name = "coefficient_25",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_25),
#endif
  };
  port25.param = __xlx_apatb_param_coefficient_25;

  static hls::sim::Register port26 {
    .name = "coefficient_26",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_26),
#endif
  };
  port26.param = __xlx_apatb_param_coefficient_26;

  static hls::sim::Register port27 {
    .name = "coefficient_27",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_27),
#endif
  };
  port27.param = __xlx_apatb_param_coefficient_27;

  static hls::sim::Register port28 {
    .name = "coefficient_28",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_28),
#endif
  };
  port28.param = __xlx_apatb_param_coefficient_28;

  static hls::sim::Register port29 {
    .name = "coefficient_29",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_29),
#endif
  };
  port29.param = __xlx_apatb_param_coefficient_29;

  static hls::sim::Register port30 {
    .name = "coefficient_30",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_30),
#endif
  };
  port30.param = __xlx_apatb_param_coefficient_30;

  static hls::sim::Register port31 {
    .name = "coefficient_31",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_31),
#endif
  };
  port31.param = __xlx_apatb_param_coefficient_31;

  static hls::sim::Register port32 {
    .name = "coefficient_32",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_32),
#endif
  };
  port32.param = __xlx_apatb_param_coefficient_32;

  static hls::sim::Register port33 {
    .name = "coefficient_33",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_33),
#endif
  };
  port33.param = __xlx_apatb_param_coefficient_33;

  static hls::sim::Register port34 {
    .name = "coefficient_34",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_34),
#endif
  };
  port34.param = __xlx_apatb_param_coefficient_34;

  static hls::sim::Register port35 {
    .name = "coefficient_35",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_35),
#endif
  };
  port35.param = __xlx_apatb_param_coefficient_35;

  static hls::sim::Register port36 {
    .name = "coefficient_36",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_36),
#endif
  };
  port36.param = __xlx_apatb_param_coefficient_36;

  static hls::sim::Register port37 {
    .name = "coefficient_37",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_37),
#endif
  };
  port37.param = __xlx_apatb_param_coefficient_37;

  static hls::sim::Register port38 {
    .name = "coefficient_38",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_38),
#endif
  };
  port38.param = __xlx_apatb_param_coefficient_38;

  static hls::sim::Register port39 {
    .name = "coefficient_39",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_39),
#endif
  };
  port39.param = __xlx_apatb_param_coefficient_39;

  static hls::sim::Register port40 {
    .name = "coefficient_40",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_40),
#endif
  };
  port40.param = __xlx_apatb_param_coefficient_40;

  static hls::sim::Register port41 {
    .name = "coefficient_41",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_41),
#endif
  };
  port41.param = __xlx_apatb_param_coefficient_41;

  static hls::sim::Register port42 {
    .name = "coefficient_42",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_42),
#endif
  };
  port42.param = __xlx_apatb_param_coefficient_42;

  static hls::sim::Register port43 {
    .name = "coefficient_43",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_43),
#endif
  };
  port43.param = __xlx_apatb_param_coefficient_43;

  static hls::sim::Register port44 {
    .name = "coefficient_44",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_44),
#endif
  };
  port44.param = __xlx_apatb_param_coefficient_44;

  static hls::sim::Register port45 {
    .name = "coefficient_45",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_45),
#endif
  };
  port45.param = __xlx_apatb_param_coefficient_45;

  static hls::sim::Register port46 {
    .name = "coefficient_46",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_46),
#endif
  };
  port46.param = __xlx_apatb_param_coefficient_46;

  static hls::sim::Register port47 {
    .name = "coefficient_47",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_47),
#endif
  };
  port47.param = __xlx_apatb_param_coefficient_47;

  static hls::sim::Register port48 {
    .name = "coefficient_48",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_48),
#endif
  };
  port48.param = __xlx_apatb_param_coefficient_48;

  static hls::sim::Register port49 {
    .name = "coefficient_49",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_49),
#endif
  };
  port49.param = __xlx_apatb_param_coefficient_49;

  static hls::sim::Register port50 {
    .name = "coefficient_50",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_50),
#endif
  };
  port50.param = __xlx_apatb_param_coefficient_50;

  static hls::sim::Register port51 {
    .name = "coefficient_51",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_51),
#endif
  };
  port51.param = __xlx_apatb_param_coefficient_51;

  static hls::sim::Register port52 {
    .name = "coefficient_52",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_52),
#endif
  };
  port52.param = __xlx_apatb_param_coefficient_52;

  static hls::sim::Register port53 {
    .name = "coefficient_53",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_53),
#endif
  };
  port53.param = __xlx_apatb_param_coefficient_53;

  static hls::sim::Register port54 {
    .name = "coefficient_54",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_54),
#endif
  };
  port54.param = __xlx_apatb_param_coefficient_54;

  static hls::sim::Register port55 {
    .name = "coefficient_55",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_55),
#endif
  };
  port55.param = __xlx_apatb_param_coefficient_55;

  static hls::sim::Register port56 {
    .name = "coefficient_56",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_56),
#endif
  };
  port56.param = __xlx_apatb_param_coefficient_56;

  static hls::sim::Register port57 {
    .name = "coefficient_57",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_57),
#endif
  };
  port57.param = __xlx_apatb_param_coefficient_57;

  static hls::sim::Register port58 {
    .name = "coefficient_58",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_58),
#endif
  };
  port58.param = __xlx_apatb_param_coefficient_58;

  static hls::sim::Register port59 {
    .name = "coefficient_59",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_59),
#endif
  };
  port59.param = __xlx_apatb_param_coefficient_59;

  static hls::sim::Register port60 {
    .name = "coefficient_60",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_60),
#endif
  };
  port60.param = __xlx_apatb_param_coefficient_60;

  static hls::sim::Register port61 {
    .name = "coefficient_61",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_61),
#endif
  };
  port61.param = __xlx_apatb_param_coefficient_61;

  static hls::sim::Register port62 {
    .name = "coefficient_62",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_62),
#endif
  };
  port62.param = __xlx_apatb_param_coefficient_62;

  static hls::sim::Register port63 {
    .name = "coefficient_63",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_coefficient_63),
#endif
  };
  port63.param = __xlx_apatb_param_coefficient_63;

  static hls::sim::Register port64 {
    .name = "internal_state_0",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_0),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_0),
#endif
  };
  port64.param = __xlx_apatb_param_internal_state_0;

  static hls::sim::Register port65 {
    .name = "internal_state_1",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_1),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_1),
#endif
  };
  port65.param = __xlx_apatb_param_internal_state_1;

  static hls::sim::Register port66 {
    .name = "internal_state_2",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_2),
#endif
  };
  port66.param = __xlx_apatb_param_internal_state_2;

  static hls::sim::Register port67 {
    .name = "internal_state_3",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_3),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_3),
#endif
  };
  port67.param = __xlx_apatb_param_internal_state_3;

  static hls::sim::Register port68 {
    .name = "internal_state_4",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_4),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_4),
#endif
  };
  port68.param = __xlx_apatb_param_internal_state_4;

  static hls::sim::Register port69 {
    .name = "internal_state_5",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_5),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_5),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_5),
#endif
  };
  port69.param = __xlx_apatb_param_internal_state_5;

  static hls::sim::Register port70 {
    .name = "internal_state_6",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_6),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_6),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_6),
#endif
  };
  port70.param = __xlx_apatb_param_internal_state_6;

  static hls::sim::Register port71 {
    .name = "internal_state_7",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_7),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_7),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_7),
#endif
  };
  port71.param = __xlx_apatb_param_internal_state_7;

  static hls::sim::Register port72 {
    .name = "internal_state_8",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_8),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_8),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_8),
#endif
  };
  port72.param = __xlx_apatb_param_internal_state_8;

  static hls::sim::Register port73 {
    .name = "internal_state_9",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_9),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_9),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_9),
#endif
  };
  port73.param = __xlx_apatb_param_internal_state_9;

  static hls::sim::Register port74 {
    .name = "internal_state_10",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_10),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_10),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_10),
#endif
  };
  port74.param = __xlx_apatb_param_internal_state_10;

  static hls::sim::Register port75 {
    .name = "internal_state_11",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_11),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_11),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_11),
#endif
  };
  port75.param = __xlx_apatb_param_internal_state_11;

  static hls::sim::Register port76 {
    .name = "internal_state_12",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_12),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_12),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_12),
#endif
  };
  port76.param = __xlx_apatb_param_internal_state_12;

  static hls::sim::Register port77 {
    .name = "internal_state_13",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_13),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_13),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_13),
#endif
  };
  port77.param = __xlx_apatb_param_internal_state_13;

  static hls::sim::Register port78 {
    .name = "internal_state_14",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_14),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_14),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_14),
#endif
  };
  port78.param = __xlx_apatb_param_internal_state_14;

  static hls::sim::Register port79 {
    .name = "internal_state_15",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_15),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_15),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_15),
#endif
  };
  port79.param = __xlx_apatb_param_internal_state_15;

  static hls::sim::Register port80 {
    .name = "internal_state_16",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_16),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_16),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_16),
#endif
  };
  port80.param = __xlx_apatb_param_internal_state_16;

  static hls::sim::Register port81 {
    .name = "internal_state_17",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_17),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_17),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_17),
#endif
  };
  port81.param = __xlx_apatb_param_internal_state_17;

  static hls::sim::Register port82 {
    .name = "internal_state_18",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_18),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_18),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_18),
#endif
  };
  port82.param = __xlx_apatb_param_internal_state_18;

  static hls::sim::Register port83 {
    .name = "internal_state_19",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_19),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_19),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_19),
#endif
  };
  port83.param = __xlx_apatb_param_internal_state_19;

  static hls::sim::Register port84 {
    .name = "internal_state_20",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_20),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_20),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_20),
#endif
  };
  port84.param = __xlx_apatb_param_internal_state_20;

  static hls::sim::Register port85 {
    .name = "internal_state_21",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_21),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_21),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_21),
#endif
  };
  port85.param = __xlx_apatb_param_internal_state_21;

  static hls::sim::Register port86 {
    .name = "internal_state_22",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_22),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_22),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_22),
#endif
  };
  port86.param = __xlx_apatb_param_internal_state_22;

  static hls::sim::Register port87 {
    .name = "internal_state_23",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_23),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_23),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_23),
#endif
  };
  port87.param = __xlx_apatb_param_internal_state_23;

  static hls::sim::Register port88 {
    .name = "internal_state_24",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_24),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_24),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_24),
#endif
  };
  port88.param = __xlx_apatb_param_internal_state_24;

  static hls::sim::Register port89 {
    .name = "internal_state_25",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_25),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_25),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_25),
#endif
  };
  port89.param = __xlx_apatb_param_internal_state_25;

  static hls::sim::Register port90 {
    .name = "internal_state_26",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_26),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_26),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_26),
#endif
  };
  port90.param = __xlx_apatb_param_internal_state_26;

  static hls::sim::Register port91 {
    .name = "internal_state_27",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_27),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_27),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_27),
#endif
  };
  port91.param = __xlx_apatb_param_internal_state_27;

  static hls::sim::Register port92 {
    .name = "internal_state_28",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_28),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_28),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_28),
#endif
  };
  port92.param = __xlx_apatb_param_internal_state_28;

  static hls::sim::Register port93 {
    .name = "internal_state_29",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_29),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_29),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_29),
#endif
  };
  port93.param = __xlx_apatb_param_internal_state_29;

  static hls::sim::Register port94 {
    .name = "internal_state_30",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_30),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_30),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_30),
#endif
  };
  port94.param = __xlx_apatb_param_internal_state_30;

  static hls::sim::Register port95 {
    .name = "internal_state_31",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_31),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_31),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_31),
#endif
  };
  port95.param = __xlx_apatb_param_internal_state_31;

  static hls::sim::Register port96 {
    .name = "internal_state_32",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_internal_state_32),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_internal_state_32),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_internal_state_32),
#endif
  };
  port96.param = __xlx_apatb_param_internal_state_32;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port97 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port97 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "data" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_data),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_data),
#endif
#endif
  };
  port97.param = { __xlx_apatb_param_data };
  port97.depth = { 64 };
  port97.offset = {  };
  port97.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port98 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port98 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "outa" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_outa),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_outa),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_outa),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_outa),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_outa),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_outa),
#endif
#endif
  };
  port98.param = { __xlx_apatb_param_outa };
  port98.depth = { 64 };
  port98.offset = {  };
  port98.hasWrite = { true };

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port64);
    check(port65);
    check(port66);
    check(port67);
    check(port68);
    check(port69);
    check(port70);
    check(port71);
    check(port72);
    check(port73);
    check(port74);
    check(port75);
    check(port76);
    check(port77);
    check(port78);
    check(port79);
    check(port80);
    check(port81);
    check(port82);
    check(port83);
    check(port84);
    check(port85);
    check(port86);
    check(port87);
    check(port88);
    check(port89);
    check(port90);
    check(port91);
    check(port92);
    check(port93);
    check(port94);
    check(port95);
    check(port96);
    check(port98);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
    dump(port35, port35.iwriter, tcl.AESL_transaction);
    dump(port36, port36.iwriter, tcl.AESL_transaction);
    dump(port37, port37.iwriter, tcl.AESL_transaction);
    dump(port38, port38.iwriter, tcl.AESL_transaction);
    dump(port39, port39.iwriter, tcl.AESL_transaction);
    dump(port40, port40.iwriter, tcl.AESL_transaction);
    dump(port41, port41.iwriter, tcl.AESL_transaction);
    dump(port42, port42.iwriter, tcl.AESL_transaction);
    dump(port43, port43.iwriter, tcl.AESL_transaction);
    dump(port44, port44.iwriter, tcl.AESL_transaction);
    dump(port45, port45.iwriter, tcl.AESL_transaction);
    dump(port46, port46.iwriter, tcl.AESL_transaction);
    dump(port47, port47.iwriter, tcl.AESL_transaction);
    dump(port48, port48.iwriter, tcl.AESL_transaction);
    dump(port49, port49.iwriter, tcl.AESL_transaction);
    dump(port50, port50.iwriter, tcl.AESL_transaction);
    dump(port51, port51.iwriter, tcl.AESL_transaction);
    dump(port52, port52.iwriter, tcl.AESL_transaction);
    dump(port53, port53.iwriter, tcl.AESL_transaction);
    dump(port54, port54.iwriter, tcl.AESL_transaction);
    dump(port55, port55.iwriter, tcl.AESL_transaction);
    dump(port56, port56.iwriter, tcl.AESL_transaction);
    dump(port57, port57.iwriter, tcl.AESL_transaction);
    dump(port58, port58.iwriter, tcl.AESL_transaction);
    dump(port59, port59.iwriter, tcl.AESL_transaction);
    dump(port60, port60.iwriter, tcl.AESL_transaction);
    dump(port61, port61.iwriter, tcl.AESL_transaction);
    dump(port62, port62.iwriter, tcl.AESL_transaction);
    dump(port63, port63.iwriter, tcl.AESL_transaction);
    dump(port64, port64.iwriter, tcl.AESL_transaction);
    dump(port65, port65.iwriter, tcl.AESL_transaction);
    dump(port66, port66.iwriter, tcl.AESL_transaction);
    dump(port67, port67.iwriter, tcl.AESL_transaction);
    dump(port68, port68.iwriter, tcl.AESL_transaction);
    dump(port69, port69.iwriter, tcl.AESL_transaction);
    dump(port70, port70.iwriter, tcl.AESL_transaction);
    dump(port71, port71.iwriter, tcl.AESL_transaction);
    dump(port72, port72.iwriter, tcl.AESL_transaction);
    dump(port73, port73.iwriter, tcl.AESL_transaction);
    dump(port74, port74.iwriter, tcl.AESL_transaction);
    dump(port75, port75.iwriter, tcl.AESL_transaction);
    dump(port76, port76.iwriter, tcl.AESL_transaction);
    dump(port77, port77.iwriter, tcl.AESL_transaction);
    dump(port78, port78.iwriter, tcl.AESL_transaction);
    dump(port79, port79.iwriter, tcl.AESL_transaction);
    dump(port80, port80.iwriter, tcl.AESL_transaction);
    dump(port81, port81.iwriter, tcl.AESL_transaction);
    dump(port82, port82.iwriter, tcl.AESL_transaction);
    dump(port83, port83.iwriter, tcl.AESL_transaction);
    dump(port84, port84.iwriter, tcl.AESL_transaction);
    dump(port85, port85.iwriter, tcl.AESL_transaction);
    dump(port86, port86.iwriter, tcl.AESL_transaction);
    dump(port87, port87.iwriter, tcl.AESL_transaction);
    dump(port88, port88.iwriter, tcl.AESL_transaction);
    dump(port89, port89.iwriter, tcl.AESL_transaction);
    dump(port90, port90.iwriter, tcl.AESL_transaction);
    dump(port91, port91.iwriter, tcl.AESL_transaction);
    dump(port92, port92.iwriter, tcl.AESL_transaction);
    dump(port93, port93.iwriter, tcl.AESL_transaction);
    dump(port94, port94.iwriter, tcl.AESL_transaction);
    dump(port95, port95.iwriter, tcl.AESL_transaction);
    dump(port96, port96.iwriter, tcl.AESL_transaction);
    dump(port97, port97.iwriter, tcl.AESL_transaction);
    dump(port98, port98.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port43.doTCL(tcl);
    port44.doTCL(tcl);
    port45.doTCL(tcl);
    port46.doTCL(tcl);
    port47.doTCL(tcl);
    port48.doTCL(tcl);
    port49.doTCL(tcl);
    port50.doTCL(tcl);
    port51.doTCL(tcl);
    port52.doTCL(tcl);
    port53.doTCL(tcl);
    port54.doTCL(tcl);
    port55.doTCL(tcl);
    port56.doTCL(tcl);
    port57.doTCL(tcl);
    port58.doTCL(tcl);
    port59.doTCL(tcl);
    port60.doTCL(tcl);
    port61.doTCL(tcl);
    port62.doTCL(tcl);
    port63.doTCL(tcl);
    port64.doTCL(tcl);
    port65.doTCL(tcl);
    port66.doTCL(tcl);
    port67.doTCL(tcl);
    port68.doTCL(tcl);
    port69.doTCL(tcl);
    port70.doTCL(tcl);
    port71.doTCL(tcl);
    port72.doTCL(tcl);
    port73.doTCL(tcl);
    port74.doTCL(tcl);
    port75.doTCL(tcl);
    port76.doTCL(tcl);
    port77.doTCL(tcl);
    port78.doTCL(tcl);
    port79.doTCL(tcl);
    port80.doTCL(tcl);
    port81.doTCL(tcl);
    port82.doTCL(tcl);
    port83.doTCL(tcl);
    port84.doTCL(tcl);
    port85.doTCL(tcl);
    port86.doTCL(tcl);
    port87.doTCL(tcl);
    port88.doTCL(tcl);
    port89.doTCL(tcl);
    port90.doTCL(tcl);
    port91.doTCL(tcl);
    port92.doTCL(tcl);
    port93.doTCL(tcl);
    port94.doTCL(tcl);
    port95.doTCL(tcl);
    port96.doTCL(tcl);
    port97.doTCL(tcl);
    port98.doTCL(tcl);
    CodeState = CALL_C_DUT;
    latnrm_hw_stub_wrapper(__xlx_apatb_param_data, __xlx_apatb_param_outa, __xlx_apatb_param_coefficient_0, __xlx_apatb_param_coefficient_1, __xlx_apatb_param_coefficient_2, __xlx_apatb_param_coefficient_3, __xlx_apatb_param_coefficient_4, __xlx_apatb_param_coefficient_5, __xlx_apatb_param_coefficient_6, __xlx_apatb_param_coefficient_7, __xlx_apatb_param_coefficient_8, __xlx_apatb_param_coefficient_9, __xlx_apatb_param_coefficient_10, __xlx_apatb_param_coefficient_11, __xlx_apatb_param_coefficient_12, __xlx_apatb_param_coefficient_13, __xlx_apatb_param_coefficient_14, __xlx_apatb_param_coefficient_15, __xlx_apatb_param_coefficient_16, __xlx_apatb_param_coefficient_17, __xlx_apatb_param_coefficient_18, __xlx_apatb_param_coefficient_19, __xlx_apatb_param_coefficient_20, __xlx_apatb_param_coefficient_21, __xlx_apatb_param_coefficient_22, __xlx_apatb_param_coefficient_23, __xlx_apatb_param_coefficient_24, __xlx_apatb_param_coefficient_25, __xlx_apatb_param_coefficient_26, __xlx_apatb_param_coefficient_27, __xlx_apatb_param_coefficient_28, __xlx_apatb_param_coefficient_29, __xlx_apatb_param_coefficient_30, __xlx_apatb_param_coefficient_31, __xlx_apatb_param_coefficient_32, __xlx_apatb_param_coefficient_33, __xlx_apatb_param_coefficient_34, __xlx_apatb_param_coefficient_35, __xlx_apatb_param_coefficient_36, __xlx_apatb_param_coefficient_37, __xlx_apatb_param_coefficient_38, __xlx_apatb_param_coefficient_39, __xlx_apatb_param_coefficient_40, __xlx_apatb_param_coefficient_41, __xlx_apatb_param_coefficient_42, __xlx_apatb_param_coefficient_43, __xlx_apatb_param_coefficient_44, __xlx_apatb_param_coefficient_45, __xlx_apatb_param_coefficient_46, __xlx_apatb_param_coefficient_47, __xlx_apatb_param_coefficient_48, __xlx_apatb_param_coefficient_49, __xlx_apatb_param_coefficient_50, __xlx_apatb_param_coefficient_51, __xlx_apatb_param_coefficient_52, __xlx_apatb_param_coefficient_53, __xlx_apatb_param_coefficient_54, __xlx_apatb_param_coefficient_55, __xlx_apatb_param_coefficient_56, __xlx_apatb_param_coefficient_57, __xlx_apatb_param_coefficient_58, __xlx_apatb_param_coefficient_59, __xlx_apatb_param_coefficient_60, __xlx_apatb_param_coefficient_61, __xlx_apatb_param_coefficient_62, __xlx_apatb_param_coefficient_63, __xlx_apatb_param_internal_state_0, __xlx_apatb_param_internal_state_1, __xlx_apatb_param_internal_state_2, __xlx_apatb_param_internal_state_3, __xlx_apatb_param_internal_state_4, __xlx_apatb_param_internal_state_5, __xlx_apatb_param_internal_state_6, __xlx_apatb_param_internal_state_7, __xlx_apatb_param_internal_state_8, __xlx_apatb_param_internal_state_9, __xlx_apatb_param_internal_state_10, __xlx_apatb_param_internal_state_11, __xlx_apatb_param_internal_state_12, __xlx_apatb_param_internal_state_13, __xlx_apatb_param_internal_state_14, __xlx_apatb_param_internal_state_15, __xlx_apatb_param_internal_state_16, __xlx_apatb_param_internal_state_17, __xlx_apatb_param_internal_state_18, __xlx_apatb_param_internal_state_19, __xlx_apatb_param_internal_state_20, __xlx_apatb_param_internal_state_21, __xlx_apatb_param_internal_state_22, __xlx_apatb_param_internal_state_23, __xlx_apatb_param_internal_state_24, __xlx_apatb_param_internal_state_25, __xlx_apatb_param_internal_state_26, __xlx_apatb_param_internal_state_27, __xlx_apatb_param_internal_state_28, __xlx_apatb_param_internal_state_29, __xlx_apatb_param_internal_state_30, __xlx_apatb_param_internal_state_31, __xlx_apatb_param_internal_state_32);
    CodeState = DUMP_OUTPUTS;
    dump(port64, port64.owriter, tcl.AESL_transaction);
    dump(port65, port65.owriter, tcl.AESL_transaction);
    dump(port66, port66.owriter, tcl.AESL_transaction);
    dump(port67, port67.owriter, tcl.AESL_transaction);
    dump(port68, port68.owriter, tcl.AESL_transaction);
    dump(port69, port69.owriter, tcl.AESL_transaction);
    dump(port70, port70.owriter, tcl.AESL_transaction);
    dump(port71, port71.owriter, tcl.AESL_transaction);
    dump(port72, port72.owriter, tcl.AESL_transaction);
    dump(port73, port73.owriter, tcl.AESL_transaction);
    dump(port74, port74.owriter, tcl.AESL_transaction);
    dump(port75, port75.owriter, tcl.AESL_transaction);
    dump(port76, port76.owriter, tcl.AESL_transaction);
    dump(port77, port77.owriter, tcl.AESL_transaction);
    dump(port78, port78.owriter, tcl.AESL_transaction);
    dump(port79, port79.owriter, tcl.AESL_transaction);
    dump(port80, port80.owriter, tcl.AESL_transaction);
    dump(port81, port81.owriter, tcl.AESL_transaction);
    dump(port82, port82.owriter, tcl.AESL_transaction);
    dump(port83, port83.owriter, tcl.AESL_transaction);
    dump(port84, port84.owriter, tcl.AESL_transaction);
    dump(port85, port85.owriter, tcl.AESL_transaction);
    dump(port86, port86.owriter, tcl.AESL_transaction);
    dump(port87, port87.owriter, tcl.AESL_transaction);
    dump(port88, port88.owriter, tcl.AESL_transaction);
    dump(port89, port89.owriter, tcl.AESL_transaction);
    dump(port90, port90.owriter, tcl.AESL_transaction);
    dump(port91, port91.owriter, tcl.AESL_transaction);
    dump(port92, port92.owriter, tcl.AESL_transaction);
    dump(port93, port93.owriter, tcl.AESL_transaction);
    dump(port94, port94.owriter, tcl.AESL_transaction);
    dump(port95, port95.owriter, tcl.AESL_transaction);
    dump(port96, port96.owriter, tcl.AESL_transaction);
    dump(port98, port98.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}