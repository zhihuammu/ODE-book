# Example MATLAB Programs

## MATLAB Program 1
:::matlab
%6G6Z3002 Computational Methods in ODEs - Chapter 2, Example 2(Matlab Program 1)
%Scriptfile to solve a single 1st order Ordinary Differential Equation,
%using the exact solution to calculate the starting values and 
% the 4th order Adams-Bashforth-Moulton method 
% for the remaining integration time span.
%The result table is also written to a file called 'c2ex2p1.res'.
%
function ch2_prog1
fout=fopen('c2ex2p1.res','w');
h=0.1;      %steplength h
nsteps=11;  %number of steps
t(1)=0.0;   %set starting value of the independent variable t
y(1)=1.0;   %set initial value of the dependent variable y
F(1)=feval('f',t(1),y(1)); %calculate the value of y'=F, at t(1), y(1).
yp(1)=0.0;      %set first predictor value=0 (for formatting table of output)
for i=2:4               %calculate the first 3 starting values using the exact solution
    t(i)=t(i-1)+h;          %calculate the next step in t
    y(i)=exp(-t(i))+t(i);   %exact solution used for calculating starting values
    F(i)=feval('f',t(i),y(i));
    yp(i)=0.0;
end
for i=5:nsteps      %calculate the remaining y values using ABM 4th order method
    t(i)=t(i-1)+h;
    yp(i)=y(i-1)+(h/24)*(55*F(i-1)-59*F(i-2)+37*F(i-3)-9*F(i-4));
    F(i)=feval('f',t(i),yp(i));
    y(i)=y(i-1)+(h/24)*(9*F(i)+19*F(i-1)-5*F(i-2)+F(i-3));
    F(i)=feval('f',t(i),y(i));
end
disp('x        yp         y          F         y_ex      AbsError');
fprintf(fout,'x        yp         y          F         y_ex      AbsError');
fprintf(fout,' ---------------------------------------------------------\n');
for i=1:nsteps
    yex(i)=exp(-t(i))+t(i);
    abserror(i)=abs(yex(i)-y(i));
    fprintf('%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f\n', t(i),yp(i),y(i),F(i),yex(i),abserror(i));
    fprintf(fout,'%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f\n', t(i),yp(i),y(i),F(i),yex(i),abserror(i));
end
fclose(fout);
% --------------------------------------------------------------------------
% Defining the ODE problem (or function) to be solved
function f=f(t,y)
f=-y+t+1;
:::

The output of this code is:

```
x        yp         y          F         y_ex      AbsError
0.00  0.0000000  1.0000000  0.0000000  1.0000000  0.00000000
0.10  0.0000000  1.0048374  0.0951626  1.0048374  0.00000000
0.20  0.0000000  1.0187308  0.1812692  1.0187308  0.00000000
0.30  0.0000000  1.0408182  0.2591818  1.0408182  0.00000000
0.40  1.0703229  1.0703197  0.3296803  1.0703200  0.00000031
0.50  1.1065330  1.1065301  0.3934699  1.1065307  0.00000056
0.60  1.1488135  1.1488109  0.4511891  1.1488116  0.00000075
0.70  1.1965868  1.1965844  0.5034156  1.1965853  0.00000091
0.80  1.2493301  1.2493279  0.5506721  1.2493290  0.00000103
0.90  1.3065705  1.3065685  0.5934315  1.3065697  0.00000111
1.00  1.3678800  1.3678783  0.6321217  1.3678794  0.00000117
```

## MATLAB Program 2
:::matlab
%6G6Z3002 Computational Methods in ODEs - Chapter 2, Example 2 (Matlab Program 2)
%Scriptfile to solve a single 1st order Ordinary Differential Equation,
%using the standard 4th order RK method to calculate the starting values and
%4th order ABM method for the solution of the remaining integration time span.
%The result is written to a file called 'c2ex2p2.res'.
function ch2_prog2
fout=fopen('c2ex2p2.res','w');
h=0.1;      %steplength h
nsteps=11;  %number of steps
t(1)=0.0;   %set starting value of the independent variable t
y(1)=1.0;   %set initial value of the dependent variable y
yp(1)=0.0;  %set first predictor value =0 (in this program for formatting output)
F(1)=feval('f',t(1),y(1)); %calculate the value of y'=F, at t(1), y(1).
for i=2:4   % calculate the next 3 starting values using RK 4th order method
    k(1)=h*feval('f',t(i-1),y(i-1));
    k(2)=h*feval('f',t(i-1)+h*0.5,y(i-1)+k(1)*0.5);
    k(3)=h*feval('f',t(i-1)+h*0.5,y(i-1)+k(2)*0.5);
    k(4)=h*feval('f',t(i-1)+h,y(i-1)+k(3));
    y(i)=y(i-1)+(1/6)*(k(1)+2.0*(k(2)+k(3))+k(4));
    t(i)=t(i-1)+h;
    F(i)=feval('f',t(i),y(i));
    yp(i)=0.0;
end
for i=5:nsteps
    yp(i)=y(i-1)+(h/24)*(55*F(i-1)-59*F(i-2)+37*F(i-3)-9*F(i-4));
    t(i)=t(i-1)+h;
    F(i)=feval('f',t(i),yp(i));
    y(i)=y(i-1)+(h/24)*(9*F(i)+19*F(i-1)-5*F(i-2)+F(i-3));
    F(i)=feval('f',t(i),y(i));
end
disp('x        yp         y          F         y_ex      AbsError');
fprintf(fout,'x        yp         y          F         y_ex      AbsError');
fprintf(fout,' ---------------------------------------------------------\n');
for i=1:nsteps
    yex(i)=exp(-t(i))+t(i);
    abserror(i)=abs(yex(i)-y(i));
    fprintf('%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f\n', t(i),yp(i),y(i),F(i),yex(i),abserror(i));
    fprintf(fout,'%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f\n',t(i),yp(i),y(i),F(i),yex(i),abserror(i));
end
fclose(fout);
% --------------------------------------------------------------------------
% Defining the ODE problem (or function) to be solved
function f=f(t,y)
f=-y+t+1;
% --------------------------------------------------------------------------
:::

Output:
```
x        yp         y          F         y_ex      AbsError
0.00  0.0000000  1.0000000  0.0000000  1.0000000  0.00000000
0.10  0.0000000  1.0048375  0.0951625  1.0048374  0.00000008
0.20  0.0000000  1.0187309  0.1812691  1.0187308  0.00000015
0.30  0.0000000  1.0408184  0.2591816  1.0408182  0.00000020
0.40  1.0703231  1.0703199  0.3296801  1.0703200  0.00000013
0.50  1.1065332  1.1065303  0.3934697  1.1065307  0.00000039
0.60  1.1488136  1.1488110  0.4511890  1.1488116  0.00000060
0.70  1.1965869  1.1965845  0.5034155  1.1965853  0.00000077
0.80  1.2493302  1.2493281  0.5506719  1.2493290  0.00000090
0.90  1.3065706  1.3065687  0.5934313  1.3065697  0.00000100
1.00  1.3678801  1.3678784  0.6321216  1.3678794  0.00000108
```

## MATLAB Program 3

:::matlab
%6G6Z3002 Computational Methods in ODEs - Chapter 2, Example 2 (Matlab Program 3).
%Scriptfile to solve a single 1st order ordinary differential equation, using
%a non-stiff ODE solver, called ode113, from the Matlab ODE solver routines
%based on Adam-Bashforth-Moulton methods.
function ch2_prog3
y0=1.0;  %set the initial value of the dependent variable y
tspan=[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1]; %set specific output point
options = odeset('RelTol',1e-6,'AbsTol',1e-6); %set tolerances
[t,y]=ode113(@f,tspan,y0,options); %call the ODE solver routine ode113

disp('  t        y          f(t)      y_ex     Abs_error ');

for i=1:length(t)  %in this case length(t)=11, from tspan
    yex(i)=exp(-t(i))+t(i);  %calculating the exact solutions at each step
    abserror(i)=abs(yex(i)-y(i));  %calculating the absolute error
    fprintf('%5.2f %10.7f %10.7f %10.7f %11.8f\n', t(i),y(i),f(t(i),y(i)),yex(i),abserror(i));
end

plot(t,y(:,1),'LineWidth',2);
title(['Solution of dy/dt = -y+t+1, y0 = ' num2str(y0),', using ode113']);
xlabel('t');
ylabel('solution y');
%-----------------------------------------------------------------------
%Defining the ODE to be solved
function f=f(t,y)
f=-y+t+1;
:::

Output:
```
t        y          f(t)      y_ex     Abs_error 
0.00  1.0000000  0.0000000  1.0000000  0.00000000
0.10  1.0048374  0.0951626  1.0048374  0.00000001
0.20  1.0187308  0.1812692  1.0187308  0.00000006
0.30  1.0408184  0.2591816  1.0408182  0.00000018
0.40  1.0703202  0.3296798  1.0703200  0.00000013
0.50  1.1065307  0.3934693  1.1065307  0.00000007
0.60  1.1488116  0.4511884  1.1488116  0.00000000
0.70  1.1965852  0.5034148  1.1965853  0.00000006
0.80  1.2493289  0.5506711  1.2493290  0.00000011
0.90  1.3065696  0.5934304  1.3065697  0.00000009
1.00  1.3678794  0.6321206  1.3678794  0.00000008
```

```{figure}
```

```{figure} ../images/fig-ch3program3_result.svg
---
width: 600px
name: fig-ch3program3_result
---

```
