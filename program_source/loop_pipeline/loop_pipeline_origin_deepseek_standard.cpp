// Converted from loop_pipeline_origin.c to .cpp (standard C++ version)

#include <cstddef>

#define N 20
#define NUM_TRANS 20

typedef int din_t;
typedef int dout_t;

dout_t loop_pipeline(din_t A[N]) {
    int i, j;
    static dout_t acc = 0;

LOOP_I:
    for (i = 0; i < 20; i++) {
    LOOP_J:
        for (j = 0; j < 20; j++) {
            acc += A[j] * i;
        }
    }

    return acc;
}
