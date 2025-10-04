// contents of stable_pointer_tb.cpp
#include <iostream>
#include <vector>
#include <cassert>
#include "hls_stream.h"

// Declare top-level function from stable_pointer.cpp
extern "C" void stable_pointer(int* mem, hls::stream<int>& in, hls::stream<int>& out);

int main() {
    const int MEM_SIZE = 256;
    const int MEM_WINDOW = 32; // write_process only uses 0..31
    const int SENTINEL = -999999;
    const int MUL = 23 * 11; // Expected overall multiply factor = 253

    // Initialize memory
    int mem[MEM_SIZE];
    for (int i = 0; i < MEM_SIZE; ++i) {
        mem[i] = SENTINEL;
    }

    // Create input/output streams
    hls::stream<int> in;
    hls::stream<int> out;

    // Test sequence:
    // - Includes negative and zero values
    // - Length > 32 to exercise wrap-around behavior in write_process
    std::vector<int> inputs = {
        1, -3, 0, 7, 12, 100,
        2, 3, 4, 5, 6, 7, 8, 9, 10,
        11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30
    };

    std::vector<int> outputs;
    outputs.reserve(inputs.size());

    // Test Case 1: Pipeline correctness
    // Feed inputs through stable_pointer and check output = input * 253
    std::cout << "Test Case 1: Pipeline multiply-by-253 correctness\n";
    for (size_t k = 0; k < inputs.size(); ++k) {
        int x = inputs[k];
        in.write(x);
        stable_pointer(mem, in, out); // Each call processes one input via tasks
        int y = out.read();
        outputs.push_back(y);

        int expected = x * MUL;
        std::cout << "  Input[" << k << "]=" << x << " -> Output=" << y << " (expected " << expected << ")\n";
        assert(y == expected && "Output mismatch: pipeline multiplication failed");
    }

    // Test Case 2: Memory write and wrap-around behavior
    // write_process writes to mem[addr] with addr incrementing and wrapping mod 32.
    // After M calls starting from addr=0, the last write to mem[i] is from outputs[j_last] where:
    // j_last = i + 32 * floor((M - 1 - i) / 32)
    std::cout << "\nTest Case 2: Memory content and wrap-around verification\n";
    const int M = static_cast<int>(inputs.size());

    // Verify mem[0..31]: should contain last written values according to wrap-around schedule
    for (int i = 0; i < MEM_WINDOW; ++i) {
        int base = i;
        int span = M - 1 - base;
        int j_last = (span >= 0) ? (base + MEM_WINDOW * (span / MEM_WINDOW)) : -1;

        int expected_mem_val = (j_last >= 0) ? outputs[j_last] : SENTINEL;
        std::cout << "  mem[" << i << "] = " << mem[i]
                  << " (expected from outputs[" << j_last << "] = " << expected_mem_val << ")\n";
        assert(mem[i] == expected_mem_val && "Memory content mismatch at mem[i]");
    }

    // Verify mem[32..255] untouched by write_process
    for (int i = MEM_WINDOW; i < MEM_SIZE; ++i) {
        assert(mem[i] == SENTINEL && "Memory beyond window should remain untouched");
    }

    // Additional spot checks for special values:
    // - Zero input: output must be zero
    // - Negative input: output must be negative*253
    int idx_zero = 2; // inputs[2] == 0
    int idx_neg = 1;  // inputs[1] == -3
    std::cout << "\nAdditional checks:\n";
    std::cout << "  Zero input check: outputs[" << idx_zero << "]=" << outputs[idx_zero] << " (expected 0)\n";
    assert(outputs[idx_zero] == 0 && "Zero propagation failed");

    std::cout << "  Negative input check: outputs[" << idx_neg << "]=" << outputs[idx_neg]
              << " (expected " << inputs[idx_neg] * MUL << ")\n";
    assert(outputs[idx_neg] == inputs[idx_neg] * MUL && "Negative handling failed");

    std::cout << "\nAll tests passed.\n";
    return 0;
}