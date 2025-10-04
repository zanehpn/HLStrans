#include <stdint.h>
#include <stdlib.h>

#define ARRAY_SIZE 1024

void dot_product(const int32_t A[ARRAY_SIZE], const int32_t B[ARRAY_SIZE], int64_t &result) {
    int32_t* dynA = (int32_t*)malloc(ARRAY_SIZE * sizeof(int32_t));
    int32_t* dynB = (int32_t*)malloc(ARRAY_SIZE * sizeof(int32_t));
    if (!dynA || !dynB) {
        if (dynA) free(dynA);
        if (dynB) free(dynB);
        result = 0;
        return;
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        dynA[i] = A[i];
        dynB[i] = B[i];
    }

    int64_t acc = 0;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        acc += (int64_t)dynA[i] * (int64_t)dynB[i];
    }
    result = acc;

    free(dynA);
    free(dynB);
}
