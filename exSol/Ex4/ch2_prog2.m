%6G6Z3002 Computational Methods in ODEs - Chapter 2, Example 2 (Matlab Program 2)
%Scriptfile to solve a single 1st order Ordinary Differential Equation,
%using the standard 4th order RK method to calculate the starting values and 4th order 
%Adams-Bashforth-Moulton method for the integration of the remaining time span.
%The result is written to a file called 'c2ex2p2.res'.
function ch2_prog2
fout=fopen('c2ex2p2.res','w');
h=0.1;      %steplength h
nsteps=11;  %number of steps
t(1)=0.0;   %set starting value of the independent variable t
y(1)=1.0;   %set initial value of the dependent variable y
yp(1)=0.0;  %set first predictor value =0 (in this program for formatting output)
F(1)=feval('f',t(1),y(1)); %calculate the value of y'=F, at t(1), y(1).
for i=2:4 % calculate the next 3 starting values using RK 4th order method
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
   yp(i)=y(i-4)+(h/3)*(8*F(i-1)-4*F(i-2)+8*F(i-3));
   t(i)=t(i-1)+h;
   F(i)=feval('f',t(i),yp(i));
   y(i)=y(i-2)+(h/3)*(F(i)+4*F(i-1)+F(i-2));
   F(i)=feval('f',t(i),y(i));
end
disp(' t        yp        y          F          y_ex     abs_err');
fprintf(fout,' t         yp         y          F        y_ex      abs_err\n');
fprintf(fout,'----------------------------------------------------------\n');
for i=1:nsteps
   yex(i)=exp(-t(i))+t(i);
   abserror(i)=abs(yex(i)-y(i));    
   fprintf('%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f\n', ...
       t(i),yp(i),y(i),F(i),yex(i),abserror(i));
   fprintf(fout,'%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f\n',...
       t(i),yp(i),y(i),F(i),yex(i),abserror(i));
end
fclose(fout);
% --------------------------------------------------------------------------
% Defining the ODE problem (or function) to be solved 
function f=f(t,y)
f=-y+t+1;
% --------------------------------------------------------------------------    
