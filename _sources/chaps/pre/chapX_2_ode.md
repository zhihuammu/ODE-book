```{math}
\newcommand{\diff}[3][]{\frac{\mathrm{d}^{#1} #2}{\mathrm{d} #3^{#1}}}
\newcommand{\pdiff}[3][]{\frac{\partial^{#1} #2}{\partial #3^{#1}}}
```

(chap:pre:2)=
# Ordinary Differential Equations

For an $n$-th order ordinary differential equation, we can write it in

- **General Form**

    $$
    F(x, y, y', y'', \ldots, y^{(n)}) = 0
    $$(eq:ode:form:general)

- **Normal form**

    $$
    \diff[n]{y}{x} = f(x, y', y'', \ldots, y^{(n-1)})
    $$(eq:ode:form:normal)

```{prf:remark} Interval of definition $I$
For a problem governed/represented by an ODE, we need to give the actual ODE in form {eq}`eq:ode:form:general` or {eq}`eq:ode:form:normal`, besides we also need to give the interval $I$ that defines the problem. We call this interval $I$:

- the **interval of definition**, 
- the **interval of existence**, 
- the **interval of validity**,
- or the **domain of the solution**.

The interval $I$ can be

- an open interval $(a, b)$,
- a closed interval $[a, b]$,
- an infinite interval $(a, \infty)$,

and so on.
```


```{prf:definition} Explicit Solution of an ODE
A function $\phi(x)$ that when substituted for $y$ in equation {eq}`eq:ode:form:general` or {eq}`eq:ode:form:normal`
satisfies the equation for all $x$ in the interval $I$ is called an **explicit solution** to the equation on $I$.
```

```{prf:example}
1. $\phi(x)=x^2 - x^{-1}$ is an explicit solution to the equation

    $$
    \diff[2]{y}{x} - \frac{2y}{x^2}=0
    $$

2. $\phi(x)=c_1 e^{-x} + c_2 e^{2x}$ is an explicit solution to the equation

    $$
    y'' - y' - 2y=0
    $$
```


```{prf:definition} Implicit Solution of an ODE
A relation $G(x, y) = 0$ is said to be an **implicit solution** of an ordinary differential equation {eq}`eq:ode:form:general` on an interval $I$, provided that there exists at least one function $\phi$ that satisfies the relation as well as the differential equation on $I$.
```

```{prf:example}
1. The relation $x^2+y^2=25$ is an implicit solution to the equation

    $$
        \diff{y}{x} = -\frac{x}{y}
    $$

    on the open interval $(-5, 5)$.

2.  The relation $y^2 - x^3 + 8=0$ implicitly defines a solution to the nonlinear equation

    $$
    \diff{y}{x}=\frac{3x^2}{2y}
    $$
```

<!-- ## Initial value problem -->

```{prf:definition} Initial Value Problem
By an **initial value problem** for an $n$-th order differential equation 

$$
F(x, y, y', y'', \ldots, y^{(n)}) = 0,
$$

we mean: Find a solution to the ODE on an interval $I$ that satisfies at $x_0$ the $n$ **initial conditions**

$$
y(x_0) = & ~y_0, \\
y'(x_0) = & ~y_1, \\
  \vdots ~ & ~ \\
y^{(n-1)}(x_0) = & ~y_{n-1}
$$

where $x_0 \in I$ and $y_0$, $y_1$, ... , $y_{n-1}$ are given constants.
```

```{prf:theorem} Existence and Uniqueness of Solution
Consider the initial value problem

$$
\diff{y}{x} = f(x,y), \quad y(x_0) = y_0.
$$

If $f$ and $\pdiff{f}{y}$ are continuous functions in some rectangle

$$
R=\left\{ (x,y): a<x<b, ~ c<y<d \right\}
$$

that contains the point $(x_0, y_0)$, then the initial value problem has a unique solution $\phi(x)$ in some interval $x_0 - \delta < x < x_0 + \delta$, where $\delta$ is a positive number.
```

## Systems of Differential Equations

A system of ordinary differential equations is two or more
equations involving the derivatives of two or more unknown functions of a single
independent variable. For example, if x and y denote dependent variables and t
denotes the independent variable, then a system of two first-order differential
equations is given by

$$
\begin{aligned}
\diff{x}{t} = & f(t, x, y) \\
\diff{y}{y} = & g(t, x, y)
\end{aligned}
$$

A solution of a system such as (9) is a pair of differentiable functions $x=\phi_1(t)$, $y=\phi_2(t)$, defined on a common interval $I$, that satisfy each equation of the system
on this interval.

<!-- ## Analytical Solution Methods


$\N$, $\N_0$
$\Z$
$\R$
$\C$ -->