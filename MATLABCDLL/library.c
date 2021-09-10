#include "library.h"

#include <stdio.h>

void hello(void) {
    printf("Hello, World!\n");
}

double TestObj(double x[])
{
    return 1 + x[0] / (1 + x[1]) - 3 * x[0] * x[1] + x[1] * (1 + x[0]);
}

double TestCon(double *x, double *cfun)
{
    cfun[0] = x[0] + 2 * x[1] - 100;
    cfun[1] = 3 * x[0] + 4 * x[1] - 200;
}
