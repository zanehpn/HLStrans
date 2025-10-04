// ---- file: packet_filtering.cpp ----
#include <stdint.h>

#define PACKET_COUNT 1024
#define PACKET_SIZE 64

void packet_filtering(uint8_t packets[PACKET_COUNT][PACKET_SIZE], uint8_t filtered_packets[PACKET_COUNT][PACKET_SIZE], uint8_t filter_criteria[PACKET_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=filter_criteria type=cyclic dim=1 factor=4
#pragma HLS ARRAY_PARTITION variable=filtered_packets type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=filtered_packets type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=packets type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=packets type=cyclic dim=1 factor=1
    int i, j;
    int match;
    for (i = 0; i < PACKET_COUNT; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        match = 1;
        for (j = 0; j < PACKET_SIZE; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
            if (packets[i][j] != filter_criteria[j]) {
                match = 0;
                break;
            }
        }
        if (match) {
            for (j = 0; j < PACKET_SIZE; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
                filtered_packets[i][j] = packets[i][j];
            }
        } else {
            for (j = 0; j < PACKET_SIZE; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=8
                filtered_packets[i][j] = 0;
            }
        }
    }
}

// Top function name: packet_filtering
