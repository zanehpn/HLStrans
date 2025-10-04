// contents of motion_processor_tb.cpp
// Standalone C++ testbench for motion_processor.cpp
// - Exercises element-wise absolute difference behavior
// - Includes edge cases (e.g., -32768 negation)
// - Runs multiple test scenarios and asserts expected outputs

#include <iostream>
#include <cassert>
#include <cstdint>

// Try to include the original source (preferred in HLS environment).
// If ap_int.h is not available, provide a lightweight fallback.
#if __has_include(<ap_int.h>)
  #include "motion_processor.cpp"
#else
  // Fallback minimal ap_int implementation (sufficient for this testbench)
  template<int W>
  struct ap_int {
      static_assert(W > 0 && W <= 62, "Fallback ap_int supports 1..62 bits");
      long long v; // store in signed 64-bit

      static constexpr long long one = 1LL;
      static constexpr long long mask() { return (W == 64 ? ~0ULL : ((one << W) - 1)); }
      static constexpr long long sign_bit() { return (one << (W - 1)); }
      static long long normalize(long long x) {
          long long m = mask();
          long long t = x & m;
          if (t & sign_bit()) {
              t -= (one << W);
          }
          return t;
      }

      ap_int() : v(0) {}
      ap_int(int x) : v(normalize(x)) {}
      ap_int(long long x) : v(normalize(x)) {}

      ap_int(const ap_int& other) = default;
      ap_int& operator=(const ap_int& other) = default;

      // implicit conversion to int
      operator int() const { return static_cast<int>(v); }
      operator long long() const { return v; }

      // arithmetic
      ap_int operator-() const { return ap_int(-v); }
      ap_int operator-(const ap_int& other) const { return ap_int(v - other.v); }
      ap_int& operator+=(const ap_int& other) { v = normalize(v + other.v); return *this; }
      ap_int& operator-=(const ap_int& other) { v = normalize(v - other.v); return *this; }

      // comparisons against 0/int
      bool operator<(int rhs) const { return v < rhs; }
      bool operator==(int rhs) const { return v == rhs; }
  };

  #ifndef SIZE
  #define SIZE 1024
  #endif

  // Re-implement motion_processor using the fallback ap_int
  void motion_processor(ap_int<16> input1[SIZE], ap_int<16> input2[SIZE], ap_int<16> output[SIZE]) {
      for (int i = 0; i < SIZE; i++) {
          ap_int<16> diff = input1[i] - input2[i];
          if (diff < 0) {
              output[i] = -diff;   // 16-bit modular negation; -32768 stays -32768
          } else {
              output[i] = diff;
          }
      }
  }
#endif

// Helper: compute 16-bit two's-complement absolute difference (matches ap_int<16> behavior)
static inline int16_t abs_diff_int16(int16_t a, int16_t b) {
    uint16_t ua = static_cast<uint16_t>(a);
    uint16_t ub = static_cast<uint16_t>(b);
    uint16_t d = static_cast<uint16_t>(ua - ub); // modulo 2^16
    if (d & 0x8000u) {
        // negative -> take two's complement to get modular absolute
        d = static_cast<uint16_t>(~d + 1u);
    }
    return static_cast<int16_t>(d); // 0x8000 remains -32768
}

int main() {
    std::cout << "Starting motion_processor testbench..." << std::endl;

    // Allocate arrays
    ap_int<16> in1[SIZE];
    ap_int<16> in2[SIZE];
    ap_int<16> out[SIZE];

    // Test 1: All zeros -> expect all zeros
    // Initialize inputs
    for (int i = 0; i < SIZE; ++i) {
        in1[i] = 0;
        in2[i] = 0;
        out[i] = -12345; // poison value to ensure it gets overwritten
    }
    motion_processor(in1, in2, out);
    for (int i = 0; i < SIZE; ++i) {
        assert(static_cast<int>(out[i]) == 0);
    }
    std::cout << "Test 1 passed: All zeros." << std::endl;

    // Test 2: Specific indices with varied cases (positive, negative, edge)
    // - Index 1: 100 - 20 -> 80
    // - Index 2: 20 - 100 -> 80 (absolute)
    // - Index 3: -300 - 100 -> 400 (absolute)
    // - Index 4: 32767 - 0 -> 32767
    // - Index 5: -32768 - 0 -> -32768 (modular abs edge)
    // - Index 6: -50 - (-120) -> 70
    // - Index 7: -1000 - (-3000) -> 2000
    for (int i = 0; i < SIZE; ++i) {
        in1[i] = 0;
        in2[i] = 0;
        out[i] = 777;
    }
    in1[1] = 100;     in2[1] = 20;
    in1[2] = 20;      in2[2] = 100;
    in1[3] = -300;    in2[3] = 100;
    in1[4] = 32767;   in2[4] = 0;
    in1[5] = -32768;  in2[5] = 0;
    in1[6] = -50;     in2[6] = -120;
    in1[7] = -1000;   in2[7] = -3000;

    motion_processor(in1, in2, out);

    assert(static_cast<int>(out[1]) == 80);
    assert(static_cast<int>(out[2]) == 80);
    assert(static_cast<int>(out[3]) == 400);
    assert(static_cast<int>(out[4]) == 32767);
    assert(static_cast<int>(out[5]) == -32768); // edge case: abs(-32768) == -32768 in 16-bit two's complement
    assert(static_cast<int>(out[6]) == 70);
    assert(static_cast<int>(out[7]) == 2000);

    std::cout << "Test 2 passed: Specific indices with edge behavior." << std::endl;

    // Test 3: Ramp vs reverse ramp across the whole array
    // Input pattern: in1[i] = i - 512, in2[i] = 512 - i -> diff = 2*i - 1024, abs within [0..1024]
    for (int i = 0; i < SIZE; ++i) {
        int val1 = i - 512;
        int val2 = 512 - i;
        in1[i] = val1;
        in2[i] = val2;
        out[i] = 0;
    }
    motion_processor(in1, in2, out);
    for (int i = 0; i < SIZE; ++i) {
        int16_t a = static_cast<int16_t>(static_cast<int>(in1[i]));
        int16_t b = static_cast<int16_t>(static_cast<int>(in2[i]));
        int16_t expected = abs_diff_int16(a, b);
        int out_i = static_cast<int>(out[i]);
        if (out_i != static_cast<int>(expected)) {
            std::cerr << "Mismatch at i=" << i
                      << " in1=" << static_cast<int>(a)
                      << " in2=" << static_cast<int>(b)
                      << " expected=" << static_cast<int>(expected)
                      << " got=" << out_i << std::endl;
            assert(false);
        }
    }
    std::cout << "Test 3 passed: Ramp vs reverse ramp over entire array." << std::endl;

    // Test 4: Random-like deterministic pattern ensuring wrap and negative values occur
    // Use a simple LFSR-like generator but keep values in int16_t range
    uint32_t seed1 = 0xACE1u;
    uint32_t seed2 = 0xBEEF u;
    for (int i = 0; i < SIZE; ++i) {
        // Simple xorshift updates
        seed1 ^= seed1 << 7; seed1 ^= seed1 >> 9; seed1 ^= seed1 << 8;
        seed2 ^= seed2 << 5; seed2 ^= seed2 >> 11; seed2 ^= seed2 << 13;
        int16_t a = static_cast<int16_t>(seed1); // take lower 16 bits
        int16_t b = static_cast<int16_t>(seed2);
        in1[i] = static_cast<int>(a);
        in2[i] = static_cast<int>(b);
        out[i] = 0;
    }
    motion_processor(in1, in2, out);
    // Verify a few sample points and a cumulative checksum
    long long checksum = 0;
    for (int i = 0; i < SIZE; ++i) {
        int16_t a = static_cast<int16_t>(static_cast<int>(in1[i]));
        int16_t b = static_cast<int16_t>(static_cast<int>(in2[i]));
        int16_t expected = abs_diff_int16(a, b);
        int got = static_cast<int>(out[i]);
        assert(got == static_cast<int>(expected));
        checksum += got;
    }
    std::cout << "Test 4 passed: Pseudo-random pattern. Checksum=" << checksum << std::endl;

    // Print a few sample outputs for visual confirmation
    std::cout << "Sample outputs:" << std::endl;
    for (int i = 0; i < 8; ++i) {
        std::cout << "  out[" << i << "] = " << static_cast<int>(out[i]) << std::endl;
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}