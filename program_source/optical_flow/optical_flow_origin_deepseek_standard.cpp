// Standard C++ replacement for HLS-specific code

#include <cassert>
#include <cstdint>
#include <cstring>
#include <cmath>
#include <queue>
#include <vector>
#include <type_traits>
#include <iostream>

//
// ---- xf_common.hpp (simplified) ----
//

// enumerations for Demosaicing
enum XF_demosaicing {
    XF_BAYER_BG,
    XF_BAYER_GB,
    XF_BAYER_GR,
    XF_BAYER_RG,
};

// enumerations for Architecture
enum _ARCH_type {
    XF_STREAM = 0,
    XF_MEMORYMAPPED = 1
};
typedef _ARCH_type _ARCH_type_e;

// Pixel type enums
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

// RAM type enums
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

// some border constants (simplified)
#define XF_BORDER_REPLICATE 0
#define XF_BORDER_REFLECT_101 1
#define XF_BORDER_REFLECT 2
#define XF_BORDER_CONSTANT 3

// NPPC macros (simplified)
#define XF_NPPC1 1
#define XF_NPPC2 2
#define XF_NPPC4 4
#define XF_NPPC8 8
#define XF_NPPC16 16
#define XF_NPPC32 32
#define XF_NPPC64 64
template <int T> struct xfNPixelsPerCycle { static const int datashift = 0; static const int nppc = 1; };
#define XF_BITSHIFT(flags) xfNPixelsPerCycle<flags>::datashift

// size type
typedef uint32_t XF_SIZE_T;

//
// ---- Minimal HLS AXI stream replacements ----
//
namespace hls {
template <typename T>
class stream {
public:
    void write(const T& v) { q.push(v); }
    T read() { assert(!q.empty()); T v = q.front(); q.pop(); return v; }
    bool empty() const { return q.empty(); }
private:
    std::queue<T> q;
};
} // namespace hls

template <int BUS_WIDTH, int U, int TI, int TD>
struct ap_axiu {
    uint64_t data; // simplified: bus data as 64-bit
    uint8_t keep{0}, strb{0}, user{0}, last{0}, id{0}, dest{0};
};

//
// ---- xf::cv basic utilities ----
//
namespace xf {
namespace cv {

template <int T>
unsigned int xf_satcast(int in_val) {
    int maxv = (T >= 32) ? 0x7FFFFFFF : ((1 << T) - 1);
    if (in_val > maxv) return (unsigned int)maxv;
    if (in_val < 0) return 0U;
    return (unsigned int)in_val;
}

template <typename T>
T float2ap_uint(float val) {
    static_assert(std::is_integral<T>::value, "float2ap_uint requires integral T");
    T out{};
    std::memcpy(&out, &val, sizeof(T) <= sizeof(float) ? sizeof(T) : sizeof(float));
    return out;
}

template <typename T>
float ap_uint2float(T val) {
    static_assert(std::is_integral<T>::value, "ap_uint2float requires integral T");
    float out = 0.0f;
    std::memcpy(&out, &val, sizeof(float) <= sizeof(T) ? sizeof(float) : sizeof(T));
    return out;
}

//
// Window class
//
template <int ROWS, int COLS, typename T>
class Window {
public:
    Window() {
        for (int i = 0; i < ROWS; ++i)
            for (int j = 0; j < COLS; ++j)
                val[i][j] = T();
    }
    void shift_pixels_right() {
        for (int i = 0; i < ROWS; i++)
            for (int j = COLS - 1; j > 0; j--)
                val[i][j] = val[i][j - 1];
    }
    void shift_pixels_left() {
        for (int i = 0; i < ROWS; i++)
            for (int j = 0; j < COLS - 1; j++)
                val[i][j] = val[i][j + 1];
    }
    void shift_pixels_down() {
        for (int i = ROWS - 1; i > 0; i--)
            for (int j = 0; j < COLS; j++)
                val[i][j] = val[i - 1][j];
    }
    void shift_pixels_up() {
        for (int i = 0; i < ROWS - 1; i++)
            for (int j = 0; j < COLS; j++)
                val[i][j] = val[i + 1][j];
    }
    void insert_row(T value_row[COLS], int row) {
        assert(row >= 0 && row < ROWS);
        for (int j = 0; j < COLS; j++)
            val[row][j] = value_row[j];
    }
    void insert_bottom_row(T value_row[COLS]) { insert_row(value_row, ROWS - 1); }
    void insert_col(T value_col[ROWS], int col) {
        assert(col >= 0 && col < COLS);
        for (int i = 0; i < ROWS; i++)
            val[i][col] = value_col[i];
    }
    void insert_left_col(T value_col[ROWS]) { insert_col(value_col, 0); }
    void insert_pixel(T value, int row, int col) {
        assert(row >= 0 && row < ROWS && col >= 0 && col < COLS);
        val[row][col] = value;
    }
    void insert_top_row(T value_row[COLS]) { insert_row(value_row, 0); }
    T& getval(int row, int col) {
        assert(row >= 0 && row < ROWS && col >= 0 && col < COLS);
        return val[row][col];
    }
    void shift_left() { shift_pixels_left(); }
    void shift_up() { shift_pixels_up(); }
    void insert(T value, int row, int col) { insert_pixel(value, row, col); }
    void insert_bottom(T value_row[COLS]) { insert_top_row(value_row); }
    void insert_right(T value_col[ROWS]) { insert_left_col(value_col); }

    T val[ROWS][COLS];
};

//
// LineBuffer class
//
template <int ROWS, int COLS, typename T, XF_ramtype_e MEM_TYPE = RAM_S2P_BRAM, int RESHAPE_FACTOR = 1>
class LineBuffer {
public:
    LineBuffer() {
        for (int i = 0; i < ROWS; ++i)
            for (int j = 0; j < COLS; ++j)
                val[i][j] = T();
    }
    void shift_pixels_up(int col) {
        assert(col >= 0 && col < COLS);
        for (int i = 0; i < ROWS - 1; i++)
            val[i][col] = val[i + 1][col];
    }
    void shift_pixels_down(int col) {
        assert(col >= 0 && col < COLS);
        for (int i = ROWS - 1; i > 0; --i)
            val[i][col] = val[i - 1][col];
    }
    void insert_top_row(T value, int col) {
        assert(col >= 0 && col < COLS);
        val[0][col] = value;
    }
    T& getval(int row, int col) {
        assert(row >= 0 && row < ROWS && col >= 0 && col < COLS);
        return val[row][col];
    }
    void shift_down(int col) { shift_pixels_down(col); }
    void insert_bottom(T value, int col) { insert_top_row(value, col); }
    T val[ROWS][COLS];
};

//
// Minimal Mat class (standard C++) compatible with functions below
//
static const int _XFCVDEPTH_DEFAULT = 0;

template <int T, int ROWS, int COLS, int NPPC, int XFCVDEPTH = _XFCVDEPTH_DEFAULT>
class Mat {
public:
    typedef uint64_t DATATYPE; // storage unit (simplified)

    Mat() { init(ROWS, COLS); }
    Mat(int r, int c) { init(r, c); }
    Mat(const Mat& src) { init(src.rows, src.cols); copyData(src); }
    ~Mat() = default;

    void init(int r, int c) {
        rows = r;
        cols = c;
        data.assign((size_t)rows * (size_t)cols, DATATYPE());
    }
    void copyData(const Mat& src) {
        rows = src.rows;
        cols = src.cols;
        data = src.data;
    }
    void write(int idx, DATATYPE v) {
        assert(idx >= 0 && idx < (int)data.size());
        data[(size_t)idx] = v;
    }
    DATATYPE read(int idx) const {
        assert(idx >= 0 && idx < (int)data.size());
        return data[(size_t)idx];
    }

    // ConvertTo: a simplified per-pixel conversion with saturation based on DST_T
    template <int DST_T>
    void convertTo(Mat<DST_T, ROWS, COLS, NPPC, XFCVDEPTH>& dst, int /*otype*/, double alpha, double beta) {
        int minv = 0, maxv = 0;
        if (DST_T == XF_8UC1) { minv = 0; maxv = 255; }
        else if (DST_T == XF_16UC1) { minv = 0; maxv = 65535; }
        else if (DST_T == XF_16SC1) { minv = -32768; maxv = 32767; }
        else if (DST_T == XF_32SC1) { minv = INT32_MIN; maxv = INT32_MAX; }
        else { // default clamp to 32-bit signed
            minv = INT32_MIN; maxv = INT32_MAX;
        }
        dst.init(rows, cols);
        const size_t N = (size_t)rows * (size_t)cols;
        for (size_t i = 0; i < N; ++i) {
            // interpret stored value as 32-bit signed pixel (simplified model)
            int32_t in_pix = (int32_t)(this->data[i] & 0xFFFFFFFFu);
            double val = in_pix * alpha + beta;
            if (val > (double)maxv) val = (double)maxv;
            if (val < (double)minv) val = (double)minv;
            int64_t out_pix = llround(val);
            dst.data[i] = (uint64_t)(uint32_t)out_pix;
        }
    }

    int rows = 0, cols = 0;
    std::vector<DATATYPE> data;
};

//
// Utility functions using standard C++ types
//

// Copy from pointer (DDR) to Mat
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_OUT = _XFCVDEPTH_DEFAULT>
void Ptr2xfMat(uint64_t* in_ptr, xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_OUT>& out_mat) {
    int loopcount = out_mat.rows * out_mat.cols;
    for (int i = 0; i < loopcount; i++) {
        out_mat.write(i, static_cast<typename xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_OUT>::DATATYPE>(in_ptr[i]));
    }
}

// Copy from Mat to pointer (DDR)
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT>
void xfMat2Ptr(xf::cv::Mat<Type, ROWS, COLS, NPPC, XFCVDEPTH_IN>& in_mat, uint64_t* out_ptr) {
    int loopcount = in_mat.rows * in_mat.cols;
    for (int i = 0; i < loopcount; i++) {
        out_ptr[i] = in_mat.read(i);
    }
}

// Duplicate Mat to DDR pointer and Mat
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT, int XFCVDEPTH_OUT = _XFCVDEPTH_DEFAULT>
void xFDuplicateMat_PTRMAT(xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_IN>& in_mat,
                           uint64_t* out_ptr,
                           xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_OUT>& out_mat) {
    int loopcount = in_mat.rows * in_mat.cols;
    for (int i = 0; i < loopcount; i++) {
        auto tmp = in_mat.read(i);
        out_ptr[i] = tmp;
        out_mat.write(i, tmp);
    }
}

// Duplicate Mat to DDR pointer and two Mats
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT, int XFCVDEPTH_OUT_1 = _XFCVDEPTH_DEFAULT, int XFCVDEPTH_OUT_2 = _XFCVDEPTH_DEFAULT>
void xFDuplicateMat_PTRMAT2(xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_IN>& in_mat,
                            uint64_t* out_ptr,
                            xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_OUT_1>& out_mat1,
                            xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_OUT_2>& out_mat2) {
    int loopcount = in_mat.rows * in_mat.cols;
    for (int i = 0; i < loopcount; i++) {
        auto tmp = in_mat.read(i);
        out_ptr[i] = tmp;
        out_mat1.write(i, tmp);
        out_mat2.write(i, tmp);
    }
}

// Duplicate Mat to DDR pointer and AXI stream
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT, int XFCVDEPTH_OUT = _XFCVDEPTH_DEFAULT>
void xFDuplicateMat_PTR_MAT_AXI(xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_IN>& in_mat,
                                uint64_t* out_ptr,
                                xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_OUT>& out_mat,
                                hls::stream<ap_axiu<BUS_WIDTH, 0, 0, 0> >& out_axi) {
    int loopcount = in_mat.rows * in_mat.cols;
    for (int i = 0; i < loopcount; i++) {
        ap_axiu<BUS_WIDTH, 0, 0, 0> v;
        auto tmp = in_mat.read(i);
        out_ptr[i] = tmp;
        out_mat.write(i, tmp);
        v.data = tmp;
        out_axi.write(v);
    }
}

// Stream Mat to AXI
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT>
void xFMat2AXI_Strm(xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_IN>& in_mat,
                    hls::stream<ap_axiu<BUS_WIDTH, 0, 0, 0> >& out_axi) {
    int loopcount = in_mat.rows * in_mat.cols;
    for (int i = 0; i < loopcount; i++) {
        ap_axiu<BUS_WIDTH, 0, 0, 0> v;
        v.data = in_mat.read(i);
        out_axi.write(v);
    }
}

// Read AXI into Mat
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_OUT = _XFCVDEPTH_DEFAULT>
void AXI_Strm2xFMat(hls::stream<ap_axiu<BUS_WIDTH, 0, 0, 0> >& in_axi,
                    xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_OUT>& out_mat) {
    int loopcount = out_mat.rows * out_mat.cols;
    for (int i = 0; i < loopcount; i++) {
        ap_axiu<BUS_WIDTH, 0, 0, 0> v = in_axi.read();
        out_mat.write(i, v.data);
    }
}

// Duplicate Mat to DDR pointer and AXI stream
template <int BUS_WIDTH, int TYPE, int ROWS, int COLS, int NPPC, int XFCVDEPTH_IN = _XFCVDEPTH_DEFAULT>
void xFDuplicateMat_PTR_AXI(xf::cv::Mat<TYPE, ROWS, COLS, NPPC, XFCVDEPTH_IN>& in_mat,
                            uint64_t* out_ptr,
                            hls::stream<ap_axiu<BUS_WIDTH, 0, 0, 0> >& out_axi) {
    int loopcount = in_mat.rows * in_mat.cols;
    for (int i = 0; i < loopcount; i++) {
        ap_axiu<BUS_WIDTH, 0, 0, 0> v;
        auto tmp = in_mat.read(i);
        out_ptr[i] = tmp;
        v.data = tmp;
        out_axi.write(v);
    }
}

// Set border for a kernel block (replicate/reflect/constant)
template <int K_ROWS, int K_COLS, typename SRC_T, int BORDER_T>
void xFSetBorder(xf::cv::Window<K_ROWS, K_COLS, SRC_T>& src_blk,
                 uint16_t _row,
                 uint16_t _col,
                 uint16_t _src_rows,
                 uint16_t _src_cols) {
    uint16_t blk_t_idx = (K_ROWS - _row - 1);
    uint16_t blk_b_idx = (K_ROWS - (_row - _src_rows + 1) - 1);
    uint16_t blk_l_idx = (K_COLS - _col - 1);
    uint16_t blk_r_idx = (K_COLS - (_col - _src_cols + 1) - 1);

    for (uint16_t r = 0; r < K_ROWS; r++) {
        for (uint16_t c = 0; c < K_COLS; c++) {
            bool top_border = ((r < blk_t_idx) && (_row < K_ROWS - 1));
            bool bottom_border = ((r > blk_b_idx) && (_row >= _src_rows));
            bool left_border = ((c < blk_l_idx) && (_col < K_COLS - 1));
            bool right_border = ((c > blk_r_idx) && (_col >= _src_cols));

            uint16_t r_idx = r, c_idx = c;

            if (BORDER_T == XF_BORDER_REPLICATE) {
                r_idx = top_border ? blk_t_idx : bottom_border ? blk_b_idx : r;
            } else if (BORDER_T == XF_BORDER_REFLECT_101) {
                r_idx = top_border ? (uint16_t)(2 * blk_t_idx - r) : bottom_border ? (uint16_t)(2 * blk_b_idx - r) : r;
            } else if (BORDER_T == XF_BORDER_REFLECT) {
                r_idx = top_border ? (uint16_t)(2 * blk_t_idx - r - 1) : bottom_border ? (uint16_t)(2 * blk_b_idx - r + 1) : r;
            }

            if (BORDER_T == XF_BORDER_REPLICATE) {
                c_idx = left_border ? blk_l_idx : right_border ? blk_r_idx : c;
            } else if (BORDER_T == XF_BORDER_REFLECT_101) {
                c_idx = left_border ? (uint16_t)(2 * blk_l_idx - c) : right_border ? (uint16_t)(2 * blk_r_idx - c) : c;
            } else if (BORDER_T == XF_BORDER_REFLECT) {
                c_idx = left_border ? (uint16_t)(2 * blk_l_idx - c - 1) : right_border ? (uint16_t)(2 * blk_r_idx - c + 1) : c;
            }

            if ((top_border || bottom_border || left_border || right_border) && (BORDER_T == XF_BORDER_CONSTANT)) {
                src_blk.val[r][c] = SRC_T();
            } else {
                src_blk.val[r][c] = src_blk.val[r_idx][c_idx];
            }
        }
    }
}

// memcpy utility
template <int SIZE, int WORDWIDTH>
void xFCopyBlockMemoryOut1(uint64_t* _src, unsigned long long int* _dst, int nbytes) {
    if (nbytes) std::memcpy((void*)_dst, (void*)_src, (size_t)nbytes);
}

} // namespace cv
} // namespace xf

//
// ---- optical_flow.h related simplified definitions ----
//

// Dummy constant used in xFSBMState
#ifndef XF_STEREO_PREFILTER_SOBEL_TYPE
#define XF_STEREO_PREFILTER_SOBEL_TYPE 1
#endif

namespace xf {
namespace cv {

// LOCAL STEREO BLOCK MATCHING UTILITY
template <int WSIZE, int NDISP, int NDISP_UNIT>
class xFSBMState {
public:
    int preFilterType;
    int preFilterSize;
    int preFilterCap;
    int SADWindowSize;
    int minDisparity;
    int numberOfDisparities;
    int textureThreshold;
    int uniquenessRatio;
    int ndisp_unit;
    int sweepFactor;
    int remainder;

    xFSBMState() {
        preFilterType = XF_STEREO_PREFILTER_SOBEL_TYPE;
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

// Point_
template <typename T>
class Point_ {
public:
    Point_() : x(), y() {}
    Point_(T _x, T _y) : x(_x), y(_y) {}
    Point_(const Point_& pt) : x(pt.x), y(pt.y) {}
    ~Point_() = default;

    T x, y;
};

// Template metaprogramming implementation of floor log2
template <int N>
struct log2 {
    static constexpr int fvalue = 1 + (log2<N / 2>::fvalue);
    static constexpr int cvalue = (N > (1 << fvalue)) ? (fvalue + 1) : fvalue;
};

template <>
struct log2<1> {
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

} // namespace cv
} // namespace xf

//
// ---- typedefs.h ----
//
#ifndef __TYPEDEFS_H__
#define __TYPEDEFS_H__
const int MAX_HEIGHT = 436;
const int MAX_WIDTH = 1024;

// Use standard floating-point types
typedef float input_t;
typedef float pixel_t;
typedef float outer_pixel_t;
typedef double calc_pixel_t;
typedef float vel_pixel_t;

typedef struct{
    pixel_t x;
    pixel_t y;
    pixel_t z;
} gradient_t;

typedef struct{
    outer_pixel_t val[6];
} outer_t;

typedef struct{
    outer_pixel_t val[6];
} tensor_t;

typedef struct{
    vel_pixel_t x;
    vel_pixel_t y;
} velocity_t;

// for data packing (simplified)
typedef uint64_t frames_t;

#endif // __TYPEDEFS_H__
