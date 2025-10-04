// contents of gpio_controller_tb.cpp

#include <iostream>
#include <cassert>

// Include the source to access gpio_controller and GPIO_SIZE
#define GPIO_SIZE 1024

void gpio_controller(uint8_t input_pins[GPIO_SIZE], uint8_t output_pins[GPIO_SIZE], uint8_t control_signal) ;
// Helper to fill input with a deterministic pattern
void fill_input_pattern(uint8_t input_pins[], int size) {
    for (int i = 0; i < size; ++i) {
        input_pins[i] = static_cast<uint8_t>((i * 3 + 7) & 0xFF);
    }
}

// Helper to fill output with a sentinel value
void fill_output(uint8_t output_pins[], int size, uint8_t value) {
    for (int i = 0; i < size; ++i) {
        output_pins[i] = value;
    }
}

// Verify that two arrays are equal
bool arrays_equal(const uint8_t a[], const uint8_t b[], int size) {
    for (int i = 0; i < size; ++i) {
        if (a[i] != b[i]) return false;
    }
    return true;
}

// Verify that array contains all zeros
bool array_all_zero(const uint8_t a[], int size) {
    for (int i = 0; i < size; ++i) {
        if (a[i] != 0) return false;
    }
    return true;
}

int main() {
    static uint8_t input_pins[GPIO_SIZE];
    static uint8_t output_pins[GPIO_SIZE];

    // Prepare input pattern
    fill_input_pattern(input_pins, GPIO_SIZE);

    // Test Case 1: control_signal = 1 (LSB set) -> output should mirror input
    fill_output(output_pins, GPIO_SIZE, 0xAA); // sentinel to ensure overwrite
    gpio_controller(input_pins, output_pins, 1);
    assert(arrays_equal(input_pins, output_pins, GPIO_SIZE));
    std::cout << "Test Case 1 passed: control_signal=1, outputs mirror inputs.\n";

    // Test Case 2: control_signal = 0 (LSB clear) -> output should be all zeros
    fill_output(output_pins, GPIO_SIZE, 0xAA); // reset to sentinel
    gpio_controller(input_pins, output_pins, 0);
    assert(array_all_zero(output_pins, GPIO_SIZE));
    std::cout << "Test Case 2 passed: control_signal=0, outputs are all zeros.\n";

    // Test Case 3: control_signal = 2 (LSB clear, other bit set) -> still all zeros
    fill_output(output_pins, GPIO_SIZE, 0xAA);
    gpio_controller(input_pins, output_pins, 2);
    assert(array_all_zero(output_pins, GPIO_SIZE));
    std::cout << "Test Case 3 passed: control_signal=2, outputs are all zeros (only bit0 matters).\n";

    // Test Case 4: control_signal = 255 (LSB set among others) -> output should mirror input
    fill_output(output_pins, GPIO_SIZE, 0xAA);
    gpio_controller(input_pins, output_pins, 255);
    assert(arrays_equal(input_pins, output_pins, GPIO_SIZE));
    std::cout << "Test Case 4 passed: control_signal=255, outputs mirror inputs (bit0 controls behavior).\n";

    // Additional sanity checks on edge indices
    // Ensure first and last elements behave as expected when bit0 is set
    fill_output(output_pins, GPIO_SIZE, 0xAA);
    gpio_controller(input_pins, output_pins, 1);
    assert(output_pins[0] == input_pins[0]);
    assert(output_pins[GPIO_SIZE - 1] == input_pins[GPIO_SIZE - 1]);
    std::cout << "Edge index check passed: first and last elements match for control_signal=1.\n";

    std::cout << "All gpio_controller tests passed.\n";
    return 0;
}