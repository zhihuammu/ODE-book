clc
clear
tspan=[0 5]; 
y0 = [1 1];

options=odeset('Stats','on','RelTol',1e-6,'AbsTol',1e-6)

[t,y] = ode15s(@odefcn, tspan, y0);
for i=1:length(t)
   fprintf('%5i %10.2e %10.2e %10.2e\n',i,t(i),y(i,1),y(i,2)) 
end


figure(1)


plot(t,y(:,1),t,y(:,2))
legend('y1','y2')
xlabel('t')
ylabel('y_1, y_2')
title('Exercise 7.7')

function dydt =odefcn(t,y)
    dydt=zeros(2,1);
    dydt(1) = -y(1)-y(2);
    dydt(2) =  y(1)-5000*y(2);
end