// MALLOC_VARIANT
#include <stdint.h>

#define DATA_SIZE 1024

void crc32(uint32_t data[DATA_SIZE], uint32_t &crc) {
    uint32_t* buf = new uint32_t[DATA_SIZE];
    for (int i = 0; i < DATA_SIZE; i++) {
        buf[i] = data[i];
    }

    uint32_t polynomial = 0xEDB88320;
    crc = 0xFFFFFFFF;

    for (int i = 0; i < DATA_SIZE; i++) {
        uint32_t current_byte = buf[i];
        crc ^= current_byte;
        for (int j = 0; j < 8; j++) {
            if (crc & 1) {
                crc = (crc >> 1) ^ polynomial;
            } else {
                crc = crc >> 1;
            }
        }
    }
    crc ^= 0xFFFFFFFF;

    delete[] buf;
}
