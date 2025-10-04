#include <stdint.h>

#define PACKET_COUNT 1024
#define PACKET_SIZE 64

void packet_filtering(uint8_t packets[PACKET_COUNT][PACKET_SIZE],
                      uint8_t filtered_packets[PACKET_COUNT][PACKET_SIZE],
                      uint8_t filter_criteria[PACKET_SIZE]) {
    // Dynamically allocate internal working buffers
    uint8_t* packets_dyn = new uint8_t[PACKET_COUNT * PACKET_SIZE];
    uint8_t* filtered_packets_dyn = new uint8_t[PACKET_COUNT * PACKET_SIZE];
    uint8_t* filter_criteria_dyn = new uint8_t[PACKET_SIZE];

    // Copy inputs into dynamic buffers
    for (int i = 0; i < PACKET_COUNT; ++i) {
        for (int j = 0; j < PACKET_SIZE; ++j) {
            packets_dyn[i * PACKET_SIZE + j] = packets[i][j];
        }
    }
    for (int j = 0; j < PACKET_SIZE; ++j) {
        filter_criteria_dyn[j] = filter_criteria[j];
    }

    // Core computation using dynamic buffers
    for (int i = 0; i < PACKET_COUNT; i++) {
        int match = 1;
        for (int j = 0; j < PACKET_SIZE; j++) {
            if (packets_dyn[i * PACKET_SIZE + j] != filter_criteria_dyn[j]) {
                match = 0;
                break;
            }
        }
        if (match) {
            for (int j = 0; j < PACKET_SIZE; j++) {
                filtered_packets_dyn[i * PACKET_SIZE + j] = packets_dyn[i * PACKET_SIZE + j];
            }
        } else {
            for (int j = 0; j < PACKET_SIZE; j++) {
                filtered_packets_dyn[i * PACKET_SIZE + j] = 0;
            }
        }
    }

    // Copy results back to the output 2D array
    for (int i = 0; i < PACKET_COUNT; ++i) {
        for (int j = 0; j < PACKET_SIZE; ++j) {
            filtered_packets[i][j] = filtered_packets_dyn[i * PACKET_SIZE + j];
        }
    }

    // Free dynamic buffers
    delete[] packets_dyn;
    delete[] filtered_packets_dyn;
    delete[] filter_criteria_dyn;
}
