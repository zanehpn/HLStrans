// contents of hazard_detection_resolution_tb.cpp
#include <iostream>
#include <cstdint>
#include <cassert>
#include <limits>
#include <random>

// Include the DUT source (no main() defined there)
#include "hazard_detection_resolution.cpp"

static void print_sample(const int32_t* in1, const int32_t* in2, const int32_t* out, size_t n, size_t count = 8) {
    size_t c = (count < n) ? count : n;
    std::cout << "Sample (first " << c << " entries):\n";
    for (size_t i = 0; i < c; ++i) {
        std::cout << "  i=" << i << " in1=" << in1[i] << " in2=" << in2[i] << " out=" << out[i] << "\n";
    }
}

static void run_and_check(const char* name, int32_t* in1, int32_t* in2) {
    int32_t out[ARRAY_SIZE];
    // Call DUT
    hazard_detection_resolution(in1, in2, out);

    // Validate: out[i] should be abs(in1[i] - in2[i]) without overflow for our constructed tests
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        long long diff = static_cast<long long>(in1[i]) - static_cast<long long>(in2[i]);
        long long expected = (diff >= 0) ? diff : -diff;
        // All constructed tests ensure expected fits in int32_t
        assert(expected <= std::numeric_limits<int32_t>::max());
        assert(out[i] == static_cast<int32_t>(expected));
    }

    std::cout << "[PASS] " << name << "\n";
    print_sample(in1, in2, out, ARRAY_SIZE);
}

int main() {
    // Test 1: All equal values -> output should be all zeros
    {
        int32_t in1[ARRAY_SIZE];
        int32_t in2[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            in1[i] = 42;
            in2[i] = 42;
        }
        run_and_check("Test 1: All equal values (expect zeros)", in1, in2);
    }

    // Test 2: input1 > input2 across entire array -> output is input1 - input2
    {
        int32_t in1[ARRAY_SIZE];
        int32_t in2[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            in1[i] = i;     // 0..1023
            in2[i] = 0;
        }
        run_and_check("Test 2: input1 > input2 (positive diffs)", in1, in2);
    }

    // Test 3: input1 < input2 across entire array -> output is input2 - input1
    {
        int32_t in1[ARRAY_SIZE];
        int32_t in2[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            in1[i] = 0;
            in2[i] = i * 2;  // 0..2046
        }
        run_and_check("Test 3: input1 < input2 (positive diffs)", in1, in2);
    }

    // Test 4: Mixed patterns around boundaries but safe (no overflow)
    // - i % 3 == 0: equal values -> 0
    // - i % 3 == 1: near INT32_MAX, in1 > in2 by small delta
    // - i % 3 == 2: near INT32_MIN, in1 < in2 by small delta
    {
        int32_t in1[ARRAY_SIZE];
        int32_t in2[ARRAY_SIZE];
        const int32_t near_max = std::numeric_limits<int32_t>::max() - 1000;
        const int32_t near_min = std::numeric_limits<int32_t>::min() + 1000;

        for (int i = 0; i < ARRAY_SIZE; ++i) {
            int mod = i % 3;
            int32_t delta = static_cast<int32_t>((i % 10) + 1); // 1..10
            if (mod == 0) {
                // Equal values
                in1[i] = 123456789;
                in2[i] = 123456789;
            } else if (mod == 1) {
                // in1 > in2 near max by small delta
                in1[i] = near_max - (i % 50);
                in2[i] = in1[i] - delta;  // ensure positive, small difference
            } else {
                // in1 < in2 near min by small delta
                in2[i] = near_min + (i % 50);
                in1[i] = in2[i] - delta;  // ensure positive, small difference when computing in2 - in1
            }
        }
        run_and_check("Test 4: Mixed patterns (equal, near max/min, safe deltas)", in1, in2);
    }

    // Test 5: Random small-range values (deterministic seed) -> exercise both branches
    {
        int32_t in1[ARRAY_SIZE];
        int32_t in2[ARRAY_SIZE];
        std::mt19937 rng(12345);
        std::uniform_int_distribution<int32_t> dist(-100000, 100000);
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            in1[i] = dist(rng);
            in2[i] = dist(rng);
        }
        run_and_check("Test 5: Random small-range values", in1, in2);
    }

    std::cout << "All tests passed.\n";
    return 0;
}