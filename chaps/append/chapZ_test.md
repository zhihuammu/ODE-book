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

```{code-cell}ipython
:tags: ["remove-input"]
import matplotlib_inline.backend_inline
matplotlib_inline.backend_inline.set_matplotlib_formats("svg")
```

# TEST ONLY

This chapter is just for testing jupyter-book functionality.

```{margin} Look, some margin content!
On wider screens, this content will pop out to the side!
```

Here's my sentence and a sidenote[^sn1].

[^sn1]: And here's my sidenote content.

Here's my sentence and a marginnote[^mn1].

[^mn1]: {-} And here's my marginnote content.

```{margin} **Here is my margin content**
It is pretty cool!
```


```{code-block} python
:caption: python.py
:linenos: 

print("A code block with a caption and line numbers.")
print("A code block with a caption and line numbers.")
print("A code block with a caption and line numbers.")
```

```{code-block} matlab
:caption: matlab.py
:linenos: 

printf("A code block with a caption and line numbers.")
printf("A code block with a caption and line numbers.")
printf("A code block with a caption and line numbers.")
```


```{code-block} c
:caption: hello.c
:linenos: 

int main()
{
    fprintf("Hello World C!\n");    
    return 0;
}
```

```{code-block} c++
:caption: hello.cpp
:linenos: 

#include <iostream>
using namespace std;
int main()
{
    cout<<"Hello World C++|"<<endl;
    return 0;
}
```

```{code-block} f90
:caption: hello.f90
:linenos: 

program main
    implicit none

    print*,'Hello World Fortran'
end program main
```

This is a normal reST {index}`paragraph` that contains several

This is a normal reST {index}`codeblock` that contains several

```{index} Index names
:name: index-names
```

```{index} single: Jupyter Book ; installation
```

```{index} double: references ; index terms
```

```{index} seealso: citations ; bibliographies
```


First two tabs showing off defining a function.

````{tab} Python
```python
def main():
    print("Hello World Python!")
    return
```
````
````{tab} C++
```c++
int main(const int argc, const char **argv) {
    fprintf("Hello World C++!\n");
    return 0;
}
```
````
````{tab} Fortran
```f90
program main
    print*,'Hello World!'
end program main
```
````

Second two tabs showing off printing.

````{tab} Python
```python
print("Hello World!")
```
````

````{tab} C++
```c++
#include <iostream>

int main() {
  std::cout << "Hello World!" << std::endl;
}
```
````


```{code-cell} ipython3
note = "Python syntax highlighting"
print(note)
```

```{code-cell} ipython3
from myst_nb import glue
import sympy as sym
x, y = sym.symbols('x y')
z = sym.Function('z')
z = sym.sqrt(x**2+y**2)
glue("example_eq", z, display=False)
```

To glue a math equation try
```{glue:math} example_eq
:label: glue-eq-example
```

```{code-cell} ipython3
from myst_nb import glue
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 200)
y = np.sin(x)
fig, ax = plt.subplots()
ax.plot(x, y, 'b-', linewidth=2)

glue("glued_fig", fig, display=False)
```

This is an inline glue example of a figure: {glue:}`glued_fig`.
This is an example of pasting a glued output as a block:
```{glue:} glued_fig
```

```{code-cell} ipython3
from myst_nb import glue
import numpy as np
import pandas as pd

ss = pd.Series(np.random.randn(4))
ns = pd.Series(np.random.randn(100))

glue("ss_mean", ss.mean())
glue("ns_mean", ns.mean(), display=False)
```

Here is an example of how to glue numbers: {glue:}`ss_mean` and {glue:}`ns_mean`.

```{admonition} Check out my custom icon
:class: admonition-icon

Lorem ipsum dolor sit amet, consectetur adipiscing elit.
```

## A big code cell
```{code-cell} ipython3
import math
from fractions import Fraction

a0=0;      
a1=0;      
a2=0;       
a3=-1;     
a4=1;

b0=Fraction(-9, 24);  
b1=Fraction(37, 24);  
b2=Fraction(-59, 24);  
b3=Fraction(55, 24);  
b4=0;

c0= a0+a1+a2+a3+a4;
c1= (a1+2*a2+3*a3+4*a4)-(b0+b1+b2+b3+b4);
c2= (a1+2**2*a2+3**2*a3+4**2*a4)/math.factorial(2)-(b1+2*b2+3*b3+4*b4)/math.factorial(1);
c3= (a1+2**3*a2+3**3*a3+4**3*a4)/math.factorial(3)-(b1+2**2*b2+3**2*b3+4**2*b4)/math.factorial(2);
c4= (a1+2**4*a2+3**4*a3+4**4*a4)/math.factorial(4)-(b1+2**3*b2+3**3*b3+4**3*b4)/math.factorial(3);
c5= (a1+2**5*a2+3**5*a3+4**5*a4)/math.factorial(5)-(b1+2**4*b2+3**4*b3+4**4*b4)/math.factorial(4);

print([c0, c1, c2, c3, c4, c5])
```

## Another big code cell
```{code-cell} ipython3
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
```

## pandas table

```{code-cell} ipython3
:tags: [hide-input]

import numpy as np
import pandas as pd

np.random.seed(24)
df = pd.DataFrame({'A': np.linspace(1, 10, 10)})
df = pd.concat([df, pd.DataFrame(np.random.randn(10, 4), columns=list('BCDE'))],
               axis=1)
df.iloc[3, 3] = np.nan
df.iloc[0, 2] = np.nan

def color_negative_red(val):
    """
    Takes a scalar and returns a string with
    the css property `'color: red'` for negative
    strings, black otherwise.
    """
    color = 'red' if val < 0 else 'black'
    return 'color: %s' % color

def highlight_max(s):
    '''
    highlight the maximum in a Series yellow.
    '''
    is_max = s == s.max()
    return ['background-color: yellow' if v else '' for v in is_max]

df.style.\
    applymap(color_negative_red).\
    apply(highlight_max).\
    set_table_attributes('style="font-size: 10px"')
```