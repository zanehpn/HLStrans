// ---- file: dot_product.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void dot_product(const int32_t A[ARRAY_SIZE], const int32_t B[ARRAY_SIZE], int64_t &result) {
#pragma HLS ARRAY_PARTITION variable=B type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=1 factor=1
    result = 0;
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        result += (int64_t)A[i] * (int64_t)B[i];
    }
}

// Top function name: dot_product
