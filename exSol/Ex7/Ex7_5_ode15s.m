clc
clear
y0 = [1 0 0];

%tspan=[0 1e-5 100]; 

tspan=[0,1.0e-5,1.0e-3,0.1,0.5,1,2,4,6,8,10,20,30,40,50,60,70,80,90,100]; 

%tspan=[0 100];

options=odeset('RelTol',1e-6,'AbsTol',1e-6)
tic
[t,y] = ode15s(@odefcn, tspan, y0, options);
toc
for i=1:length(t)
   fprintf('%5i %10.2e %10.2e %10.2e %10.2e\n',i,t(i),y(i,1),y(i,2), y(i,3)) 
end


figure(1)
%hold on

%plot(t,y(:,1),'r',t,y(:,2),'b',t,y(:,3),'g')
semilogy(t,y(:,1),t,y(:,2),t,y(:,3),'LineWidth',2);
legend({'$y_1$','$y_2$','$y_3$'},'Location','southeast','Interpreter','latex','FontSize',16)

xlabel('$t$','Interpreter','latex','FontSize',16)
ylabel('$y_1, y_2, y_3$','Interpreter','latex','FontSize',16)
title('Chapter 7 Ex7.5 (ode15s)')

%hold off
axis([tspan(1) tspan(end) 1.0e-12 10]);  

J0=Jacobian(y(1,:));
lam0=eig(J0);
S0=max(abs(lam0))/min(abs(lam0))
fprintf("t=%f s, S=%g\n",t(1),S0)

J1=Jacobian(y(2,:));
lam1=eig(J1);
S1=max(abs(lam1))/min(abs(lam1));
fprintf("t=%f s, S=%g\n",t(2),S1)

J2=Jacobian(y(16,:));
lam2=eig(J2);
S2=max(abs(lam2))/min(abs(lam2));
fprintf("t=%f s, S=%g\n",t(16),S2)
 

function dydt =odefcn(t,y)
    dydt=zeros(3,1);
    dydt(1) = -0.04*y(1) + 1e4*y(2)*y(3);
    dydt(2) =  0.04*y(1) - 1e4*y(2)*y(3) - 3e7*y(2)^2;
    dydt(3) =  3e7*y(2)^2;
end

function J=Jacobian(y)
J=[-0.04  1e4*y(3)           1e4*y(2); 
    0.04 -1e4*y(3)-6e7*y(2) -1e4*y(2); 
    0     6e7*y(2)           0        ];
end