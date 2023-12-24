%Ex4 Q3
clc
clear
format 
lam=-2;
h=0.02;
tend=5;

x(1)=0;
y(1)=1;
f(1)=lam*y(1);

x(2)=x(1)+h;
y(2)=exp(-2*x(2));
f(2)=lam*y(2);

%mid-point
for i=3:tend/h
   x(i)=x(i-1)+h;
   y(i)=y(i-2)+2*h*f(i-1);
   f(i)=lam*y(i);
end

%Adams-Bashforth Two-step method, k=2
yab=y;
fab=f;

for i=3:tend/h
   yab(i)=yab(i-1)+0.5*h*(3*fab(i-1)-fab(i-2)) ;
   fab(i)=lam*yab(i);
end

cap=strcat('$h=',num2str(h),'$')

figure(1)
clf
hold on
plot(x,exp(-2*x),'b','LineWidth',2)
plot(x,y,'r','LineWidth',2)
plot(x,yab,'g--','LineWidth',2)


legend({'Exact','Mid-point','AB 2-step'},'Location','northwest','FontSize',16)
axis([0 5 -2 2])
xlabel('$x$','fontsize',16,'interpreter','latex')
ylabel('$y$','fontsize',16,'interpreter','latex')
title(cap,'fontsize',16,'interpreter','latex')

figure(2)
plot(x,yab,'r',x,exp(-2*x),'b')
legend('AB','exact')