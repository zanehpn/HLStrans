// contents of state_space_control_tb.cpp
#include <iostream>
#include <cmath>
#include <cassert>

// Include the implementation to access state_space_control() and N definition.
#include "state_space_control.cpp"

// Helper to set a matrix to zero
void fill_zero_matrix(float (*M)[N]) {
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            M[i][j] = 0.0f;
        }
    }
}

// Helper to set a diagonal matrix with a given value
void fill_diag_matrix(float (*M)[N], float diag_val) {
    fill_zero_matrix(M);
    for (int i = 0; i < N; ++i) {
        M[i][i] = diag_val;
    }
}

// Helper to fill a vector with a constant
void fill_vector_constant(float* v, float val) {
    for (int i = 0; i < N; ++i) {
        v[i] = val;
    }
}

// Helper to fill a vector with a deterministic pattern
void fill_vector_pattern(float* v) {
    for (int i = 0; i < N; ++i) {
        v[i] = static_cast<float>((i % 17) - 8) * 0.25f; // values in a small range, both positive/negative
    }
}

// Compare two vectors with a tolerance, return mismatch count
int check_vector(const float* v, const float* expected, float tol) {
    int mismatches = 0;
    for (int i = 0; i < N; ++i) {
        if (std::fabs(v[i] - expected[i]) > tol) {
            ++mismatches;
        }
    }
    return mismatches;
}

// Print first 'count' elements of a vector
void print_first(const char* name, const float* v, int count) {
    std::cout << name << " first " << count << " elements: ";
    for (int i = 0; i < count; ++i) {
        std::cout << v[i] << (i + 1 < count ? ", " : "");
    }
    std::cout << std::endl;
}

int main() {
    // Allocate matrices (A, B, C, D) and vectors (x, u, y, x_next) on the heap to avoid large stack usage.
    float (*A)[N] = new float[N][N];
    float (*B)[N] = new float[N][N];
    float (*C)[N] = new float[N][N];
    float (*D)[N] = new float[N][N];

    float* x = new float[N];
    float* u = new float[N];
    float* y = new float[N];
    float* x_next = new float[N];

    const float tol = 1e-5f;

    // Test 1: Identity system for A and C, zero matrices for B and D
    // Expectation: y = x and x_next = x for any x, regardless of u
    fill_diag_matrix(A, 1.0f);
    fill_diag_matrix(C, 1.0f);
    fill_zero_matrix(B);
    fill_zero_matrix(D);

    fill_vector_pattern(x);      // deterministic pattern
    fill_vector_pattern(u);      // another deterministic pattern

    state_space_control(A, B, C, D, x, u, y, x_next);

    int mismatches_y_t1 = check_vector(y, x, tol);
    int mismatches_xn_t1 = check_vector(x_next, x, tol);
    assert(mismatches_y_t1 == 0 && "Test 1 failed: y != x");
    assert(mismatches_xn_t1 == 0 && "Test 1 failed: x_next != x");
    std::cout << "Test 1 passed: y = x and x_next = x for identity A,C and zero B,D." << std::endl;
    print_first("y", y, 8);
    print_first("x_next", x_next, 8);

    // Test 2: Scaled diagonal matrices
    // A = 2I, B = 3I, C = 4I, D = 5I; x = 1, u = 1
    // Expectation: y = 4*1 + 5*1 = 9, x_next = 2*1 + 3*1 = 5
    fill_diag_matrix(A, 2.0f);
    fill_diag_matrix(B, 3.0f);
    fill_diag_matrix(C, 4.0f);
    fill_diag_matrix(D, 5.0f);

    fill_vector_constant(x, 1.0f);
    fill_vector_constant(u, 1.0f);

    state_space_control(A, B, C, D, x, u, y, x_next);

    float* expected_y_t2 = new float[N];
    float* expected_xn_t2 = new float[N];
    fill_vector_constant(expected_y_t2, 9.0f);
    fill_vector_constant(expected_xn_t2, 5.0f);

    int mismatches_y_t2 = check_vector(y, expected_y_t2, tol);
    int mismatches_xn_t2 = check_vector(x_next, expected_xn_t2, tol);
    assert(mismatches_y_t2 == 0 && "Test 2 failed: y != 9");
    assert(mismatches_xn_t2 == 0 && "Test 2 failed: x_next != 5");
    std::cout << "Test 2 passed: y = 9 and x_next = 5 for scaled diagonal matrices." << std::endl;
    print_first("y", y, 8);
    print_first("x_next", x_next, 8);

    delete[] expected_y_t2;
    delete[] expected_xn_t2;

    // Test 3: Mixed case with A = I, B = I, C = 0, D = I
    // x = 0, u = pattern; Expectation: y = u, x_next = u
    fill_diag_matrix(A, 1.0f);
    fill_diag_matrix(B, 1.0f);
    fill_zero_matrix(C);
    fill_diag_matrix(D, 1.0f);

    fill_vector_constant(x, 0.0f);
    fill_vector_pattern(u);

    state_space_control(A, B, C, D, x, u, y, x_next);

    int mismatches_y_t3 = check_vector(y, u, tol);
    int mismatches_xn_t3 = check_vector(x_next, u, tol);
    assert(mismatches_y_t3 == 0 && "Test 3 failed: y != u");
    assert(mismatches_xn_t3 == 0 && "Test 3 failed: x_next != u");
    std::cout << "Test 3 passed: y = u and x_next = u when A=I, B=I, C=0, D=I with x=0." << std::endl;
    print_first("y", y, 8);
    print_first("x_next", x_next, 8);

    // Cleanup
    delete[] A;
    delete[] B;
    delete[] C;
    delete[] D;
    delete[] x;
    delete[] u;
    delete[] y;
    delete[] x_next;

    std::cout << "All tests passed." << std::endl;
    return 0;
}