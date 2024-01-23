clc
clear
format rat

syms c1
syms c2
syms f(x)

f(x)=c1*exp(-x)+c2*exp(-2*x)+1/10*exp(3*x);

Df =diff(f,x);
Df2=diff(Df,x);

L=Df2+3*Df+2*f