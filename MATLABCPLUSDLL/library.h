#ifndef MATLABCPLUSDLL_LIBRARY_H
#define MATLABCPLUSDLL_LIBRARY_H

extern "C" void hello();
extern "C" double TestObj(double *x);
extern "C" double *TestCon(double *x, double *cfun);

#endif //MATLABCPLUSDLL_LIBRARY_H
