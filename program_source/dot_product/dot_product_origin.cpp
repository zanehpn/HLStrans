// Converted from dot_product_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: dot_product.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void dot_product(const int32_t A[ARRAY_SIZE], const int32_t B[ARRAY_SIZE], int64_t &result) {

    result = 0;
    for (int i = 0; i < ARRAY_SIZE; i++) {

        result += (int64_t)A[i] * (int64_t)B[i];
    }
}

// Top function name: dot_product
