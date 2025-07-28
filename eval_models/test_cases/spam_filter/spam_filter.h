

#define NUM_TRAINING 18000
#define CLASS_SIZE 1800
#define NUM_TEST 2000
#define DIGIT_WIDTH 4
// typedefs
typedef unsigned long long DigitType;
typedef unsigned char      LabelType;

#include "ap_int.h"
// sdsoc wide vector type
typedef ap_uint<256>  WholeDigitType;
#define K_CONST 3
#define PAR_FACTOR 40

void spam_filter(const DigitType training_set[NUM_TRAINING * DIGIT_WIDTH], 
                 const DigitType test_set[NUM_TEST * DIGIT_WIDTH], 
                 LabelType results[NUM_TEST]); 