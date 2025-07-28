#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <iomanip>

#include "ap_fixed.h"
#include "ap_int.h"

// —— 与 kernel 保持一致的类型定义 —— 

#define BATCH_SIZE_1         262144
#define INTERNAL_BATCH_SIZE  4096
#define INTERNAL_BATCHES     64

#define DEC_BITS 6
#define INT_BITS 13
typedef ap_fixed<INT_BITS + DEC_BITS, INT_BITS, AP_RND> DTYPE;

#define WIDTH                256
#define FLOAT_BITS           (sizeof(float)*8)
#define FLOATS_PER_ELEMENT   (WIDTH/FLOAT_BITS)
#define N_WORDS              (BATCH_SIZE_1 / FLOATS_PER_ELEMENT)

typedef ap_uint<WIDTH> INTERFACE_WIDTH;

typedef union {
    int   raw_val;
    float float_val;
} raw_float;

// HLS kernel 原型
extern "C" {
    void krnl_KALMAN(
        INTERFACE_WIDTH in[N_WORDS],
        INTERFACE_WIDTH out[N_WORDS]
    );
}

int main() {
    std::srand((unsigned)std::time(nullptr));

    // 主机侧缓冲
    INTERFACE_WIDTH in_buff[N_WORDS];
    INTERFACE_WIDTH out_buff[N_WORDS];
    DTYPE golden[BATCH_SIZE_1];

    // —— 1) 随机生成输入并打包 —— 
    int idx = 0;
    for (int w = 0; w < N_WORDS; ++w) {
        INTERFACE_WIDTH word = 0;
        for (int j = 0; j < FLOATS_PER_ELEMENT; ++j) {
            float r = ((float)std::rand() / RAND_MAX) * 10.0f - 5.0f;  // [-5,5]
            // 保存黄金值（以 DTYPE）
            golden[idx] = (DTYPE)r;
            // 打包到 word
            raw_float u;
            u.float_val = r;
            int hi = (j+1)*FLOAT_BITS - 1;
            int lo = j*FLOAT_BITS;
            word.range(hi, lo) = u.raw_val;
            ++idx;
        }
        in_buff[w] = word;
    }

    // —— 2) 调用 Kernel —— 
    krnl_KALMAN(in_buff, out_buff);

    // —— 3) 解包输出到 actual[] —— 
    DTYPE actual[BATCH_SIZE_1];
    idx = 0;
    for (int w = 0; w < N_WORDS; ++w) {
        INTERFACE_WIDTH word = out_buff[w];
        for (int j = 0; j < FLOATS_PER_ELEMENT; ++j) {
            raw_float u;
            int hi = (j+1)*FLOAT_BITS - 1;
            int lo = j*FLOAT_BITS;
            u.raw_val = word.range(hi, lo).to_int();
            actual[idx++] = (DTYPE)u.float_val;
        }
    }

    // —— 4) 校验并打印 PASS/FAIL —— 
    const DTYPE eps = (DTYPE)1e-3;
    for (int i = 0; i < BATCH_SIZE_1; ++i) {
        DTYPE diff = actual[i] - golden[i];
        // 先取绝对值
        DTYPE abs_diff = (diff < (DTYPE)(0.0)) ? -diff : diff;
        if (abs_diff > eps) {
            std::cout << "TEST FAIL at index " << i
                      << "  expected=" << (float)golden[i]
                      << "  got="      << (float)actual[i]
                      << std::endl;
            return 1;
        }
    }

    std::cout << "TEST PASS" << std::endl;
    return 0;


    std::cout << "TEST PASS" << std::endl;
    return 0;
}
