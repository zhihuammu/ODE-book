%matlab code: calculating the error constant for chapter 3 example 3(ii)
%show results in fractions
format rational

a0=0; a1=0;  a2=-1;  a3=1; 
b0=5/12; b1=-16/12; b2=23/12; b3=0;  

c0 = a0+a1+a2+a3;
c1 = (a1+2*a2+3*a3)-(b0+b1+b2+b3);
c2 = (a1+2^2*a2+3^2*a3)/factorial(2)-(b1+2*b2+3*b3)/factorial(1);
c3 = (a1+2^3*a2+3^3*a3)/factorial(3)-(b1+2^2*b2+3^2*b3)/factorial(2);
c4 = (a1+2^4*a2+3^4*a3)/factorial(4)-(b1+2^3*b2+3^3*b3)/factorial(3);
c5 = (a1+2^5*a2+3^5*a3)/factorial(5)-(b1+2^4*b2+3^4*b3)/factorial(4);

disp([c0 c1 c2 c3 c4 c5])