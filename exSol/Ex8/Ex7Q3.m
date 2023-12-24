%Ex7 Q3

%--1-->>Original Matrix A
A=[ 1 0 1 0 0 0 0 1 1;
    0 1 1 0 0 0 1 1 0;
    1 1 1 0 0 0 0 0 0;
    0 0 0 1 0 0 0 1 1;
    0 0 0 0 1 0 1 1 0;
    0 0 0 0 0 1 1 0 0;
    0 1 0 0 1 1 1 0 0;
    1 1 0 1 1 0 0 1 0;
    1 0 0 1 0 0 0 0 1];

figure(1)
subplot(4,5,1)
spy(A)
title('Original Matrix')
xlabel(sprintf('full bw=%d',1+2*bandwidth(A)))

[L,U]=lu(A);
subplot(4,5,6)
spy(U)
title('Original U')

%--2-->>Cuthill-McKee reordering
B=[ 1 1 0 0 0 0 0 0 0;
    1 1 1 1 0 0 0 0 0;
    0 1 1 0 1 0 0 0 0;
    0 1 0 1 1 1 0 0 0;
    0 0 1 1 1 0 1 1 0;
    0 0 0 1 0 1 0 1 0;
    0 0 0 0 1 0 1 0 1;
    0 0 0 0 1 1 0 1 1;
    0 0 0 0 0 0 1 1 1];

subplot(4,5,2)
spy(B)
title('Cuthill-McKee reordering')
xlabel(sprintf('full bw=%d',1+2*bandwidth(B)))

[L,U]=lu(B);
subplot(4,5,7)
spy(U)
title('CM U')
%--3-->>Reverse Cuthill-McKee reordering
C=[ 1 1 1 0 0 0 0 0 0;
    1 1 0 1 1 0 0 0 0;
    1 0 1 1 0 0 0 0 0;
    0 1 1 1 0 1 1 0 0;
    0 1 0 0 1 1 0 0 0;
    0 0 0 1 1 1 0 1 0;
    0 0 0 1 0 0 1 1 0;
    0 0 0 0 0 1 1 1 1;
    0 0 0 0 0 0 0 1 1];

subplot(4,5,3)
spy(C)
title('RCM reodering')
xlabel(sprintf('full bw=%d',1+2*bandwidth(C)))

[L,U]=lu(C);
subplot(4,5,8)
spy(U)
title('RCM U')

%--4-->>Column Count Reordering
D=[ 1 0 0 0 0 0 0 1 0;
    0 1 0 0 0 1 1 0 0;
    0 0 1 0 1 0 0 0 1;
    0 0 0 1 0 0 0 1 1;
    0 0 1 0 1 1 0 0 0;
    0 1 0 0 1 1 0 0 1;
    0 1 0 0 0 0 1 1 1;
    1 0 0 1 0 0 1 1 0;
    0 0 1 1 0 1 1 0 1];
subplot(4,5,4);
spy(D)
title('Column Count Reordering')
xlabel(sprintf('full bw=%d',1+2*bandwidth(D)))

[L,U]=lu(D);
subplot(4,5,9)
spy(U)
title('Column Count U')
%--5-->>Minimum Degree Reordering
M=[ 1 0 0 0 0 0 1 0 0;
    0 1 1 0 0 1 0 0 0;
    0 1 1 1 0 0 0 0 1;
    0 0 1 1 1 0 0 0 0;
    0 0 0 1 1 0 0 0 1;
    0 1 0 0 0 1 1 0 1;
    1 0 0 0 0 1 1 1 0;
    0 0 0 0 0 0 1 1 1;
    0 0 1 0 1 1 0 1 1];
subplot(4,5,5);
spy(M)
title('Minimum Degree Reordering')
xlabel(sprintf('full bw=%d',1+2*bandwidth(M)))

[L,U]=lu(M);
subplot(4,5,10)
spy(U)
title('Minimum Degree U')

%--6-->Original matrix
subplot(4,5,11)
spy(A)
title('Original matrix')
xlabel(sprintf('full bw=%d',1+2*bandwidth(A)))

[L,U]=lu(A);
subplot(4,5,16)
spy(U)
title('Original U')

%--7-->CM Matrix
subplot(4,5,12)
spy(B)
title('CM reordering')
xlabel(sprintf('full bw=%d',1+2*bandwidth(B)))
[L,U]=lu(B);
subplot(4,5,17)
spy(U)
title('CM U')

%--8-->RCM by symrcm
p=symrcm(A);
subplot(4,5,13)
spy(A(p,p))
title('RCM by sysmrcm')
xlabel(sprintf('full bw=%d',1+2*bandwidth(A(p,p))))

[L,U]=lu(A(p,p));
subplot(4,5,18)
spy(U)
title('sysmrcm U')

%--9-->Column Count by colperm
q=colperm(A);
subplot(4,5,14)
spy(A(q,q))
title('Column Count by colperm')
xlabel(sprintf('full bw=%d',1+2*bandwidth(A(q,q))))

[L,U]=lu(A(q,q));
subplot(4,5,19)
spy(U)
title('colperm U')

%--10-->Minimum Degree by symamd
r=symamd(A);
subplot(4,5,15)
spy(A(r,r))
title('Minimum Degree by symamd')
xlabel(sprintf('full bw=%d',1+2*bandwidth(A(r,r))))

[L,U]=lu(A(r,r));
subplot(4,5,20)
spy(U)
title('symamd U')