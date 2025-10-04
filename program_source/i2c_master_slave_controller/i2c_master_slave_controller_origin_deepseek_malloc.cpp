// MALLOC_VARIANT
#include <stdint.h>

#define ARRAY_SIZE 1024

void i2c_master_slave_controller(
    uint8_t master_tx[ARRAY_SIZE],
    uint8_t master_rx[ARRAY_SIZE],
    uint8_t slave_tx[ARRAY_SIZE],
    uint8_t slave_rx[ARRAY_SIZE],
    uint8_t master_tx_size,
    uint8_t slave_tx_size)
{
    // Dynamically allocated working buffers
    uint8_t* master_tx_buf = new uint8_t[ARRAY_SIZE];
    uint8_t* slave_tx_buf  = new uint8_t[ARRAY_SIZE];
    uint8_t* master_rx_buf = new uint8_t[ARRAY_SIZE];
    uint8_t* slave_rx_buf  = new uint8_t[ARRAY_SIZE];

    // Initialize working buffers from input arrays
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        master_tx_buf[i] = master_tx[i];
        slave_tx_buf[i]  = slave_tx[i];
    }

    uint8_t master_tx_index = 0;
    uint8_t slave_tx_index  = 0;
    uint8_t master_rx_index = 0;
    uint8_t slave_rx_index  = 0;

    for (int i = 0; i < ARRAY_SIZE; i++) {
        if (master_tx_index < master_tx_size) {
            slave_rx_buf[slave_rx_index++] = master_tx_buf[master_tx_index++];
        }
        if (slave_tx_index < slave_tx_size) {
            master_rx_buf[master_rx_index++] = slave_tx_buf[slave_tx_index++];
        }
    }

    // Copy results back to output arrays
    for (int i = 0; i < master_rx_index; ++i) {
        master_rx[i] = master_rx_buf[i];
    }
    for (int i = 0; i < slave_rx_index; ++i) {
        slave_rx[i] = slave_rx_buf[i];
    }

    delete[] master_tx_buf;
    delete[] slave_tx_buf;
    delete[] master_rx_buf;
    delete[] slave_rx_buf;
}
