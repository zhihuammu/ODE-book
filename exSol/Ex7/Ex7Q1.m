%Ex7.1
clc
clear


J=[-1000 1; 1000 -2];
lam=eig(J)
S=max(abs(lam))/min(abs(lam))

%numerical
tspan=[0 10];
y0=[1 0];

option=odeset('RelTol',1e-6,'AbsTol',1e-6);
[t,y] = ode15s(@odefcn, tspan, y0);

%exact
for i=1:length(t)
   y1e(i)=y1(t(i));
   y2e(i)=y2(t(i));
end


plot(t,y(:,1),'o',t,y(:,2),'*',t,y1e,'r',t,y2e,'b')
axis square
title('Solution to Exercise 6 Q1')
xlabel('time')
ylabel('y_1, y_2')
legend('y_1', 'y_2', 'y_{1, exact}','y_{2, exact}')

function dydt=odefcn(t,y)
    dydt=zeros(2,1);
    dydt(1) = -1000*y(1)+y(2);
    dydt(2) = 1000*y(1)-2*y(2);
end

function f=y1(t)
    f=(500*89^(1/2)*exp(t*(53*89^(1/2) - 501))*((53*89^(1/2))/1000 - 499/1000))/4717 + (500*89^(1/2)*exp(-t*(53*89^(1/2) + 501))*((53*89^(1/2))/1000 + 499/1000))/4717;
end

function f=y2(t)
    f=(500*89^(1/2)*exp(t*(53*89^(1/2) - 501)))/4717 - (500*89^(1/2)*exp(-t*(53*89^(1/2) + 501)))/4717;
end
