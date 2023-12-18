S = sparse (+(rand (20,20) < 1/10));
B = full (S);
A = B'*B;

%figure;clf
%spy (A)

%figure;clf
[LA,UA] = lu (A);
%spy (UA)

%figure;clf
B = symrcm (A);
B = A(B,B);
%spy (B)

%figure;clf
[LB,UB] = lu (B);
%spy (UB)

figure;clf
C = colperm (A);
C = A(C,C);
spy (C)

figure;clf
[LC,UC] = lu (C);
spy (UC)