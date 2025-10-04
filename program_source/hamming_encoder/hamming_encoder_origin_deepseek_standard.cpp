// Converted from hamming_encoder_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: hamming_encoder.cpp ----
#include <cstdint>

#define DATA_SIZE 1024

void hamming_encoder(std::uint8_t data_in[DATA_SIZE], std::uint16_t data_out[DATA_SIZE]) {

    for (int i = 0; i < DATA_SIZE; i++) {

        std::uint8_t d = data_in[i];
        std::uint16_t encoded = 0;

        auto db = [&](int b) -> int { return (d >> b) & 1; };

        // Assign data bits
        if (db(0)) encoded |= (1u << 2);
        if (db(1)) encoded |= (1u << 4);
        if (db(2)) encoded |= (1u << 5);
        if (db(3)) encoded |= (1u << 6);
        if (db(4)) encoded |= (1u << 8);
        if (db(5)) encoded |= (1u << 9);
        if (db(6)) encoded |= (1u << 10);
        if (db(7)) encoded |= (1u << 11);

        // Calculate parity bits
        int p0 = db(0) ^ db(1) ^ db(3) ^ db(4) ^ db(6);
        int p1 = db(0) ^ db(2) ^ db(3) ^ db(5) ^ db(6);
        int p3 = db(1) ^ db(2) ^ db(3) ^ db(7);
        int p7 = db(4) ^ db(5) ^ db(6) ^ db(7);

        if (p0) encoded |= (1u << 0);
        if (p1) encoded |= (1u << 1);
        if (p3) encoded |= (1u << 3);
        if (p7) encoded |= (1u << 7);

        data_out[i] = encoded;
    }
}

// Top function name: hamming_encoder
