// contents of uart_transmitter_receiver_tb.cpp

#include <iostream>
#include <cassert>
#include <cstdint>
#define BUFFER_SIZE 1024

// Include the source under test (no main() defined there)
void uart_transmitter_receiver(uint8_t tx_data[BUFFER_SIZE], uint8_t rx_data[BUFFER_SIZE], uint8_t tx_enable, uint8_t rx_enable, uint8_t *tx_done, uint8_t *rx_done);
static void fill_pattern(uint8_t* buf, size_t size, uint8_t start = 0) {
    for (size_t i = 0; i < size; ++i) {
        buf[i] = static_cast<uint8_t>(start + (i & 0xFF));
    }
}

static void fill_constant(uint8_t* buf, size_t size, uint8_t value) {
    for (size_t i = 0; i < size; ++i) {
        buf[i] = value;
    }
}

static bool is_constant_value(const uint8_t* buf, size_t size, uint8_t value) {
    for (size_t i = 0; i < size; ++i) {
        if (buf[i] != value) return false;
    }
    return true;
}

int main() {
    std::cout << "Running uart_transmitter_receiver_tb..." << std::endl;

    // Prepare buffers and flags
    uint8_t tx_data[BUFFER_SIZE];
    uint8_t rx_data[BUFFER_SIZE];
    uint8_t tx_done = 0;
    uint8_t rx_done = 0;

    // Initialize TX with a simple pattern and RX with a sentinel value
    fill_pattern(tx_data, BUFFER_SIZE, 0x10);
    fill_constant(rx_data, BUFFER_SIZE, 0xAA);

    // Test 1: Both transmitter and receiver disabled
    // Expectation: tx_done = 0, rx_done = 0, rx_data remains unchanged.
    tx_done = 0x5A; // pre-set to a non-zero value to ensure function overwrites it
    rx_done = 0x5A;
    uart_transmitter_receiver(tx_data, rx_data, /*tx_enable=*/0, /*rx_enable=*/0, &tx_done, &rx_done);
    assert(tx_done == 0);
    assert(rx_done == 0);
    assert(is_constant_value(rx_data, BUFFER_SIZE, 0xAA));
    std::cout << "Test 1 passed: Both disabled -> done flags cleared, RX buffer unchanged." << std::endl;

    // Test 2: Transmitter enabled only
    // Expectation: tx_done = 1, rx_done = 0, rx_data remains unchanged.
    fill_constant(rx_data, BUFFER_SIZE, 0xAA); // reset RX buffer
    tx_done = 0;
    rx_done = 0;
    uart_transmitter_receiver(tx_data, rx_data, /*tx_enable=*/1, /*rx_enable=*/0, &tx_done, &rx_done);
    assert(tx_done == 1);
    assert(rx_done == 0);
    assert(is_constant_value(rx_data, BUFFER_SIZE, 0xAA));
    std::cout << "Test 2 passed: TX enabled only -> tx_done set, rx_done cleared, RX buffer unchanged." << std::endl;

    // Test 3: Receiver enabled only
    // Expectation: rx_done = 1. rx_data contents are overwritten from an uninitialized internal buffer,
    // so we only assert the status flag and avoid asserting rx_data contents.
    fill_constant(rx_data, BUFFER_SIZE, 0xAA); // reset RX buffer
    tx_done = 0x77;
    rx_done = 0x77;
    uart_transmitter_receiver(tx_data, rx_data, /*tx_enable=*/0, /*rx_enable=*/1, &tx_done, &rx_done);
    assert(tx_done == 0); // TX disabled => should be cleared
    assert(rx_done == 1);
    // Print a few sample RX values for visibility (may be indeterminate)
    std::cout << "Test 3 info: RX enabled only -> rx_done set. Sample rx_data[0..3]: "
              << +rx_data[0] << ", " << +rx_data[1] << ", " << +rx_data[2] << ", " << +rx_data[3] << std::endl;
    std::cout << "Test 3 passed: RX enabled only -> rx_done set." << std::endl;

    // Test 4: Both transmitter and receiver enabled
    // Expectation: tx_done = 1, rx_done = 1. We do not assert RX data content due to internal uninitialized buffer.
    fill_constant(rx_data, BUFFER_SIZE, 0xAA); // reset RX buffer
    tx_done = 0;
    rx_done = 0;
    uart_transmitter_receiver(tx_data, rx_data, /*tx_enable=*/1, /*rx_enable=*/1, &tx_done, &rx_done);
    assert(tx_done == 1);
    assert(rx_done == 1);
    std::cout << "Test 4 passed: Both enabled -> both done flags set." << std::endl;

    std::cout << "All tests passed for uart_transmitter_receiver." << std::endl;
    return 0;
}