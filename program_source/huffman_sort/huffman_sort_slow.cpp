typedef struct {
    unsigned int value;     // 符号标识
    unsigned int frequency; // 频率
} Symbol;

#define INPUT_SYMBOL_SIZE 256
#define RADIX              16       // 2^BITS_PER_PASS
#define BITS_PER_PASS      4        // log2(RADIX)
#define MAX_BITS           32       // 假设 frequency 用 32 位

void huffman_sort(
    Symbol in[INPUT_SYMBOL_SIZE],
    int num_symbols,
    Symbol out[INPUT_SYMBOL_SIZE]
) {
    static Symbol buf_storage1[INPUT_SYMBOL_SIZE];
    static Symbol buf_storage2[INPUT_SYMBOL_SIZE];
    Symbol *buf1 = buf_storage1;
    Symbol *buf2 = buf_storage2;
    unsigned int histogram[RADIX];
    unsigned int prefix[RADIX];
    unsigned char keys[INPUT_SYMBOL_SIZE];

    // 初始拷贝
    for (int i = 0; i < num_symbols; i++) {
        buf1[i] = in[i];
    }

    // 每次处理低 BITS_PER_PASS 位，共 rounds 轮
    int rounds = (MAX_BITS + BITS_PER_PASS - 1) / BITS_PER_PASS;
    for (int r = 0; r < rounds; r++) {
        unsigned int shift = r * BITS_PER_PASS;

        // 清零 histogram
        for (int i = 0; i < RADIX; i++) {
            histogram[i] = 0;
        }
        // 统计当前轮的键值
        for (int i = 0; i < num_symbols; i++) {
            unsigned int key = (buf1[i].frequency >> shift) & (RADIX - 1);
            keys[i] = (unsigned char)key;
            histogram[key]++;
        }
        // 前缀和得到每个桶的起始位置
        prefix[0] = 0;
        for (int i = 1; i < RADIX; i++) {
            prefix[i] = prefix[i-1] + histogram[i-1];
        }
        // 重排到 buf2
        for (int i = 0; i < num_symbols; i++) {
            unsigned int k = keys[i];
            buf2[prefix[k]++] = buf1[i];
        }
        // 准备下轮：交换 buf1、buf2
        Symbol *tmp = buf1;
        buf1 = buf2;
        buf2 = tmp;
    }

    // 最终结果写入 out
    for (int i = 0; i < num_symbols; i++) {
        out[i] = buf1[i];
    }
}
