clc;
clear;
NET.addAssembly('D:\C\MATLABDLL\MATLABDLL\MATLABDLL\bin\Debug\MATLABDLL.dll');

options = optimoptions('fmincon','Display','iter','Algorithm','sqp');
A = [];
b = [];
Aeq = [];
beq = [];
lb = [];
ub = [];
nonlcon = @unitdisk;
x0 = [2,2];
x = fmincon(@myfun,x0,A,b,Aeq,beq,lb,ub,nonlcon,options);

function f = myfun(x)
f = MATLABDLL.Class1.TestObj(x);
end
 
function [c,ceq] = unitdisk(x)
c = double(MATLABDLL.Class1.TestCon(x));
ceq = [];
end


