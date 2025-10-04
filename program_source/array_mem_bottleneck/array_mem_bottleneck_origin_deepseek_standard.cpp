#include <cstdint>

#define N 128

using din_t = int8_t;
using dout_t = int16_t;

dout_t array_mem_bottleneck(din_t mem[N]) {
    dout_t sum = 0;
    for (int i = 2; i < N; ++i) {
        sum += mem[i] + mem[i - 1] + mem[i - 2];
    }
    return sum;
}
