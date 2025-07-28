#define NUM_TRAINING 18000
#define CLASS_SIZE 1800
#define NUM_TEST 2000
#define DIGIT_WIDTH 4

typedef unsigned long long DigitType;
typedef unsigned char      LabelType;

#define K_CONST 3
#define PAR_FACTOR 40

const unsigned long long m1  = 0x5555555555555555; 
const unsigned long long m2  = 0x3333333333333333; 
const unsigned long long m4  = 0x0f0f0f0f0f0f0f0f; 

int popcount(DigitType x) {
   x -= (x >> 1) & m1;             
   x = (x & m2) + ((x >> 2) & m2); 
   x = (x + (x >> 4)) & m4;        
   x += x >>  8;  
   x += x >> 16;  
   x += x >> 32;  
   return x & 0x7f;
}

void update_knn(const DigitType* train_inst, const DigitType* test_inst, int dists[K_CONST], int labels[K_CONST], int label) {
#pragma HLS PIPELINE II=1
    int dist = 0;

    POPCOUNT_LOOP: for (int i = 0; i < DIGIT_WIDTH; i++) {
        DigitType diff = test_inst[i] ^ train_inst[i];
        dist += popcount(diff);
    }

    int max_dist = 0;
    int max_dist_id = K_CONST;

    FIND_MAX_DIST: for (int k = 0; k < K_CONST; ++k) {
        if (dists[k] > max_dist) {
            max_dist = dists[k];
            max_dist_id = k;
        }
    }

    if (dist < max_dist) {
        dists[max_dist_id] = dist;
        labels[max_dist_id] = label;
    }
}

LabelType knn_vote(int labels[K_CONST]) {
#pragma HLS PIPELINE II=1
    int votes[10] = {0};

    VOTE_LOOP: for (int i = 0; i < K_CONST; i++) {
        votes[labels[i]]++;
    }

    int max_vote = 0;
    LabelType max_label = 0;

    MAX_VOTE_LOOP: for (int i = 0; i < 10; i++) {
        if (votes[i] > max_vote) {
            max_vote = votes[i];
            max_label = i;
        }
    }

    return max_label;
}

void spam_filter(const DigitType training_set[NUM_TRAINING * DIGIT_WIDTH], 
                 const DigitType test_set[NUM_TEST * DIGIT_WIDTH], 
                 LabelType results[NUM_TEST]) {

    int dists[K_CONST];
    int labels[K_CONST];

    TEST_LOOP: for (int t = 0; t < NUM_TEST; ++t) {
#pragma HLS LOOP_TRIPCOUNT min=NUM_TEST max=NUM_TEST
        SET_KNN_SET: for (int i = 0; i < K_CONST; ++i) {
            dists[i] = 256;
            labels[i] = 0;
        }

        TRAINING_LOOP: for (int i = 0; i < NUM_TRAINING; ++i) {
#pragma HLS LOOP_TRIPCOUNT min=NUM_TRAINING max=NUM_TRAINING
            update_knn(&training_set[i * DIGIT_WIDTH], &test_set[t * DIGIT_WIDTH], dists, labels, i / CLASS_SIZE);
        }

        LabelType max_vote = knn_vote(labels);
        results[t] = max_vote;
    }
}