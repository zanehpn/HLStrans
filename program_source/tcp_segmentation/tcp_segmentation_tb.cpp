// contents of tcp_segmentation_tb.cpp
#include <iostream>
#include <iomanip>
#include <cstring>
#include <cassert>
#include <string>

// Include the source under test. This avoids duplicate symbol errors if the
// library is not separately linked and allows us to use its macros and functions.
#include "tcp_segmentation.cpp"

// Helper: Fill input buffer with a deterministic byte pattern: byte i = i % 256
static void fill_input_pattern(char* buf, int len) {
    for (int i = 0; i < len; ++i) {
        buf[i] = static_cast<char>(i % 256);
    }
}

// Helper: Verify the output_data and segment_lengths against the input_data and expected segmentation
static bool verify_output(const char* input_data,
                          int input_length,
                          char output_data[MAX_SEGMENTS][SEGMENT_SIZE],
                          const int segment_lengths[MAX_SEGMENTS],
                          int num_segments,
                          bool verbose_on_error = true) {
    // Compute expected number of segments
    int expected_segments = (input_length + SEGMENT_SIZE - 1) / SEGMENT_SIZE;

    if (num_segments != expected_segments) {
        if (verbose_on_error) {
            std::cerr << "Mismatch in num_segments. Expected " << expected_segments
                      << ", got " << num_segments << "\n";
        }
        return false;
    }

    // For each segment, verify length and content
    for (int s = 0; s < num_segments; ++s) {
        int expected_len = SEGMENT_SIZE;
        if (s == num_segments - 1) {
            int rem = input_length % SEGMENT_SIZE;
            if (rem != 0) expected_len = rem;
        }
        if (segment_lengths[s] != expected_len) {
            if (verbose_on_error) {
                std::cerr << "Segment " << s << " length mismatch. Expected "
                          << expected_len << ", got " << segment_lengths[s] << "\n";
            }
            return false;
        }

        // Decide verification strategy: full check for small inputs, sampled check for large inputs
        bool full_check = (input_length <= 4 * SEGMENT_SIZE);

        if (full_check) {
            for (int k = 0; k < expected_len; ++k) {
                int idx = s * SEGMENT_SIZE + k;
                char expected = static_cast<char>(idx % 256);
                if (output_data[s][k] != expected) {
                    if (verbose_on_error) {
                        std::cerr << "Data mismatch at segment " << s << ", offset " << k
                                  << ". Expected " << static_cast<int>(static_cast<unsigned char>(expected))
                                  << ", got " << static_cast<int>(static_cast<unsigned char>(output_data[s][k])) << "\n";
                    }
                    return false;
                }
            }
        } else {
            // Sample positions: start, a few early bytes, mid, and end region
            int checks[] = {0, 1, 2, expected_len / 2, expected_len - 3, expected_len - 2, expected_len - 1};
            for (int q = 0; q < 7; ++q) {
                int k = checks[q];
                if (k < 0 || k >= expected_len) continue;
                int idx = s * SEGMENT_SIZE + k;
                char expected = static_cast<char>(idx % 256);
                if (output_data[s][k] != expected) {
                    if (verbose_on_error) {
                        std::cerr << "Sampled data mismatch at segment " << s << ", offset " << k
                                  << ". Expected " << static_cast<int>(static_cast<unsigned char>(expected))
                                  << ", got " << static_cast<int>(static_cast<unsigned char>(output_data[s][k])) << "\n";
                    }
                    return false;
                }
            }
        }
    }

    return true;
}

// Run a single test case: prepare input, call tcp_segmentation, and verify results
static void run_test_case(const std::string& name, int input_length) {
    std::cout << "[TEST] " << name << " (input_length = " << input_length << ")\n";

    // Allocate buffers as required by the DUT
    static char input_data[MAX_SEGMENTS * SEGMENT_SIZE];
    static char output_data[MAX_SEGMENTS][SEGMENT_SIZE];
    static int segment_lengths[MAX_SEGMENTS];
    int num_segments = -1;

    // Initialize outputs to sentinel patterns to detect if function writes correctly
    std::memset(output_data, 0xCD, sizeof(output_data));
    std::memset(segment_lengths, 0xFF, sizeof(segment_lengths));

    // Fill input with a deterministic pattern for validation
    if (input_length > 0) {
        fill_input_pattern(input_data, input_length);
    }

    // Call the function under test
    tcp_segmentation(input_data, input_length, output_data, segment_lengths, num_segments);

    // Basic sanity checks
    int expected_segments = (input_length + SEGMENT_SIZE - 1) / SEGMENT_SIZE;
    assert(num_segments == expected_segments);

    // Verify detailed behavior and contents
    bool ok = verify_output(input_data, input_length, output_data, segment_lengths, num_segments, true);
    if (!ok) {
        std::cerr << "Result: FAIL\n";
        std::exit(EXIT_FAILURE);
    } else {
        std::cout << "Result: PASS (segments = " << num_segments << ")\n";
    }
}

int main() {
    // Test 1: Empty input should produce zero segments
    run_test_case("Empty input", 0);

    // Test 2: Small payload smaller than one segment
    run_test_case("Small < SEGMENT_SIZE", 100);

    // Test 3: Exactly one full segment
    run_test_case("Exact one segment", SEGMENT_SIZE);

    // Test 4: Multiple full segments (3 segments exactly)
    run_test_case("Exact multiple of segment size (3 segments)", 3 * SEGMENT_SIZE);

    // Test 5: Two full segments plus a small partial segment
    run_test_case("Two full segments + partial", 2 * SEGMENT_SIZE + 37);

    // Test 6: Many segments (20 full + partial), verifies performance over multiple iterations
    run_test_case("Twenty full segments + partial", 20 * SEGMENT_SIZE + 123);

    std::cout << "All tests passed.\n";
    return 0;
}