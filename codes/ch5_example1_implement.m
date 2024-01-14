%Scriptfile to solve a single 1st order Ordinary Differential Equation,
%using the exact solution to calculate the starting values and 
% a 2-step method of third-order accuracy
% for the remaining integration time span.
%

function ch5_example1_implement
clc
clear

L=1;
nsteps=11;           %number of steps, including initial step
h=L/(nsteps-1);      %steplength h
t(1)=0.0;   %set starting value of the independent variable t
y(1)=1.0;   %set initial value of the dependent variable y
F(1)=f(t(1),y(1)); %calculate the value of y'=F, at t(1), y(1).
for i=2:4               %calculate the first 3 starting values using the exact solution
    t(i)=t(i-1)+h;          %calculate the next step in t
    y(i)=exp(-t(i))+t(i);   %exact solution used for calculating starting values
    F(i)=f(t(i),y(i));
end
for i=5:nsteps      %calculate the remaining y values using a 2-step method
    t(i)=t(i-1)+h;    
    y(i)=-4*y(i-1)+5*y(i-2)+h*(4*F(i-1)+2*F(i-2));
    F(i)=f(t(i),y(i));
end
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
function f=f(t,y)
f=-y+t+1;