// tb_qs.cpp
#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cassert>

// 声明 HLS 侧导出的排序函数
extern "C" {
    void qs(int arr[64], int n);
}

// 简单的升序检查
bool is_sorted(int *arr, int n) {
    for (int i = 1; i < n; ++i) {
        if (arr[i-1] > arr[i]) return false;
    }
    return true;
}

int main() {
    const int N = 64;
    static int test_arr[N];
    std::srand(std::time(nullptr));

    // 1) 初始化测试数据
    std::cout << "Initializing test array with random values...\n";
    for (int i = 0; i < N; ++i) {
        test_arr[i] = std::rand() % 1000;  // 0..999 之间
    }

    // 2) 打印原始数组（可选，数据多时可省略）
    std::cout << "Input array:\n";
    for (int i = 0; i < N; ++i) {
        std::cout << test_arr[i] << (i%16==15 ? "\n" : " ");
    }

    // 3) 调用 HLS 拆分排序核
    std::cout << "\nCalling qs()...\n";
    qs(test_arr, N);

    // 4) 打印排序后数组
    std::cout << "\nOutput array:\n";
    for (int i = 0; i < N; ++i) {
        std::cout << test_arr[i] << (i%16==15 ? "\n" : " ");
    }

    // 5) 校验
    std::cout << "\nVerifying sorted order... ";
    if (is_sorted(test_arr, N)) {
        std::cout << "PASS\n";
        return 0;
    } else {
        std::cerr << "FAIL: array is not sorted!\n";
        return 1;
    }
}
