function C=Cab(a0,a1,a2,a3,a4,b0,b1,b2,b3,b4)

C0=a0+a1+a2+a3+a4;
C1=(a1+2^1*a2+3^1*a3+4^1*a4)/factorial(1) - (b0+b1+b2+b3+b4);
C2=(a1+2^2*a2+3^2*a3+4^2*a4)/factorial(2) - (b1+2^1*b2+3^1*b3+4^1*b4)/factorial(1);
C3=(a1+2^3*a2+3^3*a3+4^3*a4)/factorial(3) - (b1+2^2*b2+3^2*b3+4^2*b4)/factorial(2);
C4=(a1+2^4*a2+3^4*a3+4^4*a4)/factorial(4) - (b1+2^3*b2+3^3*b3+4^3*b4)/factorial(3);
C5=(a1+2^5*a2+3^5*a3+4^5*a4)/factorial(5) - (b1+2^4*b2+3^4*b3+4^4*b4)/factorial(4);

C=[C0, C1, C2, C3, C4, C5];

end