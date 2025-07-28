// Cannot synthesize: recursion is unsupported in Vivado/Vitis HLS
unsigned long add_rur(unsigned n) {
    if (n == 0) return 1;
    return n * add_rur(n - 1);
}
