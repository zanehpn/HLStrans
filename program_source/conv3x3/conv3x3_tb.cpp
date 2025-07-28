// test_conv3x3_tb.cpp
#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <cassert>

// Maximum spatial dimension (enough for up to 14x14 = 196 elements)
#define MAX_SPATIAL 1024
// Maximum channels supported
#define MAX_CH 256
static const int KSIZE = 3;

// 声明待测函数
void conv3x3(
    int in_ch,
    int out_ch,
    int H,
    int W,
    float input[MAX_CH][MAX_SPATIAL],
    float weight[MAX_CH][MAX_CH][KSIZE][KSIZE],
    float bias[MAX_CH],
    float output[MAX_CH][MAX_SPATIAL],
    int stride,
    int pad
);

// CPU 参考实现（3×3 卷积 + bias + zero-pad）
void cpu_conv3x3_ref(
    int in_ch, int out_ch,
    int H, int W,
    const std::vector<std::vector<float>>& in_vec,
    const std::vector<std::vector<std::vector<std::vector<float>>>>& wt_vec,
    const std::vector<float>& bias_vec,
    std::vector<std::vector<std::vector<float>>>& out_ref,
    int stride, int pad
) {
    int out_h = (H + 2*pad - KSIZE)/stride + 1;
    int out_w = (W + 2*pad - KSIZE)/stride + 1;
    for(int oc=0; oc<out_ch; oc++){
        for(int oh=0; oh<out_h; oh++){
            for(int ow=0; ow<out_w; ow++){
                float sum = bias_vec[oc];
                for(int ic=0; ic<in_ch; ic++){
                    for(int kh=0; kh<KSIZE; kh++){
                        for(int kw=0; kw<KSIZE; kw++){
                            int ih = oh*stride + kh - pad;
                            int iw = ow*stride + kw - pad;
                            if (ih>=0 && ih<H && iw>=0 && iw<W) {
                                sum += in_vec[ic][ih*W + iw]
                                     * wt_vec[oc][ic][kh][kw];
                            }
                        }
                    }
                }
                out_ref[oc][oh][ow] = sum;
            }
        }
    }
}

int main(){
    std::srand(std::time(nullptr));
    // 参数
    const int IN_CH   = 8;
    const int OUT_CH  = 8;
    const int H       = 16;
    const int W       = 16;
    const int STRIDE  = 1;
    const int PAD     = 1;  // 对 3×3 通常 pad=1

    int out_h = (H + 2*PAD - KSIZE)/STRIDE + 1;
    int out_w = (W + 2*PAD - KSIZE)/STRIDE + 1;

    // 随机生成输入
    static float input[MAX_CH][MAX_SPATIAL];
    for(int ic=0; ic<IN_CH; ic++){
        for(int i=0; i<H; i++){
            for(int j=0; j<W; j++){
                input[ic][i*W + j] = (std::rand() & 0xFF) / 255.0f;
            }
        }
    }

    // 随机生成权重和偏置
    static float weight[MAX_CH][MAX_CH][KSIZE][KSIZE];
    static float bias[MAX_CH];
    for(int oc=0; oc<OUT_CH; oc++){
        bias[oc] = ((std::rand()%201)-100)/100.0f;
        for(int ic=0; ic<IN_CH; ic++){
            for(int kh=0; kh<KSIZE; kh++){
                for(int kw=0; kw<KSIZE; kw++){
                    weight[oc][ic][kh][kw] = ((std::rand()%201)-100)/100.0f;
                }
            }
        }
    }

    // 调用被测 conv3x3
    static float output_hls[MAX_CH][MAX_SPATIAL];
    // 初始化输出
    for(int oc=0; oc<OUT_CH; oc++)
        for(int idx=0; idx<out_h*out_w; idx++)
            output_hls[oc][idx] = 0.0f;

    conv3x3(IN_CH, OUT_CH, H, W,
            input, weight, bias, output_hls,
            STRIDE, PAD);

    // 构建参考数据结构
    std::vector<std::vector<float>> in_vec(
        IN_CH, std::vector<float>(H*W));
    for(int ic=0; ic<IN_CH; ic++){
        std::copy(&input[ic][0],
                  &input[ic][0]+H*W,
                  in_vec[ic].begin());
    }

    std::vector<std::vector<std::vector<std::vector<float>>>> wt_vec(
        OUT_CH,
        std::vector<std::vector<std::vector<float>>>(
            IN_CH,
            std::vector<std::vector<float>>(
                KSIZE,
                std::vector<float>(KSIZE)
            )
        )
    );
    for(int oc=0; oc<OUT_CH; oc++){
        for(int ic=0; ic<IN_CH; ic++){
            for(int kh=0; kh<KSIZE; kh++){
                for(int kw=0; kw<KSIZE; kw++){
                    wt_vec[oc][ic][kh][kw] = weight[oc][ic][kh][kw];
                }
            }
        }
    }

    std::vector<float> bias_vec(bias, bias+OUT_CH);
    std::vector<std::vector<std::vector<float>>> out_ref(
        OUT_CH,
        std::vector<std::vector<float>>(out_h,
                                        std::vector<float>(out_w))
    );

    // 计算参考结果
    cpu_conv3x3_ref(IN_CH, OUT_CH, H, W,
                    in_vec, wt_vec, bias_vec, out_ref,
                    STRIDE, PAD);

    // 比对输出
    int errs = 0;
    for(int oc=0; oc<OUT_CH; oc++){
        for(int oh=0; oh<out_h; oh++){
            for(int ow=0; ow<out_w; ow++){
                float v_hls = output_hls[oc][oh*out_w + ow];
                float v_ref = out_ref[oc][oh][ow];
                if (std::fabs(v_hls - v_ref) > 1e-4f) {
                    if (errs < 10) {
                        std::cout << "Mismatch oc=" << oc
                                  << " (" << oh << "," << ow << ") "
                                  << "HLS=" << v_hls
                                  << " REF=" << v_ref << "\n";
                    }
                    errs++;
                }
            }
        }
    }

    if (errs == 0) {
        std::cout << "TEST PASSED\n";
        return 0;
    } else {
        std::cout << "TEST FAILED: " << errs
                  << " mismatches\n";
        return 1;
    }
}
