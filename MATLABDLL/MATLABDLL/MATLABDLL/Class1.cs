using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MathWorks.MATLAB.NET.Arrays;
using MathWorks.MATLAB.NET.Utility;

namespace MATLABDLL
{
    public class Class1
    {
        public static double TestObj(double[] x)
        {
            return 1 + x[0] / (1 + x[1]) - 3 * x[0] * x[1] + x[1] * (1 + x[0]);
        }

        public static double[] TestCon(double[] x)
        {
            double[] cfun = new double[2];
            cfun[0] = x[0] + 2 * x[1] - 100;
            cfun[1] = 3 * x[0] + 4 * x[1] - 200;
            return cfun;
        }
    }
}
