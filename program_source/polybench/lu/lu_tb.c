// lu_tb.cpp
#include <iostream>
#include <cmath>
#include <cstdlib>
#include <ctime>
#include <iomanip>
#include <cassert>

// 原函数声明
extern void lu(double A[40][40]);

// 计算 C = A * B
void matmul40(double A[40][40], double B[40][40], double C[40][40]) {
    for (int i = 0; i < 40; i++) {
        for (int j = 0; j < 40; j++) {
            double sum = 0.0;
            for (int k = 0; k < 40; k++) {
                sum += A[i][k] * B[k][j];
            }
            C[i][j] = sum;
        }
    }
}

int main() {
    std::srand((unsigned)std::time(nullptr));

    double A_orig[40][40], A[40][40];
    // 随机生成一个对角线占优的矩阵，保证可分解
    for (int i = 0; i < 40; i++) {
        for (int j = 0; j < 40; j++) {
            if (i == j) {
                A_orig[i][j] = 50.0 + (std::rand() % 50); // 对角较大
            } else {
                A_orig[i][j] = (std::rand() % 100) / 10.0 - 5.0; // [-5,5)
            }
            A[i][j] = A_orig[i][j];
        }
    }

    // 调用 LU 分解
    lu(A);

    // 从 A 中提取 L 和 U
    double L[40][40], U[40][40];
    for (int i = 0; i < 40; i++) {
        for (int j = 0; j < 40; j++) {
            if (j < i) {
                L[i][j] = A[i][j];
                U[i][j] = 0.0;
            } else if (j == i) {
                L[i][j] = 1.0;
                U[i][j] = A[i][j];
            } else {
                L[i][j] = 0.0;
                U[i][j] = A[i][j];
            }
        }
    }

    // 计算 L*U
    double B[40][40];
    matmul40(L, U, B);

    // 比较 B 与 A_orig
    const double tol = 1e-6;
    bool pass = true;
    int err_i = -1, err_j = -1;
    for (int i = 0; i < 40 && pass; i++) {
        for (int j = 0; j < 40; j++) {
            double diff = std::fabs(B[i][j] - A_orig[i][j]);
            if (diff > tol) {
                pass = false;
                err_i = i; err_j = j;
                break;
            }
        }
    }

    if (pass) {
        std::cout << "PASS\n";
        return 0;
    } else {
        std::cout << "FAIL at (" << err_i << "," << err_j << "): "
                  << "expected " << std::fixed << std::setprecision(6) << A_orig[err_i][err_j]
                  << ", got " << B[err_i][err_j]
                  << ", diff " << std::fabs(B[err_i][err_j] - A_orig[err_i][err_j])
                  << "\n";
        return 1;
    }
}
