// ---- MALLOC_VARIANT: ip_checksum.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void ip_checksum(uint16_t data[ARRAY_SIZE], uint16_t& checksum) {
    // Dynamically allocate a working copy of the input data
    uint16_t* buf = new uint16_t[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        buf[i] = data[i];
    }

    uint32_t sum = 0;
    for (int i = 0; i < ARRAY_SIZE; i++) {
        sum += buf[i];
        if (sum > 0xFFFF) {
            sum = (sum & 0xFFFF) + (sum >> 16);
        }
    }

    delete[] buf;

    checksum = ~((uint16_t)sum);
}
