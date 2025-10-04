// Converted from i2c_master_slave_controller.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: i2c_master_slave_controller.cpp ----
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
#pragma HLS ARRAY_PARTITION variable=slave_rx type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=slave_tx type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=master_rx type=cyclic dim=1 factor=4
#pragma HLS ARRAY_PARTITION variable=master_tx type=cyclic dim=1 factor=1
    uint8_t master_tx_index = 0;
    uint8_t slave_tx_index = 0;
    uint8_t master_rx_index = 0;
    uint8_t slave_rx_index = 0;

    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (master_tx_index < master_tx_size) {
            slave_rx[slave_rx_index++] = master_tx[master_tx_index++];
        }
        if (slave_tx_index < slave_tx_size) {
            master_rx[master_rx_index++] = slave_tx[slave_tx_index++];
        }
    }
}

// Top function name: i2c_master_slave_controller
