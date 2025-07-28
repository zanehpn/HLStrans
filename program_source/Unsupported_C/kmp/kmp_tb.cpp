// kmp_tb.c
#include <stdio.h>
#include <string.h>
#include <assert.h>

#define TMAX 1024
#define PMAX  128

// DUT prototypes
void build_pi(const char pat[PMAX], int m, int pi[PMAX]);
int kmp(const char text[TMAX], int n,
        const char pat[PMAX], int m);

typedef struct {
    const char *text;
    const char *pat;
    int expected;
} TestCase;

int main() {
    TestCase tests[] = {
        // simple match at start
        { "abcdef",          "abc",    0 },
        // match in middle
        { "hello world",     "world",  6 },
        // match at end
        { "foobar",          "bar",    3 },
        // no match
        { "abcdef",          "gh",    -1 },
        // repeated pattern
        { "abababab",        "abab",   0 },
        // overlapping pattern
        { "aaaab",           "aaab",   1 },
        // pattern equals text
        { "pattern",         "pattern",0 },
        // empty pattern (treat as match at 0)
    };
    const int num_tests = sizeof(tests)/sizeof(tests[0]);
    
    for (int i = 0; i < num_tests; ++i) {
        // prepare buffers
        static char text_buf[TMAX];
        static char pat_buf[PMAX];
        memset(text_buf, 0, sizeof(text_buf));
        memset(pat_buf,  0, sizeof(pat_buf));
        
        strncpy(text_buf, tests[i].text, TMAX-1);
        strncpy(pat_buf,  tests[i].pat,  PMAX-1);
        
        int n = strlen(text_buf);
        int m = strlen(pat_buf);
        
        int result = kmp(text_buf, n, pat_buf, m);
        
        if (result != tests[i].expected) {
            printf("Test %d FAILED:\n", i);
            printf("  text     = \"%s\"\n", text_buf);
            printf("  pattern  = \"%s\"\n", pat_buf);
            printf("  expected = %d, got %d\n",
                   tests[i].expected, result);
            return 1;
        } else {
            printf("Test %d passed (found at %d)\n", i, result);
        }
    }
    
    printf("All %d KMP tests passed.\n", num_tests);
    return 0;
}
