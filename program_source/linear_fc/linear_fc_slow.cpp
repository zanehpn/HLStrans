typedef float fm_t;
typedef float wt_t;

// 顶层函数签名完全不变
void linear_fc(
    const fm_t in[512],
    fm_t out[],                    // 假定外部已知长度为 1024
    const wt_t weights[][512],     // weights[1024][512]
    const wt_t biases[]            // biases[1024]
)
{
    const int IN_DIM  = 512;
    const int OUT_DIM = 1024;      // 根据实际网络输出维度设置

    // 对每个输出通道 j：
    for (int j = 0; j < OUT_DIM; j++) {
        // 从 bias 开始累加
        fm_t acc = biases[j];
        // 对每个输入 i 做加权求和
        for (int i = 0; i < IN_DIM; i++) {
            acc += weights[j][i] * in[i];
        }
        // 写回输出
        out[j] = acc;
    }
}
