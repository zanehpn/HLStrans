// MALLOC_VARIANT
#include <stdint.h>

#define PACKET_SIZE 1024

void ethernet_mac_controller(uint8_t input_packet[PACKET_SIZE], uint8_t output_packet[PACKET_SIZE]) {
    uint16_t crc = 0xFFFF;
    uint8_t polynomial = 0x07;

    // Use dynamic allocation for intermediate buffers
    uint8_t* in_buf = new uint8_t[PACKET_SIZE];
    uint8_t* out_buf = new uint8_t[PACKET_SIZE];

    // Copy input to dynamic buffer
    for (int i = 0; i < PACKET_SIZE; i++) {
        in_buf[i] = input_packet[i];
    }

    // Calculate CRC for input packet from dynamic buffer
    for (int i = 0; i < PACKET_SIZE; i++) {
        crc ^= in_buf[i];
        for (int j = 0; j < 8; j++) {
            if (crc & 1) {
                crc = (crc >> 1) ^ polynomial;
            } else {
                crc >>= 1;
            }
        }
    }

    // Prepare output in dynamic buffer
    for (int i = 0; i < PACKET_SIZE; i++) {
        out_buf[i] = in_buf[i];
    }
    out_buf[PACKET_SIZE - 2] = crc & 0xFF;
    out_buf[PACKET_SIZE - 1] = (crc >> 8) & 0xFF;

    // Copy dynamic buffer to output_packet
    for (int i = 0; i < PACKET_SIZE; i++) {
        output_packet[i] = out_buf[i];
    }

    delete[] in_buf;
    delete[] out_buf;
}
