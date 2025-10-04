// contents of array_mem_bottleneck_tb.cpp
#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cassert>
#include "ap_int.h"
#define N 128

typedef ap_int<7> din_t;
typedef ap_int<10> dout_t;
// Include the source to get function prototype, types, and constants (N, din_t, dout_t)
dout_t array_mem_bottleneck(din_t mem[N]);
using std::cout;
using std::endl;

// Golden model replicating the accumulation behavior (10-bit accumulator with wrap)
static dout_t golden_array_mem_bottleneck(const din_t mem[N]) {
    dout_t sum = 0;
    for (int i = 2; i < N; ++i) {
        // Use the same ap_int types and addition semantics to match overflow behavior
        sum += mem[i] + mem[i - 1] + mem[i - 2];
    }
    return sum;
}

static void fill_array(din_t mem[N], int value) {
    for (int i = 0; i < N; ++i) {
        mem[i] = (din_t)value;
    }
}

int main() {
    std::srand(0xC0FFEE);

    // Test 1: All zeros - sum should be 0
    {
        din_t mem[N];
        fill_array(mem, 0);
        dout_t hw = array_mem_bottleneck(mem);
        dout_t expected = 0;
        cout << "[Test 1] All zeros -> expected 0, got " << (int)hw << endl;
        assert((int)hw == (int)expected);
    }

    // Test 2: All ones - each iteration adds 3, iterations = N-2, expected = 3*(N-2)
    {
        din_t mem[N];
        fill_array(mem, 1);
        dout_t hw = array_mem_bottleneck(mem);
        int expected_int = 3 * (N - 2); // 3 * 126 = 378 for N=128
        dout_t expected = (dout_t)expected_int;
        cout << "[Test 2] All ones -> expected " << expected_int << ", got " << (int)hw << endl;
        assert((int)hw == (int)expected);
    }

    // Test 3: All minus ones - each iteration adds -3, expected = -3*(N-2)
    {
        din_t mem[N];
        fill_array(mem, -1);
        dout_t hw = array_mem_bottleneck(mem);
        int expected_int = -3 * (N - 2); // -378
        dout_t expected = (dout_t)expected_int;
        cout << "[Test 3] All minus ones -> expected " << expected_int << ", got " << (int)hw << endl;
        assert((int)hw == (int)expected);
    }

    // Test 4: Small ramp pattern (i % 8) to avoid input overflow; compare to golden
    {
        din_t mem[N];
        for (int i = 0; i < N; ++i) {
            mem[i] = (din_t)(i % 8);
        }
        dout_t hw = array_mem_bottleneck(mem);
        dout_t golden = golden_array_mem_bottleneck(mem);
        cout << "[Test 4] Small ramp (i%8) -> golden " << (int)golden << ", got " << (int)hw << endl;
        assert((int)hw == (int)golden);
    }

    // Test 5: Alternating extremes 63 and -64 to stress signed wrap behavior; compare to golden
    {
        din_t mem[N];
        for (int i = 0; i < N; ++i) {
            mem[i] = (i % 2 == 0) ? (din_t)63 : (din_t)-64;
        }
        dout_t hw = array_mem_bottleneck(mem);
        dout_t golden = golden_array_mem_bottleneck(mem);
        cout << "[Test 5] Alternating 63/-64 -> golden " << (int)golden << ", got " << (int)hw << endl;
        assert((int)hw == (int)golden);
    }

    // Test 6: Randomized tests within valid din_t range; compare to golden (multiple trials)
    {
        for (int t = 0; t < 5; ++t) {
            din_t mem[N];
            for (int i = 0; i < N; ++i) {
                // Generate values in [-64, 63] to stay within ap_int<7> range
                int r = (std::rand() % 128) - 64;
                mem[i] = (din_t)r;
            }
            dout_t hw = array_mem_bottleneck(mem);
            dout_t golden = golden_array_mem_bottleneck(mem);
            cout << "[Test 6." << t+1 << "] Random pattern -> golden " << (int)golden << ", got " << (int)hw << endl;
            assert((int)hw == (int)golden);
        }
    }

    cout << "All tests passed." << endl;
    return 0;
}