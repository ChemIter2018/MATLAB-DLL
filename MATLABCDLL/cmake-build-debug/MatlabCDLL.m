clc;
clear;
loadlibrary('libMATLABCDLL','library.h')
%libfunctionsview libMATLABCDLL

options = optimoptions('fmincon','Display','iter','Algorithm','sqp');
A = [];
b = [];
Aeq = [];
beq = [];
lb = [];
ub = [];
nonlcon = @unitdisk;
x0 = [2 2];
x = fmincon(@myfun,x0,A,b,Aeq,beq,lb,ub,nonlcon,options);

unloadlibrary libMATLABCDLL;

function f = myfun(x)
f = calllib('libMATLABCDLL','TestObj',x);
end
 
function [c,ceq] = unitdisk(x)
c0 = [0 0];
Xptr = libpointer('doublePtr',x);
Cptr = libpointer('doublePtr',c0);
calllib('libMATLABCDLL','TestCon',Xptr,Cptr);
c = Cptr.value;
ceq = [];
end

