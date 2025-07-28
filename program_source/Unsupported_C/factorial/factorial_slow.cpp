// Cannot synthesize: recursion is unsupported in Vivado/Vitis HLS
unsigned long factorial(unsigned n) {
    if (n == 0) return 1;
    return n * factorial(n - 1);
}
