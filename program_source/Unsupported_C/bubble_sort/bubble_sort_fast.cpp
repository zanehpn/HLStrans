// file: synth_bubble_hls.cpp
#include <ap_int.h>

#define MAX_N 64   // must be a compile‑time constant

// Top-level function for HLS
void bubble_sort(int arr[MAX_N], int n) {
#pragma HLS PIPELINE II=1          // pipeline the outer loop :contentReference[oaicite:6]{index=6}
#pragma HLS ARRAY_PARTITION variable=arr cyclic factor=16 dim=1  // improve parallel access :contentReference[oaicite:7]{index=7}

    // Bound check
    if (n > MAX_N) n = MAX_N;

    // Bubble sort on static array
    OUTER_LOOP:
    for (int i = 0; i < n-1; i++) {
    INNER_LOOP:
        for (int j = 0; j < n-i-1; j++) {
#pragma HLS UNROLL factor=2    // partial unroll for parallel swaps :contentReference[oaicite:8]{index=8}
            if (arr[j] > arr[j+1]) {
                int tmp    = arr[j];
                arr[j]     = arr[j+1];
                arr[j+1]   = tmp;
            }
        }
    }
}
