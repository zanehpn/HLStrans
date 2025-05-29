#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "dft.h"
#define TOLERANCE 1e-6



int compare_results(IN_TYPE arr1[N], IN_TYPE arr2[N]) {
    for (int i = 0; i < N; i++) {
        if (fabs(arr1[i] - arr2[i]) > TOLERANCE) {
            return 0;
        }
    }
    return 1;
}

int main() {
    int overall_pass = 1;

    // ---------------------- Test Case 1: Impulse Test ----------------------
    {
        IN_TYPE sample_real[N] = {0};
        IN_TYPE sample_imag[N] = {0};
        IN_TYPE expected_real[N], expected_imag[N];

        // 构造 impulse 输入
        sample_real[0] = 1.0;
        for (int i = 0; i < N; i++) {
            expected_imag[i] = 0.0;
            // 对 impulse 输入，DFT 理论上所有频点的实部为 1
            expected_real[i] = 1.0;
        }

        // 调用 DFT
        dft(sample_real, sample_imag);

        // 比较结果
        int pass = compare_results(sample_real, expected_real) &&
                   compare_results(sample_imag, expected_imag);
        if (pass) {
            printf("Test Case 1 (Impulse) pass\n");
        } else {
            printf("Test Case 1 (Impulse) fail\n");
            overall_pass = 0;
        }
    }

    // ---------------------- Test Case 2: Constant Test ----------------------
    {
        IN_TYPE sample_real[N], sample_imag[N];
        IN_TYPE expected_real[N], expected_imag[N];

        // 构造恒定输入，全为 1
        for (int j = 0; j < N; j++) {
            sample_real[j] = 1.0;
            sample_imag[j] = 0.0;
        }
        // 对恒定输入，直流分量应为 N，其他频点为 0
        expected_real[0] = N;  // 256
        expected_imag[0] = 0.0;
        for (int i = 1; i < N; i++) {
            expected_real[i] = 0.0;
            expected_imag[i] = 0.0;
        }

        // 调用 DFT
        dft(sample_real, sample_imag);

        // 比较结果
        int pass = compare_results(sample_real, expected_real) &&
                   compare_results(sample_imag, expected_imag);
        if (pass) {
            printf("Test Case 2 (Constant) pass\n");
        } else {
            printf("Test Case 2 (Constant) fail\n");
            overall_pass = 0;
        }
    }

    // ---------------------- Test Case 3: Cosine Test ----------------------
    {
        IN_TYPE sample_real[N], sample_imag[N];
        IN_TYPE expected_real[N], expected_imag[N];
        int k = 1; // 频率分量选择 1

        // 构造余弦输入：sample_real[j] = cos(2π*k*j/N)，sample_imag[j] = 0
        for (int j = 0; j < N; j++) {
            sample_real[j] = cos(2.0 * 3.141592653589 * k * j / N);
            sample_imag[j] = 0.0;
        }
        // 理论上，余弦信号的 DFT 在索引 k 和 N-k 处各有一个峰值，
        // 峰值幅值理论上为 N/2 = 128，其余频点近似 0。
        for (int i = 0; i < N; i++) {
            expected_real[i] = 0.0;
            expected_imag[i] = 0.0;
        }
        expected_real[k] = N / 2.0;         // index 1
        expected_real[N - k] = N / 2.0;       // index 255

        // 调用 DFT
        dft(sample_real, sample_imag);

        // 检查每个频点是否在容差内
        int pass = 1;
        for (int i = 0; i < N; i++) {
            if (fabs(sample_real[i] - expected_real[i]) > TOLERANCE ||
                fabs(sample_imag[i] - expected_imag[i]) > TOLERANCE) {
                pass = 0;
                printf("Cosine test mismatch at index %d: got (real=%lf, imag=%lf), expected (real=%lf, imag=%lf)\n",
                       i, sample_real[i], sample_imag[i], expected_real[i], expected_imag[i]);
                break;
            }
        }
        if (pass) {
            printf("Test Case 3 (Cosine) pass\n");
        } else {
            printf("Test Case 3 (Cosine) fail\n");
            overall_pass = 0;
        }
    }

    if (overall_pass) {
        printf("All tests pass\n");
    } else {
        printf("Some tests failed\n");
    }

    return 0;
}
