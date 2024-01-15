import math
import numpy as np
import matplotlib.pyplot as plt

def f(t,y):
    return -y+t+1;

#interval of definition
L=1.0;
nsteps=11;
h=L/(nsteps-1);

#declare arrays
t=np.zeros(nsteps);
y=np.zeros(nsteps);
F=np.zeros(nsteps);
yex=np.zeros(nsteps);
abserror=np.zeros(nsteps);
#initial values
t[0]=0.0;
y[0]=1.0;
F[0]=f(t[0],y[0]);

#calculate the first 3 starting values using the exact solution
for i in range(1,4):
    t[i]=t[i-1]+h;
    y[i]=math.exp(-t[i])+t[i];
    F[i]=f(t[i],y[i]);

#use multiple-step method to calculate y
for i in range(4,nsteps):
    y[i]=-4*y[i-1]+5*y[i-2]+h*(4*F[i-1]+2*F[i-2]);
    t[i]=t[i-1]+h;
    F[i]=f(t[i],y[i]);
#screen output
print(" t         y           F         y_ex      AbsError");
for i in range(nsteps):
    yex[i]=math.exp(-t[i])+t[i];
    abserror[i]=abs(yex[i]-y[i]);
    print("%4.2f %11.5e %11.5e %11.5e %11.5e" %(t[i],y[i],F[i],yex[i],abserror[i]))
    
#plot solution
plt.figure(1)
plt.plot(t,y,'r-o',label="numerical")
plt.plot(t,yex,'b-',label="exact")
plt.xlabel('$t$', fontsize=20)
plt.ylabel('$y$', fontsize=20)
plt.legend(loc="upper left", fontsize=14)
plt.title("Solution to $y'=-y+t+1, y(0)=1, h=0.1$",fontsize=16)
plt.yticks(fontsize=14)
plt.xticks(fontsize=14)
plt.show()    