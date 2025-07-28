#include <stdlib.h>
//#define NO_SYNTH

long long compute_sum(int *din, int N, int width) {
#ifdef NO_SYNTH
    long long *out_accum = malloc(sizeof(long long));
    int *array_local     = malloc(64 * sizeof(int));
#else
    long long _out_accum;
    int _array_local[64];
    long long *out_accum = &_out_accum;
    int *array_local     = _array_local;
#endif

#pragma HLS ARRAY_PARTITION variable=_array_local complete
    LOOP_SHIFT: for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
        array_local[i] = (i < width) ? din[i] : (din[i] >> 2);
    }
    *out_accum = 0;
    LOOP_ACCUM: for (int j = 0; j < N; j++) {
#pragma HLS PIPELINE II=1
        *out_accum += array_local[j];
    }
    return *out_accum;
}
