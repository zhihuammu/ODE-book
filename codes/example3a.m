%matlab code: calculating the error constant for chapter 3 example 3(i)
%show results in fractions
format rational

a0=-1; a1=0;  a2=0;  a3=0; a4=1;
b0=0; b1=8/3; b2=-4/3; b3=8/3;  b4=0;

c0= a0+a1+a2+a3+a4;
c1= (a1+2*a2+3*a3+4*a4)-(b0+b1+b2+b3+b4);
c2= (a1+2^2*a2+3^2*a3+4^2*a4)/factorial(2)-(b1+2*b2+3*b3+4*b4)/factorial(1);
c3= (a1+2^3*a2+3^3*a3+4^3*a4)/factorial(3)-(b1+2^2*b2+3^2*b3+4^2*b4)/factorial(2);
c4= (a1+2^4*a2+3^4*a3+4^4*a4)/factorial(4)-(b1+2^3*b2+3^3*b3+4^3*b4)/factorial(3);
c5= (a1+2^5*a2+3^5*a3+4^5*a4)/factorial(5)-(b1+2^4*b2+3^4*b3+4^4*b4)/factorial(4);

disp([c0 c1 c2 c3 c4 c5])