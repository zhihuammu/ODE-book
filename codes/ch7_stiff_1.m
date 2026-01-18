%Solve a system of three 1st order ODEs, using a stiff solver, ode15s, 
% from the MATLAB ODE solver routines.

%%1-> Define the IVP
% declare an ode function (definition given at the end of the code)
f=@odeFunc;

%set the initial values 
y0= [1.0 0.0 0.0];  

%set specific output points
tspan=[0,1.0e-5,1.0e-3,0.1,0.5,1,2,4,6,8,10,20,30,40,50,60];  

%%2-> Set options
options = odeset('RelTol',1e-6,'AbsTol',1e-6); %set tolerances

%%3-> Call the ODE solver routine ode15s
[t,y]=ode15s(@odeFunc,tspan,y0,options);

%%4-> Output the result
disp('     i      t         y1         y2         y3 ');
fprintf(' -----------------------------------------\n');

for i=1:length(t)
	fprintf('%5i %10.2e %10.2e %10.2e %10.2e\n',i,t(i),y(i,1),y(i,2),y(i,3));
end

figure(1)
semilogy(t,y(:,1),t,y(:,2),t,y(:,3),'LineWidth',2);
title(['Solution of the Robertson Problem for t=0:0.60s']);
xlabel('time (Sec)'); ylabel('solution y');
axis([tspan(1) tspan(end) 1.0e-12 10]);  

figure(2)
semilogy(t,y(:,1),t,y(:,2),t,y(:,3),'LineWidth',2);
title(['Solution of the Robertson Problem for t=0:0.01s']);
xlabel('time (Sec)'); ylabel('solution y');
axis([tspan(1) 0.01 1.0e-12 10]);  
% --------------------------------------------------------------------------
% Defining the ODE problem (or function) to be solved
function f = odeFunc(t,y)
	f=zeros(3,1);
	f(1)= -0.04*y(1)+1.0e4*y(2)*y(3);
	f(2)= 0.04*y(1)-1.0e4*y(2)*y(3)-3.0e7*y(2)*y(2);
	f(3)= 3.0e7*y(2)*y(2);
end