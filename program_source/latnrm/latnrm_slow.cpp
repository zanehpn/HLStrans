
#define NPOINTS 64
#define ORDER 32


void latnrm(float data[NPOINTS], float outa[NPOINTS], float coefficient[ORDER*2],
            float internal_state[ORDER+1])

{
    int i;
    int j;

    float left, right, top;
    float bottom = 0;
    float sum; /*  */
    for (i = 0; i < NPOINTS; i++)
    {
        top = data[i];
        for (j = 1; j < ORDER; j++)
        {
            left = top;
            right = internal_state[j];
            internal_state[j] = bottom;
            top = coefficient[j - 1] * left - coefficient[j] * right;
            bottom = coefficient[j - 1] * right + coefficient[j] * left;
        }
        internal_state[ORDER] = bottom;
        internal_state[ORDER + 1] = top;
        sum = 0.0;
        for (j = 0; j < ORDER; j++)
        {
            sum += internal_state[j] * coefficient[j + ORDER];
        }
        outa[i] = sum;
    }
}