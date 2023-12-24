%Exercise 3.4 Question 4
%Scriptfile to solve a single 1st order ordinary differential equation, using
%a non-stiff ODE solver, called ode113, from the Matlab ODE solver routines
%based on Adam-Bashforth-Moulton methods.
function ch2_prog3
y0=1.0;  %set the initial value of the dependent variable y
%tspan=[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1]; %set specific output point
tspan=0:0.1:1;
options = odeset('RelTol',1e-4,'AbsTol',1e-4); %set tolerances
[t,y]=ode113(@f,tspan,y0,options); %call the ODE solver routine ode113


disp('  t        y          f(t)      y_ex     Abs_error ');

 
for i=1:length(t)  %in this case length(t)=11, from tspan
    yex(i)=yexact(t(i));  %calculating the exact solutions at each step
    abserror(i)=abs(yex(i)-y(i));  %calculating the absolute error
    fprintf('%5.2f %10.7f %10.7f %10.7f %11.8f\n', t(i),y(i),f(t(i),y(i)),yex(i),abserror(i));
end

plot(t,y(:,1),'LineWidth',2);
title(['Solution of dy/dt = -y+t+1, y0 = ' num2str(y0),', using ode113']);
xlabel('t');
ylabel('solution y');
%--------------------------------------------------------------------------
%Defining the ODE to be solved
function f=f(t,y)
f=t.^2-y;

% The exact solution
function yexact=yexact(x)
    yexact = 2-2*x+x^2-exp(-x);