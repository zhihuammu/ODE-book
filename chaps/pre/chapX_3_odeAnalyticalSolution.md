```{math}
\newcommand{\diff}[3][]{\frac{\mathrm{d}^{#1} #2}{\mathrm{d} #3^{#1}}}
\newcommand{\pdiff}[3][]{\frac{\partial^{#1} #2}{\partial #3^{#1}}}
```

(chap:pre:3)=
# Analytical Methods for ODEs

## Separable Equations

```{prf:definition} Separable Equation
A first-order differential equation of the form

$$
\diff{f}{x} = g(x) h(y)
$$(eq:ode:separable)

is said to be separable or to have separable variables.
```

To solve the separable ODE {eq}`eq:ode:separable`, we re-arrange it as

$$
\frac{1}{h(y)} \dy= g(x) \dx, 
$$

then integrate both sides

$$
\int \frac{1}{h(y)} \dy= \int g(x) \dx, 
$$

so we can get the implicit solution

$$
H(y) = G(x) + C.
$$

```{prf:example}
Solve $(1+x)\dy - y \dx=0$

**Solution:**
Re-arranging the equation as

$$
    \frac{1}{y} \dy  = \frac{1}{1+x} \dx
$$

and integrating both sides

$$
  \int \frac{1}{y} \dy  = \int \frac{1}{1+x} \dx
$$

so 

$$
\ln |y| = \ln |1+x| + c_1
$$

$$
\begin{aligned}
y & = e^{\ln |1+x| + c_1} \\
  & = e^{c_1} |1+x| \\
  & = C |1+x|
\end{aligned}
$$
```

```{prf:example}
Solve $\displaystyle \diff{y}{x} = \frac{x-5}{y^2}$.

**Solution:**
Rearranging the equation as

$$
y^2 \dy = (x-5) \dx
$$

Integrating both sides

$$
\int y^2 \dy = \int (x-5) \dx 
$$

So the implicit solution is

$$
    \frac{1}{3} y^3 = \frac{1}{2}x^2 - 5x + C
$$
```

## Linear Equations with Constant Coefficients

Here we focus on a particular type of $n$-th order ODE given as 

$$
a_n y^{(n)} + a_{n-1} y^{(n-1)} + \cdots + a_1 y' + a_0 y = g(x),
\quad a_n \neq 0
$$(eq:ode:linear:constant)

where the coefficients $a_p~(p=0, 1, \ldots, n)$ are constants.

```{prf:definition} Differential Operator $D$
We define $D$ as the differential operator, which can be applied on a function $y=y(x)$ to obtain its derivative

$$
    D y = \diff{y}{x},
$$

then the $n$-th derivative is 

$$
    D^n y = \diff[n]{y}{x}.
$$

Thus we can write the ODE {eq}`eq:ode:linear:constant` in an **operator form** as

$$
\left( a_n D^n + a_{n-1} D^{n-1} + \cdots + a_1 D + a_0 \right) y = g(x).
$$(eq:ode:operator:form)

We define the overall operation on $y$ as

$$
L(D)= a_n D^n + a_{n-1} D^{n-1} + \cdots + a_1 D + a_0,
$$(eq:ode:operator:LD)

then the equation can also be written as

$$
L(D) y = g(x).
$$
```

```{prf:definition} Characteristic Polynomial and Characteristic Equation
For equation {eq}`eq:ode:linear:constant`, we define its **characteristic polynomial** as

$$
L(\xi) = a_n \xi^n + a_{n-1} \xi^{n-1} + \cdots + a_1 \xi + a_0.
$$(eq:ode:linear:constant:char:polynomial)

Note: We can simply replace the operator $D$ in formula {eq}`eq:ode:operator:LD` to $\xi$ to obtain the characteristic polynomial.

The equation

$$
L(\xi) = a_n \xi^n + a_{n-1} \xi^{n-1} + \cdots + a_1 \xi + a_0 = 0
$$(eq:ode:linear:constant:char:equation)

is called the **characteristic equation** of the ODE {eq}`eq:ode:linear:constant`.

Note: In some books, the characteristic equation is also called *auxiliary equation*.
```

### Homogeneous ODEs

When the right hand side of equation {eq}`eq:ode:linear:constant` vanishes, i.e. $g(x)$, we obtain a linear homogeneous ordinary differential equation with constant coefficients

$$
L(D) y = \left( a_n D^n + a_{n-1} D^{n-1} + \cdots + a_1 D + a_0 \right) y = 0
$$(eq:ode:linear:homogeneous:constant)


```{prf:theorem} Superposition Principle --- Homogeneous Equations
Let $y_1(x)$, $y_2(x)$, ... , $y_n(x)$ be solutions to the homogeneous $n$-th order differential equation {eq}`eq:ode:linear:homogeneous:constant` on an interval $I$, then the linear combination

$$
    y=c_1 y_1(x) + c_2 y_2(x) + \cdots + c_n y_n(x)
$$

where $c_p ~ (p=1, 2, \ldots, n)$ are arbitrary constants, is also a solution on the interval.
```

We will work step by step to look at the solutions of:

- First-order ODEs
- Second-order ODEs
- Higher-order ODEs

#### First-order ODEs
Solve $a_1 y' + a_0 y =0$

`````{admonition} Solution
:class: hint

::::{tab-set}
```{tab-item} Method 1
Writing the equation as

$$
a_1 \diff{y}{x} = - a_0 y,
$$

separating the variables

$$
\frac{1}{y}\dy  = -\frac{a_0}{a_1} \dx,
$$

integrating both sides

$$
\int \frac{1}{y}\dy  = \int -\frac{a_0}{a_1} \dx,
$$

$$
\ln |y| = -\frac{a_0}{a_1} x + c_1
$$

$$
y = e^{-\frac{a_0}{a_1} x + c_1} = C e^{-\frac{a_0}{a_1} x }
$$
```

```{tab-item} Method 2
The characteristic equation is 

$$
a_1 \xi + a_0 = 0,
$$

and its root is $\xi = -\dfrac{a_0}{a_1}$. Therefore the general solution to the first-order ODE is 

$$
y = C e^{\xi x} = C e^{-\frac{a_0}{a_1} x}
$$
```
::::


``````


#### Second-order ODEs

Solve $a y'' + b y'+ c y=0$

```{admonition} Solution
:class: hint

The characteristic equation is

$$
    a \xi^2 + b \xi + c=0,
$$

and its roots 

$$
\xi_{1,2} = \frac{-b\pm\sqrt{b^2-4ac}}{2a}
$$

can be:

- Case 1: two distinct real solutions ($\xi_1\neq\xi_2 \in \R$);

    The general solution of the second-order ODE is

    $$
    y=c_1 e^{\xi_1 x} + c_2 e^{\xi_2 x}
    $$

- Case 2: two identical real solutions ($\xi_1 = \xi_2 =\xi \in \R$);

    The general solution of the second-order ODE is

    $$
    y=c_1 e^{\xi x} + c_2 x e^{\xi x}
    $$

- Case 3: two complex conjugate solution ($\xi_{1,2} = \alpha \pm i \beta \in \C$);. 

    The general solution of the second-order ODE is

    $$
    y=C_1 e^{(\alpha + i \beta) x} + C_2 e^{(\alpha - i \beta) x}
    $$

    or we can write it as

    $$
    y=c_1 e^{\alpha x} \cos \beta x + c_2 e^{\alpha x} \sin \beta x
    $$

```

```{prf:example}
Solving the following ODEs:

1. $2y''-5y'-3y=0$
2. $y''-10y'+25y=0$
3. $y''+4y'+7y=0$

:::{admonition} Solution
1. $2\xi^2-5\xi-3=(2\xi+1)(\xi-3)=0$,  $\quad\xi_1=-\frac{1}{2}$ and $\xi_2=3$

    $y=c_1 e^{-\frac{x}{2}}+c_2 e^{3x}$

2. $\xi^2-10\xi+25=(\xi-5)^2=0$,  $\quad\xi_1=\xi_2=5$

    $y=c_1 e^{5x} + c_2 x e^{5x}$

3. $\xi^2+4\xi+7=0$,  $\quad\xi_1=-2+\sqrt{3}i$ and $\xi_2=-2-\sqrt{3}i$

    $y=e^{-2x} \left( c_1 \cos \sqrt{3}x + c_2 \sin \sqrt{3}x \right)$
:::

```

#### Higher-order ODEs
Solve an $n$-th order ODE 
$
\left( a_n D^n + a_{n-1} D^{n-1} + \cdots + a_1 D + a_0 \right) y = 0
$

```{admonition} Solution
:class: hint
The characteristic equation is

$$
a_n \xi^n + a_{n-1} \xi^{n-1} + \cdots + a_1 \xi + a_0 = 0
$$

- Case 1: $n$ distinct real solutions ($\xi_1 \neq \xi_2 \neq \cdots \neq \xi_n \in \R$)

    The general solution is

    $$
    y=c_1 e^{\xi_1 x} + c_2 e^{\xi_2 x} + \cdots + c_n e^{\xi_n x}
    $$

- Case 1: $n$ repeated real solutions ($\xi_1=\xi_2= \cdots =\xi_n=\xi \in \R$)

    The general solution is

    $$
    y=c_1 e^{\xi x} + c_2 x e^{\xi x} + \cdots + c_n x^{n-1} e^{\xi x}
    $$

- Case 3: $m$-pair ($n=2m$) conjugate complex solutions
```


### Inhomogeneous ODEs