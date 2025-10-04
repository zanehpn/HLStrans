// contents of sliding_window_protocol_tb.cpp
#include <iostream>
#include <random>
#include <cstring>

// Prototype from sliding_window_protocol.cpp
void sliding_window_protocol(int input[], int output[]);

// Testbench constants matching the original design intent
static const int TB_BUFFER_SIZE = 1024;
static const int TB_WINDOW_SIZE = 8;

// Reference model: compute sliding window sum of length TB_WINDOW_SIZE
static void compute_expected(const int in[], int out[]) {
    int running_sum = 0;
    for (int i = 0; i < TB_BUFFER_SIZE; ++i) {
        running_sum += in[i];
        if (i >= TB_WINDOW_SIZE) {
            running_sum -= in[i - TB_WINDOW_SIZE];
        }
        out[i] = running_sum;
    }
}

// Compare two buffers and report mismatches; returns number of mismatches
static int compare_buffers(const int ref[], const int dut[], int max_report = 5) {
    int mismatches = 0;
    for (int i = 0; i < TB_BUFFER_SIZE; ++i) {
        if (ref[i] != dut[i]) {
            if (mismatches < max_report) {
                std::cout << "  Mismatch at index " << i
                          << ": expected " << ref[i]
                          << ", got " << dut[i] << "\n";
            }
            ++mismatches;
        }
    }
    return mismatches;
}

static void print_sample(const char* label, const int buf[], int count = 12) {
    std::cout << label << " (first " << count << "): ";
    for (int i = 0; i < count; ++i) {
        std::cout << buf[i] << (i + 1 < count ? ", " : "");
    }
    std::cout << "\n";
}

int main() {
    bool all_ok = true;

    // Buffers for inputs and outputs
    int input[TB_BUFFER_SIZE];
    int output_dut[TB_BUFFER_SIZE];
    int output_ref[TB_BUFFER_SIZE];

    // Test 1: Ramp input followed by zeros
    // - Verifies warm-up behavior (partial window) and cooldown after non-zeros end.
    std::memset(input, 0, sizeof(input));
    for (int i = 0; i < 16; ++i) {
        input[i] = i + 1; // 1,2,3,...,16 then zeros
    }
    compute_expected(input, output_ref);
    sliding_window_protocol(input, output_dut);

    int mism1 = compare_buffers(output_ref, output_dut);
    std::cout << "[Test 1] Ramp then zeros: " << (mism1 == 0 ? "PASS" : "FAIL (" + std::to_string(mism1) + " mismatches)") << "\n";
    print_sample("  Input", input, 20);
    print_sample("  DUT output", output_dut, 20);
    print_sample("  REF output", output_ref, 20);
    all_ok = all_ok && (mism1 == 0);

    // Test 2: All ones
    // - Expected output rises until window is full, then stays at TB_WINDOW_SIZE.
    for (int i = 0; i < TB_BUFFER_SIZE; ++i) input[i] = 1;
    compute_expected(input, output_ref);
    sliding_window_protocol(input, output_dut);

    int mism2 = compare_buffers(output_ref, output_dut);
    std::cout << "[Test 2] All ones: " << (mism2 == 0 ? "PASS" : "FAIL (" + std::to_string(mism2) + " mismatches)") << "\n";
    print_sample("  Input", input);
    print_sample("  DUT output", output_dut, 16);
    print_sample("  REF output", output_ref, 16);
    // Spot-check expected values at key indices
    bool spot_ok = (output_dut[0] == 1) && (output_dut[TB_WINDOW_SIZE - 1] == TB_WINDOW_SIZE) && (output_dut[TB_WINDOW_SIZE] == TB_WINDOW_SIZE);
    if (!spot_ok) {
        std::cout << "  Spot-check failed: out[0]=" << output_dut[0]
                  << ", out[" << (TB_WINDOW_SIZE - 1) << "]=" << output_dut[TB_WINDOW_SIZE - 1]
                  << ", out[" << TB_WINDOW_SIZE << "]=" << output_dut[TB_WINDOW_SIZE] << "\n";
    }
    all_ok = all_ok && (mism2 == 0) && spot_ok;

    // Test 3: Alternating positive/negative values
    // - Verifies handling of signed arithmetic and windowed cancellation.
    for (int i = 0; i < TB_BUFFER_SIZE; ++i) {
        input[i] = (i % 2 == 0) ? 5 : -3; // 5, -3, 5, -3, ...
    }
    compute_expected(input, output_ref);
    sliding_window_protocol(input, output_dut);

    int mism3 = compare_buffers(output_ref, output_dut);
    std::cout << "[Test 3] Alternating 5/-3: " << (mism3 == 0 ? "PASS" : "FAIL (" + std::to_string(mism3) + " mismatches)") << "\n";
    print_sample("  Input", input, 16);
    print_sample("  DUT output", output_dut, 16);
    print_sample("  REF output", output_ref, 16);
    all_ok = all_ok && (mism3 == 0);

    // Test 4: Pseudorandom data (deterministic seed)
    // - Full-coverage correctness test across entire buffer.
    std::mt19937 rng(12345);
    std::uniform_int_distribution<int> dist(-10, 10);
    for (int i = 0; i < TB_BUFFER_SIZE; ++i) {
        input[i] = dist(rng);
    }
    compute_expected(input, output_ref);
    sliding_window_protocol(input, output_dut);

    int mism4 = compare_buffers(output_ref, output_dut);
    std::cout << "[Test 4] Random [-10,10]: " << (mism4 == 0 ? "PASS" : "FAIL (" + std::to_string(mism4) + " mismatches)") << "\n";
    print_sample("  Input", input, 16);
    print_sample("  DUT output", output_dut, 16);
    print_sample("  REF output", output_ref, 16);
    all_ok = all_ok && (mism4 == 0);

    std::cout << "\nSummary: " << (all_ok ? "ALL TESTS PASSED" : "SOME TESTS FAILED") << "\n";
    return all_ok ? 0 : 1;
}