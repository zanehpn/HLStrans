#include <cmath>
#include <cstdint>
#include <climits>

// Simple unsigned fixed-point type: W total bits, I integer bits (unsigned)
template <int W, int I>
struct UFixed {
    static_assert(W > 0, "Total width W must be positive");
    static_assert(I >= 0 && I <= W, "Invalid integer width I");
    static constexpr int width = W;
    static constexpr int iwidth = I;
    static constexpr int fwidth = W - I;

    uint64_t raw;

    UFixed() : raw(0) {}
    explicit UFixed(double v) { set_from_double(v); }

    static constexpr uint64_t mask() {
        return (W >= 64) ? ~0ULL : ((1ULL << W) - 1ULL);
    }

    void set_raw(uint64_t r) {
        if constexpr (W >= 64) {
            raw = r;
        } else {
            raw = r & mask();
        }
    }

    uint64_t get_raw() const {
        if constexpr (W >= 64) {
            return raw;
        } else {
            return raw & mask();
        }
    }

    void set_from_double(double v) {
        if (v < 0.0) v = 0.0;
        long double scaled = v * std::ldexp(1.0L, fwidth);
        long double rounded = std::floor(scaled + 0.5L);
        long double maxv = (W >= 64) ? static_cast<long double>(ULLONG_MAX)
                                     : static_cast<long double>((1ULL << W) - 1ULL);
        if (rounded < 0.0L) rounded = 0.0L;
        if (rounded > maxv) rounded = maxv;
        set_raw(static_cast<uint64_t>(rounded));
    }

    double to_double() const {
        return static_cast<double>(static_cast<long double>(get_raw()) * std::ldexp(1.0L, -fwidth));
    }
};

#define IN_BW 24
#define IN_IW 8
#define OUT_BW 28
#define OUT_IW 4

// typedefs for top-level input and output fixed-point formats
using in_data_t = UFixed<IN_BW, IN_IW>;
using out_data_t = UFixed<OUT_BW, OUT_IW>;

// Fixed point square-root (using double math and quantization to target format)
static inline void fxp_sqrt(out_data_t& result, const in_data_t& in_val) {
    double v = in_val.to_double();
    if (v < 0.0) v = 0.0; // safeguard, though inputs are unsigned
    double r = std::sqrt(v);
    result.set_from_double(r);
}

// Top level wrapper function
out_data_t fxp_sqrt_top(in_data_t& in_val) {
    out_data_t result;
    fxp_sqrt(result, in_val);
    return result;
}
