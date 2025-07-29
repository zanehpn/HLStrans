#include <assert.h>

const static int SIZE   = 16;
const static int STAGES = 4;
typedef float DTYPE;

// m
void merge_arrays(const DTYPE in[SIZE], int start, int mid, int end, DTYPE out[SIZE]) {
    int i = start, j = mid, k = start;
    while (i < mid && j < end) {
        if (in[i] <= in[j]) {
            out[k++] = in[i++];
        } else {
            out[k++] = in[j++];
        }
    }
    while (i < mid)  out[k++] = in[i++];
    while (j < end)  out[k++] = in[j++];
}

void merge_sort_parallel(DTYPE A[SIZE], DTYPE B[SIZE]) {
    DTYPE temp1[SIZE], temp2[SIZE];
    DTYPE *src = A, *dst = temp1;
    int width = 1;
    
    while (width < SIZE) {
        for (int start = 0; start < SIZE; start += 2*width) {
            int mid = start + width;
            int end = start + 2*width;
            if (mid > SIZE) mid = SIZE;
            if (end > SIZE) end = SIZE;
            merge_arrays(src, start, mid, end, dst);
        }
        DTYPE *tmp = src;
        src = dst;
        dst = (tmp == A ? temp1 : temp2);
        width *= 2;
    }
    
    for (int i = 0; i < SIZE; i++) {
        B[i] = src[i];
    }
}
