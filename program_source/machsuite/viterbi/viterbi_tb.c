#include <stdio.h>
#include <stdint.h>
#include <float.h>
#include <stdlib.h>
#include <string.h>

// Bring in your viterbi declaration
int viterbi(uint8_t obs[], double init[], double transition[],
            double emission[], uint8_t path[]);

// Small test dimensions
#define N_STATES  3
#define N_OBS     4
#define N_TOKENS  4

// Compute brute-force reference by checking all state sequences (N_STATES^N_OBS)
static void viterbi_ref(const uint8_t obs[N_OBS],
                        const double init[N_STATES],
                        const double tr [N_STATES*N_STATES],
                        const double em [N_STATES*N_TOKENS],
                        uint8_t ref_path[N_OBS])
{
    double best_score =  DBL_MAX;
    // Sequence storage
    uint8_t cur[N_OBS];
    // Enumerate all N_STATES^N_OBS sequences (for N_OBS=4, 3^4=81 possibilities)
    for (int idx = 0; idx < (int)pow(N_STATES, N_OBS); idx++) {
        int tmp = idx;
        // decode idx to a state sequence in base N_STATES
        for (int t = N_OBS-1; t >= 0; t--) {
            cur[t] = tmp % N_STATES;
            tmp /= N_STATES;
        }
        // score it in –log domain
        double score = init[cur[0]] + em[cur[0]*N_TOKENS + obs[0]];
        for (int t = 1; t < N_OBS; t++) {
            score += tr[cur[t-1]*N_STATES + cur[t]]
                   + em[cur[t]*N_TOKENS + obs[t]];
        }
        if (score < best_score) {
            best_score = score;
            memcpy(ref_path, cur, N_OBS);
        }
    }
}

int main() {
    // 1) Define a small test HMM
    uint8_t obs[N_OBS]     = {0, 1, 3, 2};
    double init[N_STATES]  = {0.2, 0.5, 0.3};
    double tr [N_STATES*N_STATES] = {
        0.1, 0.6, 0.3,   // from state0 to {0,1,2}
        0.4, 0.2, 0.4,   // from state1
        0.3, 0.3, 0.4    // from state2
    };
    double em [N_STATES*N_TOKENS] = {
        0.5, 0.1, 0.1, 0.3,   // state0 emits token0..3
        0.2, 0.3, 0.4, 0.1,   // state1
        0.1, 0.1, 0.7, 0.1    // state2
    };
    // Convert to –log
    for (int i = 0; i < N_STATES; i++)
        init[i] = -log(init[i]);
    for (int i = 0; i < N_STATES*N_STATES; i++)
        tr[i]   = -log(tr[i]);
    for (int i = 0; i < N_STATES*N_TOKENS;  i++)
        em[i]   = -log(em[i]);

    uint8_t path_hw[N_OBS];
    uint8_t path_ref[N_OBS];

    // 2) Call your Viterbi
    viterbi(obs, init, tr, em, path_hw);

    // 3) Compute brute-force reference
    viterbi_ref(obs, init, tr, em, path_ref);

    // 4) Compare
    int pass = 1;
    for (int t = 0; t < N_OBS; t++) {
        if (path_hw[t] != path_ref[t]) {
            printf("Mismatch at t=%d: hw=%u ref=%u\n",
                   t, path_hw[t], path_ref[t]);
            pass = 0;
        }
    }

    if (pass) {
        printf("PASS: Viterbi path matches reference\n");
        return 0;
    } else {
        printf("FAIL: Viterbi path incorrect\n");
        return 1;
    }
}
