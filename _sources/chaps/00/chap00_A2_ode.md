```{index} Ordinary Differential Equation
```
(chap:pre:2)=
# Ordinary Differential Equations

For an $n$-th order ordinary differential equation, we can write it in

```{index} Ordinary Differential Equation; General Form
```
- **General Form**

    $$
    F(t, y, y', y'', \ldots, y^{(n)}) = 0
    $$(eq:ode:form:general)

```{index} Ordinary Differential Equation; Normal Form
```
- **Normal form**

    $$
    \diff[n]{y}{t} = f(t, y', y'', \ldots, y^{(n-1)})
    $$(eq:ode:form:normal)

```{index} Ordinary Differential Equation; Interval
```
```{prf:remark} Interval of definition $I$
For a problem governed/represented by an ODE, we need to give the actual ODE in form {eq}`eq:ode:form:general` or {eq}`eq:ode:form:normal`, besides we also need to give the interval $I$ that defines the problem. We call this interval $I$:

- the **{index}`interval of definition`**, 
- the **interval of existence**, 
- the **interval of validity**,
- or the **domain of the solution**.

The interval $I$ can be

- an open interval $(a, b)$,
- a closed interval $[a, b]$,
- an infinite interval $(a, \infty)$,

and so on.
```

```{index} pair: Ordinary Differential Equation; Explicit Solution
```

```{prf:definition} Explicit Solution of an ODE
A function $\phi(t)$ that when substituted for $y$ in equation {eq}`eq:ode:form:general` or {eq}`eq:ode:form:normal`
satisfies the equation for all $t$ in the interval $I$ is called an **{index}`explicit solution`** to the equation on $I$.
```

```{prf:example}
1. $\phi(t)=t^2 - t^{-1}$ is an explicit solution to the equation

    $$
    \diff[2]{y}{t} - \frac{2y}{t^2}=0
    $$

2. $\phi(t)=c_1 e^{-t} + c_2 e^{2t}$ is an explicit solution to the equation

    $$
    y'' - y' - 2y=0
    $$
```

```{index} pair: Ordinary Differential Equation; Implicit Solution
```

```{prf:definition} Implicit Solution of an ODE
A relation $G(t, y) = 0$ is said to be an **{index}`implicit solution`** of an ordinary differential equation {eq}`eq:ode:form:general` on an interval $I$, provided that there exists at least one function $\phi$ that satisfies the relation as well as the differential equation on $I$.
```

```{prf:example}
1. The relation $t^2+y^2=25$ is an implicit solution to the equation

    $$
        \diff{y}{t} = -\frac{t}{y}
    $$

    on the open interval $(-5, 5)$.

2.  The relation $y^2 - t^3 + 8=0$ implicitly defines a solution to the nonlinear equation

    $$
    \diff{y}{t}=\frac{3t^2}{2y}
    $$
```

```{index} triple: Ordinary Differential Equation; Initial Value Problem; IVP
```

```{prf:definition} Initial Value Problem
For an $n${sup}`th` order differential equation

$$
F(t, y, y', y'', \ldots, y^{(n)}) = 0,
$$(eq:IVP)

if we specify the value of $y$, $y'$, ..., $y^{(n-1)}$ at the lower bound $t_0$ of its interval of definition $I$ as

$$
y(t_0) = & ~y_0, \\
y'(t_0) = & ~y_1, \\
  \vdots ~ & ~ \\
y^{(n-1)}(t_0) = & ~y_{n-1}
$$ (eq:IVP:initial:condition)

where $y_0$, $y_1$, ... , $y_{n-1}$ are given constants, then we call this problem an initial value problem (or Cauchy problem).  The values specified in {eq}`eq:IVP:initial:condition` are called initial conditions. 
```

```{index} Ordinary Differential Equation; Lipschitz Continuity
```

```{prf:definition} Lipschitz Continuity
For a real-value function $f: I \subseteq \R \rightarrow \R$, if there is a real non-negative constant $K$ such that

$$
|f(a) - f(b)| \leq K |a-b|, \qquad \forall a, b \in I, 
$$(eq:IVP:Lipschitz)

then $f$ is Lipschitz continuous, and the inequality {eq}`eq:IVP:Lipschitz` is called the Lipschitz continuity condition. We can also say $f$ satisfies the Lipschitz condition, or simply call $f$ a Lipschitz function.
```


```{index} Ordinary Differential Equation; Existence and Uniqueness
```

```{prf:theorem} Existence and Uniqueness
:label: theo-existence
Consider the initial value problem

$$
\diff{y}{t} = f(t, y), \quad y(t_0) = y_0.
$$

If $f$ is continuous in $t$ and Lipschitz continuous in $y$ in some rectangle

$$
R=\left\{ (t, y): a<t<b, ~ c<y<d \right\}
$$

that contains the point $(t_0, y_0)$, then the initial value problem has a unique solution $y=\phi(t)$ in some interval $[t_0 - \delta,  t_0 + \delta]$, where $\delta$ is a positive number.
```

```{prf:remark}
The conditions stated in {prf:ref}`theo-existence` are sufficient but not necessary. When these conditions are not satisfied, we may see different scenarios for an IVP:
1. it has no solution,
2. it has a solution and the solution is unique,
3. or it has multiple solutions.

In the rest of our discussions, we will assume {prf:ref}`theo-existence` holds.
```

## Systems of Differential Equations

A system of ordinary differential equations includes two or more
equations involving the derivatives of two or more unknown functions of a single
independent variable. For example, if $x$ and $y$ denote dependent variables and $t$
denotes the independent variable, then a system of two first-order differential
equations is given by

$$
\begin{aligned}
\diff{x}{t} = & f(t, x, y) \\
\diff{y}{t} = & g(t, x, y)
\end{aligned}
$$

A solution to a system such as the above one is a pair of differentiable functions $x=\phi_1(t)$, $y=\phi_2(t)$, defined on a common interval $I$, that satisfy each equation of the system
on this interval.

