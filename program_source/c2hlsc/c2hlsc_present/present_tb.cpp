// present_tb.cpp
#include <iostream>
#include <iomanip>
#include <cstring>
#include "present.h"  // 包含 present(), generateRoundKeys80(), 等声明

int main() {
    // 1) NIST 官方测试向量（80-bit key, single block）
    //    80-bit key:  00000000000000000000
    //    Plaintext:   0000000000000000
    //    Ciphertext:  5579C1387B228445
    const unsigned char key[10]  = {0};
    const unsigned char pt[8]    = {0};
    const unsigned char expected[8] = {
        0x55, 0x79, 0xC1, 0x38, 0x7B, 0x22, 0x84, 0x45
    };

    // 2) 准备 block
    block_t block;
    std::memcpy(block, pt, 8);

    // 3) 调用 PRESENT
    present(&block, (present_key_t*)key);

    // 4) 比对输出
    bool pass = true;
    for (int i = 0; i < 8; ++i) {
        if (block[i] != expected[i]) {
            pass = false;
            break;
        }
    }

    // 5) 打印结果
    if (pass) {
        std::cout << "PASS\n";
        return 0;
    } else {
        std::cout << "FAIL\n Got:      ";
        for (int i = 0; i < 8; ++i)
            std::cout << std::hex << std::setw(2) << std::setfill('0')
                      << (int)block[i] << ' ';
        std::cout << "\n Expected: ";
        for (int i = 0; i < 8; ++i)
            std::cout << std::hex << std::setw(2) << std::setfill('0')
                      << (int)expected[i] << ' ';
        std::cout << std::dec << "\n";
        return 1;
    }
}
