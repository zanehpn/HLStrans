// ludcmp_tb.cpp
#include <iostream>
#include <cmath>
#include <cstdlib>
#include <ctime>
#include <iomanip>
#include <cstring>
#include "ludcmp.h"

// 矩阵-向量乘法： b_out = A (40×40) × x (40)
void matvec40(double A[40][40], double x[40], double b_out[40]) {
    for (int i = 0; i < 40; i++) {
        double sum = 0.0;
        for (int j = 0; j < 40; j++) {
            sum += A[i][j] * x[j];
        }
        b_out[i] = sum;
    }
}

int main() {
    std::srand((unsigned)std::time(nullptr));

    // 原始矩阵和向量
    double A_orig[40][40], b_orig[40];
    // 用于计算的工作拷贝及中间解
    double A[40][40], b[40], x[40], y[40];

    // 1) 随机生成 A_orig 和 b_orig，使 A_orig 对角占优以保证可解
    for (int i = 0; i < 40; i++) {
        double row_sum = 0.0;
        for (int j = 0; j < 40; j++) {
            if (i == j) {
                A_orig[i][j] = 40.0 + (std::rand() % 100) / 10.0;  // 对角较大
            } else {
                A_orig[i][j] = (std::rand() % 100) / 10.0 - 5.0;   // [-5,5)
                row_sum += std::fabs(A_orig[i][j]);
            }
        }
        // 保证严格对角占优
        A_orig[i][i] = row_sum + 1.0;
        // 随机 b
        b_orig[i] = (std::rand() % 1000) / 10.0 - 50.0;       // [-50,50)
    }

    // 2) 拷贝到工作区
    std::memcpy(A, A_orig, sizeof(A));
    std::memcpy(b, b_orig, sizeof(b));

    // 3) 调用 LU 分解 + 求解函数
    ludcmp(A, b, x, y);

    // 4) 验证：计算 b_hat = A_orig * x
    double b_hat[40];
    matvec40(A_orig, x, b_hat);

    // 5) 比较 b_hat 与 b_orig
    const double tol = 1e-6;
    int err_idx = -1;
    double max_err = 0.0;
    for (int i = 0; i < 40; i++) {
        double diff = std::fabs(b_hat[i] - b_orig[i]);
        if (diff > max_err) {
            max_err = diff;
            err_idx = i;
        }
    }

    if (max_err < tol) {
        std::cout << "PASS\n";
        return 0;
    } else {
        std::cout << "FAIL at index " << err_idx
                  << ": expected b[" << err_idx << "]=" << b_orig[err_idx]
                  << ", got " << b_hat[err_idx]
                  << ", diff=" << max_err << "\n";
        return 1;
    }
}
