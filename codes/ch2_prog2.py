#6G6Z3017 Computational Methods in ODEs - Chapter 3, Example 2 (Python Program 2)
#Scriptfile to solve a single 1st order Ordinary Differential Equation,
#using the standard 4th order RK method to calculate the starting values and
#4th order ABM method for the solution of the remaining integration time span.
#The result is written to a file called 'c2ex2p2.res'.
import math
import numpy as np

def f(t,y):
    return -y+t+1;

h=0.1;
nsteps=11;
#declare arrays
t=np.zeros(nsteps);
y=np.zeros(nsteps);
yp=np.zeros(nsteps);
F=np.zeros(nsteps);
yex=np.zeros(nsteps);
abserror=np.zeros(nsteps);
#initial values
t[0]=0.0;
y[0]=1.0;
yp[0]=0.0;
F[0]=f(t[0],y[0]);
#calculate the next 3 starting values using RK 4th order method
for i in range(1,4):
    k1=h*f(t[i-1]+h*0.0, y[i-1]);
    k2=h*f(t[i-1]+h*0.5, y[i-1]+k1*0.5);
    k3=h*f(t[i-1]+h*0.5, y[i-1]+k2*0.5);
    k4=h*f(t[i-1]+h*1.0, y[i-1]+k3);
    y[i]=y[i-1]+1.0/6.0*(k1+2*(k2+k3)+k4);
    t[i]=t[i-1]+h;
    F[i]=f(t[i],y[i]);
    yp[i]=0;    
#use multiple-step method to calculate y
for i in range(4,nsteps):
    yp[i]=y[i-1]+(h/24)*(55*F[i-1]-59*F[i-2]+37*F[i-3]-9*F[i-4]);
    t[i]=t[i-1]+h;
    F[i]=f(t[i],yp[i]);
    y[i]=y[i-1]+(h/24)*(9*F[i]+19*F[i-1]-5*F[i-2]+F[i-3]);        
    F[i]=f(t[i],y[i]);
#screen output
print(" t       yp         y          F         y_ex      AbsError");
for i in range(nsteps):
    yex[i]=math.exp(-t[i])+t[i];
    abserror[i]=abs(yex[i]-y[i]);
    print("%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f" %(t[i],yp[i],y[i],F[i],yex[i],abserror[i]))
