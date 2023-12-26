clc
clear

theta=linspace(0,2*pi,1000);
xi=exp(1i*theta);

%k=1
rho1=-1+xi;
sigma1=xi;
z1=rho1./sigma1;
p1=[1 -1];
abs(roots(p1))

%k=2
rho2=1/3-4/3*xi+xi.^2;
sigma2=2/3*xi.^2;
z2=rho2./sigma2;
p2=[1 -4/3 1/3];
abs(roots(p2))

%k=3
rho3=-2/11+9/11*xi-18/11*xi.^2+xi.^3;
sigma3=6/11*xi.^3;
z3=rho3./sigma3;
p3=[1 -18/11 9/11 -2/11];
abs(roots(p3))

%k=4
rho4=3/25-16/25*xi+36/25*xi.^2-48/25*xi.^3+xi.^4;
sigma4=12/25*xi.^4;
z4=rho4./sigma4;
p4=[1 -48/25 36/25 -16/25 3/25];
r4=roots(p4)
abs(roots(p4))

%k=5
rho5=-12/137+75/137*xi-200/137*xi.^2+300/137*xi.^3-300/137*xi.^4+xi.^5;
sigma5=60/137*xi.^5;
z5=rho5./sigma5;
p5=[1 -300/137 300/137 -200/137 75/137 -12/137];
r5=roots(p5)
abs(r5)

%k=6
rho6=10/147-72/147*xi+225/147*xi.^2-400/147*xi.^3+450/147*xi.^4-360/147*xi.^5+xi.^6;
sigma6=60/147*xi.^6;
z6=rho6./sigma6;
p6=[1 -360/147 450/147 -400/147 225/147 -72/147 10/147];
r6=roots(p6)
abs(r6)

figure(1)
clf
plot(z1,'DisplayName','$k=1$','LineWidth',2)
hold on
plot(z2,'DisplayName','$k=2$','LineWidth',2)
plot(z3,'DisplayName','$k=3$','LineWidth',2)
plot(z4,'DisplayName','$k=4$','LineWidth',2)
plot(z5,'DisplayName','$k=5$','LineWidth',2)
plot(z6,'DisplayName','$k=6$','LineWidth',2)
legend('Interpreter','latex',FontSize=12)
hold off
axis([-11 31 -21 21])

%axis([-10 10 -10 10])
axis square
xlabel('Re$(h\lambda)$','FontSize',16,'Interpreter','latex')
ylabel('Im$(h\lambda)$','FontSize',16,'Interpreter','latex')
grid on
title('BDF Stability Region','FontSize',16)
