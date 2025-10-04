// MALLOC_VARIANT

#include <cstring>

#define MAX_SEGMENTS 1024
#define SEGMENT_SIZE 1500

void tcp_segmentation(const char input_data[MAX_SEGMENTS * SEGMENT_SIZE], int input_length, char output_data[MAX_SEGMENTS][SEGMENT_SIZE], int segment_lengths[MAX_SEGMENTS], int &num_segments) {

    if (input_length <= 0) {
        num_segments = 0;
        return;
    }

    // Dynamically allocate a copy of the input buffer
    char* dyn_input = new char[input_length];
    std::memcpy(dyn_input, input_data, input_length);

    // Estimate number of segments and allocate dynamic structures
    int estimated_segments = (input_length + SEGMENT_SIZE - 1) / SEGMENT_SIZE;
    char** dyn_segments = new char*[estimated_segments];
    int* dyn_lengths = new int[estimated_segments];

    int segment_index = 0;
    int data_index = 0;

    for (int i = 0; i < input_length; i += SEGMENT_SIZE) {
        int current_segment_size = (input_length - i > SEGMENT_SIZE) ? SEGMENT_SIZE : (input_length - i);
        dyn_lengths[segment_index] = current_segment_size;

        dyn_segments[segment_index] = new char[current_segment_size];
        if (current_segment_size > 0) {
            std::memcpy(dyn_segments[segment_index], dyn_input + data_index, current_segment_size);
            data_index += current_segment_size;
        }
        segment_index++;
    }

    // Copy from dynamic buffers into provided outputs
    for (int s = 0; s < segment_index; ++s) {
        segment_lengths[s] = dyn_lengths[s];
        if (dyn_lengths[s] > 0) {
            std::memcpy(output_data[s], dyn_segments[s], dyn_lengths[s]);
        }
    }
    num_segments = segment_index;

    // Free dynamic allocations
    for (int s = 0; s < segment_index; ++s) {
        delete[] dyn_segments[s];
    }
    delete[] dyn_segments;
    delete[] dyn_lengths;
    delete[] dyn_input;
}
