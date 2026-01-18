%%1-> Define the IVP
% declare an ode function (definition given at the end of the code)
f=@odeFunc;

% step size
h=0.1;      

% number of steps
nsteps=11;  %number of steps

% initial conditions
t(1)=0.0;   %independent variable time t
y(1)=1.0;   %initial value of the dependent variable y
F(1)=f(t(1),y(1)); %calculate the value of y'=F, at t(1), y(1).
yp(1)=0.0;      %set first predictor value=0 (for formatting table of output)

%%2-> Produce starting values
for i=2:4               %calculate the first 3 starting values using the exact solution
    t(i)=t(i-1)+h;          %calculate the next step in t
    y(i)=exp(-t(i))+t(i);   %exact solution used for calculating starting values
    F(i)=f(t(i),y(i));
    yp(i)=0.0;
end

%%3-> Apply a multistep method
for i=5:nsteps      %calculate the remaining y values using ABM 4th order method
    t(i)=t(i-1)+h;
    yp(i)=y(i-1)+(h/24)*(55*F(i-1)-59*F(i-2)+37*F(i-3)-9*F(i-4));
    F(i)=f(t(i),yp(i));
    y(i)=y(i-1)+(h/24)*(9*F(i)+19*F(i-1)-5*F(i-2)+F(i-3));
    F(i)=f(t(i),y(i));
end

%%4-> Output the result
disp('x        yp         y          F         y_ex      AbsError');
for i=1:nsteps
    yex(i)=exp(-t(i))+t(i);
    abserror(i)=abs(yex(i)-y(i));
    fprintf('%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f\n', t(i),yp(i),y(i),F(i),yex(i),abserror(i));
end
% --------------------------------------------------------------------------
% Defining the ODE problem (or function) to be solved
function f=odeFunc(t,y)
    f=-y+t+1;
end