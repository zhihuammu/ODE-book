%Ex7 Q1a
clc
clear

xy=[2 1;
    3 1;
    4 1;
    1 1;
    3 2;
    2 2];

xy=[0 0;
    1 1;
    2 1;
    3 0;
    2 -1;
    1 -1];


A=[ 1 1 0 0 0 1; 
    1 1 0 0 1 0;
    0 0 1 0 1 0;
    0 0 0 1 0 1;
    0 1 1 0 1 0;
    1 0 0 1 0 1];

figure(1)
spy(A)



figure(2)
gplot(A,xy,'k-*')

%label node
theta=0:0.1:2*pi;
r=0.2;
cirX=r*cos(theta);
cirY=r*sin(theta);

for i=1:max(size(xy))
    patch(cirX+xy(i,1),cirY+xy(i,2),'white')
    text(xy(i,1),xy(i,2),num2str(i),'FontSize',20,'Color','black','HorizontalAlignment','center')
end

%axis([xLeft xRight yLower yUpper])
axis([-1 4 -2.5 2.5])
axis square

%axis([0.5 4.5 0.5 2.5]);
%text(2,0.9,'1');
%text(3,0.9,'2');
%text(4,0.9,'3');
%text(1,0.9,'4');
%text(2,2.1,'5');
%text(3,2.1,'6');