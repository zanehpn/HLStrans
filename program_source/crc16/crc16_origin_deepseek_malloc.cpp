// MALLOC_VARIANT
#include <cstdint>
#include <cstdlib>

#define ARRAY_SIZE 1024

void crc16(uint16_t data[ARRAY_SIZE], uint16_t crc[ARRAY_SIZE]) {
    uint16_t* data_dyn = static_cast<uint16_t*>(std::malloc(ARRAY_SIZE * sizeof(uint16_t)));
    uint16_t* crc_dyn  = static_cast<uint16_t*>(std::malloc(ARRAY_SIZE * sizeof(uint16_t)));
    if (!data_dyn || !crc_dyn) {
        if (data_dyn) std::free(data_dyn);
        if (crc_dyn)  std::free(crc_dyn);
        return;
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        data_dyn[i] = data[i];
    }

    uint16_t polynomial = 0x1021;
    for (int i = 0; i < ARRAY_SIZE; i++) {
        uint16_t current_crc = 0xFFFF;
        for (int j = 0; j < 16; j++) {
            bool bit = (((data_dyn[i] >> (15 - j)) & 1) == 1);
            bool c15 = (((current_crc >> 15) & 1) == 1);
            current_crc <<= 1;
            if (c15 ^ bit) {
                current_crc ^= polynomial;
            }
        }
        crc_dyn[i] = current_crc;
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        crc[i] = crc_dyn[i];
    }

    std::free(data_dyn);
    std::free(crc_dyn);
}
