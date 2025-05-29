// compute_sum_tb.cpp
#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <cmath>

// Declaration of the HLS-friendly function
long long compute_sum(int *din, int N, int width);

// Reference software implementation
long long compute_sum_ref(int *din, int N, int width) {
    long long acc = 0;
    int local[64];
    for (int i = 0; i < N; ++i) {
        local[i] = (i < width) ? din[i] : (din[i] >> 2);
    }
    for (int i = 0; i < N; ++i) {
        acc += local[i];
    }
    return acc;
}

int main() {
    const int MAX_N = 64;
    bool pass = true;

    // Seed RNG
    std::srand((unsigned)std::time(nullptr));

    // Test cases
    struct Test { int N, width; };
    Test tests[] = {
        {  8,  4 },   // small, half raw / half shifted
        { 16, 16 },   // all raw
        { 32,  0 },   // all shifted
        { 64, 32 },   // half/half at full size
    };

    for (auto &t : tests) {
        int N = t.N;
        int w = t.width;
        int *din = (int*)std::malloc(sizeof(int)*N);
        if (!din) {
            std::printf("Memory alloc failed\n");
            return 1;
        }
        // Fill with random values
        for (int i = 0; i < N; ++i) {
            din[i] = std::rand() % 256 - 128;  // range [-128,127]
        }

        // Call hardware-style and reference functions
        long long out_hw  = compute_sum(din, N, w);
        long long out_ref = compute_sum_ref(din, N, w);

        if (out_hw != out_ref) {
            std::printf("Mismatch N=%d w=%d: HW=%lld, REF=%lld\n",
                        N, w, out_hw, out_ref);
            pass = false;
        }

        std::free(din);
    }

    if (pass) {
        std::printf("PASS\n");
        return 0;
    } else {
        std::printf("TEST FAIL\n");
        return 1;
    }
}
