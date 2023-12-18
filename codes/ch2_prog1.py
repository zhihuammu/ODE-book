#6G6Z3017 Computational Methods in ODEs - Chapter 3, Example 2(Python Program 1)
#Scriptfile to solve a single 1st order Ordinary Differential Equation,
#using the exact solution to calculate the starting values and 
# the 4th order Adams-Bashforth-Moulton method 
# for the remaining integration time span.
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
#calculate the first 3 starting values using the exact solution
for i in range(1,4):
    t[i]=t[i-1]+h;
    y[i]=math.exp(-t[i])+t[i];
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
