#include <stdio.h>
#include <string.h>
#include <stdbool.h>

#define NPOINTS 64
#define ORDER   32

// DUT 声明
void latnrm(float data[], float outa[], float coefficient[],
            float internal_state[]);

// 简易参考实现（直接在 C 上重算）
void reference_latnrm(float data[], float outa[], float coefficient[],
                      float internal_state[]) {
    float state[ORDER+2];
    memcpy(state, internal_state, sizeof(float)*(ORDER+2));

    for (int i = 0; i < NPOINTS; i++) {
        float bottom = 0, sum = 0;
        float top = data[i];

        // 复数旋转
        for (int j = 1; j < ORDER; j++) {
            float left  = top;
            float right = state[j];
            state[j] = bottom;
            top    = coefficient[j-1]*left - coefficient[j]*right;
            bottom = coefficient[j-1]*right + coefficient[j]*left;
        }
        state[ORDER]   = bottom;
        state[ORDER+1] = top;

        // 计算加权和
        sum = 0.0f;
        for (int j = 0; j < ORDER; j++) {
            sum += state[j] * coefficient[j + ORDER];
        }
        outa[i] = sum;
    }
}

int main() {
    // 1) 初始化测试向量
    float data[NPOINTS];
    float coefficient[ORDER*2];
    float state0[ORDER+2];
    float out_dut[NPOINTS];
    float out_ref[NPOINTS];

    // 填充 pseudo-random 测试数据（固定种子）
    for (int i = 0; i < NPOINTS; i++) data[i] = (float)(i + 1) / NPOINTS;
    for (int i = 0; i < ORDER*2; i++) coefficient[i] = 0.01f * (i + 1);
    for (int i = 0; i < ORDER+2; i++) state0[i]     = 0.0f;

    // 2) 调用 DUT
    latnrm(data, out_dut, coefficient, state0);

    // 3) 调用参考实现
    reference_latnrm(data, out_ref, coefficient, state0);

    // 4) 对比结果
    bool pass = true;
    for (int i = 0; i < NPOINTS; i++) {
        float diff = out_dut[i] - out_ref[i];
        if (diff < -1e-3f || diff > 1e-3f) {
            printf("FAIL at index %d: DUT=%.6f, REF=%.6f\n",
                   i, out_dut[i], out_ref[i]);
            pass = false;
            break;
        }
    }

    if (pass) {
        printf("=== PASS ===\n");
        return 0;  // HLS 仿真要求返回 0 表示通过 :contentReference[oaicite:0]{index=0}
    } else {
        printf("=== FAIL ===\n");
        return 1;
    }
}