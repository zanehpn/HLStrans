#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define WIDTH  64
#define HEIGHT 64

void edge_detect(int *inputImage, int *outputImage, int EDGE_THRESHOLD);

// 简单生成测试图：一个水平梯度
void generate_test_image(int img[WIDTH*HEIGHT]) {
    for (int y = 0; y < HEIGHT; y++) {
        for (int x = 0; x < WIDTH; x++) {
            // 梯度：左侧 0，右侧 255
            img[y*WIDTH + x] = (x * 255) / (WIDTH - 1);
        }
    }
}

// 将灰度矩阵写成 PGM 文件，方便可视化
void write_pgm(const char *filename, int img[WIDTH*HEIGHT]) {
    FILE *f = fopen(filename, "w");
    if (!f) {
        perror("fopen");
        return;
    }
    fprintf(f, "P2\n%d %d\n255\n", WIDTH, HEIGHT);
    for (int i = 0; i < WIDTH*HEIGHT; i++) {
        fprintf(f, "%d ", img[i]);
        if ((i+1) % WIDTH == 0) fprintf(f, "\n");
    }
    fclose(f);
}

int main() {
    int *input  = (int*)std::malloc(sizeof(int) * WIDTH * HEIGHT);
    int *output = (int*)std::malloc(sizeof(int) * WIDTH * HEIGHT);
    if (!input || !output) {
        fprintf(stderr, "Memory allocation failed\n");
        return 1;
    }

    // 1) 生成测试图像
    generate_test_image(input);
    write_pgm("input.pgm", input);
    printf("Generated input.pgm\n");

    // 2) 调用 sobel，阈值设为 100
    int EDGE_THRESHOLD = 100;
    edge_detect(input, output, EDGE_THRESHOLD);

    // 3) 输出结果为 PGM，用不同名称保存
    write_pgm("output_sobel.pgm", output);
    //printf("Generated output_sobel.pgm (edges threshold %d)\n", EDGE_THRESHOLD);
    printf("PASS");

#ifdef OUTPUT_DEBUG
    // 如需在终端打印少量数据，可启用此宏
    for (int y = 0; y < HEIGHT; y++) {
        for (int x = 0; x < WIDTH; x++) {
            int v = output[y*WIDTH + x];
            putchar(v > 0 ? '#' : '.');
        }
        putchar('\n');
    }
#endif

    free(input);
    free(output);
    return 0;
}
