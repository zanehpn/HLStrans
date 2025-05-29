#include <ap_fixed.h>
#define  N_TILE_ROWS 2
#define  N_TILE_COLS 2
#define  N_TILE_LAYERS 2
#define  KERNEL_GROUPS 2

const int IN_BUF_DEPTH = 16;
const int OUT_BUF_DEPTH = 16;
const int BUF_HEIGHT = 7;
const int BUF_WIDTH = 7;

   const int IN_FM_DEPTH = IN_BUF_DEPTH * N_TILE_LAYERS;
    const int IN_FM_WIDTH = 2 * BUF_WIDTH * N_TILE_COLS;
    const int IN_FM_HEIGHT = 2 * BUF_HEIGHT * N_TILE_ROWS;
    const int OUT_FM_DEPTH = OUT_BUF_DEPTH * KERNEL_GROUPS;
    const int OUT_FM_HEIGHT = IN_FM_HEIGHT / 2;
    const int OUT_FM_WIDTH = IN_FM_WIDTH / 2;

typedef ap_fixed<16,3> fm_t;
typedef ap_fixed<16,3> wt_t;

static inline int idx3d(int d, int h, int w, int H, int W) {
    return d * H * W + h * W + w;
}

void conv_ds(
    fm_t out_feature_map[],
    fm_t in_feature_map[],
    wt_t layer_weights[],
    wt_t layer_bias[]
) {
    // 对每个输出通道
    for (int od = 0; od < OUT_FM_DEPTH; ++od) {
        // 先加上 bias
        wt_t bias = layer_bias[od];
        // 遍历输出 feature map 的每个像素位置
        for (int oh = 0; oh < OUT_FM_HEIGHT; ++oh) {
            for (int ow = 0; ow < OUT_FM_WIDTH; ++ow) {
                wt_t acc = bias;
                // 对该输出通道对应的所有输入深度做累加
                for (int id = 0; id < IN_FM_DEPTH; ++id) {
                    // 读取输入特征值
                    int in_idx = idx3d(id, 2*oh, 2*ow, IN_FM_HEIGHT, IN_FM_WIDTH);
                    wt_t in_val = in_feature_map[in_idx];
                    // 读取权重：权重按 [OUT_FM_DEPTH][IN_FM_DEPTH] 排列
                    int wt_idx = od * IN_FM_DEPTH + id;
                    wt_t w = layer_weights[wt_idx];
                    acc += in_val * w;
                }
                // 写回输出
                int out_idx = idx3d(od, oh, ow, OUT_FM_HEIGHT, OUT_FM_WIDTH);
                out_feature_map[out_idx] = acc;
            }
        }
    }
}
