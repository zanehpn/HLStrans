#include <stdint.h>
#include <string.h>

static uint32_t Te0[256], Te1[256], Te2[256], Te3[256];

const uint8_t S[256] = {
    0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5,
    0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
    0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0,
    0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
    0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc,
    0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
    0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a,
    0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
    0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0,
    0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
    0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b,
    0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
    0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85,
    0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
    0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5,
    0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
    0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17,
    0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
    0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88,
    0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
    0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c,
    0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
    0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9,
    0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
    0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6,
    0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
    0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e,
    0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
    0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94,
    0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
    0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68,
    0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16
};

/* 一次初始化 T 表，程序启动时调用 */
static void aes_init_T(void) {
    for (int x = 0; x < 256; x++) {
        uint32_t s  = S[x];
        uint32_t s2 = (s << 1) ^ ((s & 0x80) ? 0x1B : 0);
        uint32_t s3 = s2 ^ s;
        Te0[x] = (s2 << 24) | (s << 16) | (s << 8) | s3;
        Te1[x] = (s3 << 24) | (s2 << 16) | (s << 8) | s;
        Te2[x] = (s << 24) | (s3 << 16) | (s2 << 8) | s;
        Te3[x] = (s << 24) | (s << 16) | (s3 << 8) | s2;
    }
}

/*---------------------------------------------------------------------------*/
/* AES‑256 轮密钥扩展，生成 60×32 bit（15 轮＋初始）的子密钥 rk[]           */
/*---------------------------------------------------------------------------*/
static void aes256_key_expand(const uint8_t key[32], uint32_t rk[60]) {
    uint32_t temp;
    /* 将原始密钥前 8 字做初始填充 */
    for (int i = 0; i < 8; i++)
        rk[i] = ((uint32_t)key[4*i] << 24)
              | ((uint32_t)key[4*i+1] << 16)
              | ((uint32_t)key[4*i+2] <<  8)
              | ((uint32_t)key[4*i+3]      );
    uint32_t rcon = 1;
    for (int i = 8; i < 60; i++) {
        temp = rk[i-1];
        if (i % 8 == 0) {
            /* RotWord + SubWord + Rcon */
            temp = (S[(temp >> 16) & 0xFF] << 24)
                 | (S[(temp >>  8) & 0xFF] << 16)
                 | (S[(temp >>  0) & 0xFF] <<  8)
                 | (S[(temp >> 24)      ]);
            temp ^= (rcon << 24);
            rcon = (rcon << 1) ^ ((rcon & 0x80) ? 0x1B : 0);
        } else if (i % 8 == 4) {
            /* 仅 SubWord */
            temp = (S[(temp >> 24)      ] << 24)
                 | (S[(temp >> 16) & 0xFF] << 16)
                 | (S[(temp >>  8) & 0xFF] <<  8)
                 | (S[(temp >>  0) & 0xFF]      );
        }
        rk[i] = rk[i-8] ^ temp;
    }
}

/*---------------------------------------------------------------------------*/
/* 单块加密：一次性用 T 表做 13 轮，最后一轮单独处理                          */
/* 输入 16 字节 in，输出 16 字节 out，rk 长度 60                              */
/*---------------------------------------------------------------------------*/
void aes_table(const uint8_t in[16], uint8_t out[16], const uint32_t rk[60]) {
    uint32_t s0 = ((uint32_t)in[0] << 24) | ((uint32_t)in[1] << 16)
                | ((uint32_t)in[2] <<  8) |  (uint32_t)in[3];
    uint32_t s1 = ((uint32_t)in[4] << 24) | ((uint32_t)in[5] << 16)
                | ((uint32_t)in[6] <<  8) |  (uint32_t)in[7];
    uint32_t s2 = ((uint32_t)in[8] << 24) | ((uint32_t)in[9] << 16)
                | ((uint32_t)in[10] << 8) |  (uint32_t)in[11];
    uint32_t s3 = ((uint32_t)in[12] << 24)| ((uint32_t)in[13] << 16)
                | ((uint32_t)in[14] << 8) |  (uint32_t)in[15];

    /* 初始 AddRoundKey */
    s0 ^= rk[0];  s1 ^= rk[1];  s2 ^= rk[2];  s3 ^= rk[3];

    /* 13 轮主循环，每轮 4 次表查 + XOR；循环次数固定可展开进一步提速 */
    for (int r = 1; r < 14; r++) {
        uint32_t t0 = Te0[(s0 >> 24)       ]
                    ^ Te1[(s1 >> 16) & 0xFF]
                    ^ Te2[(s2 >>  8) & 0xFF]
                    ^ Te3[(s3      ) & 0xFF]
                    ^ rk[4*r + 0];
        uint32_t t1 = Te0[(s1 >> 24)       ]
                    ^ Te1[(s2 >> 16) & 0xFF]
                    ^ Te2[(s3 >>  8) & 0xFF]
                    ^ Te3[(s0      ) & 0xFF]
                    ^ rk[4*r + 1];
        uint32_t t2 = Te0[(s2 >> 24)       ]
                    ^ Te1[(s3 >> 16) & 0xFF]
                    ^ Te2[(s0 >>  8) & 0xFF]
                    ^ Te3[(s1      ) & 0xFF]
                    ^ rk[4*r + 2];
        uint32_t t3 = Te0[(s3 >> 24)       ]
                    ^ Te1[(s0 >> 16) & 0xFF]
                    ^ Te2[(s1 >>  8) & 0xFF]
                    ^ Te3[(s2      ) & 0xFF]
                    ^ rk[4*r + 3];
        s0 = t0;  s1 = t1;  s2 = t2;  s3 = t3;
    }

    /* 最后一轮：SubBytes + ShiftRows + AddRoundKey （无 MixColumns） */
    uint8_t *p = out;
    uint32_t w;
    w  = ((uint32_t)S[(s0 >> 24)       ] << 24)
       | ((uint32_t)S[(s1 >> 16) & 0xFF] << 16)
       | ((uint32_t)S[(s2 >>  8) & 0xFF] <<  8)
       | ((uint32_t)S[(s3      ) & 0xFF]      );
    w ^= rk[56];
    memcpy(p+ 0, &w, 4);
    w  = ((uint32_t)S[(s1 >> 24)       ] << 24)
       | ((uint32_t)S[(s2 >> 16) & 0xFF] << 16)
       | ((uint32_t)S[(s3 >>  8) & 0xFF] <<  8)
       | ((uint32_t)S[(s0      ) & 0xFF]      );
    w ^= rk[57];
    memcpy(p+ 4, &w, 4);
    w  = ((uint32_t)S[(s2 >> 24)       ] << 24)
       | ((uint32_t)S[(s3 >> 16) & 0xFF] << 16)
       | ((uint32_t)S[(s0 >>  8) & 0xFF] <<  8)
       | ((uint32_t)S[(s1      ) & 0xFF]      );
    w ^= rk[58];
    memcpy(p+ 8, &w, 4);
    w  = ((uint32_t)S[(s3 >> 24)       ] << 24)
       | ((uint32_t)S[(s0 >> 16) & 0xFF] << 16)
       | ((uint32_t)S[(s1 >>  8) & 0xFF] <<  8)
       | ((uint32_t)S[(s2      ) & 0xFF]      );
    w ^= rk[59];
    memcpy(p+12, &w, 4);
}