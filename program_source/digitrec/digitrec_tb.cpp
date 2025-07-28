#include "digitrec.h"
#include <iostream>

// CPU reference popcount
int cpu_popcount(const WholeDigitType &x) {
    int cnt = 0;
    for (int i = 0; i < 256; ++i) cnt += x[i];
    return cnt;
}

// CPU reference KNN label finder (labels 0–9 in equal blocks)
LabelType cpu_knn_label(const WholeDigitType &test_inst, const WholeDigitType train_set[]) {
    int best_dist = 256;
    int best_label = 0;
    int label_stride = NUM_TRAINING / 10;  // matches i / (PAR_FACTOR/10) in RTL
    for (int i = 0; i < NUM_TRAINING; ++i) {
        WholeDigitType diff = test_inst ^ train_set[i];
        int d = cpu_popcount(diff);
        if (d < best_dist) {
            best_dist = d;
            best_label = i / label_stride;
        }
    }
    return static_cast<LabelType>(best_label);
}

int main() {
    static WholeDigitType training[NUM_TRAINING];
    static WholeDigitType test_set[NUM_TEST];
    static LabelType results[NUM_TEST];
    LabelType golden[NUM_TEST];

    // === Test data setup ===
    for (int i = 0; i < NUM_TRAINING; ++i) {
        for (int b = 0; b < 256; ++b) {
            training[i][b] = (b == (i % 256));
        }
    }
    for (int t = 0; t < NUM_TEST; ++t) {
        int idx = t % NUM_TRAINING;
        for (int b = 0; b < 256; ++b) {
            test_set[t][b] = training[idx][b];
        }
        golden[t] = cpu_knn_label(test_set[t], training);
    }

    // === Run DUT ===
    digitrec(training, test_set, results);

    // === Verify ===
    bool pass = true;
    for (int t = 0; t < NUM_TEST; ++t) {
        if (results[t] != golden[t]) {
            std::cout << "Test " << t
                      << " FAILED: got " << static_cast<int>(results[t])
                      << " expected " << static_cast<int>(golden[t])
                      << "\n";
            pass = false;
        }
    }
    std::cout << (pass ? "PASS\n" : "FAIL\n");
    return pass ? 0 : 1;
}
