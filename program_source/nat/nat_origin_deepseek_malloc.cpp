// MALLOC_VARIANT
#include <stdint.h>

#define LARGE_SCALE 1024

void nat(uint32_t src_ip[LARGE_SCALE], uint32_t dst_ip[LARGE_SCALE], uint32_t translated_ip[LARGE_SCALE]) {
    uint32_t* src_dyn = new uint32_t[LARGE_SCALE];
    uint32_t* dst_dyn = new uint32_t[LARGE_SCALE];
    uint32_t* trans_dyn = new uint32_t[LARGE_SCALE];

    for (int i = 0; i < LARGE_SCALE; ++i) {
        src_dyn[i] = src_ip[i];
        dst_dyn[i] = dst_ip[i];
    }

    for (int i = 0; i < LARGE_SCALE; ++i) {
        trans_dyn[i] = src_dyn[i] + 0x01000000U;
    }

    for (int i = 0; i < LARGE_SCALE; ++i) {
        translated_ip[i] = trans_dyn[i];
    }

    delete[] src_dyn;
    delete[] dst_dyn;
    delete[] trans_dyn;
}
