%%1-> Define the IVP
% declare an ode function (definition given at the end of the code)
f=@odeFunc;

y0=1.0;  %set the initial value of the dependent variable y
tspan=[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1]; %set specific output point

%%2-> Set options
options = odeset('RelTol',1e-6,'AbsTol',1e-6); %set tolerances

%%3-> Call the ODE solver routine ode113
[t,y]=ode113(@odeFunc,tspan,y0,options); 


%%4-> Output the result
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
% --------------------------------------------------------------------------
% Defining the ODE problem (or function) to be solved
function f=odeFunc(t,y)
    f=-y+t+1;
end