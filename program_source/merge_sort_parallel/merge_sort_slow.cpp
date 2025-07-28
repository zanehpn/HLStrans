#include <assert.h>

const static int SIZE   = 16;
const static int STAGES = 4;
typedef float DTYPE;

// 合并两个有序子区间 [start, mid) 和 [mid, end) 到 out[start, end)
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

// 简化版顶层排序函数
void merge_sort_parallel(DTYPE A[SIZE], DTYPE B[SIZE]) {
    // temp 两个缓冲区交替使用
    DTYPE temp1[SIZE], temp2[SIZE];
    DTYPE *src = A, *dst = temp1;
    int width = 1;
    
    // 每一轮合并，把 src 的块合并到 dst
    while (width < SIZE) {
        for (int start = 0; start < SIZE; start += 2*width) {
            int mid = start + width;
            int end = start + 2*width;
            if (mid > SIZE) mid = SIZE;
            if (end > SIZE) end = SIZE;
            merge_arrays(src, start, mid, end, dst);
        }
        // 切换缓冲区
        DTYPE *tmp = src;
        src = dst;
        dst = (tmp == A ? temp1 : temp2);
        width *= 2;
    }
    
    // 最终结果写入 B
    for (int i = 0; i < SIZE; i++) {
        B[i] = src[i];
    }
}
