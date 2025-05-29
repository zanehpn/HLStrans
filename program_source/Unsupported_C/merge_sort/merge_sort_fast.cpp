#include <ap_int.h>
#include <hls_stream.h>

static const int MAX_N = 1024;

void sort(int *a, int l, int m, int r, int buf[MAX_N]) {
    int i = l, j = m + 1, k = l;
    // In-place merge using pre-allocated static buffer
    for (int idx = l; idx <= r; ++idx) {
    #pragma HLS PIPELINE II=1
        buf[idx] = a[idx];
    }
    while (i <= m && j <= r) {
    #pragma HLS PIPELINE II=1
        a[k++] = (buf[i] <= buf[j]) ? buf[i++] : buf[j++];
    }
    while (i <= m) {
    #pragma HLS PIPELINE II=1
        a[k++] = buf[i++];
    }
    while (j <= r) {
    #pragma HLS PIPELINE II=1
        a[k++] = buf[j++];
    }
}

// Top-level merge sort with explicit stack (no recursion)
void merge_sort(int *a, int n) {
    int buf[MAX_N];
#pragma HLS ARRAY_PARTITION variable=buf complete

    // Iterative bottom-up merge sort
    for (int width = 1; width < n; width *= 2) {
        for (int l = 0; l < n; l += 2 * width) {
        #pragma HLS PIPELINE II=1
            int m = l + width - 1;
            int r = (l + 2 * width - 1 < n) ? (l + 2 * width - 1) : (n - 1);
            if (m < r) sort(a, l, m, r, buf);
        }
    }
}
