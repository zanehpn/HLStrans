// Converted from binary_search_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: binary_search.cpp ----

#define ARRAY_SIZE 1024

void binary_search(int array[ARRAY_SIZE], int key, int &index) {

    int low = 0;
    int high = ARRAY_SIZE - 1;
    int mid;

    index = -1; // Default value if key is not found

    for (int i = 0; i < ARRAY_SIZE; i++) {
        if (low <= high) {
            mid = (low + high) / 2;
            if (array[mid] == key) {
                index = mid;
                break;
            } else if (array[mid] < key) {
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }
    }
}

// Top function name: binary_search
