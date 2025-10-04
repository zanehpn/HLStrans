// Converted from packet_filtering_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: packet_filtering.cpp ----
#include <stdint.h>

#define PACKET_COUNT 1024
#define PACKET_SIZE 64

void packet_filtering(uint8_t packets[PACKET_COUNT][PACKET_SIZE], uint8_t filtered_packets[PACKET_COUNT][PACKET_SIZE], uint8_t filter_criteria[PACKET_SIZE]) {

    int i, j;
    int match;
    for (i = 0; i < PACKET_COUNT; i++) {

        match = 1;
        for (j = 0; j < PACKET_SIZE; j++) {

            if (packets[i][j] != filter_criteria[j]) {
                match = 0;
                break;
            }
        }
        if (match) {
            for (j = 0; j < PACKET_SIZE; j++) {

                filtered_packets[i][j] = packets[i][j];
            }
        } else {
            for (j = 0; j < PACKET_SIZE; j++) {

                filtered_packets[i][j] = 0;
            }
        }
    }
}

// Top function name: packet_filtering
