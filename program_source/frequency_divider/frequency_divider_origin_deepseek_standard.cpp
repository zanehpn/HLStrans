// ---- file: frequency_divider.cpp ----

#define ARRAY_SIZE 1024

void frequency_divider(int input_freq[ARRAY_SIZE], int divisor, int output_freq[ARRAY_SIZE]) {
    for (int i = 0; i < ARRAY_SIZE; i++) {
        output_freq[i] = input_freq[i] / divisor;
    }
}
