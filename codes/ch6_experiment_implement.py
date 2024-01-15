import math
import numpy as np
import matplotlib.pyplot as plt

plt.rcParams['text.usetex'] = True

def f(t,lam,y):
    return lam*(-y+t)+1;

def yexact(t,lam):
    return math.exp(-lam*t)+t;

#interval of definition
L=1.0;
nsteps=41;
h=L/(nsteps-1);

#lambda
lam=10.0;

#declare arrays
t=np.zeros(nsteps);
y=np.zeros(nsteps);
F=np.zeros(nsteps);
yex=np.zeros(nsteps);
abserror=np.zeros(nsteps);
#initial values
t[0]=0.0;
y[0]=yexact(t[0],lam);
F[0]=f(t[0],lam,y[0]);

#calculate the first 3 starting values using the exact solution
for i in range(1,4):
    t[i]=t[i-1]+h;
    y[i]=yexact(t[i],lam);
    F[i]=f(t[i],lam,y[i]);

#use multiple-step method to calculate y
for i in range(4,nsteps):
    y[i]=y[i-1]+(h/24)*(55*F[i-1]-59*F[i-2]+37*F[i-3]-9*F[i-4]);
    t[i]=t[i-1]+h;
    F[i]=f(t[i],lam,y[i]);
#screen output
print("  i   t         y           F         y_ex      AbsError");
for i in range(nsteps):
    yex[i]=yexact(t[i],lam);
    abserror[i]=abs(yex[i]-y[i]);
    print("%3i %5.2f %11.5e %11.5e %11.5e %11.5e" %(i, t[i],y[i],F[i],yex[i],abserror[i]))
    
#exact solution for plot
ne=101;
he=L/(ne-1);
te=np.zeros(ne);
ye=np.zeros(ne);

for i in range(ne):
    te[i]=i*he;
    ye[i]=yexact(te[i],lam);
    
#plot solution
plt.figure(1)
plt.plot(t,y,'r-o',label="numerical")
plt.plot(te,ye,'b-',label="exact")
plt.xlabel(r'$t$', fontsize=20)
plt.ylabel(r'$y$', fontsize=20)
plt.legend(loc="upper center", fontsize=14)
plt.title("Solution to $y'=-10y+t+1, y(0)=1, h="+str(h)+"$",fontsize=16)
plt.yticks(fontsize=14)
plt.xticks(fontsize=14)
#plt.ylim([0, 1.2])
plt.show()    