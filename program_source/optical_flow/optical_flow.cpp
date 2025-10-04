// Converted from optical_flow.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: xf_common.hpp ----
/*
 * Copyright 2019 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _XF_COMMON_H_
#define _XF_COMMON_H_

#include "xf_structs.hpp"
#include "xf_params.hpp"
#include "xf_types.hpp"

using namespace xf::cv;
#endif

// ---- file: xf_params.hpp ----
/*
 * Copyright (C) 2019-2022, Xilinx, Inc.
 * Copyright (C) 2022-2023, Advanced Micro Devices, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _XF_PARAMS_H_
#define _XF_PARAMS_H_

#ifndef __cplusplus
#error C++ is needed to use this file!
#endif

#include "ap_int.h"

#define __ABS(X) ((X) < 0 ? (-(X)) : (X))

// Channels of an image
enum _channel_extract {
    XF_EXTRACT_CH_0, // Used by formats with unknown channel types
    XF_EXTRACT_CH_1, // Used by formats with unknown channel types
    XF_EXTRACT_CH_2, // Used by formats with unknown channel types
    XF_EXTRACT_CH_3, // Used by formats with unknown channel types
    XF_EXTRACT_CH_R, // Used to extract the RED channel
    XF_EXTRACT_CH_G, // Used to extract the GREEN channel
    XF_EXTRACT_CH_B, // Used to extract the BLUE channel
    XF_EXTRACT_CH_A, // Used to extract the ALPHA channel
    XF_EXTRACT_CH_Y, // Used to extract the LUMA channel
    XF_EXTRACT_CH_U, // Used to extract the Cb/U channel
    XF_EXTRACT_CH_V  // Used to extract the Cr/V/Value channel
};
typedef _channel_extract XF_channel_extract_e;

// Conversion Policy for fixed point arithmetic
enum _convert_policy { XF_CONVERT_POLICY_SATURATE, XF_CONVERT_POLICY_TRUNCATE };
typedef _convert_policy XF_convert_policy_e;

// Bit-depth conversion types
enum _convert_bit_depth {
    // Down-convert
    XF_CONVERT_16U_TO_8U,
    XF_CONVERT_16S_TO_8U,
    XF_CONVERT_32S_TO_8U,
    XF_CONVERT_32S_TO_16U,
    XF_CONVERT_32S_TO_16S,
    // Up-convert
    XF_CONVERT_8U_TO_16U,
    XF_CONVERT_8U_TO_16S,
    XF_CONVERT_8U_TO_32S,
    XF_CONVERT_16U_TO_32S,
    XF_CONVERT_16S_TO_32S
};
typedef _convert_bit_depth XF_convert_bit_depth_e;

// Thresholding types
enum _threshold_type {
    XF_THRESHOLD_TYPE_BINARY = 0,
    XF_THRESHOLD_TYPE_BINARY_INV = 1,
    XF_THRESHOLD_TYPE_TRUNC = 2,
    XF_THRESHOLD_TYPE_TOZERO = 3,
    XF_THRESHOLD_TYPE_TOZERO_INV = 4,
};
typedef _threshold_type XF_threshold_type_e;

// Thresholding types
enum _ccm_type {
    XF_CCM_bt2020_bt709 = 0,
    XF_CCM_bt709_bt2020 = 1,
    XF_CCM_rgb_yuv_601 = 2,
    XF_CCM_rgb_yuv_709 = 3,
    XF_CCM_rgb_yuv_2020 = 4,
    XF_CCM_yuv_rgb_601 = 5,
    XF_CCM_yuv_rgb_709 = 6,
    XF_CCM_yuv_rgb_2020 = 7,
    XF_CCM_full_from_16_235 = 8,
    XF_CCM_full_to_16_235 = 9,

};
typedef _ccm_type XF_ccm_type_e;

// Comparision types
enum _comparison_op { XF_CMP_EQ = 0, XF_CMP_GT = 1, XF_CMP_GE = 2, XF_CMP_LT = 3, XF_CMP_LE = 4, XF_CMP_NE = 5 };
typedef _comparison_op _comparison_op_e;

// Comparision types
enum _reduction_op { REDUCE_SUM = 0, REDUCE_AVG = 1, REDUCE_MAX = 2, REDUCE_MIN = 3 };
typedef _reduction_op _reduction_op_e;

// Pixel Per Cycle
enum _pixel_per_cycle {
    XF_NPPC1 = 1,
    XF_NPPC2 = 2,
    XF_NPPC4 = 4,
    XF_NPPC8 = 8,
    XF_NPPC16 = 16,
    XF_NPPC32 = 32,
    XF_NPPC64 = 64
};
typedef _pixel_per_cycle XF_nppc_e;

// Pixel types
enum _pixel_type {
    XF_8UP = 0,
    XF_8SP = 1,
    XF_14UP = 2,
    XF_16UP = 3,
    XF_16SP = 4,
    XF_32UP = 5,
    XF_32SP = 6,
    XF_19SP = 7,
    XF_32FP = 8,
    XF_35SP = 9,
    XF_24SP = 10,
    XF_20SP = 11,
    XF_48SP = 12,
    XF_2UP = 13,
    XF_9SP = 14,
    XF_9UP = 15,
    XF_24UP = 16,
    XF_64UP = 17,
    XF_10UP = 18,
    XF_12UP = 19,
    XF_40UP = 20,
    XF_42UP = 20,
    XF_48UP = 21,
    XF_30UP = 22,
    XF_36UP = 23,
    XF_96FP = 24
};
typedef _pixel_type XF_pixel_type_e;

// Word width
enum _word_width {
    XF_2UW = 0,
    XF_8UW = 1,
    XF_9UW = 2,
    XF_10UW = 3,
    XF_12UW = 4,
    XF_14UW = 5,
    XF_16UW = 6,
    XF_19SW = 7,
    XF_20UW = 8,
    XF_22UW = 9,
    XF_24UW = 10,
    XF_24SW = 11,
    XF_28UW = 12,
    XF_30UW = 13,
    XF_32UW = 14,
    XF_32FW = 15,
    XF_35SW = 16,
    XF_36UW = 17,
    XF_40UW = 18,
    XF_42UW = 19,
    XF_48UW = 20,
    XF_48SW = 21,
    XF_56UW = 22,
    XF_60UW = 23,
    XF_64UW = 24,
    XF_72UW = 25,
    XF_80UW = 26,
    XF_84UW = 27,
    XF_96UW = 28,
    XF_96SW = 29,
    XF_112UW = 30,
    XF_120UW = 31,
    XF_128UW = 32,
    XF_144UW = 33,
    XF_152SW = 34,
    XF_160UW = 35,
    XF_160SW = 36,
    XF_168UW = 37,
    XF_176UW = 38,
    XF_192UW = 39,
    XF_192SW = 40,
    XF_240UW = 41,
    XF_256UW = 42,
    XF_280SW = 43,
    XF_288UW = 44,
    XF_304SW = 45,
    XF_320UW = 46,
    XF_336UW = 47,
    XF_352UW = 48,
    XF_384UW = 49,
    XF_384SW = 50,
    XF_512UW = 51,
    XF_560SW = 52,
    XF_576UW = 53,
    XF_96FW = 54,
    XF_192FW = 55,
    XF_384FW = 56,
    XF_768FW = 57,
    XF_1536FW = 58
};
typedef _word_width XF_word_width_e;

// Filter size
enum _filter_size { XF_FILTER_3X3 = 3, XF_FILTER_5X5 = 5, XF_FILTER_7X7 = 7 };
typedef _filter_size XF_filter_size_e;

// Radius size for Non Maximum Suppression
enum _nms_radius { XF_NMS_RADIUS_1 = 1, XF_NMS_RADIUS_2 = 2, XF_NMS_RADIUS_3 = 3 };
typedef _nms_radius XF_nms_radius_e;

// Image Pyramid Parameters
enum _image_pyramid_params {
    XF_PYRAMID_TYPE_GXFSSIAN = 0,
    XF_PYRAMID_TYPE_LAPLACIAN = 1,
    XF_PYRAMID_SCALE_HALF = 2,
    XF_PYRAMID_SCALE_ORB = 3,
    XF_PYRAMID_SCALE_DOUBLE = 4
};
typedef _image_pyramid_params XF_image_pyramid_params_e;

// Magnitude computation
enum _normalisation_params { XF_L1NORM = 0, XF_L2NORM = 1 };
typedef _normalisation_params XF_normalisation_params_e;

enum _border_type {
    XF_BORDER_CONSTANT = 0,
    XF_BORDER_REPLICATE = 1,
    XF_BORDER_REFLECT = 2,
    XF_BORDER_WRAP = 3,
    XF_BORDER_REFLECT_101 = 4,
    XF_BORDER_TRANSPARENT = 5,
    XF_BORDER_REFLECT101 = XF_BORDER_REFLECT_101,
    XF_BORDER_DEFAULT = XF_BORDER_REFLECT_101,
    XF_BORDER_ISOLATED = 16,
};
typedef _border_type XF_border_type_e;

enum _structuring_element_shape {
    XF_SHAPE_RECT = 0,
    XF_SHAPE_ELLIPSE = 1,
    XF_SHAPE_CROSS = 2,

};
enum _wb_type {
    XF_WB_GRAY = 0,
    XF_WB_SIMPLE = 1,
};

enum multistream {
    SLICES_DEFAULT = 1,
};
// Phase computation
enum _phase_params { XF_RADIANS = 0, XF_DEGREES = 1 };
typedef _phase_params XF_phase_params_e;

// Types of Interpolaton techniques used in resize, affine and perspective
enum _interpolation_types { XF_INTERPOLATION_NN = 0, XF_INTERPOLATION_BILINEAR = 1, XF_INTERPOLATION_AREA = 2 };
typedef _interpolation_types _interpolation_types_e;

// loop dependent variables used in image pyramid
enum _loop_dependent_vars { XF_GXFSSIANLOOP = 8, XF_BUFSIZE = 12 };
typedef _loop_dependent_vars loop_dependent_vars_e;

// loop dependent variables used in image pyramid
enum _image_size { XF_SDIMAGE = 0, XF_HDIMAGE = 1 };
typedef _image_size image_size_e;

// enumerations for HOG feature descriptor
enum _input_image_type { XF_GRAY = 1, XF_RGB = 3 };
typedef _input_image_type input_image_type_e;

// enumerations for HOG feature descriptor
enum _HOG_output_type { XF_HOG_RB = 0, XF_HOG_NRB = 1 };
typedef _HOG_output_type HOG_output_type_e;

enum use_model { XF_STANDALONE = 0, XF_PIPELINE = 1 };
typedef use_model use_model_e;

// enumerations for HOG feature descriptor
enum _HOG_type { XF_DHOG = 0, XF_SHOG = 1 };
typedef _HOG_type HOG_type_e;

// enumerations for Stereo BM
enum XF_stereo_prefilter_type { XF_STEREO_PREFILTER_SOBEL_TYPE, XF_STEREO_PREFILTER_NORM_TYPE };
/****************************new************************/
// enumerations for Demosaicing
enum XF_demosaicing {
    XF_BAYER_BG,
    XF_BAYER_GB,
    XF_BAYER_GR,
    XF_BAYER_RG,
};
// typedef XF_stereo_prefilter_type XF_stereo_pre_filter_type_e;
// enum _pixel_percycle
//{
//	XF_NPPC1  = 0,
//	XF_NPPC8  = 3,
//	XF_NPPC16 = 4
//};
// typedef _pixel_percycle XF_nppc_e;

// enumerations for Architecture
enum _ARCH_type {
    XF_STREAM = 0,
    XF_MEMORYMAPPED = 1

};
typedef _ARCH_type _ARCH_type_e;

enum _pixeltype {
    XF_8UC1 = 0,
    XF_14UC1 = 1,
    XF_16UC1 = 2,
    XF_16SC1 = 3,
    XF_24UC1 = 4,
    XF_24SC1 = 5,
    XF_32UC1 = 6,
    XF_32FC1 = 7,
    XF_32SC1 = 8,
    XF_8UC2 = 9,
    XF_8UC4 = 10,
    XF_2UC1 = 11,
    XF_8UC3 = 16,
    XF_16UC3 = 13,
    XF_16SC3 = 14,
    XF_16UC4 = 15,
    XF_10UC1 = 12,
    XF_10UC4 = 17,
    XF_12UC1 = 18,
    XF_12UC4 = 19,
    XF_10UC3 = 20,
    XF_12UC3 = 21,
    XF_14UC3 = 22,
    XF_32FC3 = 23,
    XF_64UC1 = 24
};
typedef _pixeltype XF_npt_e;

enum _ramtype {
    RAM_1P_BRAM = 0,
    RAM_1P_LUTRAM = 1,
    RAM_1P_URAM = 2,
    RAM_2P_BRAM = 3,
    RAM_2P_LUTRAM = 4,
    RAM_2P_URAM = 5,
    RAM_S2P_BRAM = 6,
    RAM_S2P_LUTRAM = 7,
    RAM_S2P_URAM = 8,
    RAM_T2P_BRAM = 9,
    RAM_T2P_URAM = 10
};
typedef _ramtype XF_ramtype_e;

#endif //_XF_PARAMS_H_

// ---- file: xf_video_mem.hpp ----
/*
 * Copyright 2019 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * HLS Video Memory Partition Header File
 */

#ifndef ___XF__VIDEO_MEM__
#define ___XF__VIDEO_MEM__

//#define __DEBUG__

#ifdef AESL_SYN
#undef __DEBUG__
#endif

#include "string.h"
#include "xf_params.hpp"

typedef ap_uint<32> XF_SIZE_T;

namespace xf {
namespace cv {

//--------------------------------------------------------------------------------------
// Template class of Window
//--------------------------------------------------------------------------------------
template <int ROWS, int COLS, typename T>
class Window {
   public:
    Window(){
// clang-format off
	#pragma HLS INLINE
#pragma HLS array_partition variable=val type=cyclic factor=8 dim=1
#pragma HLS array_partition variable=val type=cyclic factor=8 dim=2
        // clang-format on
    };

    /* Window main APIs */
    void shift_pixels_left();
    void shift_pixels_right();
    void shift_pixels_up();
    void shift_pixels_down();
    void insert_pixel(T value, int row, int col);
    void insert_row(T value[COLS], int row);
    void insert_top_row(T value[COLS]);
    void insert_bottom_row(T value[COLS]);
    void insert_col(T value[ROWS], int col);
    void insert_left_col(T value[ROWS]);
    void insert_right_col(T value[ROWS]);
    T& getval(int row, int col);
    T& operator()(int row, int col);

    /* Back compatible APIs */
    void shift_left();
    void shift_right();
    void shift_up();
    void shift_down();
    void insert(T value, int row, int col);
    void insert_top(T value[COLS]);
    void insert_bottom(T value[COLS]);
    void insert_left(T value[ROWS]);
    void insert_right(T value[ROWS]);
    // T& getval(int row, int col);
    // T& operator ()(int row, int col);

    T val[ROWS][COLS];
#ifdef __DEBUG__
    void restore_val();
    void window_print();
    T val_t[ROWS][COLS];
#endif
};

/* Member functions of Window class */
/* Origin in upper-left point */
/*       0   1        C-2 C-1
 *     +---+---+-...-+---+---+
 *  0  |   |   |     |   |   |
 *     +---+---+-...-+---+---+
 *  1  |   |   |     |   |   |
 *     +---+---+-...-+---+---+
 *       ...     ...    ...
 *     +---+---+-...-+---+---+
 * R-2 |   |   |     |   |   |
 *     +---+---+-...-+---+---+
 * R-1 |   |   |     |   |   |
 *     +---+---+-...-+---+---+
 *
 */

/*
 * Window content shift left
 * Assumes new values will be placed in right column = COLS-1
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::shift_pixels_left() {
// clang-format off
    #pragma HLS inline
// clang-format on

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    XF_SIZE_T i, j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        for (j = 0; j < COLS - 1; j++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
            // clang-format on
            val[i][j] = val[i][j + 1];
        }
    }

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (j == COLS - 1)
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_left mismatch! ***");
            else
                assert(val_t[i][j + 1] == val[i][j] && "*** window shift_pixels_left mismatch! ***");
        }
    }
#endif
}

/*
 * Window content shift right
 * Assumes new values will be placed in left column = 0
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::shift_pixels_right() {
// clang-format off
    #pragma HLS inline
// clang-format on

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    XF_SIZE_T i, j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        for (j = COLS - 1; j > 0; j--) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
            // clang-format on
            val[i][j] = val[i][j - 1];
        }
    }

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (j == 0)
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_right mismatch! ***");
            else
                assert(val_t[i][j - 1] == val[i][j] && "*** window shift_pixels_right mismatch! ***");
        }
    }
#endif
}

/*
 * Window content shift up
 * Assumes new values will be placed in bottom row = ROWS-1
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::shift_pixels_up() {
// clang-format off
    #pragma HLS inline
// clang-format on

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    XF_SIZE_T i, j;
    for (i = 0; i < ROWS - 1; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
            // clang-format on
            val[i][j] = val[i + 1][j];
        }
    }

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (i == ROWS - 1)
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_up mismatch! ***");
            else
                assert(val_t[i + 1][j] == val[i][j] && "*** window shift_pixels_up mismatch! ***");
        }
    }
#endif
}

/*
 * Window content shift down
 * Assumes new values will be placed in top row = 0
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::shift_pixels_down() {
// clang-format off
    #pragma HLS inline
// clang-format on

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    XF_SIZE_T i, j;
    for (i = ROWS - 1; i > 0; i--) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
            // clang-format on
            val[i][j] = val[i - 1][j];
        }
    }

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (i == 0)
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
            else
                assert(val_t[i - 1][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
        }
    }
#endif
}

/* Window insert pixel
 * Inserts a new value at any location of the window
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_pixel(T value, int row, int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    assert(row >= 0 && row < ROWS && col >= 0 && col < COLS);

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    val[row][col] = value;

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    XF_SIZE_T i, j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (i != row && j != col) assert(val_t[i][j] == val[i][j] && "*** window insert_pixel mismatch! ***");
        }
    }
    val_t[row][col] = value;
    assert(val_t[row][col] == val[row][col] && "*** window insert_pixel mismatch! ***");
#endif
}

/* Window insert row
 * Inserts a set of values in any row of the window
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_row(T value[COLS], int row) {
// clang-format off
    #pragma HLS inline
// clang-format on

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    XF_SIZE_T j;
    for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        val[row][j] = value[j];
    }

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    XF_SIZE_T i;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (i != row)
                assert(val_t[i][j] == val[i][j] && "*** window insert_row mismatch! ***");
            else
                assert(val[i][j] == value[j] && "*** window insert_row mismatch! ***");
        }
    }
#endif
}

/* Window insert top row
 * Inserts a set of values in top row = 0 of the window
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_top_row(T value[COLS]) {
// clang-format off
    #pragma HLS inline
// clang-format on

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    insert_row(value, 0);

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    XF_SIZE_T i, j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (i != 0)
                assert(val_t[i][j] == val[i][j] && "*** window insert_top_row mismatch! ***");
            else
                assert(val[i][j] == value[j] && "*** window insert_top_row mismatch! ***");
        }
    }
#endif
}

/* Window insert bottom row
 * Inserts a set of values in bottom row = ROWS-1 of the window
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_bottom_row(T value[COLS]) {
// clang-format off
    #pragma HLS inline
// clang-format on

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    insert_row(value, ROWS - 1);

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    XF_SIZE_T i, j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (i != ROWS - 1)
                assert(val_t[i][j] == val[i][j] && "*** window insert_bottom_row mismatch! ***");
            else
                assert(val[i][j] == value[j] && "*** window insert_bottom_row mismatch! ***");
        }
    }
#endif
}

/* Window insert column
 * Inserts a set of values in any column of the window
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_col(T value[ROWS], int col) {
// clang-format off
    #pragma HLS inline
// clang-format on

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    XF_SIZE_T i;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        val[i][col] = value[i];
    }

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    XF_SIZE_T j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (j != col)
                assert(val_t[i][j] == val[i][j] && "*** window insert_col mismatch! ***");
            else
                assert(val[i][j] == value[i] && "*** window insert_col mismatch! ***");
        }
    }
#endif
}

/* Window insert left column
 * Inserts a set of values in left column = 0 of the window
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_left_col(T value[ROWS]) {
// clang-format off
    #pragma HLS inline
// clang-format on

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    insert_col(value, 0);

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    XF_SIZE_T i, j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (j != 0)
                assert(val_t[i][j] == val[i][j] && "*** window insert_left_col mismatch! ***");
            else
                assert(val[i][j] == value[i] && "*** window insert_left_col mismatch! ***");
        }
    }
#endif
}

/* Window insert right column
 * Inserts a set of values in right column = COLS-1 of the window
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_right_col(T value[ROWS]) {
// clang-format off
    #pragma HLS inline
// clang-format on

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    insert_col(value, COLS - 1);

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    XF_SIZE_T i, j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (j != COLS - 1)
                assert(val_t[i][j] == val[i][j] && "*** window insert_right_col mismatch! ***");
            else
                assert(val[i][j] == value[i] && "*** window insert_right_col mismatch! ***");
        }
    }
#endif
}

/* Window getval
 * Returns the data value in the window at position (row,col)
 */
template <int ROWS, int COLS, typename T>
T& Window<ROWS, COLS, T>::getval(int row, int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    assert(row >= 0 && row < ROWS && col >= 0 && col < COLS);
    return val[row][col];
}

/* Window getval
 * Returns the data value in the window at position (row,col)
 */
template <int ROWS, int COLS, typename T>
T& Window<ROWS, COLS, T>::operator()(int row, int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    return getval(row, col);
}

#ifdef __DEBUG__
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::restore_val() {
    XF_SIZE_T i, j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            val_t[i][j] = val[i][j];
        }
    }
}

template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::window_print() {
    XF_SIZE_T i, j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        std::cout << "\n";
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            std::cout << std::setw(20) << val[i][j];
        }
    }
    std::cout << "\n\n";
}
#endif

/* NOTE:
 * Back compatible APIs, take bottom-right point as the origin
 * Window shift left, while contents shift right
 * Assumes new values will be placed in left column(=COLS-1)
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::shift_left() {
// clang-format off
    #pragma HLS inline
    // clang-format on
    shift_pixels_left(); // take upper-left point as origin
}

/* NOTE:
 * Back compatible APIs, take bottom-right point as the origin
 * Window shift right, while contents shift left
 * Assumes new values will be placed in right column(=0)
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::shift_right() {
// clang-format off
    #pragma HLS inline
    // clang-format on
    shift_pixels_right(); // take upper-left point as origin
}

/* NOTE:
 * Back compatible APIs, take bottom-right point as the origin
 * Window shift up, while contents shift down
 * Assumes new values will be placed in top row(=ROWS-1)
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::shift_up() {
// clang-format off
    #pragma HLS inline
    // clang-format on
    shift_pixels_up(); // take upper-left point as origin
}

/* NOTE:
 * Back compatible APIs, take bottom-right point as the origin
 * Window shift down, while contents shift up
 * Assumes new values will be placed in bottom row(=0)
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::shift_down() {
// clang-format off
    #pragma HLS inline
    // clang-format on
    shift_pixels_down(); // take upper-left point as origin
}

/* NOTE:
 * Back compatible APIs, take bottom-right point as the origin
 * Window insert
 * Inserts a new value at any location of the window
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert(T value, int row, int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    insert_pixel(value, row, col);
}

/* NOTE:
 * Back compatible APIs, take bottom-right point as the origin
 * Window insert top
 * Inserts a set of values in top row(=ROWS-1)
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_top(T value[COLS]) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    insert_bottom_row(value);
}

/* NOTE:
 * Back compatible APIs, take bottom-right point as the origin
 * Window insert bottom
 * Inserts a set of values in bottom row(=0)
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_bottom(T value[COLS]) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    insert_top_row(value);
}

/* NOTE:
 * Back compatible APIs, take bottom-right point as the origin
 * Window insert left
 * Inserts a set of values in left column(=COLS-1)
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_left(T value[ROWS]) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    insert_right_col(value);
}

/* NOTE:
 * Back compatible APIs, take bottom-right point as the origin
 * Window insert right
 * Inserts a set of values in right column(=0)
 */
template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_right(T value[ROWS]) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    insert_left_col(value);
}

//--------------------------------------------------------------------------------------
// Template class of Line Buffer
//--------------------------------------------------------------------------------------
#define _LB_TPLT_DEC \
    template <int ROWS, int COLS, typename T, XF_ramtype_e MEM_TYPE = RAM_S2P_BRAM, int RESHAPE_FACTOR = 1>
#define _LB_TPLT template <int ROWS, int COLS, typename T, XF_ramtype_e MEM_TYPE, int RESHAPE_FACTOR>
#define _LB_ LineBuffer<ROWS, COLS, T, MEM_TYPE, RESHAPE_FACTOR>

_LB_TPLT_DEC class LineBuffer {
   public:
    LineBuffer() {
// clang-format off
	#pragma HLS INLINE
        #pragma HLS dependence variable=val inter false
        #pragma HLS dependence variable=val intra false
        // clang-format on

        // #pragma HLS bind_storage variable=val type=RAM_S2P impl=URAM
        //#pragma HLS array_reshape variable=val factor=RESHAPE_FACTOR  dim=1

        switch (MEM_TYPE) {
            case RAM_1P_BRAM:
// clang-format off
                #pragma HLS bind_storage variable=val type=RAM_1P impl=BRAM
                // clang-format on
                break;
            case RAM_1P_URAM:
// clang-format off
                #pragma HLS bind_storage variable=val type=RAM_1P impl=URAM
                // clang-format on
                break;
            case RAM_2P_BRAM:
// clang-format off
                #pragma HLS bind_storage variable=val type=RAM_2P impl=BRAM
                // clang-format on
                break;
            case RAM_2P_URAM:
// clang-format off
                #pragma HLS bind_storage variable=val type=RAM_2P impl=URAM
                // clang-format on
                break;
            case RAM_S2P_BRAM:
// clang-format off
                #pragma HLS bind_storage variable=val type=RAM_S2P impl=BRAM
                // clang-format on
                break;
            case RAM_S2P_URAM:
// clang-format off
                #pragma HLS bind_storage variable=val type=RAM_S2P impl=URAM
                // clang-format on
                break;
            case RAM_T2P_BRAM:
// clang-format off
                #pragma HLS bind_storage variable=val type=RAM_T2P impl=BRAM
                // clang-format on
                break;
            case RAM_T2P_URAM:
// clang-format off
                #pragma HLS bind_storage variable=val type=RAM_T2P impl=URAM
                // clang-format on
                break;
            default:
                assert("MEM_TYPE should be one of RAM_*_BRAM or RAM_*_URAM (*: 1P, 2P, S2P, T2P)");
        }

        if (RESHAPE_FACTOR == 1) {
// clang-format off
#pragma HLS array_partition variable=val type=cyclic factor=8 dim=1
            // clang-format on
        } else {
// clang-format off
            #pragma HLS ARRAY_RESHAPE variable=val factor=RESHAPE_FACTOR  dim=1
            // clang-format on
        }
    };

    /* LineBuffer main APIs */
    void shift_pixels_up(int col);
    void shift_pixels_down(int col);
    void insert_bottom_row(T value, int col);
    void insert_top_row(T value, int col);
    void get_col(T value[ROWS], int col);
    T& getval(int row, int col);
    T& operator()(int row, int col);

    /* Back compatible APIs */
    void shift_up(int col);
    void shift_down(int col);
    void insert_bottom(T value, int col);
    void insert_top(T value, int col);
    // T& getval(int row, int col);
    // T& operator ()(int row, int col);

    T val[ROWS][COLS];
#ifdef __DEBUG__
    void restore_val();
    void linebuffer_print(int col);
    T val_t[ROWS][COLS];
#endif
};
/* Member functions of LineBuffer class */
/* Origin in upper-left point */
/*       0   1            C-2 C-1
 *     +---+---+-... ...-+---+---+
 *  0  |   |   |         |   |   |
 *     +---+---+-... ...-+---+---+
 *  1  |   |   |         |   |   |
 *     +---+---+-... ...-+---+---+
 *       ...     ... ...    ...
 *     +---+---+-... ...-+---+---+
 * R-2 |   |   |         |   |   |
 *     +---+---+-... ...-+---+---+
 * R-1 |   |   |         |   |   |
 *     +---+---+-... ...-+---+---+
 *
 */

/* Member functions of LineBuffer class */

/*
 * LineBuffer content shift down
 * Assumes new values will be placed in top row = 0
 */
_LB_TPLT void _LB_::shift_pixels_down(int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    assert(col >= 0 && col < COLS);

#ifdef __DEBUG__
    std::cout << "LineBuffer Elements in col=" << col << ":";
    linebuffer_print(col);
    restore_val();
#endif

    XF_SIZE_T i;
    for (i = ROWS - 1; i > 0; i--) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        val[i][col] = val[i - 1][col];
    }

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "LineBuffer Elements Update in col=" << col << ":";
    linebuffer_print(col);
    XF_SIZE_T j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (j == col)
                if (i == 0)
                    assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
                else
                    assert(val_t[i - 1][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
            else
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
        }
    }
#endif
}

/*
 * LineBuffer content shift up
 * Assumes new values will be placed in top row = ROWS-1
 */
_LB_TPLT void _LB_::shift_pixels_up(int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    assert(col >= 0 && col < COLS);

#ifdef __DEBUG__
    std::cout << "LineBuffer Elements in col=" << col << ":";
    linebuffer_print(col);
    restore_val();
#endif

    XF_SIZE_T i;
    for (i = 0; i < ROWS - 1; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        val[i][col] = val[i + 1][col];
    }

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "LineBuffer Elements Update in col=" << col << ":";
    linebuffer_print(col);
    XF_SIZE_T j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (j == col)
                if (i == ROWS - 1)
                    assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_up mismatch! ***");
                else
                    assert(val_t[i + 1][j] == val[i][j] && "*** window shift_pixels_up mismatch! ***");
            else
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_up mismatch! ***");
        }
    }
#endif
}

/* LineBuffer insert bottom row
 * Inserts a new value in bottom row= ROWS-1 of the linebuffer
 */
_LB_TPLT void _LB_::insert_bottom_row(T value, int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    assert(col >= 0 && col < COLS);

#ifdef __DEBUG__
    std::cout << "LineBuffer Elements in col=" << col << ":";
    linebuffer_print(col);
    restore_val();
#endif

    val[ROWS - 1][col] = value;

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "LineBuffer Elements Update in col=" << col << ":";
    linebuffer_print(col);
    XF_SIZE_T i, j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (j == col && i == ROWS - 1)
                assert(val[i][j] == value && "*** window insert_bottom_row mismatch! ***");
            else
                assert(val_t[i][j] == val[i][j] && "*** window insert_bottom_row mismatch! ***");
        }
    }
#endif
}

/* LineBuffer insert top row
 * Inserts a new value in top row=0 of the linebuffer
 */
_LB_TPLT void _LB_::insert_top_row(T value, int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    assert(col >= 0 && col < COLS);

#ifdef __DEBUG__
    std::cout << "LineBuffer Elements in col=" << col << ":";
    linebuffer_print(col);
    restore_val();
#endif

    val[0][col] = value;

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "LineBuffer Elements Update in col=" << col << ":";
    linebuffer_print(col);
    XF_SIZE_T i, j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            if (j == col && i == 0)
                assert(val[i][j] == value && "*** window insert_top_row mismatch! ***");
            else
                assert(val_t[i][j] == val[i][j] && "*** window insert_top_row mismatch! ***");
        }
    }
#endif
}

/* LineBuffer get a column
 * Get a column value of the linebuffer
 */
_LB_TPLT void _LB_::get_col(T value[ROWS], int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    assert(col >= 0 && col < COLS);
    XF_SIZE_T i;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        value[i] = val[i][col];
    }
}

/* Line buffer getval
 * Returns the data value in the line buffer at position row, col
 */
_LB_TPLT T& _LB_::getval(int row, int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    assert(row >= 0 && row < ROWS && col >= 0 && col < COLS);
    return val[row][col];
}

/* Line buffer getval
 * Returns the data value in the line buffer at position row, col
 */
_LB_TPLT T& _LB_::operator()(int row, int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    return getval(row, col);
}

/* NOTE:
 * Back compatible APIs, take bottom-left point as the origin
 * LineBuffer shift down, while contents shift up
 * Assumes new values will be placed in bottom row(=0)
 */
_LB_TPLT void _LB_::shift_down(int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    shift_pixels_down(col);
}

/* NOTE:
 * Back compatible APIs, take bottom-left point as the origin
 * LineBuffer shift up, while contents shift down
 * Assumes new values will be placed in top row(=ROWS-1)
 */
_LB_TPLT void _LB_::shift_up(int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    shift_pixels_up(col);
}

/* NOTE:
 * Back compatible APIs, take bottom-left point as the origin
 * LineBuffer insert
 * Inserts a new value in bottom row(=0)
 */
_LB_TPLT void _LB_::insert_bottom(T value, int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    insert_top_row(value, col);
}

/* NOTE:
 * Back compatible APIs, take bottom-left point as the origin
 * LineBuffer insert
 * Inserts a new value in top row(=ROWS-1)
 */
_LB_TPLT void _LB_::insert_top(T value, int col) {
// clang-format off
    #pragma HLS inline
    // clang-format on
    insert_bottom_row(value, col);
}

#ifdef __DEBUG__
_LB_TPLT void _LB_::restore_val() {
    XF_SIZE_T i, j;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (j = 0; j < COLS; j++) {
#pragma HLS loop_tripcount min=1 max=1024
            val_t[i][j] = val[i][j];
        }
    }
}

_LB_TPLT void _LB_::linebuffer_print(int col) {
    XF_SIZE_T i;
    for (i = 0; i < ROWS; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        std::cout << "\n";
        std::cout << std::setw(20) << val[i][col];
    }
    std::cout << "\n\n";
}
#endif

#undef _LB_TPLT_DEC
#undef _LB_TPLT
#undef _LB_

} // namespace cv
} // namespace xf

#endif

// ---- file: optical_flow.cpp ----
/*===============================================================*/
/*                                                               */
/*                      optical_flow.cpp                         */
/*                                                               */
/*             Hardware function for optical flow                */
/*                                                               */
/*===============================================================*/

#include "optical_flow.h"
// use HLS video library
// #include <hls_video.h>

// use HLS fixed point
#include "ap_fixed.h"

#include "xf_utility.hpp"
#include "xf_common.hpp"

// define these constants so they can be used in pragma
const int max_width = MAX_WIDTH; 
const int default_depth = MAX_WIDTH;
// calculate gradient in x and y directions
void gradient_xy_calc(input_t frame[MAX_HEIGHT][MAX_WIDTH],
    pixel_t gradient_x[MAX_HEIGHT][MAX_WIDTH],
    pixel_t gradient_y[MAX_HEIGHT][MAX_WIDTH])
{
  // our own line buffer
  static pixel_t buf[5][MAX_WIDTH];
  #pragma HLS array_partition variable=buf complete dim=1

  // small buffer
  pixel_t smallbuf[5];
  #pragma HLS array_partition variable=smallbuf complete dim=0
  
  // window buffer
  xf::cv::Window<5,5,input_t> window;

  const int GRAD_WEIGHTS[] =  {1,-8,0,8,-1};

  GRAD_XY_OUTER: for(int r=0; r<MAX_HEIGHT+2; r++)
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    GRAD_XY_INNER: for(int c=0; c<MAX_WIDTH+2; c++)
    {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
      
      // read out values from current line buffer
      for (int i = 0; i < 4; i ++ )
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        smallbuf[i] = buf[i+1][c];
      // the new value is either 0 or read from frame
      if (r<MAX_HEIGHT && c<MAX_WIDTH)
        smallbuf[4] = (pixel_t)(frame[r][c]);
      else if (c < MAX_WIDTH)
        smallbuf[4] = 0;
      // update line buffer
      if(r<MAX_HEIGHT && c<MAX_WIDTH)
      {
        for (int i = 0; i < 4; i ++ )
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
          buf[i][c] = smallbuf[i];
        buf[4][c] = smallbuf[4];
      }
      else if(c<MAX_WIDTH)
      {
        for (int i = 0; i < 4; i ++ )
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
          buf[i][c] = smallbuf[i];
        buf[4][c] = smallbuf[4];
      }

      // manage window buffer
      if(r<MAX_HEIGHT && c<MAX_WIDTH)
      {
        window.shift_pixels_left();
        
        for (int i = 0; i < 5; i ++ )
          window.insert_pixel(smallbuf[i],i,4);
      }
      else
      {
        window.shift_pixels_left();
        window.insert_pixel(0,0,4);
        window.insert_pixel(0,1,4);
        window.insert_pixel(0,2,4);
        window.insert_pixel(0,3,4);
        window.insert_pixel(0,4,4);
      }

      // compute gradient
      pixel_t x_grad = 0;
      pixel_t y_grad = 0;
      if(r>=4 && r<MAX_HEIGHT && c>=4 && c<MAX_WIDTH)
      {
        GRAD_XY_XYGRAD: for(int i=0; i<5; i++)
        {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=2
          x_grad += window.getval(2,i)*GRAD_WEIGHTS[i];
          y_grad += window.getval(i,2)*GRAD_WEIGHTS[i];
        }
        gradient_x[r-2][c-2] = x_grad/12;
        gradient_y[r-2][c-2] = y_grad/12;
      }
      else if(r>=2 && c>=2)
      {
        gradient_x[r-2][c-2] = 0;
        gradient_y[r-2][c-2] = 0;
      }
    }
  }
}

// calculate gradient in the z direction
void gradient_z_calc(input_t frame1[MAX_HEIGHT][MAX_WIDTH], 
    input_t frame2[MAX_HEIGHT][MAX_WIDTH], 
    input_t frame3[MAX_HEIGHT][MAX_WIDTH], 
    input_t frame4[MAX_HEIGHT][MAX_WIDTH], 
    input_t frame5[MAX_HEIGHT][MAX_WIDTH], 
    pixel_t gradient_z[MAX_HEIGHT][MAX_WIDTH])
{
  const int GRAD_WEIGHTS[] =  {1,-8,0,8,-1};
  GRAD_Z_OUTER: for(int r=0; r<MAX_HEIGHT; r++)
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    GRAD_Z_INNER: for(int c=0; c<MAX_WIDTH; c++)
    {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
      
      gradient_z[r][c] =((pixel_t)(frame1[r][c]*GRAD_WEIGHTS[0] 
                        + frame2[r][c]*GRAD_WEIGHTS[1]
                        + frame3[r][c]*GRAD_WEIGHTS[2]
                        + frame4[r][c]*GRAD_WEIGHTS[3]
                        + frame5[r][c]*GRAD_WEIGHTS[4]))/12;
    }
  }
}

// average the gradient in y direction
void gradient_weight_y(pixel_t gradient_x[MAX_HEIGHT][MAX_WIDTH],
    pixel_t gradient_y[MAX_HEIGHT][MAX_WIDTH],
    pixel_t gradient_z[MAX_HEIGHT][MAX_WIDTH],
    gradient_t filt_grad[MAX_HEIGHT][MAX_WIDTH])
{
  xf::cv::LineBuffer<7,MAX_WIDTH,gradient_t> buf;

  const pixel_t GRAD_FILTER[] = {0.0755, 0.133, 0.1869, 0.2903, 0.1869, 0.133, 0.0755};
  GRAD_WEIGHT_Y_OUTER: for(int r=0; r<MAX_HEIGHT+3; r++)
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
    GRAD_WEIGHT_Y_INNER: for(int c=0; c<MAX_WIDTH; c++)
    {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
      
      #pragma HLS dependence variable=buf inter false

      if(r<MAX_HEIGHT)
      {
        buf.shift_pixels_up(c);
        gradient_t tmp;
        tmp.x = gradient_x[r][c];
        tmp.y = gradient_y[r][c];
        tmp.z = gradient_z[r][c];
        buf.insert_bottom_row(tmp,c);
      }
      else
      {
        buf.shift_pixels_up(c);
        gradient_t tmp;
        tmp.x = 0;
        tmp.y = 0;
        tmp.z = 0;
        buf.insert_bottom_row(tmp,c);
      }     

      gradient_t acc;
      acc.x = 0;
      acc.y = 0;
      acc.z = 0;
      if(r >= 6 && r<MAX_HEIGHT)
      { 
        GRAD_WEIGHT_Y_ACC: for(int i=0; i<7; i++)
        {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
          acc.x += buf.getval(i,c).x*GRAD_FILTER[i];
          acc.y += buf.getval(i,c).y*GRAD_FILTER[i];
          acc.z += buf.getval(i,c).z*GRAD_FILTER[i];
        }
        filt_grad[r-3][c] = acc;
      }
      else if(r>=3)
      {
        filt_grad[r-3][c] = acc;
      }
    }
  }
}

// average gradient in the x direction
void gradient_weight_x(gradient_t y_filt[MAX_HEIGHT][MAX_WIDTH],
                       gradient_t filt_grad[MAX_HEIGHT][MAX_WIDTH])
{
  xf::cv::Window<1,7,gradient_t> buf;
  const pixel_t GRAD_FILTER[] = {0.0755, 0.133, 0.1869, 0.2903, 0.1869, 0.133, 0.0755};
  GRAD_WEIGHT_X_OUTER: for(int r=0; r<MAX_HEIGHT; r++)
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    GRAD_WEIGHT_X_INNER: for(int c=0; c<MAX_WIDTH+3; c++)
    {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
      
      buf.shift_pixels_left();
      gradient_t tmp;
      if(c<MAX_WIDTH)
      {
        tmp = y_filt[r][c];
      }
      else
      {
        tmp.x = 0;
        tmp.y = 0;
        tmp.z = 0;  
      }
      buf.insert_pixel(tmp,0,6);

      gradient_t acc;
      acc.x = 0;
      acc.y = 0;
      acc.z = 0;
      if(c >= 6 && c<MAX_WIDTH) 
      {
        GRAD_WEIGHT_X_ACC: for(int i=0; i<7; i++)
        {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
          acc.x += buf.getval(0,i).x*GRAD_FILTER[i];
          acc.y += buf.getval(0,i).y*GRAD_FILTER[i];
          acc.z += buf.getval(0,i).z*GRAD_FILTER[i];
        }
        filt_grad[r][c-3] = acc;
      }
      else if(c>=3)
      {
        filt_grad[r][c-3] = acc;
      }
    }
  }
}

// outer product 
void outer_product(gradient_t gradient[MAX_HEIGHT][MAX_WIDTH],
     outer_t outer_product[MAX_HEIGHT][MAX_WIDTH])
{
  OUTER_OUTER: for(int r=0; r<MAX_HEIGHT; r++)
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    OUTER_INNER: for(int c=0; c<MAX_WIDTH; c++)
    {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
      
      gradient_t grad = gradient[r][c];
      outer_pixel_t x = (outer_pixel_t) grad.x;
      outer_pixel_t y = (outer_pixel_t) grad.y;
      outer_pixel_t z = (outer_pixel_t) grad.z;
      outer_t out;
      out.val[0] = (x*x);
      out.val[1] = (y*y);
      out.val[2] = (z*z);
      out.val[3] = (x*y);
      out.val[4] = (x*z);
      out.val[5] = (y*z);
      outer_product[r][c] = out;
    }
  }
}

// tensor weight
void tensor_weight_y(outer_t outer[MAX_HEIGHT][MAX_WIDTH],
                     tensor_t tensor_y[MAX_HEIGHT][MAX_WIDTH])
{
  xf::cv::LineBuffer<3,MAX_WIDTH,outer_t> buf;
  const pixel_t TENSOR_FILTER[] = {0.3243, 0.3513, 0.3243};
  TENSOR_WEIGHT_Y_OUTER: for(int r=0; r<MAX_HEIGHT+1; r++)
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    TENSOR_WEIGHT_Y_INNER: for(int c=0; c<MAX_WIDTH; c++)
    {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
      
      
      outer_t tmp;
      #pragma HLS data_pack variable=tmp
      #pragma HLS data_pack variable=buf.val[0]
      buf.shift_pixels_up(c);
      if(r<MAX_HEIGHT)
      {
        tmp = outer[r][c];
      }
      else
      {
        TENSOR_WEIGHT_Y_TMP_INIT: for(int i=0; i<6; i++)
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
          tmp.val[i] = 0;
      }   
      buf.insert_bottom_row(tmp,c);

      tensor_t acc;
       v: for(int k =0; k<6; k++)
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        acc.val[k] = 0;
     
      if (r >= 2 && r < MAX_HEIGHT) 
      {
        TENSOR_WEIGHT_Y_TMP_OUTER: for(int i=0; i<3; i++)
        {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
          tmp = buf.getval(i,c);
          pixel_t k = TENSOR_FILTER[i];
          TENSOR_WEIGHT_Y_TMP_INNER: for(int component=0; component<6; component++)
          {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            acc.val[component] += tmp.val[component]*k;
          }
        }
      }
      if(r >= 1)
      { 
        tensor_y[r-1][c] = acc;      
      }
    }
  }
}

void tensor_weight_x(tensor_t tensor_y[MAX_HEIGHT][MAX_WIDTH],
                     tensor_t tensor[MAX_HEIGHT][MAX_WIDTH])
{
  xf::cv::Window<1,3,tensor_t> buf;
  const pixel_t TENSOR_FILTER[] = {0.3243, 0.3513, 0.3243};
  //const float TENSOR_FILTER[] = {0.3243, 0.3513, 0.3243};
  TENSOR_WEIGHT_X_OUTER: for(int r=0; r<MAX_HEIGHT; r++)
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    TENSOR_WEIGHT_X_INNER: for(int c=0; c<MAX_WIDTH+1; c++)
    {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
      
      buf.shift_pixels_left();
      tensor_t tmp;
      if(c<MAX_WIDTH)
      {
        tmp = tensor_y[r][c];
      }
      else
      {
        TENSOR_WEIGHT_X_TMP_INIT: for(int i=0; i<6; i++)
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
          tmp.val[i] = 0;
      }
      buf.insert_pixel(tmp,0,2);

      tensor_t acc;
      TENSOR_WEIGHT_X_ACC_INIT: for(int k =0; k<6; k++)
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        acc.val[k] = 0;
      if (c >= 2 && c < MAX_WIDTH) 
      {
        TENSOR_WEIGHT_X_TMP_OUTER: for(int i=0; i<3; i++)
        {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
          tmp = buf.getval(0,i);
          TENSOR_WEIGHT_X_TMP_INNER: for(int component=0; component<6; component++)
          {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
            acc.val[component] += tmp.val[component]*TENSOR_FILTER[i];
          }
        }
      }
      if(c>=1)
      {
        tensor[r][c-1] = acc;
      }
    }
  }
}

// compute output flow
void flow_calc(tensor_t tensors[MAX_HEIGHT][MAX_WIDTH],
               velocity_t outputs[MAX_HEIGHT][MAX_WIDTH])
{
  static outer_pixel_t buf[2];
  FLOW_OUTER: for(int r=0; r<MAX_HEIGHT; r++)
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    FLOW_INNER: for(int c=0; c<MAX_WIDTH; c++)
    {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
      
      tensor_t tmp_tensor = tensors[r][c];
      if(r>=2 && r<MAX_HEIGHT-2 && c>=2 && c<MAX_WIDTH-2)
      {
	      calc_pixel_t t1 = (calc_pixel_t) tmp_tensor.val[0];
	      calc_pixel_t t2 = (calc_pixel_t) tmp_tensor.val[1];
	      calc_pixel_t t3 = (calc_pixel_t) tmp_tensor.val[2];
	      calc_pixel_t t4 = (calc_pixel_t) tmp_tensor.val[3];
	      calc_pixel_t t5 = (calc_pixel_t) tmp_tensor.val[4];
	      calc_pixel_t t6 = (calc_pixel_t) tmp_tensor.val[5];

        calc_pixel_t denom = t1*t2-t4*t4;
	      calc_pixel_t numer0 = t6*t4-t5*t2;
	      calc_pixel_t numer1 = t5*t4-t6*t1;

	      if(denom != 0)
        {
          buf[0] = numer0 / denom;
          buf[1] = numer1 / denom;
	      } 
	      else
	      {
		      buf[0] = 0;
		      buf[1] = 0;
	      }
      }
      else
      {
        buf[0] = buf[1] = 0;
      }

      outputs[r][c].x = (vel_pixel_t)buf[0];
      outputs[r][c].y = (vel_pixel_t)buf[1];

    }
  }
}

// top-level kernel function
void optical_flow(frames_t   frames[MAX_HEIGHT][MAX_WIDTH],
                  velocity_t outputs[MAX_HEIGHT][MAX_WIDTH])
{
  #pragma HLS data_pack variable=outputs

  #pragma HLS DATAFLOW

  // FIFOs connecting the stages
  static pixel_t gradient_x[MAX_HEIGHT][MAX_WIDTH];
  #pragma HLS STREAM variable=gradient_x depth=default_depth
  static pixel_t gradient_y[MAX_HEIGHT][MAX_WIDTH];
  #pragma HLS STREAM variable=gradient_y depth=default_depth
  static pixel_t gradient_z[MAX_HEIGHT][MAX_WIDTH];
  #pragma HLS STREAM variable=gradient_z depth=max_width*4
  static gradient_t y_filtered[MAX_HEIGHT][MAX_WIDTH];
  #pragma HLS STREAM variable=y_filtered depth=default_depth
  static gradient_t filtered_gradient[MAX_HEIGHT][MAX_WIDTH];
  #pragma HLS STREAM variable=filtered_gradient depth=default_depth
  static outer_t out_product[MAX_HEIGHT][MAX_WIDTH];
  #pragma HLS STREAM variable=out_product depth=default_depth
  #pragma HLS data_pack variable=out_product
  static tensor_t tensor_y[MAX_HEIGHT][MAX_WIDTH];
  #pragma HLS STREAM variable=tensor_y depth=default_depth
  #pragma HLS data_pack variable=tensor_y
  static tensor_t tensor[MAX_HEIGHT][MAX_WIDTH];
  #pragma HLS STREAM variable=tensor depth=default_depth
  #pragma HLS data_pack variable=tensor

  // FIFOs for streaming in, just for clarity
  static input_t frame1_a[MAX_HEIGHT][MAX_WIDTH];
  #pragma HLS STREAM variable=frame1_a depth=default_depth
  static input_t frame2_a[MAX_HEIGHT][MAX_WIDTH];
  #pragma HLS STREAM variable=frame2_a depth=default_depth
  static input_t frame4_a[MAX_HEIGHT][MAX_WIDTH];
  #pragma HLS STREAM variable=frame4_a depth=default_depth
  static input_t frame5_a[MAX_HEIGHT][MAX_WIDTH];
  #pragma HLS STREAM variable=frame5_a depth=default_depth

  //Need to duplicate frame3 for the two calculations
  static input_t frame3_a[MAX_HEIGHT][MAX_WIDTH];
  #pragma HLS STREAM variable=frame3_a depth=default_depth
  static input_t frame3_b[MAX_HEIGHT][MAX_WIDTH];
  // #pragma HLS STREAM variable=frame3_b depth=default_depth
  // Cannot stream  'frame3_b.V': the stream channel does not have data consumer function.

  // stream in and organize the inputs
  static frames_t buf;
  FRAMES_CP_OUTER: for (int r=0; r<MAX_HEIGHT; r++) 
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
    FRAMES_CP_INNER: for (int c=0; c<MAX_WIDTH; c++) 
    {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
      

      // one wide read
      buf = frames[r][c];
      // assign values to the FIFOs
      frame1_a[r][c] = ((input_t)(buf(7 ,  0)) >> 8);
      frame2_a[r][c] = ((input_t)(buf(15,  8)) >> 8);
      frame3_a[r][c] = ((input_t)(buf(23, 16)) >> 8);
      frame3_b[r][c] = ((input_t)(buf(23, 16)) >> 8);
      frame4_a[r][c] = ((input_t)(buf(31, 24)) >> 8);
      frame5_a[r][c] = ((input_t)(buf(39, 32)) >> 8);
    }
  }
  //
  // compute
  gradient_xy_calc(frame3_a, gradient_x, gradient_y);
  gradient_z_calc(frame1_a, frame2_a, frame3_b, frame4_a, frame5_a, gradient_z);
  gradient_weight_y(gradient_x, gradient_y, gradient_z, y_filtered);
  gradient_weight_x(y_filtered, filtered_gradient);
  outer_product(filtered_gradient, out_product);
  tensor_weight_y(out_product, tensor_y);
  tensor_weight_x(tensor_y, tensor);
  flow_calc(tensor, outputs);

}

// ---- file: xf_types.hpp ----
/*
 * Copyright 2019 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _XF_TYPES_H_
#define _XF_TYPES_H_

#ifndef __cplusplus
#error C++ is needed to use this file!
#endif

#include "ap_int.h"
#include "xf_params.hpp"
#include <stdint.h>

template <int N>
struct floatn {
    float f[N];
    float& operator[](int idx) { return f[idx]; }
    const float& operator[](int idx) const { return f[idx]; }
};
typedef floatn<3> float3;

template <int T>
struct StreamType {};
template <>
struct StreamType<XF_2UW> {
    typedef ap_uint<2> name;
    static const int bitdepth = 2;
};
template <>
struct StreamType<XF_8UW> {
    typedef ap_uint<8> name;
    static const int bitdepth = 8;
};
template <>
struct StreamType<XF_9UW> {
    typedef ap_uint<9> name;
    static const int bitdepth = 9;
};
template <>
struct StreamType<XF_10UW> {
    typedef ap_uint<10> name;
    static const int bitdepth = 10;
};
template <>
struct StreamType<XF_12UW> {
    typedef ap_uint<12> name;
    static const int bitdepth = 12;
};
template <>
struct StreamType<XF_14UW> {
    typedef ap_uint<14> name;
    static const int bitdepth = 14;
};
template <>
struct StreamType<XF_16UW> {
    typedef ap_uint<16> name;
    static const int bitdepth = 16;
};
template <>
struct StreamType<XF_19SW> {
    typedef ap_int<19> name;
    static const int bitdepth = 19;
};
template <>
struct StreamType<XF_20UW> {
    typedef ap_uint<20> name;
    static const int bitdepth = 20;
};
template <>
struct StreamType<XF_22UW> {
    typedef ap_uint<22> name;
    static const int bitdepth = 22;
};
template <>
struct StreamType<XF_24UW> {
    typedef ap_uint<24> name;
    static const int bitdepth = 24;
};
template <>
struct StreamType<XF_24SW> {
    typedef ap_int<24> name;
    static const int bitdepth = 24;
};
template <>
struct StreamType<XF_28UW> {
    typedef ap_uint<28> name;
    static const int bitdepth = 28;
};
template <>
struct StreamType<XF_30UW> {
    typedef ap_uint<30> name;
    static const int bitdepth = 30;
};
template <>
struct StreamType<XF_32UW> {
    typedef ap_uint<32> name;
    static const int bitdepth = 32;
};
template <>
struct StreamType<XF_32FW> {
    typedef float name;
    static const int bitdepth = 32;
};
template <>
struct StreamType<XF_96FW> {
    typedef floatn<3> name;
    static const int bitdepth = 96;
};
template <>
struct StreamType<XF_192FW> {
    typedef floatn<6> name;
    static const int bitdepth = 192;
};
template <>
struct StreamType<XF_384FW> {
    typedef floatn<12> name;
    static const int bitdepth = 384;
};
template <>
struct StreamType<XF_768FW> {
    typedef floatn<24> name;
    static const int bitdepth = 768;
};
template <>
struct StreamType<XF_1536FW> {
    typedef floatn<48> name;
    static const int bitdepth = 1536;
};
template <>
struct StreamType<XF_35SW> {
    typedef ap_int<35> name;
    static const int bitdepth = 35;
};
template <>
struct StreamType<XF_36UW> {
    typedef ap_uint<36> name;
    static const int bitdepth = 36;
};
template <>
struct StreamType<XF_40UW> {
    typedef ap_uint<40> name;
    static const int bitdepth = 40;
};
template <>
struct StreamType<XF_42UW> {
    typedef ap_uint<42> name;
    static const int bitdepth = 42;
};
template <>
struct StreamType<XF_48UW> {
    typedef ap_uint<48> name;
    static const int bitdepth = 48;
};
template <>
struct StreamType<XF_48SW> {
    typedef ap_int<48> name;
    static const int bitdepth = 48;
};
template <>
struct StreamType<XF_56UW> {
    typedef ap_uint<56> name;
    static const int bitdepth = 56;
};
template <>
struct StreamType<XF_60UW> {
    typedef ap_uint<60> name;
    static const int bitdepth = 60;
};
template <>
struct StreamType<XF_64UW> {
    typedef ap_uint<64> name;
    static const int bitdepth = 64;
};
template <>
struct StreamType<XF_72UW> {
    typedef ap_uint<72> name;
    static const int bitdepth = 72;
};
template <>
struct StreamType<XF_80UW> {
    typedef ap_uint<80> name;
    static const int bitdepth = 80;
};
template <>
struct StreamType<XF_84UW> {
    typedef ap_uint<84> name;
    static const int bitdepth = 84;
};
template <>
struct StreamType<XF_96UW> {
    typedef ap_uint<96> name;
    static const int bitdepth = 96;
};
template <>
struct StreamType<XF_96SW> {
    typedef ap_int<96> name;
    static const int bitdepth = 96;
};
template <>
struct StreamType<XF_112UW> {
    typedef ap_uint<112> name;
    static const int bitdepth = 112;
};
template <>
struct StreamType<XF_120UW> {
    typedef ap_uint<120> name;
    static const int bitdepth = 120;
};
template <>
struct StreamType<XF_128UW> {
    typedef ap_uint<128> name;
    static const int bitdepth = 128;
};
template <>
struct StreamType<XF_144UW> {
    typedef ap_uint<144> name;
    static const int bitdepth = 144;
};
template <>
struct StreamType<XF_152SW> {
    typedef ap_int<152> name;
    static const int bitdepth = 152;
};
template <>
struct StreamType<XF_160UW> {
    typedef ap_uint<160> name;
    static const int bitdepth = 160;
};
template <>
struct StreamType<XF_160SW> {
    typedef ap_int<160> name;
    static const int bitdepth = 160;
};
template <>
struct StreamType<XF_168UW> {
    typedef ap_int<168> name;
    static const int bitdepth = 168;
};
template <>
struct StreamType<XF_176UW> {
    typedef ap_uint<176> name;
    static const int bitdepth = 176;
};
template <>
struct StreamType<XF_192UW> {
    typedef ap_uint<192> name;
    static const int bitdepth = 192;
};
template <>
struct StreamType<XF_192SW> {
    typedef ap_int<192> name;
    static const int bitdepth = 192;
};
template <>
struct StreamType<XF_256UW> {
    typedef ap_uint<256> name;
    static const int bitdepth = 256;
};
template <>
struct StreamType<XF_280SW> {
    typedef ap_int<280> name;
    static const int bitdepth = 280;
};
template <>
struct StreamType<XF_288UW> {
    typedef ap_uint<288> name;
    static const int bitdepth = 288;
};
template <>
struct StreamType<XF_304SW> {
    typedef ap_int<304> name;
    static const int bitdepth = 304;
};
template <>
struct StreamType<XF_320UW> {
    typedef ap_int<320> name;
    static const int bitdepth = 320;
};
template <>
struct StreamType<XF_336UW> {
    typedef ap_int<336> name;
    static const int bitdepth = 336;
};
template <>
struct StreamType<XF_352UW> {
    typedef ap_uint<352> name;
    static const int bitdepth = 352;
};
template <>
struct StreamType<XF_384UW> {
    typedef ap_uint<384> name;
    static const int bitdepth = 384;
};
template <>
struct StreamType<XF_384SW> {
    typedef ap_int<384> name;
    static const int bitdepth = 384;
};
template <>
struct StreamType<XF_512UW> {
    typedef ap_uint<512> name;
    static const int bitdepth = 512;
};
template <>
struct StreamType<XF_560SW> {
    typedef ap_int<560> name;
    static const int bitdepth = 560;
};
template <>
struct StreamType<XF_576UW> {
    typedef ap_uint<576> name;
    static const int bitdepth = 576;
};

template <int T>
struct PixelType {};
template <>
struct PixelType<XF_8UP> {
    typedef ap_uint<8> name;
    typedef ap_uint<8> uname;
    typedef unsigned char name2;
    static const int bitdepth = 8;
};
template <>
struct PixelType<XF_8SP> {
    typedef ap_int<8> name;
    typedef ap_uint<8> uname;
    static const int bitdepth = 8;
};
template <>
struct PixelType<XF_9UP> {
    typedef ap_uint<9> name;
    typedef ap_uint<9> uname;
    static const int bitdepth = 9;
};
template <>
struct PixelType<XF_9SP> {
    typedef ap_int<9> name;
    typedef ap_uint<9> uname;
    static const int bitdepth = 9;
};
template <>
struct PixelType<XF_16UP> {
    typedef ap_uint<16> name;
    typedef ap_uint<16> uname;
    static const int bitdepth = 16;
};
template <>
struct PixelType<XF_16SP> {
    typedef ap_int<16> name;
    typedef ap_uint<16> uname;
    static const int bitdepth = 16;
};
template <>
struct PixelType<XF_32UP> {
    typedef ap_uint<32> name;
    typedef ap_uint<32> uname;
    static const int bitdepth = 32;
};
template <>
struct PixelType<XF_32SP> {
    typedef ap_int<32> name;
    typedef ap_uint<32> uname;
    static const int bitdepth = 32;
};
template <>
struct PixelType<XF_19SP> {
    typedef ap_int<19> name;
    typedef ap_uint<19> uname;
    static const int bitdepth = 19;
};
template <>
struct PixelType<XF_35SP> {
    typedef ap_int<35> name;
    typedef ap_uint<35> uname;
    static const int bitdepth = 35;
};
template <>
struct PixelType<XF_32FP> {
    typedef float name;
    static const int bitdepth = 32;
};
template <>
struct PixelType<XF_96FP> {
    typedef floatn<3> name;
    static const int bitdepth = 96;
};
template <>
struct PixelType<XF_24SP> {
    typedef ap_int<24> name;
    typedef ap_uint<24> uname;
    static const int bitdepth = 24;
};
template <>
struct PixelType<XF_20SP> {
    typedef ap_int<20> name;
    typedef ap_uint<20> uname;
    static const int bitdepth = 20;
};
template <>
struct PixelType<XF_48SP> {
    typedef ap_int<48> name;
    typedef ap_uint<48> uname;
    static const int bitdepth = 48;
};
template <>
struct PixelType<XF_2UP> {
    typedef ap_uint<2> name;
    static const int bitdepth = 2;
};
template <>
struct PixelType<XF_24UP> {
    typedef ap_uint<24> name;
    typedef ap_uint<24> uname;
    static const int bitdepth = 24;
};

template <>
struct PixelType<XF_10UP> {
    typedef ap_uint<10> name;
    typedef ap_uint<10> uname;
    static const int bitdepth = 10;
};
template <>
struct PixelType<XF_12UP> {
    typedef ap_uint<12> name;
    typedef ap_uint<12> uname;
    static const int bitdepth = 12;
};
template <>
struct PixelType<XF_14UP> {
    typedef ap_uint<14> name;
    typedef ap_uint<14> uname;
    static const int bitdepth = 14;
};
#define XF_NPIXPERCYCLE(flags) xfNPixelsPerCycle<flags>::nppc

#define XF_BITSHIFT(flags) xfNPixelsPerCycle<flags>::datashift

template <int T>
struct xfNPixelsPerCycle {};
template <>
struct xfNPixelsPerCycle<XF_NPPC1> {
    static const int datashift = 0;
    static const int nppc = 1;
};
template <>
struct xfNPixelsPerCycle<XF_NPPC2> {
    static const int datashift = 1;
    static const int nppc = 2;
};
template <>
struct xfNPixelsPerCycle<XF_NPPC4> {
    static const int datashift = 2;
    static const int nppc = 4;
};
template <>
struct xfNPixelsPerCycle<XF_NPPC8> {
    static const int datashift = 3;
    static const int nppc = 8;
};
template <>
struct xfNPixelsPerCycle<XF_NPPC16> {
    static const int datashift = 4;
    static const int nppc = 16;
};
template <>
struct xfNPixelsPerCycle<XF_NPPC32> {
    static const int datashift = 5;
    static const int nppc = 32;
};

template <int T, int M>
struct DataType {};

// One channel data types
template <>
struct DataType<XF_2UC1, XF_NPPC1> {
    typedef ap_uint<2> name;
    typedef ap_uint<2> uname;
    typedef ap_uint<2> cname;
    typedef unsigned char sname;
    static const int bitdepth = 2;
    static const int pixelwidth = 2;
    static const int pixeldepth = XF_2UP;
    static const int wordwidth = XF_2UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_2UC1, XF_NPPC32> {
    typedef ap_uint<64> name;
    typedef ap_uint<2> uname;
    typedef ap_uint<2> cname;
    typedef unsigned char sname;
    static const int bitdepth = 2;
    static const int pixelwidth = 2;
    static const int pixeldepth = XF_2UP;
    static const int wordwidth = XF_64UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_2UC1, XF_NPPC4> {
    typedef ap_uint<8> name;
    typedef ap_uint<2> uname;
    typedef ap_uint<2> cname;
    typedef unsigned char sname;
    static const int bitdepth = 2;
    static const int pixelwidth = 2;
    static const int pixeldepth = XF_2UP;
    static const int wordwidth = XF_8UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_2UC1, XF_NPPC8> {
    typedef ap_uint<16> name;
    typedef ap_uint<2> uname;
    typedef ap_uint<2> cname;
    typedef unsigned char sname;
    static const int bitdepth = 2;
    static const int pixelwidth = 2;
    static const int pixeldepth = XF_2UP;
    static const int wordwidth = XF_16UW;
    static const int channel = 1;
};

template <>
struct DataType<XF_8UC1, XF_NPPC1> {
    typedef ap_uint<8> name;
    typedef ap_uint<8> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned char wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 8;
    static const int pixeldepth = XF_8UP;
    static const int wordwidth = XF_8UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_8UC1, XF_NPPC2> {
    typedef ap_uint<16> name;
    typedef ap_uint<8> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned short wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 8;
    static const int pixeldepth = XF_8UP;
    static const int wordwidth = XF_16UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_8UC1, XF_NPPC4> {
    typedef ap_uint<32> name;
    typedef ap_uint<8> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned int wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 8;
    static const int pixeldepth = XF_8UP;
    static const int wordwidth = XF_32UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_8UC1, XF_NPPC8> {
    typedef ap_uint<64> name;
    typedef ap_uint<8> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned long long wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 8;
    static const int pixeldepth = XF_8UP;
    static const int wordwidth = XF_64UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_8UC1, XF_NPPC16> {
    typedef ap_uint<128> name;
    typedef ap_uint<8> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned long long wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 8;
    static const int pixeldepth = XF_8UP;
    static const int wordwidth = XF_128UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_8UC1, XF_NPPC32> {
    typedef ap_uint<256> name;
    typedef ap_uint<8> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned long long wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 8;
    static const int pixeldepth = XF_8UP;
    static const int wordwidth = XF_256UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_8UC1, XF_NPPC64> {
    typedef ap_uint<512> name;
    typedef ap_uint<8> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned long long wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 8;
    static const int pixeldepth = XF_8UP;
    static const int wordwidth = XF_512UW;
    static const int channel = 1;
};

template <>
struct DataType<XF_10UC1, XF_NPPC1> {
    typedef ap_uint<10> name;
    typedef ap_uint<10> uname;
    typedef ap_uint<10> cname;
    typedef unsigned short int sname;
    typedef unsigned short wname;
    static const int bitdepth = 10;
    static const int pixelwidth = 10;
    static const int pixeldepth = XF_10UP;
    static const int wordwidth = XF_10UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_10UC1, XF_NPPC2> {
    typedef ap_uint<20> name;
    typedef ap_uint<10> uname;
    typedef ap_uint<10> cname;
    typedef unsigned short int sname;
    typedef unsigned short wname;
    static const int bitdepth = 10;
    static const int pixelwidth = 10;
    static const int pixeldepth = XF_10UP;
    static const int wordwidth = XF_20UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_10UC1, XF_NPPC4> {
    typedef ap_uint<40> name;
    typedef ap_uint<10> uname;
    typedef ap_uint<10> cname;
    typedef unsigned short int sname;
    typedef unsigned short wname;
    static const int bitdepth = 10;
    static const int pixelwidth = 10;
    static const int pixeldepth = XF_10UP;
    static const int wordwidth = XF_40UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_10UC1, XF_NPPC8> {
    typedef ap_uint<80> name;
    typedef ap_uint<10> uname;
    typedef ap_uint<10> cname;
    typedef unsigned short int sname;
    typedef unsigned short wname;
    static const int bitdepth = 10;
    static const int pixelwidth = 10;
    static const int pixeldepth = XF_10UP;
    static const int wordwidth = XF_80UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_10UC1, XF_NPPC16> {
    typedef ap_uint<160> name;
    typedef ap_uint<10> uname;
    typedef ap_uint<10> cname;
    typedef unsigned short int sname;
    typedef unsigned short wname;
    static const int bitdepth = 10;
    static const int pixelwidth = 10;
    static const int pixeldepth = XF_10UP;
    static const int wordwidth = XF_160UW;
    static const int channel = 1;
};

template <>
struct DataType<XF_12UC1, XF_NPPC1> {
    typedef ap_uint<12> name;
    typedef ap_uint<12> uname;
    typedef ap_uint<12> cname;
    typedef unsigned short int sname;
    typedef unsigned short wname;
    static const int bitdepth = 12;
    static const int pixelwidth = 12;
    static const int pixeldepth = XF_12UP;
    static const int wordwidth = XF_12UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_12UC1, XF_NPPC2> {
    typedef ap_uint<24> name;
    typedef ap_uint<12> uname;
    typedef ap_uint<12> cname;
    typedef unsigned short int sname;
    typedef unsigned short wname;
    static const int bitdepth = 12;
    static const int pixelwidth = 12;
    static const int pixeldepth = XF_12UP;
    static const int wordwidth = XF_24UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_12UC1, XF_NPPC4> {
    typedef ap_uint<48> name;
    typedef ap_uint<12> uname;
    typedef ap_uint<12> cname;
    typedef unsigned short int sname;
    typedef unsigned short wname;
    static const int bitdepth = 12;
    static const int pixelwidth = 12;
    static const int pixeldepth = XF_12UP;
    static const int wordwidth = XF_48UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_12UC1, XF_NPPC8> {
    typedef ap_uint<96> name;
    typedef ap_uint<12> uname;
    typedef ap_uint<12> cname;
    typedef unsigned short int sname;
    typedef unsigned short wname;
    static const int bitdepth = 12;
    static const int pixelwidth = 12;
    static const int pixeldepth = XF_12UP;
    static const int wordwidth = XF_96UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_12UC1, XF_NPPC16> {
    typedef ap_uint<192> name;
    typedef ap_uint<12> uname;
    typedef ap_uint<12> cname;
    typedef unsigned short int sname;
    typedef unsigned short wname;
    static const int bitdepth = 12;
    static const int pixelwidth = 12;
    static const int pixeldepth = XF_12UP;
    static const int wordwidth = XF_192UW;
    static const int channel = 1;
};

template <>
struct DataType<XF_16SC1, XF_NPPC1> {
    typedef ap_uint<16> name;
    typedef ap_uint<16> uname;
    typedef ap_int<16> cname;
    typedef short sname;
    static const int bitdepth = 16;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16SP;
    static const int wordwidth = XF_16UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_16SC1, XF_NPPC2> {
    typedef ap_uint<32> name;
    typedef ap_uint<16> uname;
    typedef ap_int<16> cname;
    typedef short sname;
    static const int bitdepth = 16;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16SP;
    static const int wordwidth = XF_32UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_16SC1, XF_NPPC4> {
    typedef ap_uint<64> name;
    typedef ap_uint<16> uname;
    typedef ap_int<16> cname;
    typedef short sname;
    static const int bitdepth = 16;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16SP;
    static const int wordwidth = XF_64UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_16SC1, XF_NPPC8> {
    typedef ap_uint<128> name;
    typedef ap_uint<16> uname;
    typedef ap_int<16> cname;
    typedef short sname;
    static const int bitdepth = 16;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16SP;
    static const int wordwidth = XF_128UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_16SC1, XF_NPPC16> {
    typedef ap_uint<256> name;
    typedef ap_uint<16> uname;
    typedef ap_int<16> cname;
    typedef short sname;
    static const int bitdepth = 16;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16SP;
    static const int wordwidth = XF_256UW;
    static const int channel = 1;
};

template <>
struct DataType<XF_16UC1, XF_NPPC1> {
    typedef ap_uint<16> name;
    typedef ap_uint<16> uname;
    typedef ap_uint<16> cname;
    typedef unsigned short sname;
    static const int bitdepth = 16;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16UP;
    static const int wordwidth = XF_16UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_16UC1, XF_NPPC2> {
    typedef ap_uint<32> name;
    typedef ap_uint<16> uname;
    typedef ap_uint<16> cname;
    typedef unsigned short sname;
    static const int bitdepth = 16;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16UP;
    static const int wordwidth = XF_32UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_16UC1, XF_NPPC4> {
    typedef ap_uint<64> name;
    typedef ap_uint<16> uname;
    typedef ap_uint<16> cname;
    typedef unsigned short sname;
    static const int bitdepth = 16;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16UP;
    static const int wordwidth = XF_64UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_16UC1, XF_NPPC8> {
    typedef ap_uint<128> name;
    typedef ap_uint<16> uname;
    typedef ap_uint<16> cname;
    typedef unsigned short sname;
    static const int bitdepth = 16;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16UP;
    static const int wordwidth = XF_128UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_16UC1, XF_NPPC16> {
    typedef ap_uint<256> name;
    typedef ap_uint<16> uname;
    typedef ap_uint<16> cname;
    typedef unsigned short sname;
    static const int bitdepth = 16;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16UP;
    static const int wordwidth = XF_256UW;
    static const int channel = 1;
};

template <>
struct DataType<XF_24UC1, XF_NPPC1> {
    typedef ap_uint<24> name;
    typedef ap_uint<24> uname;
    typedef ap_uint<24> cname;
    typedef unsigned int sname;
    typedef unsigned int wname;
    static const int bitdepth = 24;
    static const int pixelwidth = 24;
    static const int pixeldepth = XF_24UP;
    static const int wordwidth = XF_24UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_24UC1, XF_NPPC2> {
    typedef ap_uint<48> name;
    typedef ap_uint<24> uname;
    typedef ap_uint<24> cname;
    typedef unsigned int sname;
    typedef unsigned int wname;
    static const int bitdepth = 24;
    static const int pixelwidth = 24;
    static const int pixeldepth = XF_24UP;
    static const int wordwidth = XF_48UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_24UC1, XF_NPPC4> {
    typedef ap_uint<96> name;
    typedef ap_uint<24> uname;
    typedef ap_uint<24> cname;
    typedef unsigned int sname;
    typedef unsigned int wname;
    static const int bitdepth = 24;
    static const int pixelwidth = 24;
    static const int pixeldepth = XF_24UP;
    static const int wordwidth = XF_96UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_24UC1, XF_NPPC8> {
    typedef ap_uint<192> name;
    typedef ap_uint<24> uname;
    typedef ap_uint<24> cname;
    typedef unsigned int sname;
    typedef unsigned int wname;
    static const int bitdepth = 24;
    static const int pixelwidth = 24;
    static const int pixeldepth = XF_24UP;
    static const int wordwidth = XF_192UW;
    static const int channel = 1;
};

template <>
struct DataType<XF_14UC1, XF_NPPC1> {
    typedef ap_uint<14> name;
    typedef ap_uint<14> uname;
    typedef ap_uint<14> cname;
    typedef unsigned int sname;
    typedef unsigned int wname;
    static const int bitdepth = 14;
    static const int pixelwidth = 14;
    static const int pixeldepth = XF_14UP;
    static const int wordwidth = XF_14UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_14UC1, XF_NPPC2> {
    typedef ap_uint<28> name;
    typedef ap_uint<14> uname;
    typedef ap_uint<14> cname;
    typedef unsigned int sname;
    typedef unsigned int wname;
    static const int bitdepth = 14;
    static const int pixelwidth = 14;
    static const int pixeldepth = XF_14UP;
    static const int wordwidth = XF_28UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_14UC1, XF_NPPC4> {
    typedef ap_uint<56> name;
    typedef ap_uint<14> uname;
    typedef ap_uint<14> cname;
    typedef unsigned int sname;
    typedef unsigned int wname;
    static const int bitdepth = 14;
    static const int pixelwidth = 14;
    static const int pixeldepth = XF_14UP;
    static const int wordwidth = XF_56UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_14UC1, XF_NPPC8> {
    typedef ap_uint<112> name;
    typedef ap_uint<14> uname;
    typedef ap_uint<14> cname;
    typedef unsigned int sname;
    typedef unsigned int wname;
    static const int bitdepth = 14;
    static const int pixelwidth = 14;
    static const int pixeldepth = XF_14UP;
    static const int wordwidth = XF_112UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_32UC1, XF_NPPC1> {
    typedef ap_uint<32> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<32> cname;
    typedef unsigned int sname;
    typedef unsigned int wname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32UP;
    static const int wordwidth = XF_32UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_64UC1, XF_NPPC1> {
    typedef ap_uint<64> name;
    typedef ap_uint<64> uname;
    typedef ap_uint<64> cname;
    typedef unsigned int sname;
    typedef unsigned int wname;
    static const int bitdepth = 64;
    static const int pixelwidth = 64;
    static const int pixeldepth = XF_64UP;
    static const int wordwidth = XF_64UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_32UC1, XF_NPPC2> {
    typedef ap_uint<64> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<32> cname;
    typedef unsigned int sname;
    typedef unsigned long long wname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32UP;
    static const int wordwidth = XF_64UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_32UC1, XF_NPPC4> {
    typedef ap_uint<128> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<32> cname;
    typedef unsigned int sname;
    typedef unsigned long long wname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32UP;
    static const int wordwidth = XF_128UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_32UC1, XF_NPPC8> {
    typedef ap_uint<256> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<32> cname;
    typedef unsigned int sname;
    typedef unsigned long long wname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32UP;
    static const int wordwidth = XF_256UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_32UC1, XF_NPPC16> {
    typedef ap_uint<512> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<32> cname;
    typedef unsigned int sname;
    typedef unsigned long long wname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32UP;
    static const int wordwidth = XF_512UW;
    static const int channel = 1;
};

template <>
struct DataType<XF_32FC1, XF_NPPC1> {
    typedef ap_uint<32> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<32> cname;
    typedef float sname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32FP;
    static const int wordwidth = XF_32FW;
    static const int channel = 1;
};
template <>
struct DataType<XF_32FC1, XF_NPPC2> {
    typedef ap_uint<64> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<32> cname;
    typedef float sname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32FP;
    static const int wordwidth = XF_64UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_32FC1, XF_NPPC4> {
    typedef ap_uint<128> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<32> cname;
    typedef float sname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32FP;
    static const int wordwidth = XF_128UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_32FC1, XF_NPPC8> {
    typedef ap_uint<256> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<32> cname;
    typedef float sname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32FP;
    static const int wordwidth = XF_256UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_32FC1, XF_NPPC16> {
    typedef ap_uint<512> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<32> cname;
    typedef float sname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32FP;
    static const int wordwidth = XF_512UW;
    static const int channel = 1;
};

template <>
struct DataType<XF_32FC3, XF_NPPC1> {
    typedef ap_uint<96> name;
    typedef ap_uint<96> uname;
    typedef ap_uint<32> cname;
    typedef float sname;
    typedef floatn<3> wname;
    static const int bitdepth = 32;
    static const int pixelwidth = 96;
    static const int pixeldepth = XF_96FP;
    static const int wordwidth = XF_96FW;
    static const int channel = 3;
};
template <>
struct DataType<XF_32FC3, XF_NPPC2> {
    typedef ap_uint<192> name;
    typedef ap_uint<96> uname;
    typedef ap_uint<32> cname;
    typedef float sname;
    typedef floatn<6> wname;
    static const int bitdepth = 32;
    static const int pixelwidth = 96;
    static const int pixeldepth = XF_96FP;
    static const int wordwidth = XF_192FW;
    static const int channel = 3;
};
template <>
struct DataType<XF_32FC3, XF_NPPC4> {
    typedef ap_uint<384> name;
    typedef ap_uint<96> uname;
    typedef ap_uint<32> cname;
    typedef float sname;
    typedef floatn<12> wname;
    static const int bitdepth = 32;
    static const int pixelwidth = 96;
    static const int pixeldepth = XF_96FP;
    static const int wordwidth = XF_384FW;
    static const int channel = 3;
};
template <>
struct DataType<XF_32FC3, XF_NPPC8> {
    typedef ap_uint<768> name;
    typedef ap_uint<96> uname;
    typedef ap_uint<32> cname;
    typedef float sname;
    typedef floatn<24> wname;
    static const int bitdepth = 32;
    static const int pixelwidth = 96;
    static const int pixeldepth = XF_96FP;
    static const int wordwidth = XF_768FW;
    static const int channel = 3;
};
template <>
struct DataType<XF_32FC3, XF_NPPC16> {
    typedef ap_uint<1536> name;
    typedef ap_uint<96> uname;
    typedef ap_uint<32> cname;
    typedef float sname;
    typedef floatn<48> wname;
    static const int bitdepth = 32;
    static const int pixelwidth = 96;
    static const int pixeldepth = XF_96FP;
    static const int wordwidth = XF_1536FW;
    static const int channel = 3;
};

template <>
struct DataType<XF_32SC1, XF_NPPC1> {
    typedef ap_uint<32> name;
    typedef ap_uint<32> uname;
    typedef ap_int<32> cname;
    typedef int sname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32SP;
    static const int wordwidth = XF_32UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_32SC1, XF_NPPC2> {
    typedef ap_uint<64> name;
    typedef ap_uint<32> uname;
    typedef ap_int<32> cname;
    typedef int sname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32SP;
    static const int wordwidth = XF_64UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_32SC1, XF_NPPC4> {
    typedef ap_uint<128> name;
    typedef ap_uint<32> uname;
    typedef ap_int<32> cname;
    typedef int sname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32SP;
    static const int wordwidth = XF_128UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_32SC1, XF_NPPC8> {
    typedef ap_uint<256> name;
    typedef ap_uint<32> uname;
    typedef ap_int<32> cname;
    typedef int sname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32SP;
    static const int wordwidth = XF_256UW;
    static const int channel = 1;
};
template <>
struct DataType<XF_32SC1, XF_NPPC16> {
    typedef ap_uint<512> name;
    typedef ap_uint<32> uname;
    typedef ap_int<32> cname;
    typedef int sname;
    static const int bitdepth = 32;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32SP;
    static const int wordwidth = XF_512UW;
    static const int channel = 1;
};

// Two channels data types
template <>
struct DataType<XF_8UC2, XF_NPPC1> {
    typedef ap_uint<16> name;
    typedef ap_uint<16> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned short int wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16UP;
    static const int wordwidth = XF_16UW;
    static const int channel = 2;
};
template <>
struct DataType<XF_8UC2, XF_NPPC2> {
    typedef ap_uint<32> name;
    typedef ap_uint<16> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned short int wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16UP;
    static const int wordwidth = XF_32UW;
    static const int channel = 2;
};
template <>
struct DataType<XF_8UC2, XF_NPPC4> {
    typedef ap_uint<64> name;
    typedef ap_uint<16> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16UP;
    static const int wordwidth = XF_64UW;
    static const int channel = 2;
};
template <>
struct DataType<XF_8UC2, XF_NPPC8> {
    typedef ap_uint<128> name;
    typedef ap_uint<16> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16UP;
    static const int wordwidth = XF_128UW;
    static const int channel = 2;
};
template <>
struct DataType<XF_8UC2, XF_NPPC16> {
    typedef ap_uint<256> name;
    typedef ap_uint<16> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 16;
    static const int pixeldepth = XF_16UP;
    static const int wordwidth = XF_256UW;
    static const int channel = 2;
};

// template<> struct DataType <XF_10UC2, XF_NPPC1>   { typedef ap_uint<40>      name; typedef ap_uint<40>  uname;
// typedef ap_uint<10>  cname; typedef unsigned  short int sname; typedef unsigned long long int wname; static const int
// bitdepth = 10; static const int pixeldepth = XF_40UP;static const int wordwidth = XF_40UW; static const int channel =
// 4;}; template<> struct DataType <XF_10UC2, XF_NPPC2>   { typedef ap_uint<80>      name; typedef ap_uint<40>  uname;
// typedef ap_uint<10>  cname; static const int bitdepth = 10; static const int pixeldepth = XF_40UP;static const int
// wordwidth = XF_80UW; static const int channel = 4;};

// Three channels data types (TODO: Pixeldepth of XF_16U3 needs correction)
template <>
struct DataType<XF_8UC3, XF_NPPC1> {
    typedef ap_uint<24> name;
    typedef ap_uint<24> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned int wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 24;
    static const int pixeldepth = XF_24UP;
    static const int wordwidth = XF_24UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_8UC3, XF_NPPC2> {
    typedef ap_uint<48> name;
    typedef ap_uint<24> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 24;
    static const int pixeldepth = XF_24UP;
    static const int wordwidth = XF_48UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_8UC3, XF_NPPC4> {
    typedef ap_uint<96> name;
    typedef ap_uint<24> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 24;
    static const int pixeldepth = XF_24UP;
    static const int wordwidth = XF_96UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_8UC3, XF_NPPC8> {
    typedef ap_uint<192> name;
    typedef ap_uint<24> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 24;
    static const int pixeldepth = XF_24UP;
    static const int wordwidth = XF_192UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_8UC3, XF_NPPC16> {
    typedef ap_uint<384> name;
    typedef ap_uint<24> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 24;
    static const int pixeldepth = XF_24UP;
    static const int wordwidth = XF_384UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_10UC3, XF_NPPC1> {
    typedef ap_uint<30> name;
    typedef ap_uint<30> uname;
    typedef ap_uint<10> cname;
    typedef unsigned short sname;
    typedef unsigned int wname;
    static const int bitdepth = 10;
    static const int pixelwidth = 30;
    static const int pixeldepth = XF_30UP;
    static const int wordwidth = XF_30UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_10UC3, XF_NPPC2> {
    typedef ap_uint<60> name;
    typedef ap_uint<30> uname;
    typedef ap_uint<10> cname;
    typedef unsigned short sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 10;
    static const int pixelwidth = 30;
    static const int pixeldepth = XF_30UP;
    static const int wordwidth = XF_60UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_10UC3, XF_NPPC4> {
    typedef ap_uint<120> name;
    typedef ap_uint<30> uname;
    typedef ap_uint<10> cname;
    typedef unsigned short int sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 10;
    static const int pixelwidth = 30;
    static const int pixeldepth = XF_30UP;
    static const int wordwidth = XF_120UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_10UC3, XF_NPPC8> {
    typedef ap_uint<240> name;
    typedef ap_uint<30> uname;
    typedef ap_uint<10> cname;
    typedef unsigned short int sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 10;
    static const int pixelwidth = 30;
    static const int pixeldepth = XF_30UP;
    static const int wordwidth = XF_240UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_12UC3, XF_NPPC1> {
    typedef ap_uint<36> name;
    typedef ap_uint<36> uname;
    typedef ap_uint<12> cname;
    typedef unsigned short sname;
    typedef unsigned long int wname;
    static const int bitdepth = 12;
    static const int pixelwidth = 36;
    static const int pixeldepth = XF_36UP;
    static const int wordwidth = XF_36UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_12UC3, XF_NPPC2> {
    typedef ap_uint<72> name;
    typedef ap_uint<36> uname;
    typedef ap_uint<12> cname;
    typedef unsigned short sname;
    typedef unsigned long int wname;
    static const int bitdepth = 12;
    static const int pixelwidth = 36;
    static const int pixeldepth = XF_36UP;
    static const int wordwidth = XF_72UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_12UC3, XF_NPPC4> {
    typedef ap_uint<144> name;
    typedef ap_uint<36> uname;
    typedef ap_uint<12> cname;
    typedef unsigned short sname;
    typedef unsigned long int wname;
    static const int bitdepth = 12;
    static const int pixelwidth = 36;
    static const int pixeldepth = XF_36UP;
    static const int wordwidth = XF_144UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_12UC3, XF_NPPC8> {
    typedef ap_uint<288> name;
    typedef ap_uint<36> uname;
    typedef ap_uint<12> cname;
    typedef unsigned short sname;
    typedef unsigned long int wname;
    static const int bitdepth = 12;
    static const int pixelwidth = 36;
    static const int pixeldepth = XF_36UP;
    static const int wordwidth = XF_288UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_14UC3, XF_NPPC1> {
    typedef ap_uint<42> name;
    typedef ap_uint<42> uname;
    typedef ap_uint<14> cname;
    typedef unsigned short sname;
    typedef unsigned long int wname;
    static const int bitdepth = 14;
    static const int pixelwidth = 42;
    static const int pixeldepth = XF_42UP;
    static const int wordwidth = XF_42UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_14UC3, XF_NPPC2> {
    typedef ap_uint<84> name;
    typedef ap_uint<42> uname;
    typedef ap_uint<14> cname;
    typedef unsigned short sname;
    typedef unsigned long int wname;
    static const int bitdepth = 14;
    static const int pixelwidth = 42;
    static const int pixeldepth = XF_42UP;
    static const int wordwidth = XF_84UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_14UC3, XF_NPPC4> {
    typedef ap_uint<168> name;
    typedef ap_uint<42> uname;
    typedef ap_uint<14> cname;
    typedef unsigned short sname;
    typedef unsigned long int wname;
    static const int bitdepth = 14;
    static const int pixelwidth = 42;
    static const int pixeldepth = XF_42UP;
    static const int wordwidth = XF_168UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_14UC3, XF_NPPC8> {
    typedef ap_uint<336> name;
    typedef ap_uint<42> uname;
    typedef ap_uint<14> cname;
    typedef unsigned short sname;
    typedef unsigned long int wname;
    static const int bitdepth = 14;
    static const int pixelwidth = 42;
    static const int pixeldepth = XF_42UP;
    static const int wordwidth = XF_336UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_16UC3, XF_NPPC1> {
    typedef ap_uint<48> name;
    typedef ap_uint<48> uname;
    typedef ap_uint<16> cname;
    typedef unsigned short int sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 16;
    static const int pixelwidth = 48;
    static const int pixeldepth = XF_48UP;
    static const int wordwidth = XF_48UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_16UC3, XF_NPPC2> {
    typedef ap_uint<96> name;
    typedef ap_uint<48> uname;
    typedef ap_uint<16> cname;
    typedef unsigned short int sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 16;
    static const int pixelwidth = 48;
    static const int pixeldepth = XF_48UP;
    static const int wordwidth = XF_96UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_16UC3, XF_NPPC4> {
    typedef ap_uint<192> name;
    typedef ap_uint<48> uname;
    typedef ap_uint<16> cname;
    typedef unsigned short int sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 16;
    static const int pixelwidth = 48;
    static const int pixeldepth = XF_48UP;
    static const int wordwidth = XF_192UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_16UC3, XF_NPPC8> {
    typedef ap_uint<384> name;
    typedef ap_uint<48> uname;
    typedef ap_uint<16> cname;
    typedef unsigned short int sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 16;
    static const int pixelwidth = 48;
    static const int pixeldepth = XF_48UP;
    static const int wordwidth = XF_384UW;
    static const int channel = 3;
};
template <>
struct DataType<XF_16SC3, XF_NPPC1> {
    typedef ap_uint<48> name;
    typedef ap_uint<48> uname;
    typedef ap_int<16> cname;
    typedef short int sname;
    typedef short int wname;
    static const int bitdepth = 16;
    static const int pixelwidth = 48;
    static const int pixeldepth = XF_48SP;
    static const int wordwidth = XF_48SW;
    static const int channel = 3;
};
template <>
struct DataType<XF_16SC3, XF_NPPC2> {
    typedef ap_uint<96> name;
    typedef ap_uint<48> uname;
    typedef ap_int<16> cname;
    typedef short int sname;
    typedef short int wname;
    static const int bitdepth = 16;
    static const int pixelwidth = 48;
    static const int pixeldepth = XF_48SP;
    static const int wordwidth = XF_96SW;
    static const int channel = 3;
};
template <>
struct DataType<XF_16SC3, XF_NPPC4> {
    typedef ap_uint<192> name;
    typedef ap_uint<48> uname;
    typedef ap_int<16> cname;
    typedef short int sname;
    typedef short int wname;
    static const int bitdepth = 16;
    static const int pixelwidth = 48;
    static const int pixeldepth = XF_48SP;
    static const int wordwidth = XF_192SW;
    static const int channel = 3;
};
template <>
struct DataType<XF_16SC3, XF_NPPC8> {
    typedef ap_uint<384> name;
    typedef ap_uint<48> uname;
    typedef ap_int<16> cname;
    typedef short int sname;
    typedef short int wname;
    static const int bitdepth = 16;
    static const int pixelwidth = 48;
    static const int pixeldepth = XF_48SP;
    static const int wordwidth = XF_384SW;
    static const int channel = 3;
};
// Four channels data types
template <>
struct DataType<XF_8UC4, XF_NPPC1> {
    typedef ap_uint<32> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned int wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32UP;
    static const int wordwidth = XF_32UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_8UC4, XF_NPPC2> {
    typedef ap_uint<64> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 8;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32UP;
    static const int wordwidth = XF_64UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_8UC4, XF_NPPC4> {
    typedef ap_uint<128> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    static const int bitdepth = 8;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32UP;
    static const int wordwidth = XF_128UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_8UC4, XF_NPPC8> {
    typedef ap_uint<256> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    static const int bitdepth = 8;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32UP;
    static const int wordwidth = XF_256UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_8UC4, XF_NPPC16> {
    typedef ap_uint<512> name;
    typedef ap_uint<32> uname;
    typedef ap_uint<8> cname;
    typedef unsigned char sname;
    static const int bitdepth = 8;
    static const int pixelwidth = 32;
    static const int pixeldepth = XF_32UP;
    static const int wordwidth = XF_512UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_10UC4, XF_NPPC1> {
    typedef ap_uint<40> name;
    typedef ap_uint<40> uname;
    typedef ap_uint<10> cname;
    typedef unsigned short int sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 10;
    static const int pixelwidth = 40;
    static const int pixeldepth = XF_40UP;
    static const int wordwidth = XF_40UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_10UC4, XF_NPPC2> {
    typedef ap_uint<80> name;
    typedef ap_uint<40> uname;
    typedef ap_uint<10> cname;
    static const int bitdepth = 10;
    static const int pixelwidth = 40;
    static const int pixeldepth = XF_40UP;
    static const int wordwidth = XF_80UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_10UC4, XF_NPPC4> {
    typedef ap_uint<160> name;
    typedef ap_uint<40> uname;
    typedef ap_uint<10> cname;
    static const int bitdepth = 10;
    static const int pixelwidth = 40;
    static const int pixeldepth = XF_40UP;
    static const int wordwidth = XF_160UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_10UC4, XF_NPPC8> {
    typedef ap_uint<320> name;
    typedef ap_uint<40> uname;
    typedef ap_uint<10> cname;
    static const int bitdepth = 10;
    static const int pixelwidth = 40;
    static const int pixeldepth = XF_40UP;
    static const int wordwidth = XF_320UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_12UC4, XF_NPPC1> {
    typedef ap_uint<48> name;
    typedef ap_uint<48> uname;
    typedef ap_uint<12> cname;
    typedef unsigned short int sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 12;
    static const int pixelwidth = 48;
    static const int pixeldepth = XF_48UP;
    static const int wordwidth = XF_48UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_12UC4, XF_NPPC2> {
    typedef ap_uint<96> name;
    typedef ap_uint<48> uname;
    typedef ap_uint<12> cname;
    static const int bitdepth = 12;
    static const int pixelwidth = 48;
    static const int pixeldepth = XF_48UP;
    static const int wordwidth = XF_96UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_12UC4, XF_NPPC4> {
    typedef ap_uint<192> name;
    typedef ap_uint<48> uname;
    typedef ap_uint<12> cname;
    static const int bitdepth = 12;
    static const int pixelwidth = 48;
    static const int pixeldepth = XF_48UP;
    static const int wordwidth = XF_192UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_12UC4, XF_NPPC8> {
    typedef ap_uint<384> name;
    typedef ap_uint<48> uname;
    typedef ap_uint<12> cname;
    static const int bitdepth = 12;
    static const int pixelwidth = 48;
    static const int pixeldepth = XF_48UP;
    static const int wordwidth = XF_384UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_16UC4, XF_NPPC1> {
    typedef ap_uint<64> name;
    typedef ap_uint<64> uname;
    typedef ap_uint<16> cname;
    typedef unsigned short int sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 16;
    static const int pixelwidth = 64;
    static const int pixeldepth = XF_64UP;
    static const int wordwidth = XF_64UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_16UC4, XF_NPPC2> {
    typedef ap_uint<128> name;
    typedef ap_uint<64> uname;
    typedef ap_uint<16> cname;
    typedef unsigned short int sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 16;
    static const int pixelwidth = 64;
    static const int pixeldepth = XF_64UP;
    static const int wordwidth = XF_128UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_16UC4, XF_NPPC4> {
    typedef ap_uint<256> name;
    typedef ap_uint<64> uname;
    typedef ap_uint<16> cname;
    typedef unsigned short int sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 16;
    static const int pixelwidth = 64;
    static const int pixeldepth = XF_64UP;
    static const int wordwidth = XF_256UW;
    static const int channel = 4;
};
template <>
struct DataType<XF_16UC4, XF_NPPC8> {
    typedef ap_uint<512> name;
    typedef ap_uint<64> uname;
    typedef ap_uint<16> cname;
    typedef unsigned short int sname;
    typedef unsigned long long int wname;
    static const int bitdepth = 16;
    static const int pixelwidth = 64;
    static const int pixeldepth = XF_64UP;
    static const int wordwidth = XF_512UW;
    static const int channel = 4;
};

#define TC(TYPE) TC##TYPE

#define XF_TNAME(flags, npc) typename DataType<flags, npc>::name

#define XF_DTUNAME(flags, npc) typename DataType<flags, npc>::uname

#define XF_CTUNAME(flags, npc) typename DataType<flags, npc>::cname

#define XF_PTSNAME(flags, npc) typename DataType<flags, npc>::sname

#define XF_WTNAME(flags, npc) typename DataType<flags, npc>::wname

#define XF_DTPIXELDEPTH(flags, npc) DataType<flags, npc>::bitdepth

#define XF_DEPTH(flags, npc) DataType<flags, npc>::pixeldepth

#define XF_WORDWIDTH(flags, npc) DataType<flags, npc>::wordwidth

#define XF_CHANNELS(flags, npc) DataType<flags, npc>::channel

#define XF_PIXELWIDTH(flags, npc) DataType<flags, npc>::pixelwidth

#define XF_PTNAME(flags) typename PixelType<flags>::name

#define XF_PIXELDEPTH(flags) PixelType<flags>::bitdepth

#define XF_PTUNAME(flags) typename PixelType<flags>::uname

#define XF_PTNAME2(flags) typename PixelType<flags>::name2

#define XF_SNAME(flags) typename StreamType<flags>::name
#define XF_WORDDEPTH(flags) StreamType<flags>::bitdepth

#define XF_NAME(flags, npc) ap_uint<(XF_DTPIXELDEPTH(flags, npc) / XF_CHANNELS(flags, npc)) * XF_NPIXPERCYCLE(npc)>

// find image width in terms of the number of words used to represent the data
//#define IM_WIDTH(W,S) ((W)>>(S))

// Xilinx headers
#include <ap_int.h>
#include <ap_fixed.h>
#include <stdint.h>
// Native types
// typedef unsigned long     uint64_t;
typedef unsigned int uint32_t;
typedef unsigned short uint16_t;
// typedef long int        int64_t;
typedef int int32_t;
typedef short int int16_t;
typedef unsigned char uchar_t;
typedef unsigned char uint8_t;
typedef signed char int8_t;

// Arbitrary Precision integer types
typedef ap_uint<1> ap_uint1_t;
typedef ap_uint<2> ap_uint2_t;
typedef ap_uint<4> ap_uint4_t;
typedef ap_uint<5> ap_uint5_t;
typedef ap_uint<8> ap_uint8_t;
typedef ap_uint<9> ap_uint9_t;
typedef ap_uint<16> ap_uint16_t;
typedef ap_uint<17> ap_uint17_t;
typedef ap_uint<18> ap_uint18_t;
typedef ap_uint<20> ap_uint20_t;
typedef ap_uint<22> ap_uint22_t;
typedef ap_uint<23> ap_uint23_t;
typedef ap_uint<24> ap_uint24_t;
typedef ap_uint<32> ap_uint32_t;
typedef ap_uint<33> ap_uint33_t;
typedef ap_uint<34> ap_uint34_t;
typedef ap_uint<35> ap_uint35_t;
typedef ap_uint<38> ap_uint38_t;
typedef ap_uint<45> ap_uint45_t;
typedef ap_uint<48> ap_uint48_t;
typedef ap_uint<51> ap_uint51_t;
typedef ap_uint<64> ap_uint64_t;
typedef ap_uint<66> ap_uint66_t;
typedef ap_uint<72> ap_uint72_t;
typedef ap_uint<97> ap_uint97_t;
typedef ap_uint<101> ap_uint101_t;
typedef ap_uint<128> ap_uint128_t;
typedef ap_uint<144> ap_uint144_t;
typedef ap_uint<176> ap_uint176_t;
typedef ap_uint<192> ap_uint192_t;
typedef ap_uint<256> ap_uint256_t;
typedef ap_uint<352> ap_uint352_t;
typedef ap_uint<384> ap_uint384_t;
typedef ap_uint<512> ap_uint512_t;
typedef ap_uint<576> ap_uint576_t;

typedef ap_int<8> ap_int8_t;
typedef ap_int<9> ap_int9_t;
typedef ap_int<12> ap_int12_t;
typedef ap_int<15> ap_int15_t;
typedef ap_int<16> ap_int16_t;
typedef ap_int<18> ap_int18_t;
typedef ap_int<19> ap_int19_t;
typedef ap_int<20> ap_int20_t;
typedef ap_int<24> ap_int24_t;
typedef ap_int<32> ap_int32_t;
typedef ap_int<35> ap_int35_t;
typedef ap_int<36> ap_int36_t;
typedef ap_int<42> ap_int42_t;
typedef ap_int<48> ap_int48_t;
typedef ap_int<64> ap_int64_t;
typedef ap_int<152> ap_int152_t;
typedef ap_int<304> ap_int304_t;
typedef ap_int<280> ap_int280_t;
typedef ap_int<560> ap_int560_t;

// Arbitrary Precision fixed-point types
typedef ap_ufixed<12, 12> uint12_q0;
typedef ap_ufixed<16, 16> uint16_q0; // 16-bit unsigned with 0 fractional bits
typedef ap_ufixed<32, 32> uint32_q0; // 32-bit unsigned with 0 fractional bits
typedef ap_ufixed<8, 8> uint8_q0;    // 8-bit unsigned with 0 fractional bits

#endif //_XF_TYPES_H_

// ---- file: optical_flow.h ----
/*===============================================================*/
/*                                                               */
/*                       optical_flow.h                          */
/*                                                               */
/*             Hardware function for optical flow                */
/*                                                               */
/*===============================================================*/

#ifndef __OPTICAL_FLOW_H__
#define __OPTICAL_FLOW_H__

#include "typedefs.h"

// convolution filters
const int GRAD_WEIGHTS[] =  {1,-8,0,8,-1};
const pixel_t GRAD_FILTER[] = {0.0755, 0.133, 0.1869, 0.2903, 0.1869, 0.133, 0.0755};
const pixel_t TENSOR_FILTER[] = {0.3243, 0.3513, 0.3243};

// top-level function 
#pragma SDS data access_pattern(frames:SEQUENTIAL, outputs:SEQUENTIAL)
void optical_flow(frames_t   frames[MAX_HEIGHT][MAX_WIDTH],
                  velocity_t outputs[MAX_HEIGHT][MAX_WIDTH]);

#endif

// ---- file: xf_structs.hpp ----
/*
 * Copyright 2022 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _XF_STRUCTS_H_
#define _XF_STRUCTS_H_

#ifndef __cplusplus
#error C++ is needed to use this file!
#endif

#ifndef __SYNTHESIS__
#include <iostream>
#endif
#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "xf_types.hpp"
#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <type_traits>

namespace xf {
namespace cv {

template <int T>
ap_uint<T> xf_satcast(int in_val) {
    if (in_val > ((1 << T) - 1)) {
        return ((1 << T) - 1);
    } else if (in_val < 0) {
        return 0;
    } else {
        return in_val;
    }
}

template <typename T>
T float2ap_uint(float val) {
    T* val_out = (T*)(&val);
    return *val_out;
}

template <typename T>
float ap_uint2float(T val) {
    float* val_out = (float*)(&val);
    return *val_out;
}

//----------------------------------------------------------------------------------------------------//
//  LOCAL STEREO BLOCK MATCHING UTILITY
//----------------------------------------------------------------------------------------------------//
template <int WSIZE, int NDISP, int NDISP_UNIT>
class xFSBMState {
   public:
    // pre-filtering (normalization of input images)
    int preFilterType; // =HLS_STEREO_BM_XSOBEL_TEST
    int preFilterSize; // averaging window size: ~5x5..21x21
    int preFilterCap;  // the output of pre-filtering is clipped by
                       // [-preFilterCap,preFilterCap]

    // correspondence using Sum of Absolute Difference (SAD)
    int SADWindowSize;       // ~5x5..21x21 // defined in macro
    int minDisparity;        // minimum disparity (can be negative)
    int numberOfDisparities; // maximum disparity - minimum disparity (> 0)

    // post-filtering
    int textureThreshold; // the disparity is only computed for pixels

    // with textured enough neighborhood
    int uniquenessRatio; // accept the computed disparity d* only if
    // SAD(d) >= SAD(d*)*(1 + uniquenessRatio/100.)
    // for any d != d*+/-1 within the search range.

    // int speckleWindowSize; // disparity variation window
    // int speckleRange;      // acceptable range of variation in window

    int ndisp_unit;
    int sweepFactor;
    int remainder;

    xFSBMState() {
        preFilterType = XF_STEREO_PREFILTER_SOBEL_TYPE; // Default Sobel filter
        preFilterSize = WSIZE;
        preFilterCap = 31;
        SADWindowSize = WSIZE;
        minDisparity = 0;
        numberOfDisparities = NDISP;
        textureThreshold = 10;
        uniquenessRatio = 15;
        sweepFactor = (NDISP / NDISP_UNIT) + ((NDISP % NDISP_UNIT) != 0);
        ndisp_unit = NDISP_UNIT;
        remainder = NDISP_UNIT * sweepFactor - NDISP;
    }
};
//----------------------------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------------------------//
// Template class of Point_
//----------------------------------------------------------------------------------------------------//
template <typename T>
class Point_ {
   public:
    Point_();
    Point_(T _x, T _y);
    Point_(const Point_& pt);
    ~Point_();

    T x, y;
};

/* Member functions of Point_ class */
template <typename T>
inline Point_<T>::Point_() {}
template <typename T>
inline Point_<T>::Point_(T _x, T _y) : x(_x), y(_y) {}
template <typename T>
inline Point_<T>::Point_(const Point_<T>& pt) : x(pt.x), y(pt.y) {}
template <typename T>
inline Point_<T>::~Point_() {}

typedef Point_<int> Point;
//----------------------------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------------------------//
// Template class of Size_
//----------------------------------------------------------------------------------------------------//
template <typename T>
class Size_ {
   public:
    Size_();
    Size_(T _width, T _height);
    Size_(const Size_<T>& sz);
    Size_(const Point_<T>& pt);
    T area();
    ~Size_();

    T width, height;
};

/* Member functions of Size_ class */
template <typename T>
inline Size_<T>::Size_() {}
template <typename T>
inline Size_<T>::Size_(T _width, T _height) : width(_width), height(_height) {}
template <typename T>
inline Size_<T>::Size_(const Size_<T>& sz) : width(sz.width), height(sz.height) {}
template <typename T>
inline Size_<T>::Size_(const Point_<T>& pt) : width(pt.x), height(pt.y) {}
template <typename T>
inline T Size_<T>::area() {
    return width * height;
}
template <typename T>
inline Size_<T>::~Size_() {}

typedef Size_<int> Size;
//----------------------------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------------------------//
// Template class of Rect_
//----------------------------------------------------------------------------------------------------//
template <typename T>
class Rect_ {
   public:
    Rect_();
    Rect_(T _x, T _y, T _width, T _height);
    Rect_(const Rect_& rect);
    Rect_(const Point_<T>& pt, const Size_<T>& sz);
    T area();
    Size_<T> size();
    Point_<T> tl(); // top-left point(inside);
    Point_<T> tr(); // top-right point(outside);
    Point_<T> bl(); // bottom-left point(outside);
    Point_<T> br(); // bottom-right point(outside);
    bool bContains(const Point_<T>& pt);
    ~Rect_();

    T x, y, width, height;
};

/* Member functions of Rect_ class */
template <typename T>
inline Rect_<T>::Rect_() {}
template <typename T>
inline Rect_<T>::Rect_(T _x, T _y, T _width, T _height) : x(_x), y(_y), width(_width), height(_height) {}
template <typename T>
inline Rect_<T>::Rect_(const Rect_<T>& rect) : x(rect.x), y(rect.y), width(rect.width), height(rect.height) {}
template <typename T>
inline Rect_<T>::Rect_(const Point_<T>& pt, const Size_<T>& sz)
    : x(pt.x), y(pt.y), width(sz.width), height(sz.height) {}
template <typename T>
inline T Rect_<T>::area() {
    return width * height;
}
template <typename T>
inline Size_<T> Rect_<T>::size() {
    return Size_<T>(width, height);
}
template <typename T>
inline Point_<T> Rect_<T>::tl() {
    return Point_<T>(x, y);
}
template <typename T>
inline Point_<T> Rect_<T>::tr() {
    return Point_<T>(x + width, y);
}
template <typename T>
inline Point_<T> Rect_<T>::bl() {
    return Point_<T>(x, y + height);
}
template <typename T>
inline Point_<T> Rect_<T>::br() {
    return Point_<T>(x + width, y + height);
}
template <typename T>
inline bool Rect_<T>::bContains(const Point_<T>& pt) {
    return (pt.x >= x && pt.x < x + width && pt.y >= y && pt.y < y + height);
}
template <typename T>
inline Rect_<T>::~Rect_() {}

typedef Rect_<int> Rect;
//----------------------------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------------------------//
// Template class of Scalar
//----------------------------------------------------------------------------------------------------//
template <int N, typename T>
class Scalar {
   public:
    Scalar() {
// clang-format off
#pragma HLS INLINE
#pragma HLS array_partition variable=val type=cyclic factor=8 dim=1
        // clang-format on
        assert(N > 0);
    }
    Scalar(T v0) {
// clang-format off
#pragma HLS INLINE
#pragma HLS array_partition variable=val type=cyclic factor=8 dim=1
        // clang-format on
        assert(N >= 1 && "Scalar must have enough channels for constructor.");
        val[0] = v0;
    }
    Scalar(T v0, T v1) {
// clang-format off
#pragma HLS array_partition variable=val type=cyclic factor=8 dim=1
#pragma HLS INLINE
        // clang-format on
        assert(N >= 2 && "Scalar must have enough channels for constructor.");
        val[0] = v0;
        val[1] = v1;
    }
    Scalar(T v0, T v1, T v2) {
// clang-format off
#pragma HLS array_partition variable=val type=cyclic factor=8 dim=1
#pragma HLS INLINE
        // clang-format on
        assert(N >= 3 && "Scalar must have enough channels for constructor.");
        val[0] = v0;
        val[1] = v1;
        val[2] = v2;
    }
    Scalar(T v0, T v1, T v2, T v3) {
// clang-format off
#pragma HLS array_partition variable=val type=cyclic factor=8 dim=1
#pragma HLS INLINE
        // clang-format on
        assert(N >= 4 && "Scalar must have enough channels for constructor.");
        val[0] = v0;
        val[1] = v1;
        val[2] = v2;
        val[3] = v3;
    }

    void operator=(T value);
    Scalar<N, T> operator+(T value);
    Scalar<N, T> operator+(Scalar<N, T> s);
    Scalar<N, T> operator-(T value);
    Scalar<N, T> operator-(Scalar<N, T> s);
    Scalar<N, T> operator*(T value);
    Scalar<N, T> operator*(Scalar<N, T> s);
    Scalar<N, T> operator/(T value);
    Scalar<N, T> operator/(Scalar<N, T> s);

    T val[N];
};

template <int N, typename T>
void Scalar<N, T>::operator=(T value) {
// clang-format off
#pragma HLS inline
    // clang-format on
    for (int k = 0; k < N; k++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        val[k] = value;
    }
}

template <int N, typename T>
Scalar<N, T> Scalar<N, T>::operator+(T value) {
// clang-format off
#pragma HLS inline
    // clang-format on
    Scalar<N, T> res;
    for (int k = 0; k < N; k++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        res.val[k] = val[k] + value;
    }
    return res;
}

template <int N, typename T>
Scalar<N, T> Scalar<N, T>::operator+(Scalar<N, T> s) {
// clang-format off
#pragma HLS inline
    // clang-format on
    Scalar<N, T> res;
    for (int k = 0; k < N; k++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        res.val[k] = val[k] + s.val[k];
    }
    return res;
}

template <int N, typename T>
Scalar<N, T> Scalar<N, T>::operator-(T value) {
// clang-format off
#pragma HLS inline
    // clang-format on
    Scalar<N, T> res;
    for (int k = 0; k < N; k++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        res.val[k] = val[k] - value;
    }
    return res;
}

template <int N, typename T>
Scalar<N, T> Scalar<N, T>::operator-(Scalar<N, T> s) {
// clang-format off
#pragma HLS inline
    // clang-format on
    Scalar<N, T> res;
    for (int k = 0; k < N; k++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        res.val[k] = val[k] - s.val[k];
    }
    return res;
}

template <int N, typename T>
Scalar<N, T> Scalar<N, T>::operator*(T value) {
// clang-format off
#pragma HLS inline
    // clang-format on
    Scalar<N, T> res;
    for (int k = 0; k < N; k++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        res.val[k] = val[k] * value;
    }
    return res;
}

template <int N, typename T>
Scalar<N, T> Scalar<N, T>::operator*(Scalar<N, T> s) {
// clang-format off
#pragma HLS inline
    // clang-format on
    Scalar<N, T> res;
    for (int k = 0; k < N; k++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        res.val[k] = val[k] * s.val[k];
    }
    return res;
}

template <int N, typename T>
Scalar<N, T> Scalar<N, T>::operator/(T value) {
// clang-format off
#pragma HLS inline
    // clang-format on
    Scalar<N, T> res;
    for (int k = 0; k < N; k++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        res.val[k] = val[k] / value;
    }
    return res;
}

template <int N, typename T>
Scalar<N, T> Scalar<N, T>::operator/(Scalar<N, T> s) {
// clang-format off
#pragma HLS inline
    // clang-format on
    Scalar<N, T> res;
    for (int k = 0; k < N; k++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        res.val[k] = val[k] / s.val[k];
    }
    return res;
}
//----------------------------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------------------------//
// Template class of Mat
//----------------------------------------------------------------------------------------------------//
#if defined(__SYNTHESIS__) && !defined(__SDA_MEM_MAP__)
static constexpr int _XFCVDEPTH_DEFAULT = 2;
#else
static constexpr int _XFCVDEPTH_DEFAULT = -1;
#endif

template <int T, int ROWS, int COLS, int NPC, int XFCVDEPTH = _XFCVDEPTH_DEFAULT>
class Mat {
   public:
    unsigned char allocatedFlag; // flag to mark memory allocation in this class
    int rows, cols, size;        // actual image size
    //	int cols_align_npc;						// cols
    // multiple
    // of
    // NPC

    typedef XF_TNAME(T, NPC) DATATYPE;
    using _DATATTYPE = typename std::conditional<
        (XFCVDEPTH < 0),
        DATATYPE*,                 // Case of Memory Mapped pointer
        typename std::conditional< // Case of Stream
            (XFCVDEPTH == 0),
            hls::stream<DATATYPE>,           // Case of default Dtream depth or user can override outside
            hls::stream<DATATYPE, XFCVDEPTH> // Case of Stream depth specified
            >::type>::type;
    _DATATTYPE data;

    Mat(); // default constructor
    Mat(Size _sz);
    Mat(int _rows, int _cols);
    Mat(int _size, int _rows, int _cols);
    Mat(int _rows, int _cols, void* _data);
    Mat(const Mat&); // copy constructor

    ~Mat();

    Mat& operator=(const Mat&); // Assignment operator
    //  XF_TNAME(T, XF_NPPC1) operator() (unsigned int r, unsigned int c);
    //  XF_CTUNAME(T, NPC) operator() (unsigned int r, unsigned int c, unsigned
    //  int ch);
    template <int D = XFCVDEPTH, typename std::enable_if<(D < 0)>::type* = nullptr>
    void alloc_data() {
#ifndef __SYNTHESIS__
        data = (DATATYPE*)malloc(size * sizeof(DATATYPE));

        if (data == NULL) {
            fprintf(stderr, "\nFailed to allocate memory\n");
        } else {
            allocatedFlag = 1;
        }
#endif
    }

    template <int D = XFCVDEPTH, typename std::enable_if<(D >= 0)>::type* = nullptr>
    void alloc_data() {
        // This is a stream
    }

    template <int D = XFCVDEPTH, typename std::enable_if<(D < 0)>::type* = nullptr>
    void free_data() {
        if (data != NULL) {
#ifndef __SYNTHESIS__
            free(data);
#endif
        }
    }

    template <int D = XFCVDEPTH, typename std::enable_if<(D >= 0)>::type* = nullptr>
    void free_data() {}

    template <int D = XFCVDEPTH, typename std::enable_if<(D < 0)>::type* = nullptr>
    void copyData(const Mat& src) {
        for (int i = 0; i < (rows * ((cols + NPC - 1) >> XF_BITSHIFT(NPC))); ++i) {
#pragma HLS loop_tripcount min=1 max=1024
            data[i] = src.data[i];
        }
    }

    template <int D = XFCVDEPTH, typename std::enable_if<(D >= 0)>::type* = nullptr>
    void copyData(const Mat& src) {
        // This is a stream
        assert(0);
    }

    template <int D = XFCVDEPTH, typename std::enable_if<(D < 0)>::type* = nullptr>
    void assignDataPtr(void* _data) {
        data = (DATATYPE*)_data;
    }

    template <int D = XFCVDEPTH, typename std::enable_if<(D >= 0)>::type* = nullptr>
    void assignDataPtr(void* _data) {
        // This is a stream
        assert(0);
    }

    template <int D = XFCVDEPTH, typename std::enable_if<(D < 0)>::type* = nullptr>
    XF_TNAME(T, NPC)
    read(int index) {
        return data[index];
    }

    template <int D = XFCVDEPTH, typename std::enable_if<(D >= 0)>::type* = nullptr>
    XF_TNAME(T, NPC)
    read(int index) {
        return data.read();
    }
    float read_float(int index);

    template <int D = XFCVDEPTH, typename std::enable_if<(D < 0)>::type* = nullptr>
    void write(int index, XF_TNAME(T, NPC) val) {
        data[index] = val;
    }

    template <int D = XFCVDEPTH, typename std::enable_if<(D >= 0)>::type* = nullptr>
    void write(int index, XF_TNAME(T, NPC) val) {
        data.write(val);
    }
    void write_float(int index, float val);

    template <int D = XFCVDEPTH, typename std::enable_if<(D >= 0)>::type* = nullptr>
    void init(int _rows, int _cols, void* _data) {
        init(_rows, _cols);
        copyTo(_data);
    }

    template <int D = XFCVDEPTH, typename std::enable_if<(D < 0)>::type* = nullptr>
    void init(int _rows, int _cols, void* _data) {
        init(_rows, _cols, false);
        assignDataPtr(_data);
    }

    void init(int _rows, int _cols, bool allocate = true);
    void copyTo(void* fromData);
    unsigned char* copyFrom();

    const int type() const;
    const int depth() const;
    const int channels() const;

    template <int DST_T>
    void convertTo(Mat<DST_T, ROWS, COLS, NPC, XFCVDEPTH>& dst, int otype, double alpha = 1, double beta = 0);
};

template <int T, int ROWS, int COLS, int NPC, int XFCVDEPTH>
const int Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::type() const {
// clang-format off
#pragma HLS inline
    // clang-format on
    return (T);
}

template <int T, int ROWS, int COLS, int NPC, int XFCVDEPTH>
const int Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::depth() const {
// clang-format off
#pragma HLS inline
    // clang-format on
    return XF_DTPIXELDEPTH(T, NPC);
}
template <int T, int ROWS, int COLS, int NPC, int XFCVDEPTH>
const int Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::channels() const {
// clang-format off
#pragma HLS inline
    // clang-format on
    return XF_CHANNELS(T, NPC);
}

template <int T, int ROWS, int COLS, int NPPC, int XFCVDEPTH>
inline void Mat<T, ROWS, COLS, NPPC, XFCVDEPTH>::init(int _rows, int _cols, bool allocate) {
// clang-format off
#pragma HLS inline
    // clang-format on

    assert((_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) &&
           "The number of rows and columns must be less than the template "
           "arguments.");

    rows = _rows;
    cols = _cols;
    allocatedFlag = 0;
    size = _rows * ((_cols + NPPC - 1) >> XF_BITSHIFT(NPPC));

    if (allocate) {
        alloc_data();
    }
}

/*Copy constructor definition*/
template <int T, int ROWS, int COLS, int NPC, int XFCVDEPTH>
inline Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::Mat(const Mat& src) {
    init(src.rows, src.cols);

#ifndef __SYNTHESIS__
    copyData(src);
#endif
}

/*Assignment operator definition*/
template <int T, int ROWS, int COLS, int NPC, int XFCVDEPTH>
inline Mat<T, ROWS, COLS, NPC, XFCVDEPTH>& Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::operator=(const Mat& src) {
    if (this == &src) {
        return *this; // For self-assignment cases
    }

    // Cleaning up old data memory if any
    free_data();
    allocatedFlag = 0;

    init(src.rows, src.cols);
    copyData(src);

    return *this;
}

template <int T, int ROWS, int COLS, int NPPC, int XFCVDEPTH>
inline Mat<T, ROWS, COLS, NPPC, XFCVDEPTH>::Mat() {
// clang-format off
#pragma HLS inline
    // clang-format on

    init(ROWS, COLS);
}

template <int T, int ROWS, int COLS, int NPPC, int XFCVDEPTH>
inline Mat<T, ROWS, COLS, NPPC, XFCVDEPTH>::Mat(int _rows, int _cols, void* _data) {
// clang-format off
#pragma HLS inline
    // clang-format on

    init(_rows, _cols, _data);
}

template <int T, int ROWS, int COLS, int NPPC, int XFCVDEPTH>
inline Mat<T, ROWS, COLS, NPPC, XFCVDEPTH>::Mat(int _rows, int _cols) {
// clang-format off
#pragma HLS inline
    // clang-format on

    init(_rows, _cols);
}

template <int T, int ROWS, int COLS, int NPPC, int XFCVDEPTH>
inline Mat<T, ROWS, COLS, NPPC, XFCVDEPTH>::Mat(Size _sz) {
// clang-format off
#pragma HLS inline
    // clang-format on

    init(_sz.height, _sz.width);
}

template <int T, int ROWS, int COLS, int NPPC, int XFCVDEPTH>
inline float Mat<T, ROWS, COLS, NPPC, XFCVDEPTH>::read_float(int index) {
    union int2float {
        unsigned I;
        float F;
    };
    int2float val;
    val.I = read(index).to_uint();
    return val.F;
}

template <int T, int ROWS, int COLS, int NPPC, int XFCVDEPTH>
inline void Mat<T, ROWS, COLS, NPPC, XFCVDEPTH>::write_float(int index, float float_val) {
    float val = float_val;
    ap_uint<32>* val_out = (ap_uint<32>*)(&val);
    write(index, *val_out);
}

template <int T, int ROWS, int COLS, int NPPC, int XFCVDEPTH>
inline void Mat<T, ROWS, COLS, NPPC, XFCVDEPTH>::copyTo(void* _input) {
// clang-format off
#pragma HLS inline
    // clang-format on

    XF_PTSNAME(T, NPPC)* input = (XF_PTSNAME(T, NPPC)*)_input;
    XF_CTUNAME(T, NPPC) in_val;

    int packcols = cols >> XF_BITSHIFT(NPPC);       // Total columns after considering parallelism
    int pixdepth = XF_PIXELWIDTH(T, NPPC);          // Total bits that make up the pixel
    int bitdepth = pixdepth / XF_CHANNELS(T, NPPC); // Total bits that make up each channel of the pixel
    int nppc = XF_NPIXPERCYCLE(NPPC);

    for (int r = 0; r < rows; r++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (int c = 0; c < packcols; c++) {
#pragma HLS loop_tripcount min=1 max=1024
            for (int p = 0; p < nppc; p++) {
#pragma HLS loop_tripcount min=1 max=1024
                DATATYPE out_val;
                for (int ch = 0; ch < XF_CHANNELS(T, NPPC); ch++) {
#pragma HLS loop_tripcount min=1 max=1024
                    if (T == XF_32FC1) {
                        in_val = float2ap_uint<ap_uint<32> >(
                            input[XF_CHANNELS(T, NPPC) * ((r * packcols + c) * nppc + p) + ch]);
                    } else {
                        in_val = input[XF_CHANNELS(T, NPPC) * ((r * packcols + c) * nppc + p) + ch];
                    }

                    out_val.range((p * pixdepth) + (ch + 1) * bitdepth - 1, (p * pixdepth) + ch * bitdepth) = in_val;
                }
                write((r * packcols + c), out_val);
            }
        }
    }
}

template <int T, int ROWS, int COLS, int NPPC, int XFCVDEPTH>
inline unsigned char* Mat<T, ROWS, COLS, NPPC, XFCVDEPTH>::copyFrom() {
// clang-format off
#pragma HLS inline
    // clang-format on

    //	int packcols  = cols >> XF_BITSHIFT(NPPC); //Total columns after
    // considering parallelism
    int pixdepth = XF_PIXELWIDTH(T, NPPC);          // Total bits that make up the pixel
    int bitdepth = pixdepth / XF_CHANNELS(T, NPPC); // Total bits that make up each channel of the pixel
    int nppc = XF_NPIXPERCYCLE(NPPC);

    int cv_nbytes = bitdepth / 8;

    unsigned char* value =
        (unsigned char*)malloc(rows * cols * (XF_CHANNELS(T, NPPC)) * (sizeof(unsigned char)) * cv_nbytes);

    int xf_npc_idx = 0;
    int diff_ptr = 0;
    int xf_ptr = 0;
    int cv_ptr = 0;

    for (int r = 0; r < rows; r++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (int c = 0; c < cols; c++) {
#pragma HLS loop_tripcount min=1 max=1024
            DATATYPE in_val = read(xf_ptr);
            for (int ch = 0; ch < XF_CHANNELS(T, NPPC); ch++) {
#pragma HLS loop_tripcount min=1 max=1024
                for (int b = 0; b < cv_nbytes; ++b) {
#pragma HLS loop_tripcount min=1 max=1024
                    value[cv_ptr++] = in_val.range((xf_npc_idx * pixdepth) + (ch * bitdepth) + (b + 1) * 8 - 1,
                                                   (xf_npc_idx * pixdepth) + (ch * bitdepth) + b * 8);
                }
            }
            if (xf_npc_idx == nppc - 1) {
                xf_npc_idx = 0;
                xf_ptr++;
            } else {
                xf_npc_idx++;
            }
        }
    }

    return (unsigned char*)value;
}

/* Member functions of Mat class */
template <int T, int ROWS, int COLS, int NPPC, int XFCVDEPTH>
template <int DST_T>
inline void Mat<T, ROWS, COLS, NPPC, XFCVDEPTH>::convertTo(Mat<DST_T, ROWS, COLS, NPPC, XFCVDEPTH>& dst,
                                                           int otype,
                                                           double alpha,
                                                           double beta) {
    assert((XF_CHANNELS(T, NPPC) == 1) && "Multi-channel images not supported");

    XF_TNAME(T, NPPC) tmp_in_pix;
    XF_TNAME(DST_T, NPPC) tmp_out_pix;

    XF_CTUNAME(T, NPPC) in_pix;
    XF_CTUNAME(DST_T, NPPC) out_pix;

    int min, max;

    if (DST_T == XF_8UC1) {
        min = 0;
        max = 255;
    } else if (DST_T == XF_16UC1) {
        min = 0;
        max = 65535;
    } else if (DST_T == XF_16SC1) {
        min = -32768;
        max = 32767;
    } else if (DST_T == XF_32SC1) {
        min = -2147483648;
        max = 2147483647;
    } else {
        assert(1 &&
               "Output image type not supoorted. XF_8UC1, XF_16UC1, XF_16SC1 "
               "and XF_32SC1 are valid");
    }

#define __SATCAST(X) (X >= max ? max : (X < 0 ? 0 : lround(X)))

    for (int i = 0; i < rows; i++) {
#pragma HLS loop_tripcount min=1 max=1024
        for (int j = 0; j<cols>> (XF_BITSHIFT(NPPC)); j++) {
#pragma HLS loop_tripcount min=1 max=1024
            int IN_STEP = XF_PIXELDEPTH(XF_DEPTH(T, NPPC));
            int OUT_STEP = XF_PIXELDEPTH(XF_DEPTH(DST_T, NPPC));
            int in_shift = 0;
            int out_shift = 0;
            DATATYPE in_val = read((i * cols >> (XF_BITSHIFT(NPPC))) + j);
            DATATYPE out_val;

            for (int k = 0; k < (1 << (XF_BITSHIFT(NPPC))); k++) {
#pragma HLS loop_tripcount min=1 max=1024
                in_pix = in_val.range(in_shift + IN_STEP - 1, in_shift);

                if (otype == XF_CONVERT_16U_TO_8U || otype == XF_CONVERT_16S_TO_8U || otype == XF_CONVERT_32S_TO_8U ||
                    otype == XF_CONVERT_32S_TO_16U || otype == XF_CONVERT_32S_TO_16S) {
                    float tmp = (float)(in_pix * alpha + beta);
                    in_pix = __SATCAST(tmp);

                    if (in_pix < min) in_pix = min;
                    if (in_pix > max) in_pix = max;

                    tmp_out_pix.range(out_shift + OUT_STEP - 1, out_shift) = in_pix;
                } else {
                    if ((((XF_PTNAME(XF_DEPTH(DST_T, NPPC)))in_pix * alpha) + beta) > max) {
                        tmp_out_pix.range(out_shift + OUT_STEP - 1, out_shift) = max;

                    } else if ((((XF_PTNAME(XF_DEPTH(DST_T, NPPC)))in_pix * alpha) + beta) < min) {
                        tmp_out_pix.range(out_shift + OUT_STEP - 1, out_shift) = min;

                    } else {
                        tmp_out_pix.range(out_shift + OUT_STEP - 1, out_shift) = __SATCAST(in_pix * alpha + beta);
                    }
                }

                out_pix = tmp_out_pix.range(out_shift + OUT_STEP - 1, out_shift);

                out_val.range(out_shift + OUT_STEP - 1, out_shift) = out_pix;

                in_shift = in_shift + IN_STEP;
                out_shift = out_shift + OUT_STEP;
            }
            dst.write(((i * cols >> (XF_BITSHIFT(NPPC))) + j), out_val);
        }
    }
}

template <int SRC_T, int ROWS, int COLS, int NPC, int XFCVDEPTH>
Mat<SRC_T, ROWS, COLS, NPC, XFCVDEPTH>::~Mat() {
#ifndef __SYNTHESIS__
    if (allocatedFlag == 1) {
        free_data();
    }
#endif
}
//----------------------------------------------------------------------------------------------------//

// Template metaprogramming implementation of floor log2 [[
template <int N>
struct log2 {
   public:
    static constexpr int fvalue = 1 + (log2<N / 2>::fvalue);                   // floor value
    static constexpr int cvalue = (N > (1 << fvalue)) ? (fvalue + 1) : fvalue; // ceiling value
};

template <>
struct log2<1> {
   public:
    static constexpr int fvalue = 0;
    static constexpr int cvalue = 0;
};

struct bgr2y8_params {
    int black_Vmax = 20;
    int black_Smax = 70;
    int brown_Hmax = 15;
    int brown_Vmax = 40;
    int Smin = 60;
    int Smax = 90;
    int darkgreen_Vmax = 35;
    int darkgreen_Hmin = 30;
    int darkgreen_Hmax = 45;
    int green_Hmax = 90;
    int green_Hmin = 50;
    int green_Vmax = 45;
};
//]]

/*
 * The purpose of this class is to provide an interator over ap_uint<PTR_WIDTH>
 * object array such
 * that at each iter step one can get data bits corresponding to data to be
 * processed per cycle.
 *
 */
template <int PTR_WIDTH, int T, int ROWS, int COLS, int NPC, int XFCVDEPTH = _XFCVDEPTH_DEFAULT>
class MMIter : public Mat<T, ROWS, COLS, NPC, XFCVDEPTH> {
   public:
    using Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::data;
    using Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::rows;
    using Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::cols;

    static constexpr int XF_BITS_PER_CLOCK = XF_PIXELWIDTH(T, NPC) * XF_NPIXPERCYCLE(NPC);
    static constexpr int COLS_BOUND_PER_NPC = ((COLS + (XF_NPIXPERCYCLE(NPC) - 1)) >> XF_BITSHIFT(NPC));
    static constexpr int LOOPBOUND = ROWS * COLS_BOUND_PER_NPC;
    static constexpr int ADDRBOUND = ((ROWS * COLS * XF_PIXELWIDTH(T, NPC)) + (PTR_WIDTH - 1)) >>
                                     (log2<PTR_WIDTH>::cvalue);
    static constexpr int LAST_BLK_PXL_WIDTH =
        ((COLS >> XF_BITSHIFT(NPC)) == COLS_BOUND_PER_NPC)
            ? XF_BITS_PER_CLOCK
            : XF_PIXELWIDTH(T, NPC) * (COLS - ((COLS >> XF_BITSHIFT(NPC)) << XF_BITSHIFT(NPC)));
    static constexpr int COLS_ADDRBOUND = ((COLS * XF_PIXELWIDTH(T, NPC)) + (PTR_WIDTH - 1)) >>
                                          (log2<PTR_WIDTH>::cvalue);
    static int cols_npc_aligned(int cols) { return ((cols + (XF_NPIXPERCYCLE(NPC) - 1)) >> XF_BITSHIFT(NPC)); }

    static int last_blk_pxl_width(int cols, int cols_bound_per_npc) {
        return ((cols >> XF_BITSHIFT(NPC)) == cols_bound_per_npc)
                   ? XF_BITS_PER_CLOCK
                   : XF_PIXELWIDTH(T, NPC) * (cols - ((cols >> XF_BITSHIFT(NPC)) << XF_BITSHIFT(NPC)));
    }

    static int loopbound(int rows, int cols) { return rows * cols_npc_aligned(cols); }

    int loopbound() { return rows * cols_npc_aligned(cols); }

    static int addrbound(int rows, int cols) {
        ap_uint<16> rows_int16 = rows;
        ap_uint<16> cols_int16 = cols;

        ap_uint<32> mul_rows_cols;

// clang-format off
#pragma HLS BIND_OP variable=mul_rows_cols op=mul impl=dsp latency=2
        // clang-format on

        mul_rows_cols = rows_int16 * cols_int16;

        return ((mul_rows_cols * XF_PIXELWIDTH(T, NPC)) + (PTR_WIDTH - 1)) >> (log2<PTR_WIDTH>::cvalue);
    }
    MMIter() : Mat<T, ROWS, COLS, NPC, XFCVDEPTH>() {}

    MMIter(int _rows, int _cols) : Mat<T, ROWS, COLS, NPC, XFCVDEPTH>(_rows, _cols) {}
};

#define _MMITER MMIter<PTR_WIDTH, T, ROWS, COLS, NPC, XFCVDEPTH>
template <int PTR_WIDTH, int T, int ROWS, int COLS, int NPC, int XFCVDEPTH = _XFCVDEPTH_DEFAULT>
class MMIterIn : public _MMITER {
   public:
    using Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::data;
    using Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::rows;
    using Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::cols;

    using _MMITER::XF_BITS_PER_CLOCK;
    using _MMITER::ADDRBOUND;
    using _MMITER::COLS_BOUND_PER_NPC;
    using _MMITER::LAST_BLK_PXL_WIDTH;
    using _MMITER::LOOPBOUND;
    using _MMITER::COLS_ADDRBOUND;

   private:
    static void Axi2AxiStream(ap_uint<PTR_WIDTH>* din,
                              hls::stream<ap_uint<PTR_WIDTH> >& dout,
                              ap_uint<log2<ADDRBOUND>::cvalue + 1>& addrbound) {
        ap_uint<log2<ADDRBOUND>::cvalue + 1> i;
    MMIterInLoop1:
        for (i = 0; i < addrbound; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS LOOP_TRIPCOUNT min=1 max=ADDRBOUND
#pragma HLS pipeline
            // clang-format on
            dout.write(din[i]);
        }
    }

    static void Axi2AxiStream(hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& din,
                              hls::stream<ap_uint<PTR_WIDTH> >& dout,
                              ap_uint<log2<ADDRBOUND>::cvalue + 1>& addrbound) {
        ap_uint<log2<ADDRBOUND>::cvalue + 1> i;
    MMIterInLoop3:
        for (i = 0; i < addrbound; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS LOOP_TRIPCOUNT min=1 max=ADDRBOUND
#pragma HLS pipeline
            // clang-format on
            ap_axiu<PTR_WIDTH, 0, 0, 0> v = din.read();
            dout.write(v.data);
        }
    }

    static void Axi2AxiStream(ap_uint<PTR_WIDTH>* din,
                              hls::stream<ap_uint<PTR_WIDTH> >& dout,
                              int rows_burst,
                              int rows,
                              int cols,
                              int stride = -1) {
        ap_uint<log2<ADDRBOUND>::cvalue + 1> cols_addrbound = _MMITER::addrbound(rows_burst, cols);
        ap_uint<log2<ADDRBOUND>::cvalue + 1> stride_addrbound = _MMITER::addrbound(rows_burst, stride);
        ap_uint<log2<ADDRBOUND>::cvalue + 1> addrbound = (stride == -1) ? cols_addrbound : stride_addrbound;
        ap_uint<log2<ADDRBOUND>::cvalue + 1> c;
    MMIterInLoop1:
        for (int r = 0; r < rows; r++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
	#pragma HLS LOOP_TRIPCOUNT min=1 max=ROWS
            // clang-format on
            for (c = 0; c < cols_addrbound; c++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
	#pragma HLS LOOP_TRIPCOUNT min=1 max=COLS_ADDRBOUND
#pragma HLS pipeline
                // clang-format on
                dout.write(din[c + r * addrbound]);
            }
        }
    }
    template <int DEPTH>
    static void AxiStream2MatStream(hls::stream<ap_uint<PTR_WIDTH> >& din,
                                    hls::stream<ap_uint<XF_BITS_PER_CLOCK>, DEPTH>& dout,
                                    int rows,
                                    int cols_bound_per_npc,
                                    int last_blk_width,
                                    int stride = -1) {
        int stride_bound_per_npc, strideBased_last_blk_width;

        // if (stride == -1) {
        stride_bound_per_npc = cols_bound_per_npc;
        strideBased_last_blk_width = last_blk_width;
        //} else {
        //  stride_bound_per_npc = _MMITER::cols_npc_aligned(stride);
        //  strideBased_last_blk_width = _MMITER::last_blk_pxl_width(stride, stride_bound_per_npc);
        //}
        int rd_cnt = 0;

        int rem = 0;
        ap_uint<PTR_WIDTH> val = 0;
        int i;
        int j = 0;
        int bound = rows * stride_bound_per_npc;
    MMIterInLoopRow:
        for (i = 0; i < bound; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS LOOP_TRIPCOUNT min=1 max=LOOPBOUND
#pragma HLS pipeline
            // clang-format on
            bool bLast = (j == (stride_bound_per_npc - 1));
            int xf_bits_per_clock = bLast ? strideBased_last_blk_width : XF_BITS_PER_CLOCK;
            int ptr_width_minus = bLast ? (PTR_WIDTH - strideBased_last_blk_width) : (PTR_WIDTH - XF_BITS_PER_CLOCK);
            int ptr_width_plus = bLast ? (PTR_WIDTH + strideBased_last_blk_width) : (PTR_WIDTH + XF_BITS_PER_CLOCK);

            ap_uint<XF_BITS_PER_CLOCK> localbuffer = 0;
            if (rem < xf_bits_per_clock) {
                if (rem != 0) {
                    localbuffer.range(rem - 1, 0) = val.range(PTR_WIDTH - 1, (PTR_WIDTH - rem));
                }
                val = din.read();
                rd_cnt++;
                localbuffer.range((xf_bits_per_clock - 1), rem) = val.range(((xf_bits_per_clock - 1) - rem), 0);
                rem = ptr_width_minus + rem;
            } else {
                localbuffer = val.range(((ptr_width_plus - 1) - rem), (PTR_WIDTH - rem));
                rem = rem - xf_bits_per_clock;
            }
            bool bLast_width = (j == (cols_bound_per_npc - 1));
            ap_uint<XF_BITS_PER_CLOCK> localbuffer2 = 0;
            if (bLast_width == 0)
                localbuffer2 = localbuffer;
            else
                localbuffer2 = localbuffer.range(last_blk_width - 1, 0);

            if (j < cols_bound_per_npc) dout.write(localbuffer2);

            j = (bLast) ? 0 : (j + 1);
        }
    }

    template <int DEPTH>
    static void MatStream2Mat(hls::stream<ap_uint<XF_BITS_PER_CLOCK>, DEPTH>& din,
                              ap_uint<XF_BITS_PER_CLOCK>* dout,
                              int rows,
                              int cols_bound_per_npc) {
        int i;
        int bound = rows * cols_bound_per_npc;
    MMIterInLoop2:
        for (i = 0; i < bound; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS LOOP_TRIPCOUNT min=1 max=LOOPBOUND
#pragma HLS pipeline
            // clang-format on
            dout[i] = din.read();
        }
    }

    static void AxiStream2Mat(hls::stream<ap_uint<PTR_WIDTH> >& din,
                              hls::stream<ap_uint<XF_BITS_PER_CLOCK>, XFCVDEPTH>& dout,
                              int rows = ROWS,
                              int cols = COLS,
                              int stride = -1) {
// clang-format off
#pragma HLS DATAFLOW
        // clang-format on
        int cols_bound_per_npc = _MMITER::cols_npc_aligned(cols);
        int last_blk_width = _MMITER::last_blk_pxl_width(cols, cols_bound_per_npc);
        AxiStream2MatStream(din, dout, rows, cols_bound_per_npc, last_blk_width, stride);
    }

    static void AxiStream2Mat(hls::stream<ap_uint<PTR_WIDTH> >& din,
                              ap_uint<XF_BITS_PER_CLOCK>* dout,
                              int rows = ROWS,
                              int cols = COLS,
                              int stride = -1) {
// clang-format off
#pragma HLS DATAFLOW
        // clang-format on
        hls::stream<ap_uint<XF_BITS_PER_CLOCK> > ldata;
        int cols_bound_per_npc = _MMITER::cols_npc_aligned(cols);
        int last_blk_width = _MMITER::last_blk_pxl_width(cols, cols_bound_per_npc);
        AxiStream2MatStream(din, ldata, rows, cols_bound_per_npc, last_blk_width, stride);
        MatStream2Mat(ldata, dout, rows, cols_bound_per_npc);
    }

    static void Axi2Mat(ap_uint<PTR_WIDTH>* din,
                        hls::stream<ap_uint<XF_BITS_PER_CLOCK>, XFCVDEPTH>& dout,
                        int rows = ROWS,
                        int cols = COLS,
                        int stride = -1) {
// clang-format off
#pragma HLS DATAFLOW
        // clang-format on
        hls::stream<ap_uint<PTR_WIDTH> > ldata;

        int rows_burst, rows_stride;

        if (stride == -1) {
            rows_burst = rows;
            rows_stride = 1;
        } else {
            rows_burst = 1;
            rows_stride = rows;
        }

        Axi2AxiStream(din, ldata, rows_burst, rows_stride, cols, stride);
        AxiStream2Mat(ldata, dout, rows, cols, stride);
    }

    static void Axi2Mat(hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& din,
                        hls::stream<ap_uint<XF_BITS_PER_CLOCK>, XFCVDEPTH>& dout,
                        int rows = ROWS,
                        int cols = COLS) {
// clang-format off
#pragma HLS DATAFLOW
        // clang-format on
        hls::stream<ap_uint<PTR_WIDTH> > ldata;

        ap_uint<log2<ADDRBOUND>::cvalue + 1> axibound = _MMITER::addrbound(rows, cols);
        Axi2AxiStream(din, ldata, axibound);
        AxiStream2Mat(ldata, dout, rows, cols);
    }

    static void Axi2Mat(
        ap_uint<PTR_WIDTH>* din, ap_uint<XF_BITS_PER_CLOCK>* dout, int rows = ROWS, int cols = COLS, int stride = -1) {
// clang-format off
#pragma HLS DATAFLOW
        // clang-format on
        hls::stream<ap_uint<PTR_WIDTH> > ldata;

        int rows_burst, rows_stride;

        if (stride == -1) {
            rows_burst = rows;
            rows_stride = 1;
        } else {
            rows_burst = 1;
            rows_stride = rows;
        }

        Axi2AxiStream(din, ldata, rows_burst, rows_stride, cols, stride);
        AxiStream2Mat(ldata, dout, rows, cols, stride);
    }

    static void Axi2Mat(hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& din,
                        ap_uint<XF_BITS_PER_CLOCK>* dout,
                        int rows = ROWS,
                        int cols = COLS) {
// clang-format off
#pragma HLS DATAFLOW
        // clang-format on
        hls::stream<ap_uint<PTR_WIDTH> > ldata;
        ap_uint<log2<ADDRBOUND>::cvalue + 1> axibound = _MMITER::addrbound(rows, cols);
        Axi2AxiStream(din, ldata, axibound);
        AxiStream2Mat(ldata, dout, rows, cols);
    }

   public:
    MMIterIn(ap_uint<PTR_WIDTH>* d) : _MMITER() { Axi2Mat(d, data); }

    MMIterIn(ap_uint<PTR_WIDTH>* d, int _rows, int _cols) : _MMITER(_rows, _cols) { Axi2Mat(d, data, rows, cols); }

    MMIterIn(hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& d) : _MMITER() { Axi2Mat(d, data); }

    MMIterIn(hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& d, int _rows, int _cols) : _MMITER(_rows, _cols) {
        Axi2Mat(d, data, rows, cols);
    }

    MMIterIn(hls::stream<ap_uint<PTR_WIDTH> >& d) : _MMITER() { AxiStream2Mat(d, data); }

    MMIterIn(hls::stream<ap_uint<PTR_WIDTH> >& d, int _rows, int _cols) : _MMITER(_rows, _cols) {
        AxiStream2Mat(d, data, rows, cols);
    }

    inline static ap_uint<XF_BITS_PER_CLOCK> read(hls::stream<ap_uint<XF_BITS_PER_CLOCK> >& din, int index) {
        return din.read();
    }

    inline static ap_uint<XF_BITS_PER_CLOCK> read(ap_uint<XF_BITS_PER_CLOCK>* din, int index) { return din[index]; }

    ap_uint<XF_BITS_PER_CLOCK> read(int index) { return read(data, index); }

    static void Array2xfMat(ap_uint<PTR_WIDTH>* srcPtr,
                            xf::cv::Mat<T, ROWS, COLS, NPC, XFCVDEPTH>& dstMat,
                            int stride = -1) {
        Axi2Mat(srcPtr, dstMat.data, dstMat.rows, dstMat.cols, stride);
    }

    static void Array2xfMat(
        ap_uint<PTR_WIDTH>* srcPtr, ap_uint<XF_BITS_PER_CLOCK>* dstPtr, int rows, int cols, int stride = -1) {
        Axi2Mat(srcPtr, dstPtr, rows, cols, stride);
    }

    static void axiStrm2xfMat(hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& srcPtr,
                              xf::cv::Mat<T, ROWS, COLS, NPC, XFCVDEPTH>& dstMat) {
        Axi2Mat(srcPtr, dstMat.data, dstMat.rows, dstMat.cols);
    }
};

template <int PTR_WIDTH, int T, int ROWS, int COLS, int NPC, int FILLZERO = 1, int XFCVDEPTH = _XFCVDEPTH_DEFAULT>
class MMIterOut : public _MMITER {
   public:
    using Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::data;
    using Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::rows;
    using Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::cols;

    using _MMITER::XF_BITS_PER_CLOCK;
    using _MMITER::ADDRBOUND;
    using _MMITER::COLS_BOUND_PER_NPC;
    using _MMITER::LAST_BLK_PXL_WIDTH;
    using _MMITER::LOOPBOUND;

   private:
    template <int DEPTH>
    static void Mat2MatStream(ap_uint<XF_BITS_PER_CLOCK>* din,
                              hls::stream<ap_uint<XF_BITS_PER_CLOCK>, DEPTH>& dout,
                              int rows,
                              int cols_bound_per_npc) {
        int i;
        int bound = rows * cols_bound_per_npc;
    MMIterOutLoop1:
        for (i = 0; i < bound; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS LOOP_TRIPCOUNT min=1 max=LOOPBOUND
#pragma HLS pipeline
            // clang-format on
            dout.write(din[i]);
        }
    }

    template <int DEPTH>
    static void MatStream2AxiStream(hls::stream<ap_uint<XF_BITS_PER_CLOCK>, DEPTH>& din,
                                    hls::stream<ap_uint<PTR_WIDTH> >& dout,
                                    int rows,
                                    int cols_bound_per_npc,
                                    int last_blk_width,
                                    int stride = -1) {
        ap_uint<16> strideBased_cols_bound_per_npc;
        if (stride == -1 || FILLZERO == 0) {
            strideBased_cols_bound_per_npc = cols_bound_per_npc;
        } else {
            strideBased_cols_bound_per_npc = _MMITER::cols_npc_aligned(stride);
        }

        ap_uint<log2<PTR_WIDTH>::cvalue + 1> filled = 0; // valid bits remaining in current buffer
        ap_uint<PTR_WIDTH> localbuffer = 0;
        ap_uint<16> i;
        ap_uint<16> rows_int16 = rows;
        ap_uint<16> j;

    MMIterOutRow:
        for (i = 0; i < rows_int16; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS LOOP_TRIPCOUNT min=1 max=ROWS
        // clang-format on
        MMIterOutCol:
            for (j = 0; j < strideBased_cols_bound_per_npc; j++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS LOOP_TRIPCOUNT min=1 max=COLS_BOUND_PER_NPC
#pragma HLS pipeline
                // clang-format on

                bool bLast = (j == (cols_bound_per_npc - 1));
                int xf_bits_per_clock = bLast ? last_blk_width : XF_BITS_PER_CLOCK;
                ap_uint<PTR_WIDTH> val;
                if (j < cols_bound_per_npc || FILLZERO == 0)
                    val = din.read();
                else
                    val = 0;

                ap_uint<PTR_WIDTH> tempval = (val << filled);
                localbuffer = (localbuffer | tempval);
                ap_uint<log2<PTR_WIDTH>::cvalue + 1> filled_next;

                if (filled < (PTR_WIDTH - xf_bits_per_clock)) {
                    filled_next = filled + xf_bits_per_clock;
                } else if (j == cols_bound_per_npc - 1 && FILLZERO == 0) {
                    dout.write(localbuffer);
                    localbuffer = 0;
                    filled_next = 0;
                } else {
                    dout.write(localbuffer);
                    localbuffer = (val >> (PTR_WIDTH - filled));
                    filled_next = filled + (xf_bits_per_clock - PTR_WIDTH);
                }

                filled = filled_next;
            }
        }

        if (filled != 0) {
            dout.write(localbuffer);
        }
    }

    static void Mat2AxiStream(hls::stream<ap_uint<XF_BITS_PER_CLOCK>, XFCVDEPTH>& din,
                              hls::stream<ap_uint<PTR_WIDTH> >& dout,
                              int rows = ROWS,
                              int cols = COLS,
                              int stride = -1) {
// clang-format off
#pragma HLS DATAFLOW
        // clang-format on
        int cols_bound_per_npc = _MMITER::cols_npc_aligned(cols);
        int last_blk_width = _MMITER::last_blk_pxl_width(cols, cols_bound_per_npc);
        MatStream2AxiStream(din, dout, rows, cols_bound_per_npc, last_blk_width, stride);
    }

    static void Mat2AxiStream(ap_uint<XF_BITS_PER_CLOCK>* din,
                              hls::stream<ap_uint<PTR_WIDTH> >& dout,
                              int rows = ROWS,
                              int cols = COLS,
                              int stride = -1) {
// clang-format off
#pragma HLS DATAFLOW
        // clang-format on
        hls::stream<ap_uint<XF_BITS_PER_CLOCK> > ldata;
        int cols_bound_per_npc = _MMITER::cols_npc_aligned(cols);
        int last_blk_width = _MMITER::last_blk_pxl_width(cols, cols_bound_per_npc);
        Mat2MatStream(din, ldata, rows, cols_bound_per_npc);
        MatStream2AxiStream(ldata, dout, rows, cols_bound_per_npc, last_blk_width, stride);
    }

    static void AxiStream2Axi(hls::stream<ap_uint<PTR_WIDTH> >& din,
                              ap_uint<PTR_WIDTH>* dout,
                              ap_uint<log2<ADDRBOUND>::cvalue + 1>& addrbound) {
        ap_uint<log2<ADDRBOUND>::cvalue + 1> i;

    MMIterOutLoop2:
        for (i = 0; i < addrbound; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS LOOP_TRIPCOUNT min=1 max=ADDRBOUND
#pragma HLS pipeline
            // clang-format on
            dout[i] = din.read();
        }
    }

    static void AxiStream2Axi(hls::stream<ap_uint<PTR_WIDTH> >& din,
                              hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& dout,
                              ap_uint<log2<ADDRBOUND>::cvalue + 1>& addrbound) {
        ap_uint<log2<ADDRBOUND>::cvalue + 1> i;

    MMIterOutLoop3:
        for (i = 0; i < addrbound; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS LOOP_TRIPCOUNT min=1 max=ADDRBOUND
#pragma HLS pipeline
            // clang-format on
            ap_axiu<PTR_WIDTH, 0, 0, 0> v;
            v.data = din.read();
            dout.write(v);
        }
    }

    static void Mat2Axi(hls::stream<ap_uint<XF_BITS_PER_CLOCK>, XFCVDEPTH>& din,
                        ap_uint<PTR_WIDTH>* dout,
                        int rows = ROWS,
                        int cols = COLS,
                        int stride = -1) {
// clang-format off
#pragma HLS DATAFLOW
        // clang-format on

        int cols_tmp;
        if (stride == -1)
            cols_tmp = cols;
        else
            cols_tmp = stride;

        hls::stream<ap_uint<PTR_WIDTH> > ldata;
        ap_uint<log2<ADDRBOUND>::cvalue + 1> axibound = _MMITER::addrbound(rows, cols_tmp);

        Mat2AxiStream(din, ldata, rows, cols, stride);
        if (FILLZERO == 1)
            AxiStream2Axi(ldata, dout, axibound);
        else {
            ap_uint<log2<ADDRBOUND>::cvalue + 1> axibound_1row = _MMITER::addrbound(1, cols);
            ap_uint<log2<ADDRBOUND>::cvalue + 1> offset_1row = _MMITER::addrbound(1, stride);
            for (int rowIdx = 0, offset = 0; rowIdx < rows; rowIdx++, offset += offset_1row) {
#pragma HLS loop_tripcount min=1 max=1024
                AxiStream2Axi(ldata, dout + offset, axibound_1row);
            }
        }
    }

    static void Mat2Axi(
        ap_uint<XF_BITS_PER_CLOCK>* din, ap_uint<PTR_WIDTH>* dout, int rows = ROWS, int cols = COLS, int stride = -1) {
// clang-format off
#pragma HLS DATAFLOW
        // clang-format on

        int cols_tmp;
        if (stride == -1)
            cols_tmp = cols;
        else
            cols_tmp = stride;

        hls::stream<ap_uint<PTR_WIDTH> > ldata;
        ap_uint<log2<ADDRBOUND>::cvalue + 1> axibound = _MMITER::addrbound(rows, cols_tmp);

        Mat2AxiStream(din, ldata, rows, cols, stride);
        if (FILLZERO == 1)
            AxiStream2Axi(ldata, dout, axibound);
        else {
            ap_uint<log2<ADDRBOUND>::cvalue + 1> axibound_1row = _MMITER::addrbound(1, cols);
            ap_uint<log2<ADDRBOUND>::cvalue + 1> offset_1row = _MMITER::addrbound(1, stride);

            for (int rowIdx = 0, offset = 0; rowIdx < rows; rowIdx++, offset += offset_1row) {
#pragma HLS loop_tripcount min=1 max=1024
                AxiStream2Axi(ldata, dout + offset, axibound_1row);
            }
        }
    }

    static void Mat2Axi(hls::stream<ap_uint<XF_BITS_PER_CLOCK>, XFCVDEPTH>& din,
                        hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& dout,
                        int rows = ROWS,
                        int cols = COLS,
                        int stride = -1) {
// clang-format off
#pragma HLS DATAFLOW
        // clang-format on

        int cols_tmp;
        if (stride == -1)
            cols_tmp = cols;
        else
            cols_tmp = stride;

        hls::stream<ap_uint<PTR_WIDTH> > ldata;
        ap_uint<log2<ADDRBOUND>::cvalue + 1> axibound = _MMITER::addrbound(rows, cols_tmp);

        Mat2AxiStream(din, ldata, rows, cols, stride);
        if (FILLZERO == 1)
            AxiStream2Axi(ldata, dout, axibound);
        else {
            ap_uint<log2<ADDRBOUND>::cvalue + 1> axibound_1row = _MMITER::addrbound(1, cols);
            ap_uint<log2<ADDRBOUND>::cvalue + 1> offset_1row = _MMITER::addrbound(1, stride);
            for (int rowIdx = 0, offset = 0; rowIdx < rows; rowIdx++, offset += offset_1row) {
#pragma HLS loop_tripcount min=1 max=1024
                AxiStream2Axi(ldata, dout + offset, axibound_1row);
            }
        }
    }

    static void Mat2Axi(ap_uint<XF_BITS_PER_CLOCK>* din,
                        hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& dout,
                        int rows = ROWS,
                        int cols = COLS,
                        int stride = -1) {
// clang-format off
#pragma HLS DATAFLOW
        // clang-format on

        int cols_tmp;
        if (stride == -1)
            cols_tmp = cols;
        else
            cols_tmp = stride;

        hls::stream<ap_uint<PTR_WIDTH> > ldata;
        ap_uint<log2<ADDRBOUND>::cvalue + 1> axibound = _MMITER::addrbound(rows, cols_tmp);
        Mat2AxiStream(din, ldata, rows, cols, stride);

        if (FILLZERO == 1)
            AxiStream2Axi(ldata, dout, axibound);
        else {
            ap_uint<log2<ADDRBOUND>::cvalue + 1> axibound_1row = _MMITER::addrbound(1, cols);
            ap_uint<log2<ADDRBOUND>::cvalue + 1> offset_1row = _MMITER::addrbound(1, stride);
            for (int rowIdx = 0, offset = 0; rowIdx < rows; rowIdx++, offset += offset_1row) {
#pragma HLS loop_tripcount min=1 max=1024
                AxiStream2Axi(ldata, dout + offset, axibound_1row);
            }
        }
    }

   public:
    MMIterOut() : _MMITER() {}

    MMIterOut(int _rows, int _cols) : _MMITER(_rows, _cols) {}

    inline static void write(hls::stream<ap_uint<XF_BITS_PER_CLOCK> >& dout,
                             ap_uint<XF_BITS_PER_CLOCK>& val,
                             int index) {
        dout.write(val);
    }

    inline static void write(ap_uint<XF_BITS_PER_CLOCK>* dout, ap_uint<XF_BITS_PER_CLOCK>& val, int index) {
        dout[index] = val;
    }

    void write(ap_uint<XF_BITS_PER_CLOCK>& val, int index) { write(data, val, index); }

    void transfer(ap_uint<PTR_WIDTH>* dout) { Mat2Axi(data, dout); }

    void transfer(ap_uint<PTR_WIDTH>* dout, int rows, int cols) { Mat2Axi(data, dout, rows, cols); }

    void transfer(hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& dout) { Mat2Axi(data, dout); }

    void transfer(hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& dout, int rows, int cols) {
        Mat2Axi(data, dout, rows, cols);
    }

    void transfer(hls::stream<ap_uint<PTR_WIDTH> >& dout) { Mat2AxiStream(data, dout); }

    void transfer(hls::stream<ap_uint<PTR_WIDTH> >& dout, int rows, int cols) { Mat2AxiStream(data, dout, rows, cols); }

    static void xfMat2Array(xf::cv::Mat<T, ROWS, COLS, NPC, XFCVDEPTH>& srcMat,
                            ap_uint<PTR_WIDTH>* dstPtr,
                            int stride = -1) {
        Mat2Axi(srcMat.data, dstPtr, srcMat.rows, srcMat.cols, stride);
    }

    static void xfMat2Array(
        ap_uint<XF_BITS_PER_CLOCK>* srcPtr, ap_uint<PTR_WIDTH>* dstPtr, int rows, int cols, int stride = -1) {
        Mat2Axi(srcPtr, dstPtr, rows, cols, stride);
    }

    static void xfMat2axiStrm(xf::cv::Mat<T, ROWS, COLS, NPC, XFCVDEPTH>& srcMat,
                              hls::stream<ap_uint<PTR_WIDTH> >& dstPtr) {
        Mat2Axi(srcMat.data, dstPtr, srcMat.rows, srcMat.cols);
    }
};

} // namespace cv
} // namespace xf

#endif // _XF_STRUCTS_H_

// ---- file: xf_utility.hpp ----
/*
 * Copyright (C) 2019-2022, Xilinx, Inc.
 * Copyright (C) 2022-2023, Advanced Micro Devices, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _XF_UTILITY_H_
#define _XF_UTILITY_H_

#include "ap_axi_sdata.h"
#include "xf_common.hpp"
#include "xf_video_mem.hpp"
#include <assert.h>
#include <string.h>

namespace xf {
namespace cv {

// ======================================================================================
// Function to read from DDR and copy to xf::cv::Mat
// ======================================================================================
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_OUT = _XFCVDEPTH_DEFAULT>
void Ptr2xfMat(ap_uint<BUS_WIDTH>* in_ptr, xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_OUT>& out_mat) {
#pragma HLS INLINE OFF

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = out_mat.rows * (out_mat.cols >> XF_BITSHIFT(NPPC));
    for (int i = 0; i < loopcount; i++) {
#pragma HLS loop_tripcount min=1 max=1024
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min = c_TRIP_COUNT max = c_TRIP_COUNT

        out_mat.write(i, (XF_TNAME(TYPE, NPPC))in_ptr[i]);
    }

} // End of Ptr2xfMat()

// ======================================================================================
// Function to read from DDR and copy to xf::cv::Mat
// ======================================================================================
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT>
void xfMat2Ptr(xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_IN>& in_mat, ap_uint<BUS_WIDTH>* out_ptr) {
#pragma HLS INLINE OFF

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = in_mat.rows * (in_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {
#pragma HLS loop_tripcount min=1 max=1024
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min = c_TRIP_COUNT max = c_TRIP_COUNT

        out_ptr[i] = in_mat.read(i);
    }

} // End of xfMat2Ptr()
// ======================================================================================

// ======================================================================================
// Function to split xf::cv::Mat into 2 streams (1 for DDR PTR and 1 for xf::cv::Mat)
// ======================================================================================
template <int BUS_WIDTH,
          int TYPE,
          int ROWS,
          int COLS,
          int NPPC,
          int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT,
          int XFCVDEPTH_OUT = _XFCVDEPTH_DEFAULT>
void xFDuplicateMat_PTRMAT(xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_IN>& in_mat,
                           ap_uint<BUS_WIDTH>* out_ptr,
                           xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_OUT>& out_mat) {
#pragma HLS INLINE OFF

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = in_mat.rows * (in_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {
#pragma HLS loop_tripcount min=1 max=1024
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min = c_TRIP_COUNT max = c_TRIP_COUNT

        XF_TNAME(TYPE, NPPC) tmp = in_mat.read(i);

        out_ptr[i] = (ap_uint<BUS_WIDTH>)tmp;
        out_mat.write(i, tmp);
    }

} // End of xFDuplicateMat_PTRMAT()
// ======================================================================================

// ======================================================================================
// Function to split xf::cv::Mat into 3 streams (1 for DDR PTR and 2 for xf::cv::Mat)
// ======================================================================================
template <int BUS_WIDTH,
          int TYPE,
          int ROWS,
          int COLS,
          int NPPC,
          int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT,
          int XFCVDEPTH_OUT_1 = _XFCVDEPTH_DEFAULT,
          int XFCVDEPTH_OUT_2 = _XFCVDEPTH_DEFAULT>
void xFDuplicateMat_PTRMAT2(xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_IN>& in_mat,
                            ap_uint<BUS_WIDTH>* out_ptr,
                            xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_OUT_1>& out_mat1,
                            xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_OUT_2>& out_mat2) {
#pragma HLS INLINE OFF

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = in_mat.rows * (in_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {
#pragma HLS loop_tripcount min=1 max=1024
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min = c_TRIP_COUNT max = c_TRIP_COUNT

        XF_TNAME(TYPE, NPPC) tmp = in_mat.read(i);

        out_ptr[i] = (ap_uint<BUS_WIDTH>)tmp;
        out_mat1.write(i, tmp);
        out_mat2.write(i, tmp);
        // out_mat2.write(i, (XF_TNAME(XF_16SC1, NPPC))tmp); // TODO: Remove me as I am for experiment
    }

} // End of xFDuplicateMat_PTRMAT2()
// ======================================================================================

// ======================================================================================
// Function to split xf::cv::Mat into 3 streams (1 for DDR PTR, 1 for xf::cv::Mat and 1 for AXI stream)
// ======================================================================================
template <int BUS_WIDTH,
          int TYPE,
          int ROWS,
          int COLS,
          int NPPC,
          int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT,
          int XFCVDEPTH_OUT = _XFCVDEPTH_DEFAULT>
void xFDuplicateMat_PTR_MAT_AXI(xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_IN>& in_mat,
                                ap_uint<BUS_WIDTH>* out_ptr,
                                xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_OUT>& out_mat,
                                hls::stream<ap_axiu<BUS_WIDTH, 0, 0, 0> >& out_axi) {
#pragma HLS INLINE OFF

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = in_mat.rows * (in_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {
#pragma HLS loop_tripcount min=1 max=1024
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min = c_TRIP_COUNT max = c_TRIP_COUNT

        ap_axiu<BUS_WIDTH, 0, 0, 0> v;
        XF_TNAME(TYPE, NPPC) tmp = in_mat.read(i);

        out_ptr[i] = tmp;
        out_mat.write(i, tmp);

        v.data = tmp;
        out_axi.write(v);
    }

} // End of xFDuplicateMat_PTR_MAT_AXI()
// ======================================================================================

// ======================================================================================
// Function to stream out xf::cv::Mat on AXI bus for K2K streaming
// ======================================================================================
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT>
void xFMat2AXI_Strm(xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_IN>& in_mat,
                    hls::stream<ap_axiu<BUS_WIDTH, 0, 0, 0> >& out_axi) {
#pragma HLS INLINE OFF

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = in_mat.rows * (in_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {
#pragma HLS loop_tripcount min=1 max=1024
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min = c_TRIP_COUNT max = c_TRIP_COUNT

        ap_axiu<BUS_WIDTH, 0, 0, 0> v;

        v.data = in_mat.read(i);
        out_axi.write(v);
    }

} // End of xFMat2AXI_Strm()
// ======================================================================================

// ======================================================================================
// Function to read AXI stream into xf::cv::Mat for K2K streaming
// ======================================================================================
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_OUT = _XFCVDEPTH_DEFAULT>
void AXI_Strm2xFMat(hls::stream<ap_axiu<BUS_WIDTH, 0, 0, 0> >& in_axi,
                    xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_OUT>& out_mat) {
#pragma HLS INLINE OFF

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = out_mat.rows * (out_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {
#pragma HLS loop_tripcount min=1 max=1024
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min = c_TRIP_COUNT max = c_TRIP_COUNT
        ap_axiu<BUS_WIDTH, 0, 0, 0> v = in_axi.read();

        out_mat.write(i, v.data);
    }

} // End of AXI_Strm2xFMat()
// ======================================================================================

// ======================================================================================
// Function to split xf::cv::Mat into 2 streams (1 for DDR PTR and 1 for AXI stream)
// ======================================================================================
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT>
void xFDuplicateMat_PTR_AXI(xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_IN>& in_mat,
                            ap_uint<BUS_WIDTH>* out_ptr,
                            hls::stream<ap_axiu<BUS_WIDTH, 0, 0, 0> >& out_axi) {
#pragma HLS INLINE OFF

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = in_mat.rows * (in_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {
#pragma HLS loop_tripcount min=1 max=1024
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min = c_TRIP_COUNT max = c_TRIP_COUNT
        ap_axiu<BUS_WIDTH, 0, 0, 0> v;
        XF_TNAME(TYPE, NPPC) tmp = in_mat.read(i);

        out_ptr[i] = tmp;

        v.data = tmp;
        out_axi.write(v);
    }

} // End of xFDuplicateMat_PTR_AXI()
// ======================================================================================

// ======================================================================================
// Function to set border in the extracted kernel sized block
// ======================================================================================
template <int K_ROWS, int K_COLS, typename SRC_T, int BORDER_T>
void xFSetBorder(xf::cv::Window<K_ROWS, K_COLS, SRC_T>& src_blk,
                 uint16_t _row,
                 uint16_t _col,
                 uint16_t _src_rows,
                 uint16_t _src_cols) {
#pragma HLS INLINE OFF

    uint16_t blk_t_idx, blk_b_idx;
    uint16_t blk_l_idx, blk_r_idx;

    blk_t_idx = (K_ROWS - _row - 1);
    blk_b_idx = (K_ROWS - (_row - _src_rows + 1) - 1);

    blk_l_idx = (K_COLS - _col - 1);
    blk_r_idx = (K_COLS - (_col - _src_cols + 1) - 1);

    for (uint16_t r = 0; r < K_ROWS; r++) {
#pragma HLS loop_tripcount min=1 max=1024
#pragma HLS unroll factor=1
        for (uint16_t c = 0; c < K_COLS; c++) {
#pragma HLS loop_tripcount min=1 max=1024
#pragma HLS unroll factor=1

            bool top_border = ((r < blk_t_idx) && (_row < K_ROWS - 1)) ? true : false;
            bool bottom_border = ((r > blk_b_idx) && (_row >= _src_rows)) ? true : false;
            bool left_border = ((c < blk_l_idx) && (_col < K_COLS - 1)) ? true : false;
            bool right_border = ((c > blk_r_idx) && (_col >= _src_cols)) ? true : false;

            uint16_t r_idx = r, c_idx = c;

            if (BORDER_T == XF_BORDER_REPLICATE) {
                r_idx = top_border ? blk_t_idx : bottom_border ? blk_b_idx : r;

            } else if (BORDER_T == XF_BORDER_REFLECT_101) {
                r_idx = top_border ? (2 * blk_t_idx - r) : bottom_border ? (2 * blk_b_idx - r) : r;

            } else if (BORDER_T == XF_BORDER_REFLECT) {
                r_idx = top_border ? (2 * blk_t_idx - r - 1) : bottom_border ? (2 * blk_b_idx - r + 1) : r;

            } else { // TODO: Need to add other modes support
                r_idx = r;
            }

            if (BORDER_T == XF_BORDER_REPLICATE) {
                c_idx = left_border ? blk_l_idx : right_border ? blk_r_idx : c;

            } else if (BORDER_T == XF_BORDER_REFLECT_101) {
                c_idx = left_border ? (2 * blk_l_idx - c) : right_border ? (2 * blk_r_idx - c) : c;

            } else if (BORDER_T == XF_BORDER_REFLECT) {
                c_idx = left_border ? (2 * blk_l_idx - c - 1) : right_border ? (2 * blk_r_idx - c + 1) : c;

            } else { // TODO: Need to add other modes support
                c_idx = c;
            }

            if ((top_border | bottom_border | left_border | right_border) && (BORDER_T == XF_BORDER_CONSTANT)) {
                src_blk.val[r][c] = 0;
            } else {
                src_blk.val[r][c] = src_blk.val[r_idx][c_idx];
            }
        }
    }

} // End of xFSetBorder()
// ======================================================================================

/**
 * Extract Pixels from a packed word into an array from the index pos.
 * The number of pixels to be extracted is determined by the NPC.
 */

template <int NPC, int WORDWIDTH, int PIXELDEPTH>
void xfPackPixels(
    XF_PTNAME(PIXELDEPTH) * tmp_buf, XF_SNAME(WORDWIDTH) & val, uint16_t pos, int16_t loopIter, uint16_t& shift) {
// clang-format off
    #pragma HLS INLINE
    // clang-format on
    ap_uint<8> STEP = XF_PIXELDEPTH(PIXELDEPTH);

    for (ap_int<9> i = 0; i < loopIter; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        XF_PTUNAME(PIXELDEPTH) tmp = tmp_buf[pos];
        val = val | (((XF_SNAME(WORDWIDTH))tmp) << (shift * STEP));
        pos++;
        shift++;
    }
}

template <int NPC, int WORDWIDTH, int PIXELDEPTH>
void xfExtractPixels(XF_PTNAME(PIXELDEPTH) * tmp_buf, XF_SNAME(WORDWIDTH) & val1, int pos) {
// clang-format off
    #pragma HLS inline off
    // clang-format on
    XF_SNAME(WORDWIDTH) v = val1;

    int shift = 0;
    int STEP = XF_PIXELDEPTH(PIXELDEPTH);
Extract_pixels_loop:
    for (int i = 0; i < (1 << (XF_BITSHIFT(NPC))); i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS unroll factor=1
        // clang-format on
        tmp_buf[pos + i] = v.range(shift + STEP - 1, shift);
        shift = shift + STEP;
    }
}

template <int NPC, int WORDWIDTH_SRC, int DEPTH_SRC>
void xfExtractData(XF_PTNAME(DEPTH_SRC) * src_buf1,
                   XF_PTNAME(DEPTH_SRC) * src_buf2,
                   XF_PTNAME(DEPTH_SRC) * src_buf3,
                   XF_PTNAME(DEPTH_SRC) * src_buf4,
                   XF_PTNAME(DEPTH_SRC) * src_buf5,
                   XF_PTNAME(DEPTH_SRC) * src_buf6,
                   XF_PTNAME(DEPTH_SRC) * src_buf7,
                   XF_SNAME(WORDWIDTH_SRC) buf0,
                   XF_SNAME(WORDWIDTH_SRC) buf1,
                   XF_SNAME(WORDWIDTH_SRC) buf2,
                   XF_SNAME(WORDWIDTH_SRC) buf3,
                   XF_SNAME(WORDWIDTH_SRC) buf4,
                   XF_SNAME(WORDWIDTH_SRC) buf5,
                   XF_SNAME(WORDWIDTH_SRC) buf6) {
// clang-format off
    #pragma HLS INLINE
    // clang-format on
    xfExtractPixels<NPC, WORDWIDTH_SRC, DEPTH_SRC>(&src_buf1[6], buf0, 0);
    xfExtractPixels<NPC, WORDWIDTH_SRC, DEPTH_SRC>(&src_buf2[6], buf1, 0);
    xfExtractPixels<NPC, WORDWIDTH_SRC, DEPTH_SRC>(&src_buf3[6], buf2, 0);
    xfExtractPixels<NPC, WORDWIDTH_SRC, DEPTH_SRC>(&src_buf4[6], buf3, 0);
    xfExtractPixels<NPC, WORDWIDTH_SRC, DEPTH_SRC>(&src_buf5[6], buf4, 0);
    xfExtractPixels<NPC, WORDWIDTH_SRC, DEPTH_SRC>(&src_buf6[6], buf5, 0);
    xfExtractPixels<NPC, WORDWIDTH_SRC, DEPTH_SRC>(&src_buf7[6], buf6, 0);
}

template <int NPC, int DEPTH_SRC>
void xfCopyData(XF_PTNAME(DEPTH_SRC) src_buf1[XF_NPIXPERCYCLE(NPC) + 6],
                XF_PTNAME(DEPTH_SRC) src_buf2[XF_NPIXPERCYCLE(NPC) + 6],
                XF_PTNAME(DEPTH_SRC) src_buf3[XF_NPIXPERCYCLE(NPC) + 6],
                XF_PTNAME(DEPTH_SRC) src_buf4[XF_NPIXPERCYCLE(NPC) + 6],
                XF_PTNAME(DEPTH_SRC) src_buf5[XF_NPIXPERCYCLE(NPC) + 6],
                XF_PTNAME(DEPTH_SRC) src_buf6[XF_NPIXPERCYCLE(NPC) + 6],
                XF_PTNAME(DEPTH_SRC) src_buf7[XF_NPIXPERCYCLE(NPC) + 6]) {
// clang-format off
    #pragma HLS INLINE
    // clang-format on
    ap_uint<5> buf_size = (XF_NPIXPERCYCLE(NPC) + 6);
    ap_uint<4> i = 0;
    ap_uint<4> ind = buf_size - 6;

    for (i = 0; i < 6; i++, ind++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
        #pragma HLS LOOP_TRIPCOUNT min=6 max=6
#pragma HLS unroll factor=1
        // clang-format on
        src_buf1[i] = src_buf1[ind];
        src_buf2[i] = src_buf2[ind];
        src_buf3[i] = src_buf3[ind];
        src_buf4[i] = src_buf4[ind];
        src_buf5[i] = src_buf5[ind];
        src_buf6[i] = src_buf6[ind];
        src_buf7[i] = src_buf7[ind];
    }
}

/**
 * CopyMemoryOut: Copies memory from BRAM to DDR
 */
template <int SIZE, int WORDWIDTH>
void xFCopyBlockMemoryOut1(XF_SNAME(WORDWIDTH) * _src, unsigned long long int* _dst, int nbytes) {
#if _XF_SYNTHESIS_
    memcpy((unsigned long long int*)_dst, (unsigned long long int*)_src, SIZE);
#else
    if (nbytes) memcpy((unsigned long long int*)_dst, (unsigned long long int*)_src, nbytes);
#endif
}

/**
 * CopyMemoryIn: Copies memory from DDR to BRAM if y_offset and x_offset is
 * provided
 */
template <int SIZE, int WORDWIDTH>
void xFCopyBlockMemoryIn1(unsigned long long int* _src, XF_SNAME(WORDWIDTH) * _dst, int nbytes) {
#if _XF_SYNTHESIS_
    memcpy((XF_SNAME(WORDWIDTH)*)_dst, (XF_SNAME(WORDWIDTH)*)_src, SIZE);
#else
    memcpy((XF_SNAME(WORDWIDTH)*)_dst, (XF_SNAME(WORDWIDTH)*)_src, nbytes);
#endif
}

/**
 * CopyMemoryIn: Copies memory from DDR to BRAM if y_offset and x_offset is
 * provided
 */
template <int SIZE, int WORDWIDTH>
void xFCopyBlockMemoryIn(XF_SNAME(WORDWIDTH) * _src, XF_SNAME(WORDWIDTH) * _dst, int nbytes) {
#if _XF_SYNTHESIS_
    memcpy((AU_TNAME(WORDWIDTH)*)_dst, (AU_TNAME(WORDWIDTH)*)_src, SIZE);
#else
    memcpy((XF_SNAME(WORDWIDTH)*)_dst, (XF_SNAME(WORDWIDTH)*)_src, nbytes);
#endif
}

/**
 * CopyMemoryOut: Copies memory from BRAM to DDR
 */
template <int SIZE, int WORDWIDTH>
void xFCopyBlockMemoryOut(XF_SNAME(WORDWIDTH) * _src, XF_SNAME(WORDWIDTH) * _dst, int nbytes) {
#if _XF_SYNTHESIS_
    memcpy((XF_SNAME(WORDWIDTH)*)_dst, (XF_SNAME(WORDWIDTH)*)_src, SIZE);
#else
    memcpy((XF_SNAME(WORDWIDTH)*)_dst, (XF_SNAME(WORDWIDTH)*)_src, nbytes);
#endif
}

template <int WORDWIDTH, int NPC, int IN_BH, int IN_BW>
void xFDuplicateStream(hls::stream<XF_SNAME(WORDWIDTH)>& in_strm,
                       hls::stream<XF_SNAME(WORDWIDTH)>& out_strm1,
                       hls::stream<XF_SNAME(WORDWIDTH)>& out_strm2,
                       int imwidth,
                       int imheight) {
    for (int i = 0; i < imheight; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
        #pragma HLS LOOP_TRIPCOUNT min=IN_BH max=IN_BH
        #pragma HLS LOOP_FLATTEN off
        // clang-format on
        for (int j = 0; j < (imwidth >> NPC); j++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
#pragma HLS pipeline
            #pragma HLS LOOP_TRIPCOUNT min=IN_BW max=IN_BW
            // clang-format on
            XF_SNAME(WORDWIDTH) tmp = in_strm.read();
            out_strm1.write(tmp);
            out_strm2.write(tmp);
        }
    }
}

// ==============================================================================
// Class contains funcitons requried for accel file (top wrapper file)
// ==============================================================================
class accel_utils {
   public:
    // ==============================================================================
    // Read module(s) to handle data transfer from AXI/HLS stream to xfMat
    // ------------------------------------------------------------------------------

    template <int PTR_WIDTH, int ROWS, int COLS, int NPC, int COLOR_T, int CH_WIDTH, int TRIPCOUNT>
    void Array2hlsStrm(ap_uint<PTR_WIDTH>* srcPtr, hls::stream<ap_uint<PTR_WIDTH> >& dstStrm, int rows, int cols) {
        int pixel_width = COLOR_T * CH_WIDTH;
        int loop_count = (((rows * cols * pixel_width) + PTR_WIDTH - 1) / PTR_WIDTH);

        for (int i = 0; i < loop_count; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
            #pragma HLS LOOP_TRIPCOUNT min=1 max=TRIPCOUNT
#pragma HLS pipeline
            // clang-format on
            dstStrm.write(srcPtr[i]);
        }
    }

    template <int PTR_WIDTH,
              int MAT_T,
              int ROWS,
              int COLS,
              int NPC,
              int TRIPCOUNT,
              int XFCVDEPTH_OUT = _XFCVDEPTH_DEFAULT>
    void hlsStrm2xfMat(hls::stream<ap_uint<PTR_WIDTH> >& srcStrm,
                       xf::cv::Mat<MAT_T, ROWS, COLS, NPC, XFCVDEPTH_OUT>& dstMat,
                       int dstMat_cols_align_npc) {
        int rows = dstMat.rows;
        int cols = dstMat.cols;
        int loop_count = (rows * dstMat_cols_align_npc) / XF_NPIXPERCYCLE(NPC);
        int pad = dstMat_cols_align_npc - cols;
        int in_size_bits = XF_PIXELWIDTH(MAT_T, NPC) * rows * dstMat_cols_align_npc; // channels
        int ddr_read_cycles = (((in_size_bits) + (PTR_WIDTH)-1) / (PTR_WIDTH));
        int ddr_read_cnt = 0;

        int valid_bits = 0;
        const int N_size = XF_PIXELWIDTH(MAT_T, NPC) * XF_NPIXPERCYCLE(NPC);
        const int last_N_size = XF_PIXELWIDTH(MAT_T, NPC) * (XF_NPIXPERCYCLE(NPC) - pad);
        const int PTR_WIDTH_min_N = PTR_WIDTH - N_size;
        const int PTR_WIDTH_min_last_N = PTR_WIDTH - last_N_size;
        const int PTR_WIDTH_plus_N = PTR_WIDTH + N_size;
        const int PTR_WIDTH_plus_last_N = PTR_WIDTH + last_N_size;

        int K_size;
        ap_uint<PTR_WIDTH> r;
        XF_TNAME(MAT_T, NPC) out;
        int ncpr = dstMat_cols_align_npc / XF_NPIXPERCYCLE(NPC); // number of clock per row
        int clk_cnt = 0;                                         // clock counter. reset at the start of every row
        int strm_cnt_disply = 0;
    L1:
        for (int i = 0; i < loop_count; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
            #pragma HLS LOOP_TRIPCOUNT min=1 max=TRIPCOUNT
#pragma HLS pipeline
            // clang-format on

            int PTR_WIDTH_min_Ksize;
            int PTR_WIDTH_plus_Ksize;

            if (clk_cnt == ncpr - 1) {
                clk_cnt = 0;
                K_size = last_N_size;
                PTR_WIDTH_min_Ksize = PTR_WIDTH_min_last_N;
                PTR_WIDTH_plus_Ksize = PTR_WIDTH_plus_last_N;
            } else {
                clk_cnt++;
                K_size = N_size;
                PTR_WIDTH_min_Ksize = PTR_WIDTH_min_N;
                PTR_WIDTH_plus_Ksize = PTR_WIDTH_plus_N;
            }

            int valid_bits_update;
            int valid_bits_tmp = valid_bits - K_size;
            XF_TNAME(MAT_T, NPC) out = 0;

            if (valid_bits < K_size) {
                if (valid_bits != 0) {
                    out.range(valid_bits - 1, 0) = r.range(PTR_WIDTH - 1, PTR_WIDTH - valid_bits);
                }
                if (ddr_read_cnt < ddr_read_cycles) {
                    r = srcStrm.read();
                    ddr_read_cnt++;
                } else {
                    r = 0;
                }
                out.range(K_size - 1, valid_bits) = r.range(K_size - valid_bits - 1, 0);
                valid_bits = PTR_WIDTH_min_Ksize + valid_bits;
            } else {
                out = r.range(PTR_WIDTH_plus_Ksize - valid_bits - 1, PTR_WIDTH - valid_bits);
                valid_bits = valid_bits - K_size;
            }

            dstMat.write(i, out);
        }
        int stop = 0;
    }

    template <int PTR_WIDTH, int MAT_T, int ROWS, int COLS, int NPC, int XFCVDEPTH = _XFCVDEPTH_DEFAULT>
    void Array2xfMat(ap_uint<PTR_WIDTH>* srcPtr,
                     xf::cv::Mat<MAT_T, ROWS, COLS, NPC, XFCVDEPTH>& dstMat,
                     int stride = -1) {
#if !defined(__XF_USE_OLD_IMPL__)
        MMIterIn<PTR_WIDTH, MAT_T, ROWS, COLS, NPC, XFCVDEPTH>::Array2xfMat(srcPtr, dstMat, stride);
#else
// clang-format off
        #pragma HLS DATAFLOW
        // clang-format on
        assert((PTR_WIDTH >= XF_WORDDEPTH(XF_WORDWIDTH(MAT_T, NPC))) &&
               "The PTR_WIDTH must be always greater than or equal to the minimum "
               "width for the corresponding "
               "configuration");
        const int ch_width = XF_DTPIXELDEPTH(MAT_T, NPC);

        hls::stream<ap_uint<PTR_WIDTH> > strm;
        int rows = dstMat.rows;
        int cols = dstMat.cols;
        int dstMat_cols_align_npc = ((dstMat.cols + (NPC - 1)) >> XF_BITSHIFT(NPC)) << XF_BITSHIFT(NPC);
        Array2hlsStrm<PTR_WIDTH, ROWS, COLS, NPC, XF_CHANNELS(MAT_T, NPC), ch_width,
                      ((ROWS * COLS * XF_CHANNELS(MAT_T, NPC) * ch_width) / PTR_WIDTH)>(srcPtr, strm, rows, cols);
        hlsStrm2xfMat<PTR_WIDTH, MAT_T, ROWS, COLS, NPC, (ROWS * COLS) / NPC, XFCVDEPTH>(strm, dstMat,
                                                                                         dstMat_cols_align_npc);
#endif
    }

    template <int PTR_WIDTH, int ROWS, int COLS, int NPC, int COLOR_T, int CH_WIDTH, int TRIPCOUNT>
    void axiStrm2hlsStrm(hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& srcPtr,
                         hls::stream<ap_uint<PTR_WIDTH> >& dstStrm,
                         int rows,
                         int cols) {
        int pixel_width = COLOR_T * CH_WIDTH;
        int loop_count = (((rows * cols * pixel_width) + PTR_WIDTH - 1) / PTR_WIDTH);

        for (int i = 0; i < loop_count; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
            #pragma HLS LOOP_TRIPCOUNT min=1 max=TRIPCOUNT
#pragma HLS pipeline
            // clang-format on
            ap_axiu<PTR_WIDTH, 0, 0, 0> v = srcPtr.read();
            dstStrm.write(v.data);
        }
    }

    template <int PTR_WIDTH, int MAT_T, int ROWS, int COLS, int NPC, int XFCVDEPTH_OUT = _XFCVDEPTH_DEFAULT>
    void axiStrm2xfMat(hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& srcPtr,
                       xf::cv::Mat<MAT_T, ROWS, COLS, NPC, XFCVDEPTH_OUT>& dstMat) {
// clang-format off
        #pragma HLS DATAFLOW
        // clang-format on
        assert((PTR_WIDTH >= XF_WORDDEPTH(XF_WORDWIDTH(MAT_T, NPC))) &&
               "The PTR_WIDTH must be always greater than or equal to the minimum "
               "width for the corresponding "
               "configuration");
        const int ch_width = XF_DTPIXELDEPTH(MAT_T, NPC);

        hls::stream<ap_uint<PTR_WIDTH> > strm;
        int rows = dstMat.rows;
        int cols = dstMat.cols;
        int dstMat_cols_align_npc = ((dstMat.cols + (NPC - 1)) >> XF_BITSHIFT(NPC)) << XF_BITSHIFT(NPC);
        axiStrm2hlsStrm<PTR_WIDTH, ROWS, COLS, NPC, XF_CHANNELS(MAT_T, NPC), ch_width,
                        ((ROWS * COLS * XF_CHANNELS(MAT_T, NPC) * ch_width) / PTR_WIDTH)>(srcPtr, strm, rows, cols);
        hlsStrm2xfMat<PTR_WIDTH, MAT_T, ROWS, COLS, NPC, (ROWS * COLS) / NPC, XFCVDEPTH_OUT>(strm, dstMat,
                                                                                             dstMat_cols_align_npc);
    }

    // ==============================================================================
    // Write module(s) to handle data transfer from xfMat to AXI/HLS stream
    // ------------------------------------------------------------------------------

    template <int PTR_WIDTH,
              int MAT_T,
              int ROWS,
              int COLS,
              int NPC,
              int TRIPCOUNT,
              int XFCVDEPTH_OUT = _XFCVDEPTH_DEFAULT>
    void xfMat2hlsStrm(xf::cv::Mat<MAT_T, ROWS, COLS, NPC, XFCVDEPTH_OUT>& srcMat,
                       hls::stream<ap_uint<PTR_WIDTH> >& dstStrm,
                       int srcMat_cols_align_npc) {
        int rows = srcMat.rows;
        int cols = srcMat.cols;
        int loop_count = (rows * srcMat_cols_align_npc) / XF_NPIXPERCYCLE(NPC);
        int pad = srcMat_cols_align_npc - cols;
        int out_size_bits = XF_PIXELWIDTH(MAT_T, NPC) * rows * srcMat_cols_align_npc; // channels
        int ddr_write_cycles = (((out_size_bits) + (PTR_WIDTH)-1) / (PTR_WIDTH));
        int ddr_write_cnt = 0;

        int bits_to_add = PTR_WIDTH;
        const int N_size = XF_PIXELWIDTH(MAT_T, NPC) * XF_NPIXPERCYCLE(NPC);
        const int last_N_size = XF_PIXELWIDTH(MAT_T, NPC) * (XF_NPIXPERCYCLE(NPC) - pad);
        const int PTR_WIDTH_min_N = PTR_WIDTH - N_size;
        const int PTR_WIDTH_min_last_N = PTR_WIDTH - last_N_size;
        const int PTR_WIDTH_plus_N = PTR_WIDTH + N_size;
        const int PTR_WIDTH_plus_last_N = PTR_WIDTH + last_N_size;

        ap_uint<PTR_WIDTH> r;
        XF_TNAME(MAT_T, NPC) in;
        int ncpr = srcMat_cols_align_npc / XF_NPIXPERCYCLE(NPC); // number of clock per row
        int clk_cnt = 0;                                         // clock counter. reset at the start of every row

    L1:
        for (int i = 0; i < loop_count; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
            #pragma HLS LOOP_TRIPCOUNT min=1 max=TRIPCOUNT
#pragma HLS pipeline
            // clang-format on
            int K_size;
            int PTR_WIDTH_min_Ksize;
            int PTR_WIDTH_plus_Ksize;
            if (clk_cnt == ncpr - 1) {
                clk_cnt = 0;
                K_size = last_N_size;
                PTR_WIDTH_min_Ksize = PTR_WIDTH_min_last_N;
                PTR_WIDTH_plus_Ksize = PTR_WIDTH_plus_last_N;
            } else {
                clk_cnt++;
                K_size = N_size;
                PTR_WIDTH_min_Ksize = PTR_WIDTH_min_N;
                PTR_WIDTH_plus_Ksize = PTR_WIDTH_plus_N;
            }

            in = srcMat.read(i);

            if (bits_to_add <= K_size) {
                r.range(PTR_WIDTH - 1, PTR_WIDTH - bits_to_add) = in.range(bits_to_add - 1, 0);
                dstStrm.write(r);

                if (bits_to_add != K_size) {
                    r.range(K_size - bits_to_add - 1, 0) = in.range(K_size - 1, bits_to_add);
                }
                bits_to_add = PTR_WIDTH_min_Ksize + bits_to_add;
            } else {
                r.range(PTR_WIDTH_plus_Ksize - bits_to_add - 1, PTR_WIDTH - bits_to_add) = in;
                bits_to_add -= K_size;
            }
        }

        if (bits_to_add != PTR_WIDTH) {
            dstStrm.write(r);
        }
    }

    template <int PTR_WIDTH, int ROWS, int COLS, int NPC, int COLOR_T, int CH_WIDTH, int TRIPCOUNT>
    void hlsStrm2Array(hls::stream<ap_uint<PTR_WIDTH> >& srcStrm, ap_uint<PTR_WIDTH>* dstPtr, int rows, int cols) {
        int pixel_width = COLOR_T * CH_WIDTH;
        int loop_count = (((rows * cols * pixel_width) + PTR_WIDTH - 1) / PTR_WIDTH);

        for (int i = 0; i < loop_count; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
            #pragma HLS LOOP_TRIPCOUNT min=1 max=TRIPCOUNT
#pragma HLS pipeline
            // clang-format on
            dstPtr[i] = srcStrm.read();
        }
    }

    template <int PTR_WIDTH,
              int MAT_T,
              int ROWS,
              int COLS,
              int NPC,
              int XFCVDEPTH = _XFCVDEPTH_DEFAULT,
              int FILLZERO = 1>
    void xfMat2Array(xf::cv::Mat<MAT_T, ROWS, COLS, NPC, XFCVDEPTH>& srcMat,
                     ap_uint<PTR_WIDTH>* dstPtr,
                     int stride = -1) {
#if !defined(__XF_USE_OLD_IMPL__)
        MMIterOut<PTR_WIDTH, MAT_T, ROWS, COLS, NPC, FILLZERO, XFCVDEPTH>::xfMat2Array(srcMat, dstPtr, stride);
#else
// clang-format off
        #pragma HLS DATAFLOW
        // clang-format on
        assert((PTR_WIDTH >= XF_WORDDEPTH(XF_WORDWIDTH(MAT_T, NPC))) &&
               "The PTR_WIDTH must be always greater than or equal to the minimum "
               "width for the corresponding "
               "configuration");
        const int ch_width = XF_DTPIXELDEPTH(MAT_T, NPC);

        hls::stream<ap_uint<PTR_WIDTH> > strm;
        int rows = srcMat.rows;
        int cols = srcMat.cols;
        int srcMat_cols_align_npc = ((srcMat.cols + (NPC - 1)) >> XF_BITSHIFT(NPC)) << XF_BITSHIFT(NPC);

        xfMat2hlsStrm<PTR_WIDTH, MAT_T, ROWS, COLS, NPC, ROWS*((COLS + NPC - 1) / NPC), XFCVDEPTH>(
            srcMat, strm, srcMat_cols_align_npc);
        hlsStrm2Array<PTR_WIDTH, ROWS, COLS, NPC, XF_CHANNELS(MAT_T, NPC), ch_width,
                      ((ROWS * COLS * XF_CHANNELS(MAT_T, NPC) * ch_width) / PTR_WIDTH)>(strm, dstPtr, rows, cols);
#endif
    }

    template <int PTR_WIDTH, int ROWS, int COLS, int NPC, int COLOR_T, int CH_WIDTH, int TRIPCOUNT>
    void hlsStrm2axiStrm(hls::stream<ap_uint<PTR_WIDTH> >& srcStrm,
                         hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& dstPtr,
                         int rows,
                         int cols) {
        int pixel_width = COLOR_T * CH_WIDTH;
        int loop_count = (((rows * cols * pixel_width) + PTR_WIDTH - 1) / PTR_WIDTH);

        for (int i = 0; i < loop_count; i++) {
#pragma HLS loop_tripcount min=1 max=1024
// clang-format off
            #pragma HLS LOOP_TRIPCOUNT min=1 max=TRIPCOUNT
#pragma HLS pipeline
            // clang-format on
            ap_axiu<PTR_WIDTH, 0, 0, 0> v;
            v.data = srcStrm.read();
            dstPtr.write(v);
        }
    }

    template <int PTR_WIDTH, int MAT_T, int ROWS, int COLS, int NPC, int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT>
    void xfMat2axiStrm(xf::cv::Mat<MAT_T, ROWS, COLS, NPC, XFCVDEPTH_IN>& srcMat,
                       hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& dstPtr) {
// clang-format off
        #pragma HLS DATAFLOW
        // clang-format on
        assert((PTR_WIDTH >= XF_WORDDEPTH(XF_WORDWIDTH(MAT_T, NPC))) &&
               "The PTR_WIDTH must be always greater than or equal to the minimum "
               "width for the corresponding "
               "configuration");
        const int ch_width = XF_DTPIXELDEPTH(MAT_T, NPC);

        hls::stream<ap_uint<PTR_WIDTH> > strm;
        int rows = srcMat.rows;
        int cols = srcMat.cols;
        int srcMat_cols_align_npc = ((srcMat.cols + (NPC - 1)) >> XF_BITSHIFT(NPC)) << XF_BITSHIFT(NPC);

        xfMat2hlsStrm<PTR_WIDTH, MAT_T, ROWS, COLS, NPC, ROWS*((COLS + NPC - 1) / NPC), XFCVDEPTH_IN>(
            srcMat, strm, srcMat_cols_align_npc);
        hlsStrm2axiStrm<PTR_WIDTH, ROWS, COLS, NPC, XF_CHANNELS(MAT_T, NPC), ch_width,
                        ((ROWS * COLS * XF_CHANNELS(MAT_T, NPC) * ch_width) / PTR_WIDTH)>(strm, dstPtr, rows, cols);
    }
};

template <int PTR_WIDTH, int MAT_T, int ROWS, int COLS, int NPC, int XFCVDEPTH = _XFCVDEPTH_DEFAULT, int FILLZERO = 1>
void xfMat2Array(xf::cv::Mat<MAT_T, ROWS, COLS, NPC, XFCVDEPTH>& srcMat, ap_uint<PTR_WIDTH>* dstPtr, int stride = -1) {
#if !defined(__XF_USE_OLD_IMPL__)
    MMIterOut<PTR_WIDTH, MAT_T, ROWS, COLS, NPC, FILLZERO, XFCVDEPTH>::xfMat2Array(srcMat, dstPtr, stride);
#else
    accel_utils au;
    au.xfMat2Array<PTR_WIDTH, MAT_T, ROWS, COLS, NPC>(srcMat, dstPtr);
#endif
}

template <int PTR_WIDTH, int MAT_T, int ROWS, int COLS, int NPC, int XFCVDEPTH = _XFCVDEPTH_DEFAULT>
void Array2xfMat(ap_uint<PTR_WIDTH>* srcPtr, xf::cv::Mat<MAT_T, ROWS, COLS, NPC, XFCVDEPTH>& dstMat, int stride = -1) {
#if !defined(__XF_USE_OLD_IMPL__)
    MMIterIn<PTR_WIDTH, MAT_T, ROWS, COLS, NPC, XFCVDEPTH>::Array2xfMat(srcPtr, dstMat, stride);
#else
    accel_utils au;
    au.Array2xfMat<PTR_WIDTH, MAT_T, ROWS, COLS, NPC>(srcPtr, dstMat);
#endif
}

template <int PTR_WIDTH, int MAT_T, int ROWS, int COLS, int NPC, int XFCVDEPTH = _XFCVDEPTH_DEFAULT>
void xfMat2axiStrm(xf::cv::Mat<MAT_T, ROWS, COLS, NPC, XFCVDEPTH>& srcMat,
                   hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& dstPtr) {
    accel_utils au;
    au.xfMat2axiStrm<PTR_WIDTH, MAT_T, ROWS, COLS, NPC, XFCVDEPTH>(srcMat, dstPtr);
}

template <int PTR_WIDTH, int MAT_T, int ROWS, int COLS, int NPC, int XFCVDEPTH_OUT = _XFCVDEPTH_DEFAULT>
void axiStrm2xfMat(hls::stream<ap_axiu<PTR_WIDTH, 0, 0, 0> >& srcPtr,
                   xf::cv::Mat<MAT_T, ROWS, COLS, NPC, XFCVDEPTH_OUT>& dstMat) {
    accel_utils au;
    au.axiStrm2xfMat<PTR_WIDTH, MAT_T, ROWS, COLS, NPC, XFCVDEPTH_OUT>(srcPtr, dstMat);
}

} // namespace cv
} // namespace xf

#endif //_XF_UTILITY_H_

// ---- file: typedefs.h ----
/*===============================================================*/
/*                                                               */
/*                        typedefs.h                             */
/*                                                               */
/*        Defines types and constants for host function          */
/*                                                               */
/*===============================================================*/

#ifndef __TYPEDEFS_H__
#define __TYPEDEFS_H__
const int MAX_HEIGHT = 436;
const int MAX_WIDTH = 1024;

// basic typedefs
#ifndef SW
	#include "ap_fixed.h"
	typedef ap_fixed<17,9> input_t;
	typedef ap_fixed<32,13> pixel_t;
	typedef ap_fixed<32,27> outer_pixel_t;
	typedef ap_fixed<64,56> calc_pixel_t;
	typedef ap_fixed<32,13> vel_pixel_t;
#else
	typedef float pixel_t;
  typedef float outer_pixel_t;
  typedef float vel_pixel_t;
#endif
typedef struct{
	pixel_t x;
	pixel_t y;
	pixel_t z;
}gradient_t;

typedef struct{
    outer_pixel_t val[6];
}outer_t; 

typedef struct{
    outer_pixel_t val[6];
}tensor_t;

typedef struct{
    vel_pixel_t x;
    vel_pixel_t y;
}velocity_t;

#ifndef SW
  #include "ap_int.h"
  // for data packing
  typedef ap_uint<64> frames_t;
#endif

#ifdef OCL
  #include <string>
  // change the target device here
  const std::string TARGET_DEVICE = "xilinx_aws-vu9p-f1-04261818_dynamic_5_0";
#endif

#endif
