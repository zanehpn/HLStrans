#include <cstdint>

constexpr int N = 32;

using din_t = int8_t;
using dout_t = int16_t;
using dsel_t = uint8_t;

dout_t loop_var(din_t A[N], dsel_t width) {
    dout_t out_accum = 0;
    dsel_t x;

    for (x = 0; x < width; x++) {
        out_accum += A[x];
    }

    return out_accum;
}
