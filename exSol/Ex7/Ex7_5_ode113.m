%6G6Z3002 Computational Methods in ODEs - Chapter 7 (Matlab program 4)
%Scriptfile to solve a system of three 1st order ODEs, using a stiff
%solver, ode15s, from the MATLAB ODE solver routines.

function ch6_stiff_1

y0= [1.0 0.0 0.0];
tspan=[0,1.0e-5,1.0e-3,0.1,0.5,1,2,4,6,8,10,20,30,40,50,60]; 

tspan=[0, 100];

% Note: For a smooth curve use tspan=[0 60] 
%options = odeset('RelTol',1e-6,'AbsTol',[1e-10,1e-18,1e-12]);

options = odeset('RelTol',1e-6,'AbsTol',1e-6);
[t,y]=ode113(@ch6f3,tspan,y0,options);

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

% ---------------------------------------------------------------
function f = ch6f3(t,y)
	f=zeros(3,1);
	f(1)= -0.04*y(1)+1.0e4*y(2)*y(3);
	f(2)= 0.04*y(1)-1.0e4*y(2)*y(3)-3.0e7*y(2)*y(2);
	f(3)= 3.0e7*y(2)*y(2);