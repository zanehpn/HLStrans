#include <cstdint>

#define N 128

using din_t = int8_t;
using dout_t = int16_t;

dout_t mem_bottleneck_resolved(din_t mem[N]) {

    din_t tmp0, tmp1, tmp2;
    dout_t sum = 0;
    int i;

    tmp0 = mem[0];
    tmp1 = mem[1];

    for (i = 2; i < N; i++) {
        tmp2 = mem[i];
        sum += static_cast<dout_t>(tmp2 + tmp1 + tmp0);
        tmp0 = tmp1;
        tmp1 = tmp2;
    }

    return sum;
}
