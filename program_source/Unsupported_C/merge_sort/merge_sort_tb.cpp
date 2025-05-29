// merge_sort_tb.cpp
#include <cassert>
#include <cstdlib>
#include <iostream>
#include <ctime>

#define MAX_N 1024

// DUT prototype
void merge_sort(int *a, int n);

// Host-side golden checker
bool is_sorted(int *a, int n, int &bad_idx) {
    for (int i = 0; i < n - 1; ++i) {
        if (a[i] > a[i + 1]) {
            bad_idx = i;
            return false;
        }
    }
    return true;
}

int main() {
    const int N = 512;  // test size ≤ MAX_N
    static int a[MAX_N];

    // Seed RNG
    std::srand((unsigned)std::time(nullptr));

    // 1) Generate random data
    for (int i = 0; i < N; ++i) {
        a[i] = std::rand() % 10000;  // values in [0,9999]
    }

    // 2) Call HLS merge_sort kernel
    merge_sort(a, N);

    // 3) Verify sorted order
    int bad = -1;
    if (!is_sorted(a, N, bad)) {
        std::cerr << "Test FAILED at index " << bad
                  << ": a[" << bad << "]=" << a[bad]
                  << " > a[" << (bad + 1) << "]=" << a[bad + 1]
                  << std::endl;
        return 1;
    }

    // 4) Success
    std::cout << "merge_sort test passed: array is sorted." << std::endl;
    return 0;
}
