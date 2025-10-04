// contents of run_length_encoding_tb.cpp
#include <iostream>
#include <vector>
#include <utility>
#include <cassert>

// Include the source under test to avoid duplicate symbol errors
#include "run_length_encoding.cpp"

// Helper to verify the output against expected (value, count) runs
bool verify_output(const int output[MAX_SIZE][2], int output_size,
                   const std::vector<std::pair<int, int>>& expected) {
    if (output_size != static_cast<int>(expected.size())) {
        std::cerr << "Mismatch in output_size. Got " << output_size
                  << ", expected " << expected.size() << std::endl;
        return false;
    }
    for (int i = 0; i < output_size; ++i) {
        if (output[i][0] != expected[i].first || output[i][1] != expected[i].second) {
            std::cerr << "Mismatch at run " << i << ": got ("
                      << output[i][0] << ", " << output[i][1]
                      << "), expected (" << expected[i].first << ", "
                      << expected[i].second << ")\n";
            return false;
        }
    }
    return true;
}

// Run the RLE on a given input and compare with expected runs.
void run_and_check(const int input[MAX_SIZE], const std::vector<std::pair<int, int>>& expected, const std::string& test_name) {
    int output[MAX_SIZE][2] = {0};
    int output_size = 0;
    run_length_encoding(const_cast<int*>(input), output, output_size);

    std::cout << "Test: " << test_name << std::endl;
    bool ok = verify_output(output, output_size, expected);
    if (!ok) {
        std::cerr << "Test FAILED: " << test_name << std::endl;
        assert(false && "Output verification failed");
    } else {
        std::cout << "Test PASSED: " << test_name << std::endl;
        // Print first few runs for inspection
        int to_print = std::min(output_size, 8);
        std::cout << "First " << to_print << " runs: ";
        for (int i = 0; i < to_print; ++i) {
            std::cout << "(" << output[i][0] << "," << output[i][1] << ") ";
        }
        std::cout << "\n\n";
    }
}

// Helper: build input array from (value, count) segments
void build_input_from_segments(const std::vector<std::pair<int, int>>& segments, int input[MAX_SIZE]) {
    int idx = 0;
    for (const auto& seg : segments) {
        for (int c = 0; c < seg.second; ++c) {
            assert(idx < MAX_SIZE);
            input[idx++] = seg.first;
        }
    }
    assert(idx == MAX_SIZE && "Total segment length must equal MAX_SIZE");
}

int main() {
    // Test 1: Uniform array (all elements equal)
    // Expect a single run of the same value with count MAX_SIZE.
    {
        int input[MAX_SIZE];
        for (int i = 0; i < MAX_SIZE; ++i) input[i] = 5;
        std::vector<std::pair<int, int>> expected = {{5, MAX_SIZE}};
        run_and_check(input, expected, "Uniform array (all 5s)");
    }

    // Test 2: Alternating values (1,2,1,2,...)
    // Expect MAX_SIZE runs each of count 1 alternating between 1 and 2.
    {
        int input[MAX_SIZE];
        std::vector<std::pair<int, int>> expected;
        expected.reserve(MAX_SIZE);
        for (int i = 0; i < MAX_SIZE; ++i) {
            input[i] = (i % 2 == 0) ? 1 : 2;
            expected.emplace_back(input[i], 1);
        }
        run_and_check(input, expected, "Alternating values (1,2,1,2,...)");
    }

    // Test 3: Chunked runs with multiple segments including negative and zero values
    // Segments: 100 x 7, 200 x -3, 300 x 0, 424 x 42 -> Expect 4 runs accordingly.
    {
        std::vector<std::pair<int, int>> segments = {
            {7, 100},
            {-3, 200},
            {0, 300},
            {42, 424}
        };
        int input[MAX_SIZE];
        build_input_from_segments(segments, input);
        run_and_check(input, segments, "Chunked runs (100x7, 200x-3, 300x0, 424x42)");
    }

    // Test 4: Strictly increasing sequence (0,1,2,...)
    // Expect MAX_SIZE runs of count 1 for each unique value.
    {
        int input[MAX_SIZE];
        std::vector<std::pair<int, int>> expected;
        expected.reserve(MAX_SIZE);
        for (int i = 0; i < MAX_SIZE; ++i) {
            input[i] = i;
            expected.emplace_back(i, 1);
        }
        run_and_check(input, expected, "Strictly increasing sequence (unique values)");
    }

    // Test 5: Long final run to verify handling of the last sequence
    // Segments: 10 x 3, 20 x -1, 994 x 8 -> Expect 3 runs and check the last run > 1
    {
        std::vector<std::pair<int, int>> segments = {
            {3, 10},
            {-1, 20},
            {8, MAX_SIZE - 30} // 1024 - 30 = 994
        };
        int input[MAX_SIZE];
        build_input_from_segments(segments, input);
        run_and_check(input, segments, "Long final run (10x3, 20x-1, 994x8)");
    }

    std::cout << "All tests completed successfully." << std::endl;
    return 0;
}