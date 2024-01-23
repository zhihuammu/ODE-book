clc
clear
format rat

%syms A
%syms B
syms f(x)

syms A B

eqns = [70*A-144*B==0,  -144*A-70*B==1];
S=solve(eqns, [A B])

disp('Access the solutions within the structure')
disp('>> S.A')
S.A
disp('>> S.B')
S.B




f(x)=-36/6409*cos(5*x) -35/12818*sin(5*x);

Df  = diff(f,x);
Df2 = diff(Df,x);
Df3 = diff(Df2,x);

FF(x)=Df3+6*Df2+11*Df+6*f(x)

D=[70 -144; -144 -70];
b=[0; 1];

C=inv(D)*b

