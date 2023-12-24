%Ex4 Q2
%Qa: y_{j+1} = y_j + h/2*(3*f_j - f_{j-1})
format rat
clear
clc

a0=0;
a1=-1;
a2=1;
a3=0;
a4=0;

b0=-0.5;
b1=1.5;
b2=0;
b3=0;
b4=0;

C=Cab(a0,a1,a2,a3,a4,b0,b1,b2,b3,b4);
disp('Ex4 Q2a:')
disp(C)

