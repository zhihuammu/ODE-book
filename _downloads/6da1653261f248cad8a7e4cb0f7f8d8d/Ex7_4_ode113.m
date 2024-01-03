clc
clear
y0 = [1 1 0];

tspan=[0 60]; 

options=odeset('RelTol',1e-4,'AbsTol',1e-4);

[t,y] = ode113(@odefcn, tspan, y0, options);
for i=1:length(t)
   fprintf('%5i %10.2e %10.2e %10.2e\n',i,t(i),y(i,1),y(i,2)) 
end

%exact solution
ue=2*exp(-t)-exp(-1000*t);
ve=-exp(-t)+exp(-1000*t);

figure(2)
hold on
xlabel('t')
ylabel('u, v')
title('Chapter 6 Example 4 (ode113)')
plot(t,y(:,1),'r',t,y(:,2),'b',t,y(:,3),'g')

hold off

function dydt =odefcn(t,y)
    dydt=zeros(3,1);
    dydt(1) =  -0.013*y(1) + 1e3*y(1)*y(3);
    dydt(2) = 2.5*1e3*y(2)*y(3);
    dydt(3) = 0.013*y(1)-1e3*y(1)*y(3)-2.5*1e3*y(2)*y(3);
end