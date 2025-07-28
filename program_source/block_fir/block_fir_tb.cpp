
#include "stdio.h"
#include "block_fir.h"

const int SIZE = 256;

int main() {
  int taps[] = {1,2,0,-3,0,4,-5,0,1,-2,0,-3,0,4,-5,0};
  int delay_line[NUM_TAPS];
  int input[256], output[256];
  int i;
  for(i = 0; i < SIZE; i++) {
    input[i] = i;
  }
  block_fir(input, output, taps, delay_line);
  for(i = 0; i < SIZE; i++) {
    //printf("iter %d: result = %d\n", i, output[i]);
    if(output[i] == -1452) {
        printf("Test passed\n");
      return 0;
    } else {
      //return 0;
    }
  }
}
