// Converted from optical_flow_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: xf_common.hpp ----

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

        // clang-format on
    };

template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::shift_pixels_right() {
// clang-format off

// clang-format on

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    XF_SIZE_T i, j;
    for (i = 0; i < ROWS; i++) {

// clang-format off

        // clang-format on
        for (j = COLS - 1; j > 0; j--) {

// clang-format off

            // clang-format on
            val[i][j] = val[i][j - 1];
        }
    }

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    for (i = 0; i < ROWS; i++) {

        for (j = 0; j < COLS; j++) {

            if (j == 0)
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_right mismatch! ***");
            else
                assert(val_t[i][j - 1] == val[i][j] && "*** window shift_pixels_right mismatch! ***");
        }
    }
#endif
}

template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::shift_pixels_down() {
// clang-format off

// clang-format on

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    XF_SIZE_T i, j;
    for (i = ROWS - 1; i > 0; i--) {

// clang-format off

        // clang-format on
        for (j = 0; j < COLS; j++) {

// clang-format off

            // clang-format on
            val[i][j] = val[i - 1][j];
        }
    }

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    for (i = 0; i < ROWS; i++) {

        for (j = 0; j < COLS; j++) {

            if (i == 0)
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
            else
                assert(val_t[i - 1][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
        }
    }
#endif
}

template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_row(T value[COLS], int row) {
// clang-format off

// clang-format on

#ifdef __DEBUG__
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    XF_SIZE_T j;
    for (j = 0; j < COLS; j++) {

// clang-format off

        // clang-format on
        val[row][j] = value[j];
    }

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    XF_SIZE_T i;
    for (i = 0; i < ROWS; i++) {

        for (j = 0; j < COLS; j++) {

            if (i != row)
                assert(val_t[i][j] == val[i][j] && "*** window insert_row mismatch! ***");
            else
                assert(val[i][j] == value[j] && "*** window insert_row mismatch! ***");
        }
    }
#endif
}

template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_bottom_row(T value[COLS]) {
// clang-format off

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

        for (j = 0; j < COLS; j++) {

            if (i != ROWS - 1)
                assert(val_t[i][j] == val[i][j] && "*** window insert_bottom_row mismatch! ***");
            else
                assert(val[i][j] == value[j] && "*** window insert_bottom_row mismatch! ***");
        }
    }
#endif
}

template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_left_col(T value[ROWS]) {
// clang-format off

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

        for (j = 0; j < COLS; j++) {

            if (j != 0)
                assert(val_t[i][j] == val[i][j] && "*** window insert_left_col mismatch! ***");
            else
                assert(val[i][j] == value[i] && "*** window insert_left_col mismatch! ***");
        }
    }
#endif
}

template <int ROWS, int COLS, typename T>
T& Window<ROWS, COLS, T>::getval(int row, int col) {
// clang-format off

    // clang-format on
    assert(row >= 0 && row < ROWS && col >= 0 && col < COLS);
    return val[row][col];
}

template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::shift_left() {
// clang-format off

    // clang-format on
    shift_pixels_left(); // take upper-left point as origin
}

template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::shift_up() {
// clang-format off

    // clang-format on
    shift_pixels_up(); // take upper-left point as origin
}

template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert(T value, int row, int col) {
// clang-format off

    // clang-format on
    insert_pixel(value, row, col);
}

template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_bottom(T value[COLS]) {
// clang-format off

    // clang-format on
    insert_top_row(value);
}

template <int ROWS, int COLS, typename T>
void Window<ROWS, COLS, T>::insert_right(T value[ROWS]) {
// clang-format off

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

        // clang-format on

        // #pragma HLS bind_storage variable=val type=RAM_S2P impl=URAM
        //#pragma HLS array_reshape variable=val factor=RESHAPE_FACTOR  dim=1

        switch (MEM_TYPE) {
            case RAM_1P_BRAM:
// clang-format off

                // clang-format on
                break;
            case RAM_1P_URAM:
// clang-format off

                // clang-format on
                break;
            case RAM_2P_BRAM:
// clang-format off

                // clang-format on
                break;
            case RAM_2P_URAM:
// clang-format off

                // clang-format on
                break;
            case RAM_S2P_BRAM:
// clang-format off

                // clang-format on
                break;
            case RAM_S2P_URAM:
// clang-format off

                // clang-format on
                break;
            case RAM_T2P_BRAM:
// clang-format off

                // clang-format on
                break;
            case RAM_T2P_URAM:
// clang-format off

                // clang-format on
                break;
            default:
                assert("MEM_TYPE should be one of RAM_*_BRAM or RAM_*_URAM (*: 1P, 2P, S2P, T2P)");
        }

        if (RESHAPE_FACTOR == 1) {
// clang-format off

            // clang-format on
        } else {
// clang-format off

            // clang-format on
        }
    };

_LB_TPLT void _LB_::shift_pixels_up(int col) {
// clang-format off

    // clang-format on
    assert(col >= 0 && col < COLS);

#ifdef __DEBUG__
    std::cout << "LineBuffer Elements in col=" << col << ":";
    linebuffer_print(col);
    restore_val();
#endif

    XF_SIZE_T i;
    for (i = 0; i < ROWS - 1; i++) {

// clang-format off

        // clang-format on
        val[i][col] = val[i + 1][col];
    }

#ifdef __DEBUG__
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "LineBuffer Elements Update in col=" << col << ":";
    linebuffer_print(col);
    XF_SIZE_T j;
    for (i = 0; i < ROWS; i++) {

        for (j = 0; j < COLS; j++) {

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

_LB_TPLT void _LB_::insert_top_row(T value, int col) {
// clang-format off

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

        for (j = 0; j < COLS; j++) {

            if (j == col && i == 0)
                assert(val[i][j] == value && "*** window insert_top_row mismatch! ***");
            else
                assert(val_t[i][j] == val[i][j] && "*** window insert_top_row mismatch! ***");
        }
    }
#endif
}

_LB_TPLT T& _LB_::getval(int row, int col) {
// clang-format off

    // clang-format on
    assert(row >= 0 && row < ROWS && col >= 0 && col < COLS);
    return val[row][col];
}

_LB_TPLT void _LB_::shift_down(int col) {
// clang-format off

    // clang-format on
    shift_pixels_down(col);
}

_LB_TPLT void _LB_::insert_bottom(T value, int col) {
// clang-format off

    // clang-format on
    insert_top_row(value, col);
}

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
    int preFilterType; // =
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

template <int T, int ROWS, int COLS, int NPC, int XFCVDEPTH>
inline Mat<T, ROWS, COLS, NPC, XFCVDEPTH>::Mat(const Mat& src) {
    init(src.rows, src.cols);

#ifndef __SYNTHESIS__
    copyData(src);
#endif
}

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

        for (int j = 0; j<cols>> (XF_BITSHIFT(NPPC)); j++) {

            int IN_STEP = XF_PIXELDEPTH(XF_DEPTH(T, NPPC));
            int OUT_STEP = XF_PIXELDEPTH(XF_DEPTH(DST_T, NPPC));
            int in_shift = 0;
            int out_shift = 0;
            DATATYPE in_val = read((i * cols >> (XF_BITSHIFT(NPPC))) + j);
            DATATYPE out_val;

            for (int k = 0; k < (1 << (XF_BITSHIFT(NPPC))); k++) {

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

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = out_mat.rows * (out_mat.cols >> XF_BITSHIFT(NPPC));
    for (int i = 0; i < loopcount; i++) {

        out_mat.write(i, (XF_TNAME(TYPE, NPPC))in_ptr[i]);
    }

} // End of Ptr2xfMat()

// ======================================================================================
// Function to read from DDR and copy to xf::cv::Mat
// ======================================================================================
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT>
void xfMat2Ptr(xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_IN>& in_mat, ap_uint<BUS_WIDTH>* out_ptr) {

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = in_mat.rows * (in_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {

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

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = in_mat.rows * (in_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {

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

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = in_mat.rows * (in_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {

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

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = in_mat.rows * (in_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {

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

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = in_mat.rows * (in_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {

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

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = out_mat.rows * (out_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {

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

    const int c_TRIP_COUNT = ROWS * COLS;
    int loopcount = in_mat.rows * (in_mat.cols >> XF_BITSHIFT(NPPC));

    for (int i = 0; i < loopcount; i++) {

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

    uint16_t blk_t_idx, blk_b_idx;
    uint16_t blk_l_idx, blk_r_idx;

    blk_t_idx = (K_ROWS - _row - 1);
    blk_b_idx = (K_ROWS - (_row - _src_rows + 1) - 1);

    blk_l_idx = (K_COLS - _col - 1);
    blk_r_idx = (K_COLS - (_col - _src_cols + 1) - 1);

    for (uint16_t r = 0; r < K_ROWS; r++) {

        for (uint16_t c = 0; c < K_COLS; c++) {

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

template <int SIZE, int WORDWIDTH>
void xFCopyBlockMemoryOut1(XF_SNAME(WORDWIDTH) * _src, unsigned long long int* _dst, int nbytes) {
#if _XF_SYNTHESIS_
    memcpy((unsigned long long int*)_dst, (unsigned long long int*)_src, SIZE);
#else
    if (nbytes) memcpy((unsigned long long int*)_dst, (unsigned long long int*)_src, nbytes);
#endif
}

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
