%Ex7 Q2
clc
clear

%--a-->>matrix A and its bandwidth
%   1 2 3 4 5 6 7 8 9 10
A=[ 1 1 1 1 0 1 0 1 0 1;  %1
    1 1 1 0 0 0 0 0 0 0;  %2
    1 1 1 0 0 0 0 0 0 0;  %3
    1 0 0 1 0 1 0 1 0 0;  %4
    0 0 0 0 1 1 0 1 1 1;  %5
    1 0 0 1 1 1 1 1 0 0;  %6
    0 0 0 0 0 1 1 0 0 0;  %7
    1 0 0 1 1 1 0 1 1 1;  %8
    0 0 0 0 1 0 0 1 1 1;  %9
    1 0 0 0 1 0 0 1 1 1]; %10


[i, j]=find(A);
bw=max(i-j);
fullband_A=bandwidth(A)*2+1;
fprintf('Full bandwidth of [A]=%i\n',fullband_A)


figure(1)

subplot(1,4,1)
spy(A)
title('A')

%--b-->>Cuthill-McKee reorder, B and its bandwidth
%   1 2 3 4 5 6 7 8 9 10
B=[ 1 1 0 0 0 0 0 0 0 0;  %1
    1 1 1 1 1 1 0 0 0 0;  %2
    0 1 1 0 1 1 0 0 0 0;  %3
    0 1 0 1 0 1 1 1 0 0;  %4
    0 1 1 0 1 1 0 1 1 1;  %5
    0 1 1 1 1 1 1 1 0 0;  %6
    0 0 0 1 0 1 1 1 0 0;  %7
    0 0 0 1 1 1 1 1 0 0;  %8
    0 0 0 0 1 0 0 0 1 1;  %9
    0 0 0 0 1 0 0 0 1 1]; %10

fullband_B=bandwidth(B)*2+1;
fprintf('Full bandwidth of [B]=%i\n',fullband_B)
subplot(1,4,2)
spy(B)
title('B: Cuthill-McKee ordering')

%--c-->>Reverse Cuthill-McKee reorder, C and its bandwidth
%   1 2 3 4 5 6 7 8 9 10
C=[ 1 1 0 0 0 1 0 0 0 0;  %1
    1 1 0 0 0 1 0 0 0 0;  %2
    0 0 1 1 1 1 1 0 0 0;  %3
    0 0 1 1 1 0 1 0 0 0;  %4
    0 0 1 1 1 1 1 1 1 0;  %5
    1 1 1 0 1 1 0 1 1 0;  %6
    0 0 1 1 1 0 1 0 1 0;  %7
    0 0 0 0 1 1 0 1 1 0;  %8
    0 0 0 0 1 1 1 1 1 1;  %9
    0 0 0 0 0 0 0 0 1 1]; %10

fullband_C=bandwidth(C)*2+1;
fprintf('Full bandwidth of [C]=%i\n',fullband_C)
subplot(1,4,3)
spy(C)
title('C: Reverse Cuthill-McKee ordering')

%--d-->>use matlab command symrcm
p=symrcm(A);
RCM=A(p,p);
subplot(1,4,4)
spy(RCM)
title('A(p,p) ordering by symrcm')

fullband_RCM=bandwidth(RCM)*2+1;
fprintf('Full bandwidth of [A(p,p)]=%i\n',fullband_RCM)

%--e-->>column count reordering
%   1 2 3 4 5 6 7 8 9 10
D=[ 1 0 0 0 0 0 0 1 0 0;  %1
    0 1 1 0 0 0 0 0 1 0;  %2
    0 1 1 0 0 0 0 0 1 0;  %3
    0 0 0 1 0 0 0 1 1 1;  %4
    0 0 0 0 1 1 1 0 0 1;  %5
    0 0 0 0 1 1 1 1 0 1;  %6
    0 0 0 0 1 1 1 0 1 1;  %7
    1 0 0 1 0 1 0 1 1 1;  %8
    0 1 1 1 0 0 1 1 1 1;  %9
    0 0 0 1 1 1 1 1 1 1]; %10

fullband_D=bandwidth(D)*2+1;
fprintf('Full bandwidth of [D]=%i\n',fullband_D)

figure(2)
spy(D)
title('D: Column Count')

%--f-->>minimum degree reordering
%   1 2 3 4 5 6 7 8 9 10
M=[ 1 0 0 0 0 1 0 0 0 0;  %1
    0 1 1 0 1 0 0 0 0 0;  %2
    0 1 1 0 1 0 0 0 0 0;  %3
    0 0 0 1 1 1 0 1 0 0;  %4
    0 1 1 1 1 1 0 1 0 1;  %5
    1 0 0 1 1 1 1 1 0 0;  %6
    0 0 0 0 0 1 1 1 1 1;  %7
    0 0 0 1 1 1 1 1 1 1;  %8
    0 0 0 0 0 0 1 1 1 1;  %9
    0 0 0 0 1 0 1 1 1 1]; %10

fullband_M=bandwidth(M)*2+1;
fprintf('Full bandwidth of [M]=%i\n',fullband_M)

figure(3)
spy(M)
title('M: Minimum Degree')

%--g-->>LU factorisation
[LA,UA]=lu(A);  %A  -- orginal
[LC,UC]=lu(C);  %C  -- Reverse Cuthill-McKee, hand
[LD,UD]=lu(D);  %D  -- Column Count, hand
[LM,UM]=lu(M);  %M  -- Minimum Degree, hand

%summary figure
figure(4);
title('dfd')

%A
subplot(4,2,1)
spy(A)
title('Original A')

subplot(4,2,2)
spy(UA)
title('Original U')

%C
subplot(4,2,3)
spy(C)
title('RCM')

subplot(4,2,4)
spy(UC)
title('RCM U')

%D
subplot(4,2,5)
spy(D)
title('Column Count')

subplot(4,2,6)
spy(UD)
title('Column Count U')

%M
subplot(4,2,7)
spy(M)
title('Minimum Degree')

subplot(4,2,8)
spy(UM)
title('Minimum Degree U')

%summary figure
figure(5);

%A
subplot(4,2,1)
spy(A)
title('Original A')

subplot(4,2,2)
spy(UA)
title('Original U')

%C
p=symrcm(A);
C=A(p,p);
[LC,UC]=lu(C);

subplot(4,2,3)
spy(C)
title('RCM')

subplot(4,2,4)
spy(UC)
title('RCM U')

%D
q=colperm(A);
D=A(q,q);
[LD,UD]=lu(D);

subplot(4,2,5)
spy(D)
title('Column Count')

subplot(4,2,6)
spy(UD)
title('Column Count U')

%M
r=symamd(A);
M=A(r,r);
[LM,UM]=lu(M);

subplot(4,2,7)
spy(M)
title('Minimum Degree')

subplot(4,2,8)
spy(UM)
title('Minimum Degree U')