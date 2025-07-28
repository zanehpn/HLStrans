#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>

static const int MAX_N = 64;      
typedef int DataT;

extern "C" {
void qs(DataT arr[MAX_N], int n) {
#pragma HLS INTERFACE m_axi port=arr offset=slave bundle=gmem0
#pragma HLS INTERFACE s_axilite port=n     bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    int stack_low [MAX_N];
    int stack_high[MAX_N];
#pragma HLS ARRAY_PARTITION variable=stack_low  complete
#pragma HLS ARRAY_PARTITION variable=stack_high complete

    int top = -1;
    stack_low[++top]  = 0;
    stack_high[top]   = n - 1;

    while (top >= 0) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N
#pragma HLS PIPELINE II=1
        int low  = stack_low[top];
        int high = stack_high[top--];
        if (low >= high) continue;

        DataT pivot = arr[low];
        int i = low, j = high;
        while (i < j) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N
#pragma HLS PIPELINE II=1
            while (i < j && arr[j] > pivot) --j;
            if (i < j) arr[i++] = arr[j];
            while (i < j && arr[i] <= pivot) ++i;
            if (i < j) arr[j--] = arr[i];
        }
        arr[i] = pivot;
        int p = i;

        if (p - 1 > low)  stack_low[++top] = low,  stack_high[top] = p - 1;
        if (p + 1 < high) stack_low[++top] = p + 1, stack_high[top] = high;
    }
}
}
