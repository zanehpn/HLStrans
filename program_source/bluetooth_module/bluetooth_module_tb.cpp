// contents of bluetooth_module_tb.cpp
#include <cstdint>
#include <array>
#include <iostream>
#include <random>
#include <string>
#include <cstdlib>
#include <cassert>

// The DUT function is implemented in bluetooth_module.cpp and will be linked in.
// We forward-declare it here to avoid including the .cpp and causing duplicate symbols.
extern void bluetooth_module(uint8_t input_data[], uint8_t output_data[]);

// Match the DUT's expected array size (ARRAY_SIZE = 1024).
constexpr size_t N = 1024;

// Helper to check that out[i] == ~in[i] for all i.
bool check_inversion(const std::array<uint8_t, N>& in,
                     const std::array<uint8_t, N>& out,
                     size_t& fail_index,
                     uint8_t& expected,
                     uint8_t& got) {
    for (size_t i = 0; i < N; ++i) {
        expected = static_cast<uint8_t>(~in[i]);
        got = out[i];
        if (got != expected) {
            fail_index = i;
            return false;
        }
    }
    return true;
}

// Runs a single test case and prints result.
bool run_test_case(const std::string& name,
                   const std::array<uint8_t, N>& in_pattern) {
    std::array<uint8_t, N> in = in_pattern;
    std::array<uint8_t, N> out{};
    bluetooth_module(in.data(), out.data());

    size_t idx = 0;
    uint8_t exp = 0, got = 0;
    bool ok = check_inversion(in, out, idx, exp, got);
    if (!ok) {
        std::cerr << "FAIL: " << name
                  << " at index " << idx
                  << " input=0x" << std::hex << static_cast<int>(in[idx])
                  << " expected=0x" << static_cast<int>(exp)
                  << " got=0x" << static_cast<int>(got)
                  << std::dec << std::endl;
        return false;
    }
    std::cout << "PASS: " << name << std::endl;
    return true;
}

int main() {
    int failures = 0;

    // Test 1: All zeros -> should produce all 0xFF
    {
        std::array<uint8_t, N> in{};
        // already zero-initialized
        if (!run_test_case("All zeros -> all 0xFF", in)) ++failures;
    }

    // Test 2: All 0xFF -> should produce all 0x00
    {
        std::array<uint8_t, N> in{};
        in.fill(0xFF);
        if (!run_test_case("All 0xFF -> all 0x00", in)) ++failures;
    }

    // Test 3: Incremental pattern -> in[i] = i & 0xFF
    {
        std::array<uint8_t, N> in{};
        for (size_t i = 0; i < N; ++i) {
            in[i] = static_cast<uint8_t>(i & 0xFF);
        }
        if (!run_test_case("Incremental pattern inversion", in)) ++failures;
    }

    // Test 4: Alternating 0xAA, 0x55 pattern
    {
        std::array<uint8_t, N> in{};
        for (size_t i = 0; i < N; ++i) {
            in[i] = (i & 1) ? 0x55 : 0xAA;
        }
        if (!run_test_case("Alternating 0xAA/0x55 inversion", in)) ++failures;
    }

    // Test 5: Boundary values repeating across the array
    // Values: 0x00, 0x01, 0x7F, 0x80, 0xFE, 0xFF
    {
        std::array<uint8_t, N> in{};
        const uint8_t vals[] = {0x00, 0x01, 0x7F, 0x80, 0xFE, 0xFF};
        for (size_t i = 0; i < N; ++i) {
            in[i] = vals[i % (sizeof(vals) / sizeof(vals[0]))];
        }
        if (!run_test_case("Boundary values inversion", in)) ++failures;
    }

    // Test 6: Random data with fixed seed for reproducibility
    {
        std::array<uint8_t, N> in{};
        std::mt19937 rng(12345);
        std::uniform_int_distribution<int> dist(0, 255);
        for (size_t i = 0; i < N; ++i) {
            in[i] = static_cast<uint8_t>(dist(rng));
        }
        if (!run_test_case("Random data inversion (seeded)", in)) ++failures;
    }

    // Test 7: Double-apply property: NOT(NOT(x)) == x
    {
        std::array<uint8_t, N> in{};
        std::array<uint8_t, N> mid{};
        std::array<uint8_t, N> out{};
        // Use a pseudo-random input set
        std::mt19937 rng(67890);
        std::uniform_int_distribution<int> dist(0, 255);
        for (size_t i = 0; i < N; ++i) {
            in[i] = static_cast<uint8_t>(dist(rng));
        }

        // First inversion
        bluetooth_module(in.data(), mid.data());
        // Second inversion
        bluetooth_module(mid.data(), out.data());

        // Verify out == in
        bool ok = true;
        size_t bad_idx = 0;
        for (size_t i = 0; i < N; ++i) {
            if (out[i] != in[i]) {
                ok = false;
                bad_idx = i;
                break;
            }
        }
        if (!ok) {
            std::cerr << "FAIL: Double inversion property at index " << bad_idx
                      << " input=0x" << std::hex << static_cast<int>(in[bad_idx])
                      << " got=0x" << static_cast<int>(out[bad_idx])
                      << std::dec << std::endl;
            ++failures;
        } else {
            std::cout << "PASS: Double inversion property" << std::endl;
        }

        // Also assert the property for stronger checking in debug builds
        assert(ok && "Double inversion should return original input");
    }

    if (failures == 0) {
        std::cout << "All tests passed." << std::endl;
        return EXIT_SUCCESS;
    } else {
        std::cerr << failures << " test(s) failed." << std::endl;
        return EXIT_FAILURE;
    }
}