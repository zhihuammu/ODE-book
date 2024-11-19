(chap:pre:3)=
# Analytical Methods for ODEs

```{contents}
:local:
```

## Separable Equations

```{index} pair: Ordinary Differential Equation; Separable Equation
```

```{prf:definition} Separable Equation
A first-order differential equation of the form

$$
\diff{y}{x} = g(x) h(y)
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

````{prf:example}
Solve $(1+x)\dy - y \dx=0$

:::{admonition} Solution
:class: solution, dropdown
<!-- **Solution:** -->
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
|y| & = e^{\ln |1+x| + c_1} \\
  & = e^{c_1} |1+x| \\
  & = C |1+x|
\end{aligned}
$$
:::
````

````{prf:example}
Solve $\displaystyle \diff{y}{x} = \frac{x-5}{y^2}$.

:::{admonition} Solution
:class: solution, dropdown
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
````

## Linear Equations with Constant Coefficients

Here we focus on a particular type of $n$-th order ODE given as 

$$
a_n y^{(n)} + a_{n-1} y^{(n-1)} + \cdots + a_1 y' + a_0 y = g(x),
\quad a_n \neq 0
$$(eq:ode:linear:constant)

where the coefficients $a_p~(p=0, 1, \ldots, n)$ are constants.

```{index} pair: Ordinary Differential Equation; Differential Operator
```

````{prf:definition} Differential Operator $\D$
We define $\D$ as the {index}`differential operator`, which can be applied on a function $y=y(x)$ to obtain its derivative

$$
    \D y = \diff{y}{x},
$$

then the $n$-th derivative is 

$$
    \D^n y = \diff[n]{y}{x}.
$$

```{index} pair: Ordinary Differential Equation; Operator Form
```

Thus we can write the ODE {eq}`eq:ode:linear:constant` in its **operator form** as

$$
\left( a_n \D^n + a_{n-1} \D^{n-1} + \cdots + a_1 \D + a_0 \right) y = g(x).
$$(eq:ode:operator:form)

We define the overall operation on $y$ as

$$
\L (\D)= a_n \D^n + a_{n-1} \D^{n-1} + \cdots + a_1 \D + a_0,
$$(eq:ode:operator:LD)

then the equation can also be written as

$$
\L (\D) y = g(x).
$$
````

```{index} pair: Ordinary Differential Equation; Characteristic Polynomial
```
```{index} pair: Ordinary Differential Equation; Characteristic Equation
```
```{index} pair: Ordinary Differential Equation; Auxiliary Equation
```

```{prf:definition} Characteristic Polynomial and Characteristic Equation
For equation {eq}`eq:ode:linear:constant`, we define its **{index}`characteristic polynomial`** as

$$
\L (z) = a_n z^n + a_{n-1} z^{n-1} + \cdots + a_1 z + a_0.
$$(eq:ode:linear:constant:char:polynomial)

Note: We can simply replace the operator $\D$ in formula {eq}`eq:ode:operator:LD` with $z$ to obtain the characteristic polynomial.

The equation

$$
\L (z) = a_n z^n + a_{n-1} z^{n-1} + \cdots + a_1 z + a_0 = 0
$$(eq:ode:linear:constant:char:equation)

is called the **{index}`characteristic equation`** of the ODE {eq}`eq:ode:linear:constant`.

Note: In some books, the characteristic equation is also called *auxiliary equation*.
```

(chapX-homo-ode-sol)=
### Homogeneous ODEs

When the right hand side of equation {eq}`eq:ode:linear:constant` vanishes, i.e. $g(x)\equiv 0$, we obtain a linear homogeneous ordinary differential equation with constant coefficients

$$
\L (\D) y = \left( a_n \D^n + a_{n-1} \D^{n-1} + \cdots + a_1 \D + a_0 \right) y = 0
$$(eq:ode:linear:homogeneous:constant)

```{index} pair: Ordinary Differential Equation; Superposition Principle
```

```{prf:theorem} Superposition Principle --- Homogeneous Equations
Let $\phi_1(x)$, $\phi_2(x)$, ... , $\phi_n(x)$ be solutions to the homogeneous $n${sup}`th` order differential equation {eq}`eq:ode:linear:homogeneous:constant` on an interval $I$, then the linear combination

$$
    y=c_1 \phi_1(x) + c_2 \phi_2(x) + \cdots + c_n \phi_n(x)
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
:class: solution
<!-- :class: hint -->

::::{tab-set}
```{tab-item} Method 1 (integration)
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

```{tab-item} Method 2 (characteristic equation)
Using the differential operator $\D$ to rewrite the equation as

$$
(a_1\D + a_0) y=0,
$$

and we get the characteristic equation

$$
a_1 z + a_0 = 0,
$$

and its root is $z = -\dfrac{a_0}{a_1}$. Therefore the general solution to the first-order ODE is 

$$
y = C e^{z x} = C e^{-\frac{a_0}{a_1} x}
$$
```
::::


``````


#### Second-order ODEs

Solve $a y'' + b y'+ c y=0$

```{admonition} Solution
:class: solution
<!-- :class: hint -->

Using the differential operator $\D$, we write the equation as

$$
\left( a\D^2 + b\D + c \right) y = 0,
$$

so characteristic/auxiliary equation is

$$
    a z^2 + b z + c=0,
$$

and its roots 

$$
z_{1,2} = \frac{-b\pm\sqrt{b^2-4ac}}{2a}
$$

can be:

- Case 1: two distinct real solutions ($z_1 \neq z_2 \in \R$);

    The general solution of the second-order ODE is

    $$
    y=c_1 e^{z_1 x} + c_2 e^{z_2 x}
    $$

- Case 2: two identical real solutions ($z_1 = z_2 =z \in \R$);

    The general solution of the second-order ODE is

    $$
    y=c_1 e^{z x} + c_2 x e^{z x}
    $$

- Case 3: two conjugate complex solutions ($z_{1,2} = \alpha \pm \i \beta \in \C$);. 

    The general solution of the second-order ODE is

    $$
    y=k_1 e^{(\alpha + \i \beta) x} + k_2 e^{(\alpha - \i \beta) x}
    $$

    or we can write it as

    $$
    y=e^{\alpha x}  \left(c_1 \cos \beta x + c_2 \sin \beta x \right), \quad c_1, c_2 \in \C
    $$

```

```{prf:example}
Solving the following ODEs:

1. $2y''-5y'-3y=0$
2. $y''-10y'+25y=0$
3. $y''+4y'+7y=0$

:::{admonition} Solution
:class: solution, dropdown
1. $2z^2-5z-3=(2z+1)(z-3)=0$,  $\quad z_1=-\frac{1}{2}$ and $z_2=3$

    $y=c_1 e^{-\frac{x}{2}}+c_2 e^{3x}$

2. $z^2-10z+25=(z-5)^2=0$,  $\quad z_1=z_2=5$

    $y=c_1 e^{5x} + c_2 x e^{5x}$

3. $z^2+4z+7=0$,  $\quad z_1=-2+\sqrt{3}i$ and $z_2=-2-\sqrt{3}i$

    $y=e^{-2x} \left( c_1 \cos \sqrt{3}x + c_2 \sin \sqrt{3}x \right)$
:::

```

#### Higher-order ODEs
Solve an $n${sup}`th` order ODE 
$
\left( a_n \D^n + a_{n-1} \D^{n-1} + \cdots + a_1 \D + a_0 \right) y = 0
$

```{admonition} Solution
:class: solution
<!-- :class: hint -->
The characteristic equation is

$$
a_n z^n + a_{n-1} z^{n-1} + \cdots + a_1 z + a_0 = 0
$$

- Case 1: $n$ distinct real solutions ($z_1 \neq z_2 \neq \cdots \neq z_n \in \R$)

    The general solution is

    $$
    y=c_1 e^{z_1 x} + c_2 e^{z_2 x} + \cdots + c_n e^{z_n x}
    $$

- Case 2: $n$ repeated real solutions ($z_1=z_2= \cdots =z_n=z \in \R$)

    The general solution is

    $$
    y=c_1 e^{z x} + c_2 x e^{z x} + \cdots + c_n x^{n-1} e^{z x}
    $$

- Case 3: $m$-pair ($n=2m$) conjugate complex solutions

    $$
    \begin{aligned}
    z_{1,2} & = \alpha_1 \pm \i \beta_1 \\
    z_{3,4} & = \alpha_2 \pm \i \beta_2 \\
              & \vdots ~ \\
    z_{2m-1, 2m} & = \alpha_m \pm \i \beta_m 
    \end{aligned}
    $$

    The general solution is

    $$
    \begin{aligned}
    y ~ = ~ & ~ e^{\alpha_1 x} (c_1 \cos \beta_1 x + c_2 \sin \beta_1x) \\
        + & ~ e^{\alpha_2 x} (c_3 \cos \beta_2 x + c_4 \sin \beta_2x) \\
        & \vdots \\
        + & ~ e^{\alpha_m x} (c_{2m-1} \cos \beta_m x + c_{2m} \sin \beta_m x) 
    \end{aligned}
    $$
```


### Nonhomogeneous ODEs

Here we consider a linear nonhomogeneous ODE with constant coefficients given by

$$
\L (\D) y = \left( a_n \D^n + a_{n-1} \D^{n-1} + \cdots + a_1 \D + a_0 \right) y = g(x), \quad g(x)\neq 0
$$(eq:ode:linear:nonhomogeneous:constant)

The solution $y(x)$ to equation {eq}`eq:ode:linear:nonhomogeneous:constant` includes two parts:

- A homogeneous component $y_h(x)$, which is the general solution to the homogeneous equation $\L (\D) y_h = 0$. In some books $y_h (x)$ is also called complementary solution.

- A particular component $y_p(x)$, which is a particular solution to the nonhomogeneous equation $\L (\D) y_p = g(x)$.

In conclusion, the solution to equation {eq}`eq:ode:linear:nonhomogeneous:constant` is 

$$
\left\{
\begin{aligned}
 \L (\D) y_h(x) & = 0 \\
 \L (\D) y_p(x) & = g(x) \\
 y(x) & = y_h (x) + y_p(x) \\
\end{aligned}
\right.
$$(eq:inhomo:ode:sol)

```{index} pair: Ordinary Differential Equation; Undetermined Coefficients Method
```

The way to find $y_h(x)$ is the same as described in [](chapX-homo-ode-sol). Here we will introduce the **{index}`Undetermined Coefficients Method`** to find the particular solution $y_p(x)$

```{prf:example}
Find the solution to 

$$
y''+3y'+2y=3t
$$

:::{admonition} Solution
:class: solution, dropdown
<!-- :class: hint -->

- Step 1: find a particular solution to the equation

    We need to find a function $y(t)$ to satisfy 

    $$
    (\D^2+3\D+2) y(t) = 3t,
    $$

    where $\D$ is the differential operator.

    It seems $y(t)$ should be a polynomial function, and we can try a linear function

    $$
    y(t)=At+B
    $$

    to see whether it could fit

    $$
    \begin{aligned}
    (\D^2+3\D+2) (At+B) & =  \D^2 (At+B) + 3\D (At+B) + 2(At+B) \\
                    & =  (0) + (3A) + (2At+2B) \\
                    & = 3t
    \end{aligned}
    $$

    so we get simultaneous equations for $A$ and $B$

    $$
    \left\{
    \begin{aligned}
    & 2A=3 \\
    & 3A+2B=0 
    \end{aligned}
    \right.
    $$

    we can get

    $$
    A=\frac{3}{2}, \quad B=-\frac{9}{4}
    $$

    therefore the particular solution is

    $$
    y_p (t) = \frac{3}{2} t - \frac{9}{4}
    $$

- Step 2: find the homogeneous solution to the equation

    The characteristic equation is

    $$
    z^2 + 3z + 2 =0,
    $$

    so $z_1 = -1$ and $z_2 = -2$. Therefore the homogeneous solution is 

    $$
    y_h(t) = c_1 e^{-t} + c_2 e^{-2t}
    $$

- Step 3: the overall solution

    $$
    y(t) = y_h(t) + y_p(t) = c_1 e^{-t} + c_2 e^{-2t} + \frac{3}{2} t - \frac{9}{4}
    $$

:::
```

```{prf:example}
Find a particular solution to

$$
y''+3y'+2y=10e^{3t}
$$

:::{admonition} Solution
:class: solution ,dropdown
The right hand side is $10e^{3t}$, so we guess $y_p(t)=Ae^{3t}$. Substituting our guess into the differential equation, we can get

$$
\begin{aligned}
(\D^2+3\D+2) Ae^{3t} & = 9Ae^{3t}+9Ae^{3t}+2Ae^{3t} \\
                     & = 20Ae^{3t} \\
                     & = 10e^{3t}
\end{aligned}
$$

so $A=\dfrac{1}{2}$, and therefore 

$$
y_p(t)=\frac{1}{2}e^{3t}
$$
:::

```