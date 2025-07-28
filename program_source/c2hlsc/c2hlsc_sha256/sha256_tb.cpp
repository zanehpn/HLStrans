// sha256_tb.cpp
#include <iostream>
#include <iomanip>
#include <cstring>
#include "sha256.h"  // 包含 SHA256_CTX, sha256_init, sha256_update, sha256

int main() {
    // 测试向量：ASCII "abc"
    const unsigned char msg[] = { 'a','b','c' };
    const unsigned char expected_hash[SHA256_BLOCK_SIZE] = {
        0xBA,0x78,0x16,0xBF, 0x8F,0x01,0xCF,0xEA,
        0x41,0x41,0x40,0xDE, 0x5D,0xAE,0x22,0x23,
        0xB0,0x03,0x61,0xA3, 0x96,0x17,0x7A,0x9C,
        0xB4,0x10,0xFF,0x61, 0xF2,0x00,0x15,0xAD
    };

    // 1) 初始化上下文
    SHA256_CTX ctx;
    sha256_init(&ctx);

    // 2) 更新数据
    sha256_update(&ctx.data, &ctx.datalen, &ctx.state, &ctx.bitlen, (data_t*)&msg, sizeof(msg));

    // 3) 完成并提取哈希
    unsigned char hash[SHA256_BLOCK_SIZE];
    sha256(&ctx, hash);

    // 4) 比对
    bool pass = true;
    for (int i = 0; i < SHA256_BLOCK_SIZE; ++i) {
        if (hash[i] != expected_hash[i]) {
            pass = false;
            break;
        }
    }

    if (pass) {
        std::cout << "PASS\n";
        return 0;
    } else {
        std::cout << "FAIL\nGot:      ";
        for (int i = 0; i < SHA256_BLOCK_SIZE; ++i)
            std::cout << std::hex << std::setw(2) << std::setfill('0')
                      << (int)hash[i];
        std::cout << "\nExpected: ";
        for (int i = 0; i < SHA256_BLOCK_SIZE; ++i)
            std::cout << std::hex << std::setw(2) << std::setfill('0')
                      << (int)expected_hash[i];
        std::cout << std::dec << "\n";
        return 1;
    }
}
