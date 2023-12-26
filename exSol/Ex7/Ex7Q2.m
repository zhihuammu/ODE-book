  %Ex6 Q2 
%Euler method: y_{j+1}=y_j + h*f_j

clc
clear

h=1./100;
y(1)=1;
t(1)=0;

for i=2:10000
   t(i)=t(i-1)+h;
   y(i)=y(i-1)+h*f(t(i-1),y(i-1));
end

plot(t,y,'LineWidth',2)
xlabel('x')
ylabel('y')
title('Ex6 Q2')

function f=f(x,y)
    f=-100*y+cos(x);
end