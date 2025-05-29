// file: sliding_tb.c
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

// Kernel prototype
void movavg(int n, float in[1024], int win, float out[1024]);

// Reference C implementation of moving average
void movavg_ref(int n, float in[1024], int win, float out_ref[1024]) {
    float sum = 0.0f;
    int cnt = 0;
    for (int i = 0; i < n; i++) {
        sum += in[i];
        cnt++;
        if (cnt > win) {
            sum -= in[i - win];
            cnt = win;
        }
        out_ref[i] = sum / cnt;
    }
}

int main() {
    const int NMAX = 1024;
    const int WMAX = 64;
    const float EPS = 1e-6f;

    // Test parameters
    int n = 1000;           // length of input
    int win = 32;           // window size

    static float in[NMAX];
    static float out_hls[NMAX];
    static float out_ref[NMAX];

    // Initialize input (e.g. random or ramp)
    srand((unsigned)time(NULL));
    for (int i = 0; i < n; i++) {
        in[i] = (float)(rand() % 1000) / 10.0f;  // 0.0 to 99.9
        out_hls[i] = 0;
        out_ref[i] = 0;
    }

    // 1) Call HLS kernel
    movavg(n, in, win, out_hls);

    // 2) Compute reference
    movavg_ref(n, in, win, out_ref);

    // 3) Compare results
    int pass = 1;
    for (int i = 0; i < n; i++) {
        if (fabsf(out_hls[i] - out_ref[i]) > EPS) {
            printf("Mismatch at idx %d: HLS=%.6f  REF=%.6f\n",
                   i, out_hls[i], out_ref[i]);
            pass = 0;
            break;
        }
    }

    // 4) Report
    if (pass) {
        printf("TEST PASSED\n");
        return 0;
    } else {
        printf("TEST FAILED\n");
        return 1;
    }
}
