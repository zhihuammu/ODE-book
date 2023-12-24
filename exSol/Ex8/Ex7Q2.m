%Ex7 Q2
clc
clear
%   1 2 3 4 5 6 7 8 9 10
A=[ 1 1 1 1 0 1 0 1 0 1;
    1 1 1 0 0 0 0 0 0 0;
    1 1 1 0 0 0 0 0 0 0;
    1 0 0 1 0 1 0 1 0 0;
    0 0 0 0 1 1 0 1 1 1;
    1 0 0 1 0 1 1 1 0 0;
    0 0 0 0 0 1 1 0 0 0;
    1 0 0 1 0 1 0 1 1 1;
    0 0 0 0 1 0 0 1 1 1;
    1 0 0 0 1 0 0 1 1 1];


[i, j]=find(A);
bw=max(i-j)
bandwidth(A)

figure(1)

spy(A)
title('A')
%sparse(A)

%B: Cuthill-McKee(CM) reordering


%C: RCM reordering
figure(2)
C=symrcm(A);
spy(A(C,C))
title('C')

%D: Column Count reordering
D=colperm(A);
figure(3)
spy(A(D,D))
title('D')

%M: Minimum Degree reordering
M=amd(A);
figure(4)
spy(A(M,M))
title('M')