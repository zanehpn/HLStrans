// contents of diamond_tb.cpp
#include <iostream>
#include <iomanip>
#include <cassert>
#include <cstdint>
#include <random>
#include <cstring>

// Include the source under test to access definitions of N, data_t, and functions
#include "diamond.cpp"

// Helper to compute expected diamond output for a single element
static inline data_t expectedDiamond(data_t x) {
    // diamond output per element: 15*x + 25 (mod 256)
    unsigned int v = static_cast<unsigned int>(x);
    unsigned int res = (15u * v + 25u) & 0xFFu;
    return static_cast<data_t>(res);
}

// Utility: print first few elements of an array (for demonstration)
static void printArraySample(const char* name, const data_t* arr, int count = 10) {
    std::cout << name << " [0.." << count - 1 << "]: ";
    for (int i = 0; i < count; ++i) {
        std::cout << static_cast<unsigned int>(arr[i]) << (i + 1 < count ? ", " : "");
    }
    std::cout << std::endl;
}

// Utility: compare first K elements of two arrays and assert equality
static void assertArrayEq(const data_t* a, const data_t* b, int len, const char* msg) {
    for (int i = 0; i < len; ++i) {
        if (a[i] != b[i]) {
            std::cerr << "Mismatch at index " << i << ": got "
                      << static_cast<unsigned int>(a[i]) << " expected "
                      << static_cast<unsigned int>(b[i]) << " (" << msg << ")" << std::endl;
            assert(false);
        }
    }
}

// Testcase 1: Basic pattern input, exercise top-level diamond() and verify closed-form expectation
static void test_diamond_basic() {
    data_t in[N];
    data_t out[N];
    data_t expected[N];

    // Prepare input: in[i] = i
    for (int i = 0; i < N; ++i) {
        in[i] = static_cast<data_t>(i & 0xFF);
    }

    diamond(in, out);

    for (int i = 0; i < N; ++i) {
        expected[i] = expectedDiamond(in[i]);
    }

    // Verify full array equality
    assertArrayEq(out, expected, N, "diamond_basic");
    std::cout << "[Test 1] diamond_basic: PASSED" << std::endl;

    // Show a small sample
    printArraySample("diamond_basic output", out, 10);
}

// Testcase 2: Edge values causing overflow; checks modular arithmetic behavior
static void test_diamond_overflow_edges() {
    data_t in[N];
    data_t out[N];
    data_t expected[N];

    // Fill with zeros, then set specific edge indices
    std::memset(in, 0, sizeof(in));
    int idxs[] = {0, 1, 2, 3, 4, 5, 6, 7};
    data_t vals[] = {255u, 200u, 171u, 128u, 127u, 1u, 85u, 0u};

    for (int k = 0; k < 8; ++k) {
        in[idxs[k]] = vals[k];
    }

    diamond(in, out);
    for (int i = 0; i < N; ++i) {
        expected[i] = expectedDiamond(in[i]);
    }

    // Check specific indices
    for (int k = 0; k < 8; ++k) {
        int i = idxs[k];
        assert(out[i] == expected[i]);
    }

    // Spot-check some zeros too
    for (int i = 8; i < 20; ++i) {
        assert(out[i] == expected[i]);
    }

    std::cout << "[Test 2] diamond_overflow_edges: PASSED" << std::endl;

    // Print the tested positions
    for (int k = 0; k < 8; ++k) {
        int i = idxs[k];
        std::cout << "in[" << i << "]=" << static_cast<unsigned int>(in[i])
                  << " out=" << static_cast<unsigned int>(out[i])
                  << " expected=" << static_cast<unsigned int>(expected[i]) << std::endl;
    }
}

// Testcase 3: Verify subfunctions individually with known values
static void test_subfunctions() {
    data_t in[N], out1[N], out2[N], outB[N], outC[N], outD[N];

    // Prepare inputs with a simple pattern
    for (int i = 0; i < N; ++i) {
        in[i] = static_cast<data_t>((i * 7 + 3) & 0xFF);
    }

    // funcA: out1 = 3*in, out2 = 3*in
    funcA(in, out1, out2);
    for (int i = 0; i < N; ++i) {
        data_t expectA = static_cast<data_t>((3u * static_cast<unsigned int>(in[i])) & 0xFFu);
        assert(out1[i] == expectA);
        assert(out2[i] == expectA);
    }

    // funcB: out = in + 25
    funcB(out1, outB);
    for (int i = 0; i < N; ++i) {
        data_t expectB = static_cast<data_t>((static_cast<unsigned int>(out1[i]) + 25u) & 0xFFu);
        assert(outB[i] == expectB);
    }

    // funcC: out = in * 2
    funcC(out2, outC);
    for (int i = 0; i < N; ++i) {
        data_t expectC = static_cast<data_t>((2u * static_cast<unsigned int>(out2[i])) & 0xFFu);
        assert(outC[i] == expectC);
    }

    // funcD: out = in1 + in2 * 2
    funcD(outB, outC, outD);
    for (int i = 0; i < N; ++i) {
        unsigned int v = static_cast<unsigned int>(outB[i]);
        unsigned int w = static_cast<unsigned int>(outC[i]);
        data_t expectD = static_cast<data_t>((v + 2u * w) & 0xFFu);
        assert(outD[i] == expectD);
    }

    std::cout << "[Test 3] subfunctions: PASSED" << std::endl;
}

// Testcase 4: Compare diamond output with manual composition of subfunctions
static void test_diamond_vs_manual() {
    data_t in[N], out_top[N];
    data_t c1[N], c2[N], c3[N], c4[N], out_manual[N];

    // Random but deterministic input
    std::mt19937 rng(12345);
    std::uniform_int_distribution<int> dist(0, 255);
    for (int i = 0; i < N; ++i) {
        in[i] = static_cast<data_t>(dist(rng));
    }

    // Top function
    diamond(in, out_top);

    // Manual composition: funcA -> funcB, funcC -> funcD
    funcA(in, c1, c2);
    funcB(c1, c3);
    funcC(c2, c4);
    funcD(c3, c4, out_manual);

    // Compare arrays
    assertArrayEq(out_top, out_manual, N, "diamond_vs_manual");
    std::cout << "[Test 4] diamond_vs_manual: PASSED" << std::endl;

    // Show a small sample
    printArraySample("diamond_vs_manual output", out_top, 10);
}

// Testcase 5: Randomized test; verify against closed-form expectation
static void test_diamond_randomized() {
    data_t in[N], out[N], expected[N];

    std::mt19937 rng(54321);
    std::uniform_int_distribution<int> dist(0, 255);
    for (int i = 0; i < N; ++i) {
        in[i] = static_cast<data_t>(dist(rng));
    }

    diamond(in, out);

    for (int i = 0; i < N; ++i) {
        expected[i] = expectedDiamond(in[i]);
    }

    assertArrayEq(out, expected, N, "diamond_randomized");
    std::cout << "[Test 5] diamond_randomized: PASSED" << std::endl;
}

int main() {
    std::cout << "Running diamond.cpp testbench..." << std::endl;

    // Run each test case
    test_diamond_basic();        // Simple ascending inputs, verify expected formula
    test_diamond_overflow_edges(); // Edge cases to demonstrate modulo-256 behavior
    test_subfunctions();         // Directly validate funcA/funcB/funcC/funcD
    test_diamond_vs_manual();    // Confirm top-level equals manual composition
    test_diamond_randomized();   // Randomized inputs, check correctness

    std::cout << "All tests PASSED." << std::endl;
    return 0;
}