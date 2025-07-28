#include <stdio.h>
#include <stdbool.h>

unsigned long add_rur(unsigned n);

typedef struct {
    unsigned input;
    unsigned long expected;
} TestCase;

// 测试平台
int main() {
    // 1) 定义一组（input, expected）测试向量
    TestCase tests[] = {
        {0, 1},    // add_rur(0) = 1
        {1, 1},    // add_rur(1) = 1 * add_rur(0) = 1
        {2, 2},    // 2 * 1
        {3, 6},    // 3 * 2 * 1
        {4, 24},   // 4 * 3 * 2 * 1
        {10, 3628800UL}, // 10!
    };
    const int num_tests = sizeof(tests) / sizeof(tests[0]);

    bool all_pass = true;

    // 2) 依次执行每个测试用例
    for (int i = 0; i < num_tests; i++) {
        unsigned n = tests[i].input;
        unsigned long exp = tests[i].expected;
        unsigned long got = add_rur(n);

        if (got != exp) {
            printf("FAIL: add_rur(%u) -> got %lu, expected %lu\n", n, got, exp);
            all_pass = false;
            break;
        } else {
            printf("PASS: add_rur(%u) == %lu\n", n, got);
        }
    }

    if (all_pass) {
        printf("=== ALL TESTS PASSED ===\n");
        return 0;   // 0 表示成功 :contentReference[oaicite:1]{index=1}
    } else {
        printf("=== SOME TESTS FAILED ===\n");
        return 1;   // 非 0 表示失败
    }
}