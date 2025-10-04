// MALLOC_VARIANT
#include <stdint.h>
#include <stdlib.h>

#define NUM_REQUESTS 1024

void priority_arbiter(uint8_t requests[NUM_REQUESTS], uint8_t grants[NUM_REQUESTS]) {
    uint8_t* req = (uint8_t*)malloc(NUM_REQUESTS * sizeof(uint8_t));
    uint8_t* gnt = (uint8_t*)malloc(NUM_REQUESTS * sizeof(uint8_t));

    if (!req || !gnt) {
        // Fallback: zero out grants if allocation fails
        for (int i = 0; i < NUM_REQUESTS; ++i) {
            grants[i] = 0;
        }
        if (req) free(req);
        if (gnt) free(gnt);
        return;
    }

    for (int i = 0; i < NUM_REQUESTS; ++i) {
        req[i] = requests[i];
        gnt[i] = 0;
    }

    for (int i = 0; i < NUM_REQUESTS; ++i) {
        if (req[i] == 1) {
            gnt[i] = 1;
            break;
        }
    }

    for (int i = 0; i < NUM_REQUESTS; ++i) {
        grants[i] = gnt[i];
    }

    free(req);
    free(gnt);
}
