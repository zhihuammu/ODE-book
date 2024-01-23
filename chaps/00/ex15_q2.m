clc
clear
format rat

syms c1 c2
syms f(x)
syms A B C


eqns = [2*A==1,  6*A+2*B==0, 2*A+3*B+2*C==0];
S=solve(eqns, [A B C])

disp('Access the solutions within the structure')
disp('>> S.A')
S.A
disp('>> S.B')
S.B
disp('>> S.C')
S.C

f(x)=c1*exp(-x)+c2*exp(-2*x)+1/2*x*x-3/2*x+7/4;

Df =diff(f,x);
Df2=diff(Df,x);

Lf=Df2+3*Df+2*f

