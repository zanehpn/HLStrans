#include <cstdint>

#define N 10

using din_t = int8_t;
using dout_t = int16_t;
using dsel_t = uint8_t;

dout_t test(din_t A[N]) {
    dout_t out_accum = 0;
    for (dsel_t x = 0; x < N; x++) {
        out_accum += A[x];
    }
    return out_accum;
}
