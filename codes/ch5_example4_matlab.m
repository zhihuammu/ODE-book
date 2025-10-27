syms a0 a1 b0 b1 b2

a2=1;

C0 = a0+a1+a2;
C1 = (a1+2*a2)-(b0+b1+b2);
C2 = (a1+2^2*a2)/factorial(2)-(b1+2*b2)/factorial(1);
C3 = (a1+2^3*a2)/factorial(3)-(b1+2^2*b2)/factorial(2);
C4 = (a1+2^4*a2)/factorial(4)-(b1+2^3*b2)/factorial(3);

solve([C0, C1, C2, C3, C4], [a0,a1,b0,b1,b2]) 