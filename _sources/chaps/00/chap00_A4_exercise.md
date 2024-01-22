(chap:differentialEquation:exercises)=
# Chapter 1 Exercises

%separable first-order ode
```{exercise}
:label: ch0-ex-q1
Determine the type, order, degree, linearity and homogeneity of the following differential equations:

| equation | order | degree | linearity  | homogeneity  | type |
| -- | -- | -- | --  | --  | -- |
| $\displaystyle \diff{y}{x}=4x^2 - y$                                  | _ | _ | _  | _ | _ |
| $\displaystyle \diff[2]{y}{x} - \left(\diff{y}{x}\right)^2 + 12xy=0$  | _ | _ | _  | _ | _ |
| $\displaystyle \left(\diff{y}{x}\right)^2 + x \diff{y}{x} - 3y^2=0$   | _ | _ | _  | _ | _ |
| $\displaystyle x\diff[2]{y}{x}-5\diff{y}{x}+3xy=\sin x$               | _ | _ | _  | _ | _ |
| $\displaystyle \pdiff[2]{u}{x}+\pdiff[2]{u}{y}=0$                     | _ | _ | _  | _ | _ |
| $\displaystyle \pdiff{u}{t}+\pdiff{u}{x}=0$                           | _ | _ | _  | _ | _ |
| $\displaystyle \pdiff{u}{t}+u\pdiff{u}{x}=0$                          | _ | _ | _  | _ | _ |
| $\displaystyle \pdiff{u}{t}=\pdiff[2]{u}{x}$                          | _ | _ | _  | _ | _ |
```                                                                                    
%second-order homogeneous ode
```{solution} ch0-ex-q1

| equation | order | degree | linearity  | homogeneity  | type |
| -- | -- | -- | --  | --  | -- |
| $\displaystyle \diff{y}{x}=4x^2 - y$                                  | first  | first  | linear     | non-homogeneous  | ODE |
| $\displaystyle \diff[2]{y}{x} - \left(\diff{y}{x}\right)^2 + 12xy=0$  | second | first  | nonlinear  | homogeneous      | ODE |
| $\displaystyle \left(\diff{y}{x}\right)^2 + x \diff{y}{x} - 3y^2=0$   | first  | second | nonlinear  | homogeneous      | ODE |
| $\displaystyle x\diff[2]{y}{x}-5\diff{y}{x}+3xy=\sin x$               | second | first  | linear     | non-homogeneous  | ODE |
| $\displaystyle \pdiff[2]{u}{x}+\pdiff[2]{u}{y}=0$                     | second | first  | linear     | homogeneous      | PDE |
| $\displaystyle \pdiff{u}{t}+\pdiff{u}{x}=0$                           | first  | first  | linear     | homogeneous      | PDE|
| $\displaystyle \pdiff{u}{t}+u\pdiff{u}{x}=0$                          | first  | first  | nonlinear  | homogeneous      | PDE|
| $\displaystyle \pdiff{u}{t}=\pdiff[2]{u}{x}$                          | second | first  | linear     | homogeneous      | PDE|
```


%
```{exercise}
:label: ch0-ex-q2

Find the general solution to the following separable ODEs

1. $\displaystyle y\dy = x \dx$

2. $\displaystyle \diff{y}{x}=y \ln y$

3. $\displaystyle y' = \frac{x^2}{y}$

4. $\displaystyle y'=\frac{x^2}{y(1+x^3)}$

5. $\displaystyle xy'=\sqrt{1-y^2}$

6. $\displaystyle \diff{y}{x}=\frac{x-e^{-x}}{y+e^{y}}$

7. $\displaystyle \diff{y}{x}=\frac{x^2}{1+y^2}$
```


```{solution} ch0-ex-q2

```

%IVP
```{exercise}
:label: ch0-ex-q3

Solve the following initial value problems defined by seperable ODEs

1. $\displaystyle \diff{P}{t}=rP\left(1-\frac{P}{M}\right)$, $P(0)=P_0$, $r$ and $M$ are constants, and $0<P\ll M$.

1. $\displaystyle \diff{y}{x}=2xy$, $y(0)=1$

1. $y^2 \dx + (x+1) \dy=0 $, $y(0)=1$

1. $\displaystyle y'=\frac{2-e^x}{3+2y}$
```


```{solution} ch0-ex-q3

```

%high-order ODEs
```{exercise}
:label: ch0-ex-q4

Solve the following initial value problems
```

```{solution} ch0-ex-q4

```
