---
jupytext:
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

# An experiment

:::{prf:example}
Solve the following initial value problem

$$
y' = -\lambda y + \lambda t + 1, \quad t\in [0, 1], ~ y(0)=1, ~\lambda=10
$$

by using the 4-step Adams-Bashforth method

$$
y_{j+1} = y_j + \frac{h}{24}\left(\,55f_j - 59f_{j-1} + 37f_{j-2} - 9f_{j-3}\right).
$$

You should
1. Find the accuracy of the method;
2. Implement the method in Matlab/Python, and compare the numerical solution with the exact solution

    $$y=e^{-\lambda t}+t, \quad \lambda=10.$$
:::


## Accuracy    
We can find the error constant of the method (see Chapter 3). Rearranging the formula as

$$
& y_{j+1} - y_j + 0 y_{j-1} + 0 y_{j-2} + 0 y_{j-3}  \\
    = & h \left( 0 f_{j+1}+ \tfrac{5}{24}f_j - \tfrac{59}{24}f_{j-1} + \tfrac{37}{24}f_{j-2} - \tfrac{9}{24}f_{j-3} \right),
$$

so

$$
& \alpha_0 = 0, ~ 
\alpha_1 = 0, ~ 
\alpha_2 = 0, ~
\alpha_3 = -1, ~ 
\alpha_4 = 1, \\
& \beta_0 = -\tfrac{9}{24}, ~ 
\beta_1 = \tfrac{37}{24}, ~ 
\beta_2= -\tfrac{59}{24}, ~
\beta_3= \tfrac{5}{24}, ~
\beta_4=0
$$

Using Python to calculate the error constant

```{code-cell} ipython
import math
from fractions import Fraction

a0=Fraction(0, 1);      
a1=Fraction(0, 1);      
a2=Fraction(0, 1);       
a3=Fraction(-1, 1);     
a4=Fraction(1, 1);

b0=Fraction(-9, 24);  
b1=Fraction(37, 24);  
b2=Fraction(-59, 24);  
b3=Fraction(55, 24);  
b4=Fraction(0, 1);

c0= a0+a1+a2+a3+a4;
c1= (a1+2*a2+3*a3+4*a4)-(b0+b1+b2+b3+b4);
c2= (a1+2**2*a2+3**2*a3+4**2*a4)/math.factorial(2)-(b1+2*b2+3*b3+4*b4)/math.factorial(1);
c3= (a1+2**3*a2+3**3*a3+4**3*a4)/math.factorial(3)-(b1+2**2*b2+3**2*b3+4**2*b4)/math.factorial(2);
c4= (a1+2**4*a2+3**4*a3+4**4*a4)/math.factorial(4)-(b1+2**3*b2+3**3*b3+4**3*b4)/math.factorial(3);
c5= (a1+2**5*a2+3**5*a3+4**5*a4)/math.factorial(5)-(b1+2**4*b2+3**4*b3+4**4*b4)/math.factorial(4);

print("c0=",c0)
print("c1=",c1)
print("c2=",c2)
print("c3=",c3)
print("c4=",c4)
print("c5=",c5)
```

therefore the order of accuracy of the method is $4$.

## Code Implementation

```{code-cell}ipython
:tags: ["remove-input"]
import matplotlib.pyplot as plt
import matplotlib_inline.backend_inline
matplotlib_inline.backend_inline.set_matplotlib_formats("svg")
```

- First, let's try a step size $h=0.05$

```{code-cell} ipython
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
nsteps=21;
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
    print("%3i %6.3f %11.5e %11.5e %11.5e %11.5e" %(i, t[i],y[i],F[i],yex[i],abserror[i]))
    
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
plt.xlabel("$t$", fontsize=18)
plt.ylabel("$y$", fontsize=18)
plt.legend(loc="upper center", fontsize=14)
plt.title("Solution to $y'=-10y+t+1, y(0)=1, h="+str(h)+"$",fontsize=14)
plt.yticks(fontsize=12)
plt.xticks(fontsize=12)
plt.ylim([0.2, 1.5])
plt.show()        
```

- It seems the errors are too large, so let's try a smaller step size $h=0.025$.

```{code-cell} ipython
:tags: [hide-input]
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
    print("%3i %6.3f %11.5e %11.5e %11.5e %11.5e" %(i, t[i],y[i],F[i],yex[i],abserror[i]))
    
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
plt.xlabel("$t$", fontsize=18)
plt.ylabel("$y$", fontsize=18)
plt.legend(loc="upper center", fontsize=14)
plt.title("Solution to $y'=-10y+t+1, y(0)=1, h="+str(h)+"$",fontsize=14)
plt.yticks(fontsize=12)
plt.xticks(fontsize=12)
plt.ylim([0.2, 1.5])
plt.show()        
```

The solution looks quite good now.


```{admonition} Questions
:class: question

When the step size is $h=0.05$, the numerical solution is unstable. After we reduced it to $h=0.0025$, the solution become stable. 

- Shall we limit the step size to keep the solution stable?

- What is the maximum step size we can use?

- If we use a different linear multistep method, will the maximum allowable step size be the same?
```