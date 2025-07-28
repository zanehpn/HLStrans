#include <stdio.h>
#include <math.h>

// When integrating, move these declarations into a shared header
#define GAMMA      8
#define BIAS       0
#define N_FEATURES 4     // Must match the length of sv_coeff[]
#define N_SUP_VECT 4     // Must match the first dimension of sup_vectors[][]

// Original data (shortened for illustration; pad or adjust as needed)
const float sv_coeff[N_FEATURES] = {1, 2, 2, 1};
const float sup_vectors[N_SUP_VECT][N_FEATURES] = {
    {1.0f, 5.0f, 2.2f, 1.1f},
    {1.0f, 2.0f, 4.0f, 1.1f},
    {1.0f, 2.1f, 2.2f, 1.1f},
    {1.0f, 8.0f, 2.2f, 1.1f}
};

// DUT declaration
int svm(float test_vector[N_SUP_VECT]);

// Simple reference implementation (same as DUT)
int svm_predict_ref(float test_vector[N_SUP_VECT]) {
    float diff, norma;
    int sum = 0;
    for (int i = 0; i < N_FEATURES; i++) {
        norma = 0.0f;
        for (int j = 0; j < N_SUP_VECT; j++) {
            diff = test_vector[j] - sup_vectors[j][i];
            norma += diff * diff;
        }
        sum += (int)(expf(-GAMMA * norma) * sv_coeff[i]);
    }
    return sum - BIAS;
}

int main() {
    // 1) Define a few test vectors
    float tests[][N_SUP_VECT] = {
        {1.0f, 5.0f, 2.2f, 1.1f},   // identical to first support vector
        {2.0f, 3.0f, 1.5f, 0.9f},   // arbitrary
        {0.0f, 1.0f, 2.0f, 3.0f},   // arbitrary
    };
    const int num_tests = sizeof(tests) / sizeof(tests[0]);

    // 2) Run DUT and reference, compare
    for (int t = 0; t < num_tests; t++) {
        int out_dut = svm(tests[t]);
        int out_ref = svm_predict_ref(tests[t]);
        if (out_dut == out_ref) {
            printf("Test %d PASS: result=%d\n", t, out_dut);
        } else {
            printf("Test %d FAIL: DUT=%d REF=%d\n", t, out_dut, out_ref);
        }
    }

    return 0;
}