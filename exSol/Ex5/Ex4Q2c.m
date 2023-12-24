%Ex4 Q2
%Qc: y_{j+1} = 4y_j-3y_{j-1}-2hf_{j-1}

clear
clc
format rat

a0=3;
a1=-4;
a2=1;
a3=0;
a4=0;

b0=-2;
b1=0;
b2=0;
b3=0;
b4=0;

C=Cab(a0,a1,a2,a3,a4,b0,b1,b2,b3,b4);
disp('Ex4 Q2b:')
disp(C)

