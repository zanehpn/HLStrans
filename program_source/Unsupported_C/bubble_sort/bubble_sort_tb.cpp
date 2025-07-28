#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <ap_int.h>

// Declare the HLS kernel prototype
void bubble_sort(int arr[64], int n);

static const int MAX_N = 64;

// Reference bubble sort in plain C
void bubble_sort_ref(int arr[MAX_N], int n) {
    for (int i = 0; i < n-1; i++) {
        for (int j = 0; j < n-i-1; j++) {
            if (arr[j] > arr[j+1]) {
                int tmp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = tmp;
            }
        }
    }
}

int main() {
    // 1) Seed PRNG and prepare arrays
    std::srand(static_cast<unsigned>(std::time(nullptr)));                     // random seed :contentReference[oaicite:2]{index=2}
    int test_array[MAX_N], hls_output[MAX_N], ref_output[MAX_N];
    const int n = MAX_N;

    // 2) Initialize with random values
    for (int i = 0; i < n; i++) {
        int v = std::rand() % 1000;
        test_array[i]    = v;
        ref_output[i]    = v;
        hls_output[i]    = v;                                                   // copy for HLS :contentReference[oaicite:3]{index=3}
    }

    // 3) Call HLS kernel
    bubble_sort(hls_output, n);                                                 // HLS invocation :contentReference[oaicite:4]{index=4}

    // 4) Compute reference
    bubble_sort_ref(ref_output, n);                                             // reference sort :contentReference[oaicite:5]{index=5}

    // 5) Compare results
    bool pass = true;
    for (int i = 0; i < n; i++) {
        if (hls_output[i] != ref_output[i]) {
            std::cout << "Mismatch at idx=" << i
                      << " HLS=" << hls_output[i]
                      << " REF=" << ref_output[i] << "\n";                       // diagnostic print :contentReference[oaicite:6]{index=6}
            pass = false;
        }
    }

    // 6) Report final status
    if (pass) {
        std::cout << "TEST PASSED\n";                                           // success message :contentReference[oaicite:7]{index=7}
    } else {
        std::cout << "TEST FAILED\n";                                           // failure message
    }
    return pass ? 0 : 1;
}
