// Converted from tcp_segmentation_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: tcp_segmentation.cpp ----
#include <cstring>

#define MAX_SEGMENTS 1024
#define SEGMENT_SIZE 1500

void tcp_segmentation(const char input_data[MAX_SEGMENTS * SEGMENT_SIZE], int input_length, char output_data[MAX_SEGMENTS][SEGMENT_SIZE], int segment_lengths[MAX_SEGMENTS], int &num_segments) {

    int segment_index = 0;
    int data_index = 0;

    for (int i = 0; i < input_length; i += SEGMENT_SIZE) {

        int current_segment_size = (input_length - i > SEGMENT_SIZE) ? SEGMENT_SIZE : (input_length - i);
        segment_lengths[segment_index] = current_segment_size;
        for (int j = 0; j < current_segment_size; j++) {

            output_data[segment_index][j] = input_data[data_index++];
        }
        segment_index++;
    }
    num_segments = segment_index;
}

// Top function name: tcp_segmentation
