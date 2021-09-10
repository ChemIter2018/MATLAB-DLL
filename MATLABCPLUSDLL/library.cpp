#include "library.h"

#include <iostream>

void hello() {
    std::cout << "Hello, World!" << std::endl;
}

double TestObj(double *x)
{
    double f = 1 + x[0] / (1 + x[1]) - 3 * x[0] * x[1] + x[1] * (1 + x[0]);
    return f;
}

double *TestCon(double *x, double *cfun)
{
    cfun[0] = x[0] + 2 * x[1] - 100;
    cfun[1] = 3 * x[0] + 4 * x[1] - 200;
    return cfun;
}


