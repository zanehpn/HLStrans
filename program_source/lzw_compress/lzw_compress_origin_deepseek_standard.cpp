// Converted from lzw_compress_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: lzw_compress.cpp ----
#include <cstdint>

#define DICT_SIZE 4096
#define MAX_BITS 12
#define INPUT_SIZE 1024

void lzw_compress(uint8_t input[INPUT_SIZE], uint16_t output[INPUT_SIZE]) {

    uint16_t dictionary[DICT_SIZE];
    int dict_size = 256;
    uint16_t current_code = 0;
    uint16_t next_code = 256;

    for (int i = 0; i < 256; i++) {
        dictionary[i] = static_cast<uint16_t>(i & 0x0FFF);
    }

    uint16_t prefix = static_cast<uint16_t>(input[0] & 0x0FF);
    int output_index = 0;

    for (int i = 1; i < INPUT_SIZE; i++) {

        uint8_t character = input[i];
        uint16_t combined = static_cast<uint16_t>((((uint32_t)prefix << 8) | character) & 0x0FFF);

        bool found = false;
        for (int j = 0; j < dict_size; j++) {
            if (dictionary[j] == combined) {
                prefix = static_cast<uint16_t>(j & 0x0FFF);
                found = true;
                break;
            }
        }

        if (!found) {
            output[output_index++] = static_cast<uint16_t>(prefix & 0x0FFF);
            if (dict_size < DICT_SIZE) {
                dictionary[dict_size++] = static_cast<uint16_t>(combined & 0x0FFF);
            }
            prefix = static_cast<uint16_t>(character & 0x0FF);
        }
    }

    output[output_index++] = static_cast<uint16_t>(prefix & 0x0FFF);
}

// Top function name: lzw_compress
