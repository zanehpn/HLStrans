// Array Size to access
#define DATA_SIZE 12
// Maximum Array Size
#define MAX_SIZE 12
//TRIPCOUNT identifier
const unsigned int c_dim = DATA_SIZE;

void mac_accel(
    const int *a,   // Read-Only Matrix A
    const int *b,   // Read-Only Matrix B
    int *c,         // Output Result
    int a_row,      // Matrix A Row Size
    int a_col,      // Matrix A Col Size
    int b_col       // Matrix B Col Size
    );