%Ex4 Q2
%Qb: y_{j+1} + 9y_j-9y_{j-1}-y_{j-2} = 6h(f_j+f_{j-1})

clear
clc
format rat

a0=-1;
a1=-9;
a2=9;
a3=1;
a4=0;

b0=0;
b1=6;
b2=6;
b3=0;
b4=0;

C=Cab(a0,a1,a2,a3,a4,b0,b1,b2,b3,b4);
disp('Ex4 Q2b:')
disp(C)

