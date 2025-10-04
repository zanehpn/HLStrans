// contents of dut_tb.cpp

#include <iostream>
#include <cassert>

// Include the DUT source to make this testbench standalone
#include "dut.cpp"

// Helper to compute expected sum using the same arithmetic as DUT
static int compute_expected(const A* arr) {
    int sum = 0;
    for (unsigned i = 0; i < N; ++i) {
        sum += static_cast<int>(arr[i].foo) + static_cast<int>(arr[i].bar);
    }
    return sum;
}

static void print_array(const char* name, const A* arr) {
    std::cout << name << ":";
    for (unsigned i = 0; i < N; ++i) {
        std::cout << " (" << static_cast<int>(arr[i].foo) << "," << arr[i].bar << ")";
    }
    std::cout << std::endl;
}

int main() {
    {
        // Test 1: Sequential increasing values
        // foo = i, bar = 10*i -> expected sum = sum(i + 10*i) for i=0..9 = 11 * 45 = 495
        A arr[N];
        for (unsigned i = 0; i < N; ++i) {
            arr[i].foo = static_cast<char>(i);         // keep within small non-negative range
            arr[i].bar = static_cast<short>(10 * i);   // 0,10,20,...,90
        }
        int got = dut(arr);
        int exp = compute_expected(arr);
        print_array("Test1 arr", arr);
        std::cout << "Test1 expected=" << exp << " got=" << got << std::endl;
        assert(got == exp);
    }

    {
        // Test 2: All zeros
        // foo = 0, bar = 0 -> expected sum = 0
        A arr[N];
        for (unsigned i = 0; i < N; ++i) {
            arr[i].foo = 0;
            arr[i].bar = 0;
        }
        int got = dut(arr);
        int exp = compute_expected(arr);
        print_array("Test2 arr", arr);
        std::cout << "Test2 expected=" << exp << " got=" << got << std::endl;
        assert(got == exp);
    }

    {
        // Test 3: Mixed positive foo, negative bar
        // Keep foo non-negative to avoid platform-dependent signedness of char
        // foo = i % 5, bar = -i -> expected sum = sum((i % 5) - i)
        A arr[N];
        for (unsigned i = 0; i < N; ++i) {
            arr[i].foo = static_cast<char>(i % 5);     // 0..4 repeating
            arr[i].bar = static_cast<short>(-static_cast<int>(i)); // 0,-1,-2,...,-9
        }
        int got = dut(arr);
        int exp = compute_expected(arr);
        print_array("Test3 arr", arr);
        std::cout << "Test3 expected=" << exp << " got=" << got << std::endl;
        assert(got == exp);
    }

    {
        // Test 4: Boundary-ish values within safe range
        // Use foo values up to 127 (fits in both signed/unsigned char)
        // Use varied bar values including negatives
        A arr[N] = {
            {static_cast<char>(127), static_cast<short>(-127)},
            {static_cast<char>(0),   static_cast<short>(100)},
            {static_cast<char>(1),   static_cast<short>(-100)},
            {static_cast<char>(50),  static_cast<short>(50)},
            {static_cast<char>(60),  static_cast<short>(-60)},
            {static_cast<char>(70),  static_cast<short>(30)},
            {static_cast<char>(10),  static_cast<short>(-5)},
            {static_cast<char>(20),  static_cast<short>(5)},
            {static_cast<char>(30),  static_cast<short>(-30)},
            {static_cast<char>(40),  static_cast<short>(0)}
        };
        int got = dut(arr);
        int exp = compute_expected(arr);
        print_array("Test4 arr", arr);
        std::cout << "Test4 expected=" << exp << " got=" << got << std::endl;
        assert(got == exp);
    }

    {
        // Test 5: Pseudo-random but deterministic pattern
        // Keeps foo in [0, 100] and bar in [-200, 200]
        A arr[N];
        int seed = 12345;
        for (unsigned i = 0; i < N; ++i) {
            seed = (1103515245 * seed + 12345) & 0x7fffffff;
            int rnd1 = seed % 101;    // 0..100
            seed = (1103515245 * seed + 12345) & 0x7fffffff;
            int rnd2 = (seed % 401) - 200; // -200..200
            arr[i].foo = static_cast<char>(rnd1);
            arr[i].bar = static_cast<short>(rnd2);
        }
        int got = dut(arr);
        int exp = compute_expected(arr);
        print_array("Test5 arr", arr);
        std::cout << "Test5 expected=" << exp << " got=" << got << std::endl;
        assert(got == exp);
    }

    std::cout << "All tests PASSED" << std::endl;
    return 0;
}