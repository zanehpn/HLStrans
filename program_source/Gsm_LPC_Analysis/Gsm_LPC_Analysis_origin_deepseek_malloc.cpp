// MALLOC_VARIANT

#include <cmath>
#include <cstdint>
#include <algorithm>

// ---- private.h equivalent ----
typedef short word;           /* 16 bit signed int    */
typedef long  longword;       /* 32 bit signed int (assumed) */

#define MIN_WORD ((-32767)-1)
#define MAX_WORD (32767)

#define SASR(x, by) ((x) >> (by))

#define GSM_MULT_R(a, b) gsm_mult_r(a, b)
#define GSM_MULT(a, b)   gsm_mult(a, b)
#define GSM_ADD(a, b)    gsm_add(a, b)
#define GSM_ABS(a)       gsm_abs(a)

word gsm_div(word num, word denum);
word gsm_add(word a, word b);
word gsm_mult(word a, word b);
word gsm_abs(word a);
word gsm_norm(longword a);
word gsm_mult_r(word a, word b);

// ---- helpers ----
static inline word saturate_word(int v) {
    if (v > MAX_WORD) return MAX_WORD;
    if (v < MIN_WORD) return MIN_WORD;
    return (word)v;
}

word gsm_add(word a, word b) {
    int sum = (int)a + (int)b;
    return saturate_word(sum);
}

word gsm_mult(word a, word b) {
    long long prod = (long long)a * (long long)b; // 32-bit intermediate
    long long res = (prod >> 15);
    if (res > MAX_WORD) res = MAX_WORD;
    if (res < MIN_WORD) res = MIN_WORD;
    return (word)res;
}

word gsm_mult_r(word a, word b) {
    long long prod = (long long)a * (long long)b + (1LL << 14);
    long long res = (prod >> 15);
    if (res > MAX_WORD) res = MAX_WORD;
    if (res < MIN_WORD) res = MIN_WORD;
    return (word)res;
}

word gsm_abs(word a) {
    if (a == MIN_WORD) return MAX_WORD;
    return (word)std::abs((int)a);
}

word gsm_div(word num, word denum) {
    if (num == 0) return 0;
    if (denum == 0) return (word)MAX_WORD;
    long long res = ((long long)num << 15) / (long long)denum;
    if (res > MAX_WORD) res = MAX_WORD;
    if (res < 0) res = 0;
    return (word)res;
}

word gsm_norm(longword a) {
    if (a == 0) return 0;
    unsigned long ua = (unsigned long)(a < 0 ? ~a : a);
    int n = 0;
    while ((ua & 0x40000000UL) == 0) { ua <<= 1; ++n; if (n >= 31) break; }
    return (word)n;
}

// ---- core processing ----

void Autocorrelation(word s[160], longword L_ACF[9]) {
    for (int k = 0; k <= 8; ++k) {
        long long sum = 0;
        for (int n = k; n < 160; ++n) {
            sum += (long long)s[n] * (long long)s[n - k];
        }
        // Scale like original (<<1)
        long long scaled = sum << 1;
        // Clamp to 32-bit signed range if necessary
        if (scaled > 0x7fffffffLL) scaled = 0x7fffffffLL;
        if (scaled < (long long)0x80000000LL) scaled = (long long)0x80000000LL;
        L_ACF[k] = (longword)scaled;
    }
}

void Reflection_coefficients(longword* L_ACF, word* r) {
    // Levinson-Durbin using double precision; output r in Q15
    // Allocate dynamic arrays for internal state
    double* a = new double[9];
    for (int i = 0; i < 9; ++i) a[i] = 0.0;

    double acf[9];
    for (int i = 0; i < 9; ++i) acf[i] = (double)L_ACF[i];

    for (int i = 0; i < 8; ++i) r[i] = 0;

    if (acf[0] <= 0.0) {
        delete[] a;
        return;
    }

    double E = acf[0];

    for (int m = 1; m <= 8; ++m) {
        double sum = 0.0;
        for (int i = 1; i < m; ++i) sum += a[i] * acf[m - i];
        double k = -(acf[m] + sum) / (E != 0.0 ? E : 1.0);

        // Update a[]
        double a_new_m = k;
        for (int i = 1; i < m; ++i) {
            a[i] = a[i] + k * a[m - i];
        }
        a[m] = a_new_m;

        // Store reflection coefficient scaled to Q15 word
        double kv = k;
        if (kv > 0.999969482421875) kv = 0.999969482421875;  // ~32767/32768
        if (kv < -0.999969482421875) kv = -0.999969482421875;
        r[m - 1] = (word)std::lround(kv * 32768.0);

        E *= (1.0 - k * k);
        if (E <= 1e-12) break;
    }

    delete[] a;
}

void Transformation_to_Log_Area_Ratios(word* r) {
    for (int i = 0; i < 8; ++i) {
        word temp = r[i];
        word abs_temp = GSM_ABS(temp);

        if (abs_temp < 22118) {
            abs_temp >>= 1;
        } else if (abs_temp < 31130) {
            abs_temp = (word)(abs_temp - 11059);
        } else {
            abs_temp = (word)((abs_temp >> 2) + 26112);
        }

        r[i] = (temp < 0) ? (word)(-abs_temp) : abs_temp;
    }
}

void Quantization_and_coding(register word* LAR /* [0..7] IN/OUT */) {
    register word temp;

#   undef STEP
#   define STEP( A, B, MAC, MIC )        \
        temp = GSM_MULT( A,   *LAR );    \
        temp = GSM_ADD(  temp,   B );    \
        temp = GSM_ADD(  temp, 256 );    \
        temp = SASR(     temp,   9 );    \
        *LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
        LAR++;

    STEP (20480, 0, 31, -32);
    STEP (20480, 0, 31, -32);
    STEP (20480, 2048, 15, -16);
    STEP (20480, -2560, 15, -16);

    STEP (13964, 94, 7, -8);
    STEP (15360, -1792, 7, -8);
    STEP (8534, -341, 3, -4);
    STEP (9036, -1144, 3, -4);

#   undef STEP
}

void Gsm_LPC_Analysis(word s[160] /* IN */, word LARc[8] /* OUT */) {
    // Use dynamic allocation for large arrays
    longword* L_ACF = new longword[9];

    Autocorrelation(s, L_ACF);
    Reflection_coefficients(L_ACF, LARc);
    Transformation_to_Log_Area_Ratios(LARc);
    Quantization_and_coding(LARc);

    delete[] L_ACF;
}
