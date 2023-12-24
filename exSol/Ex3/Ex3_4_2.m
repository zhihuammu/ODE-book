%Exercise 3.4 Question 2
%Scriptfile to solve a single 1st order Ordinary Differential Equation,
%using the exact solution to calculate the starting values and the 4th order
%Adams-Bashforth-Moulton method for the remaining integration time span.
%The result table is also written to a file called ‘c2ex2p1.res'.
%
fout=fopen('c2ex2p1.res','w');
h=0.1; %steplength h
nsteps=11; %number of steps
nsteps=6;
t(1)=0.0;  %set starting value of the independent variable t
y(1)=yexact(t(1));  %set initial value of the dependent variable y
F(1)=feval('f',t(1),y(1)); %calculate the value of y'=F, at t(1), y(1).
yp(1)=0.0; %set first predictor value=0 (for formatting table of output)

for i=2:4
    %calculate the first 3 starting values using the exact solution
    t(i)=t(i-1)+h; %calculate the next step in t
    %y(i)=exp(-t(i))+t(i); %exact solution used for calculating starting values
    y(i)=yexact(t(i));
    F(i)=feval('f',t(i),y(i));
    yp(i)=0.0;
end

for i=5:nsteps %calculate the remaining y values using ABM 4th order method
    t(i)=t(i-1)+h;
    yp(i)=y(i-1)+(h/24)*(55*F(i-1)-59*F(i-2)+37*F(i-3)-9*F(i-4));
    F(i)=feval('f',t(i),yp(i));
    y(i)=y(i-1)+(h/24)*(9*F(i)+19*F(i-1)-5*F(i-2)+F(i-3));
    F(i)=feval('f',t(i),y(i));
end

disp(' t        yp          y         f       y_ex       AbsError');
fprintf(fout,' t        yp          y         f       y_ex       AbsError\n');
fprintf(fout,' ---------------------------------------------------------\n');
for i=1:nsteps
    yex(i)=yexact(t(i));
    abserror(i)=abs(yex(i)-y(i));
    fprintf('%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f\n', t(i),yp(i),y(i),F(i),yex(i),abserror(i));
    fprintf(fout,'%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f\n',t(i),yp(i),y(i),F(i),yex(i),abserror(i));
end
fclose(fout);

% --------------------------------------------------------------------------
% Defining the ODE problem (or function) to be solved
function f=f(t,y)
f=t^2-y;
end
% --------------------------------------------------------------------------
% The exact solution
function yexact=yexact(x)
    yexact = 2-2*x+x^2-exp(-x);
end
% --------------------------------------------------------------------------
