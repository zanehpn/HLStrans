#include <math.h>
#include <stdint.h>

#define M      10        /* Log2(SIZE) */
#define SIZE   1024      /* FFT 长度 */
#define SIZE2  (SIZE>>1) /* SIZE/2 */

/* 将 0…(SIZE-1) 的下标按 M 位二进制反转 */
static uint32_t reverse_bits(uint32_t x) {
    uint32_t rev = 0;
    for (int i = 0; i < M; i++) {
        rev = (rev << 1) | (x & 1);
        x >>= 1;
    }
    return rev;
}

/* 位反转重排：输入 X_R/X_I，输出到 OUT_R/OUT_I */
void bit_reverse(const float X_R[SIZE], const float X_I[SIZE],
                 float OUT_R[SIZE],     float OUT_I[SIZE])
{
    for (uint32_t i = 0; i < SIZE; i++) {
        uint32_t j = reverse_bits(i);
        /* 只处理 i < j 时的交换，避免重复 */
        if (i < j) {
            OUT_R[i] = X_R[j];
            OUT_I[i] = X_I[j];
            OUT_R[j] = X_R[i];
            OUT_I[j] = X_I[i];
        } else if (i == j) {
            /* 对角线元素直接拷贝 */
            OUT_R[i] = X_R[i];
            OUT_I[i] = X_I[i];
        }
    }
}

/* 对某一 FFT 阶段做蝶形运算：stage 从 1 开始 */
void fft_stage(int stage,
               const float  X_R[SIZE], const float  X_I[SIZE],
                     float Out_R[SIZE],       float Out_I[SIZE])
{
    int dft_pts = 1 << stage;       /* 子 DFT 点数 = 2^stage */
    int half    = dft_pts >> 1;     /* 半蝶形宽度 */
    float angle_step = -2.0f * M_PI / dft_pts;
    
    for (int k = 0; k < half; k++) {
        float angle = k * angle_step;
        float c = cosf(angle);
        float s = sinf(angle);
        /* 对每个蝶形对 */
        for (int i = k; i < SIZE; i += dft_pts) {
            int j = i + half;
            float tr =  X_R[j] * c - X_I[j] * s;
            float ti =  X_I[j] * c + X_R[j] * s;
            Out_R[j] = X_R[i] - tr;
            Out_I[j] = X_I[i] - ti;
            Out_R[i] = X_R[i] + tr;
            Out_I[i] = X_I[i] + ti;
        }
    }
}

/* 多级 FFT：先位反转，再做若干级 fft_stage */
void fft_multistage(float X_R[SIZE], float X_I[SIZE],
                    float OUT_R[SIZE],       float OUT_I[SIZE])
{
    static float buf1_R[SIZE], buf1_I[SIZE];
    static float buf2_R[SIZE], buf2_I[SIZE];

    /* 1. 位反转重排 */
    bit_reverse(X_R, X_I, buf1_R, buf1_I);

    /* 2. 逐级蝶形运算（示例只做两级，可按需扩展至 M 级） */
    fft_stage(1, buf1_R, buf1_I, buf2_R, buf2_I);
    fft_stage(2, buf2_R, buf2_I, OUT_R, OUT_I);
    
    /* 若需做更多级：继续调用
       fft_stage(3, OUT_R, OUT_I, buf1_R, buf1_I);
       fft_stage(4, buf1_R, buf1_I, OUT_R, OUT_I);
       …
       直到 stage == M。
    */
}
