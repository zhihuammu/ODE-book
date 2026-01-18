clear
clc
%%1-> Define the IVP
% declare an ode function (definition given at the end of the code)
f=@odeFunc;

% interval of definition
L=1;

% number of steps
nsteps=21;  %number of steps

% step size
h=L/(nsteps-1);      

% initial conditions
t(1)=0.0;   %independent variable time t
y(1)=1.0;   %initial value of the dependent variable y
F(1)=f(t(1),y(1)); %calculate the value of y'=F, at t(1), y(1).

%%2-> Produce starting values
for i=2:4               %calculate the first 3 starting values using the exact solution
    t(i)=t(i-1)+h;          %calculate the next step in t
    y(i)=exp(-t(i))+t(i);   %exact solution used for calculating starting values
    F(i)=f(t(i),y(i));
end

%%3-> Apply a multistep method
for i=5:nsteps      %calculate the remaining y values using ABM 4th order method
    t(i)=t(i-1)+h;
    y(i)=-4*y(i-1)+5*y(i-2)+h*(4*F(i-1)+2*F(i-2));
    F(i)=f(t(i),y(i));
end

%%4-> Output the result
disp('  x         y          F         y_ex      AbsError');
for i=1:nsteps
    yex(i)=exp(-t(i))+t(i);
    abserror(i)=abs(yex(i)-y(i));
    fprintf('%4.2f %10.5e %10.5e %10.5e %11.6e\n', t(i),y(i),F(i),yex(i),abserror(i));
end

figure(1)
plot(t,y,'b-o',t,yex,'r-')
xlabel('$t$','Interpreter','latex','FontSize',16)
ylabel('$y$','Interpreter','latex','FontSize',16)
title("Solution to $y'=-y+t+1$, $h=0.1$",'Interpreter','latex','FontSize',16)
legend('numerical','exact','Location','northwest','FontSize',12)
% --------------------------------------------------------------------------
% Defining the ODE problem (or function) to be solved
function f=odeFunc(t,y)
    f=-y+t+1;
end