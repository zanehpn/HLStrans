// contents of clock_divider_tb.cpp
#include <iostream>
#include <cassert>
#include <cstdint>

// Include the DUT source directly (no main() inside), to avoid duplicate symbol issues
#include "clock_divider.cpp"

static void print_sample(const char* label, ap_uint<32> arr[N], int count = 10) {
    std::cout << label << " (first " << count << "): ";
    for (int i = 0; i < count; ++i) {
        std::cout << (uint32_t)arr[i] << (i + 1 < count ? ", " : "");
    }
    std::cout << std::endl;
}

int main() {
    ap_uint<32> input_clock[N];
    ap_uint<32> output_clock[N];

    // Test 1: Divisor = 1 (identity test). Expect output == input.
    {
        for (int i = 0; i < N; ++i) {
            input_clock[i] = (ap_uint<32>)i;
            output_clock[i] = 0;
        }
        ap_uint<32> divisor = 1;
        clock_divider(input_clock, output_clock, divisor);

        for (int i = 0; i < N; ++i) {
            assert(output_clock[i] == input_clock[i]);
        }
        std::cout << "Test 1 (divisor=1, identity) passed." << std::endl;
        print_sample("  Output", output_clock);
    }

    // Test 2: Divisor = 3, input = 3*i + 7. Expect floor division: (3*i + 7)/3 = i + 2 for all i.
    {
        for (int i = 0; i < N; ++i) {
            input_clock[i] = (ap_uint<32>)(3 * i + 7);
            output_clock[i] = 0;
        }
        ap_uint<32> divisor = 3;
        clock_divider(input_clock, output_clock, divisor);

        for (int i = 0; i < N; ++i) {
            ap_uint<32> expected = (ap_uint<32>)(i + 2);
            assert(output_clock[i] == expected);
        }
        std::cout << "Test 2 (divisor=3, input=3*i+7 => expect i+2) passed." << std::endl;
        print_sample("  Output", output_clock);
    }

    // Test 3: Divisor = 2, input = 3*i + 7. Expect floor((3*i + 7)/2).
    {
        for (int i = 0; i < N; ++i) {
            input_clock[i] = (ap_uint<32>)(3 * i + 7);
            output_clock[i] = 0;
        }
        ap_uint<32> divisor = 2;
        clock_divider(input_clock, output_clock, divisor);

        for (int i = 0; i < N; ++i) {
            uint32_t in_val = (uint32_t)(3 * i + 7);
            uint32_t expected = in_val / 2;
            assert((uint32_t)output_clock[i] == expected);
        }
        std::cout << "Test 3 (divisor=2, input=3*i+7 => floor division) passed." << std::endl;
        print_sample("  Output", output_clock);
    }

    // Test 4: Divisor = 256, input = (i << 8) + 255. Expect floor((i*256 + 255)/256) = i.
    {
        for (int i = 0; i < N; ++i) {
            input_clock[i] = (ap_uint<32>)(((uint32_t)i << 8) | 0xFFu); // i*256 + 255
            output_clock[i] = 0;
        }
        ap_uint<32> divisor = 256;
        clock_divider(input_clock, output_clock, divisor);

        for (int i = 0; i < N; ++i) {
            ap_uint<32> expected = (ap_uint<32>)i;
            assert(output_clock[i] == expected);
        }
        std::cout << "Test 4 (divisor=256, input=i*256+255 => expect i) passed." << std::endl;
        print_sample("  Output", output_clock);
    }

    // Test 5: Large divisor (0xFFFFFFFF). Most outputs should be 0; set one input equal to divisor to get 1.
    {
        for (int i = 0; i < N; ++i) {
            input_clock[i] = 0;
            output_clock[i] = 0;
        }
        // Set some values:
        input_clock[0] = 1;                          // 1 / 0xFFFFFFFF -> 0
        input_clock[1] = 0xFFFFFFFEu;                // (2^32-2) / (2^32-1) -> 0
        input_clock[N - 1] = 0xFFFFFFFFu;            // (2^32-1) / (2^32-1) -> 1

        ap_uint<32> divisor = 0xFFFFFFFFu;
        clock_divider(input_clock, output_clock, divisor);

        for (int i = 0; i < N; ++i) {
            uint32_t expected = 0;
            if (i == N - 1) expected = 1;
            assert((uint32_t)output_clock[i] == expected);
        }
        std::cout << "Test 5 (divisor=0xFFFFFFFF, boundary cases) passed." << std::endl;

        // Print a few sample indices including the last
        std::cout << "  Output[0]   = " << (uint32_t)output_clock[0] << std::endl;
        std::cout << "  Output[1]   = " << (uint32_t)output_clock[1] << std::endl;
        std::cout << "  Output[N-1] = " << (uint32_t)output_clock[N - 1] << std::endl;
    }

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}