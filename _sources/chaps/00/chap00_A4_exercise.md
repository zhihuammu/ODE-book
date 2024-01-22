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

8. $\displaystyle \diff{y}{x}=\frac{2-e^x}{3+2y}$
```


```{solution} ch0-ex-q2
1. $\displaystyle y\dy = x \dx$

    $$\d \left(\frac{1}{2}y^2\right) = \d \left(\frac{1}{2}x^2\right)$$

    $$y^2 = x^2 + c$$

2. $\displaystyle \diff{y}{x}=y \ln y$

    $$ \frac{\dy}{y \ln y} = \dx $$

    $$ \frac{\d \ln y}{\ln y} = \dx $$

    Let $u=\ln y$

    $$ \frac{\d u}{u}=\dx$$

    $$ \ln u = x+ c_1$$

    $$ u=e^{x+c_1}=ce^x$$

    $$ \ln y = c e^x$$

3. $\displaystyle y' = \frac{x^2}{y}$

    $$ \diff{y}{x}=\frac{x^2}{y} $$

    $$ y \dy = x^2 dx $$

    $$ \d \left(\frac{1}{2}y^2\right)=\d \left(\frac{1}{3}x^3\right) $$

    $$ \frac{1}{2}y^2 = \frac{1}{3}x^2 + c$$

4. $\displaystyle y'=\frac{x^2}{y(1+x^3)}$

    $$ y \dy =  \frac{x^2}{1+x^3} \dx $$

    $$\d \left(\frac{1}{2}y^2\right) = \d \left(\frac{1}{3} \ln (1+x^3)\right) $$

    $$ \frac{1}{2}y^2 = \frac{1}{3} \ln (1+x^3) + c $$
5. $\displaystyle xy'=\sqrt{1-y^2}$

    $$ \frac{\dy}{\sqrt{1-y^2}} = \frac{\dx}{x} $$

    $$ \d (\sin^{-1} y) = \d (\ln x)$$

    $$ \sin^{-1} y = \ln x + c$$

    $$ y=\sin (\ln x + c)$$

6. $\displaystyle \diff{y}{x}=\frac{x-e^{-x}}{y+e^{y}}$

    $$ (y+e^y) \dy = (x-e^{-x}) \dx $$

    $$ \d \left(\frac{1}{2}y^2 + e^y\right) = \d \left(\frac{1}{2}x^2 + e^{-x}\right)$$

    $$ \frac{1}{2}y^2 + e^y = \frac{1}{2}x^2 + e^{-x} + c $$

7. $\displaystyle \diff{y}{x}=\frac{x^2}{1+y^2}$

    $$ (1+y^2) \dy = x^2 \dx $$

    $$ \d \left(y+\frac{1}{3}y^3\right) = \d \left(\frac{1}{3}x^3\right)$$

    $$ y+\frac{1}{3}y^3 = \frac{1}{3}x^3 + c $$

8. $\displaystyle \diff{y}{x}=\frac{2-e^x}{3+2y}$

    $$(3+2y) \dy = (2-e^x) dx $$

    $$ \d (3y+y^2) = \d (2x-e^x) $$

    $$ 3y+y^2 = 2x-e^x +c$$

```

%IVP
```{exercise}
:label: ch0-ex-q3

Solve the following initial value problems defined by separable ODEs

1. $\displaystyle \diff{y}{x}=2xy$, $y(0)=1$

2. $y^2 \dx + (x+1) \dy=0 $, $y(0)=1$

3. $\displaystyle \diff{P}{t}=rP\left(1-\frac{P}{M}\right)$, $P(0)=P_0$, $r$ and $M$ are constants, and $0<P\ll M$.

```


```{solution} ch0-ex-q3
1. $\displaystyle \diff{y}{x}=2xy$, $y(0)=1$

    $$\frac{\dy}{y} = 2x \dx $$

    $$ \ln |y| = x^2 + c_1 $$

    Supposing $y>0$

    $$ y= c e^{x^2} $$

    $$ y(0) = c = 1 $$

    $$ y=e^{x^2}$$

2. $y^2 \dx + (x+1) \dy=0 $, $y(0)=1$

    $$ y^2 \dx = - (x+1) \dy $$

    $$ \frac{\dx}{x+1} = -y^{-2} \dy$$

    $$ \d \ln (x+1) = \d y^{-1}$$

    $$ y^{-1} = \ln (x+1) + c $$

    $$ y= \frac{1}{\ln (x+1) + c} $$

    $$ y(0) = \frac{1}{\ln 1 + c} = 1 $$

    $$ c=1 $$

    $$ y(x) = \frac{1}{\ln (x+1) + 1}$$

3. $\displaystyle \diff{P}{t}=rP\left(1-\frac{P}{M}\right)$, $P(0)=P_0$, $r$ and $M$ are constants, and $0<P\ll M$.

    $$ \frac{1}{P \left(1-\frac{P}{M}\right)} \d P=r \d t $$

    $$ \left( \frac{1}{P}+\frac{1}{M-P}\right) \d P = r \d t $$

    $$ \d \ln P  - \d \ln (M-P) = \d (rt) $$

    $$ \d \ln \frac{P}{M-P} = \d (rt)$$

    $$ \ln \frac{P}{M-P} = rt + c_1 $$

    $$ \frac{P}{M-P} = e^{rt+c_1} = c e^{rt} $$

    $$ P = (M-P) c e^{rt}$$

    $$ P (1+c e^{rt}) = c e^{rt} M $$

    $$ P = \frac{c e^{rt}}{1+c e^{rt}} M  $$

    $$ P(0)=\frac{c}{1+c}M = P_0$$

    $$ c = \frac{P_0}{M-P_0}$$

    $$ 
    \begin{aligned}
        P& =\frac{\frac{P_0}{M-P_0} e^{rt}}{1+\frac{P_0}{M-P_0} e^{rt}}M \\
        & = \frac{P_0 e^{rt}}{M-P_0 + P_0 e^{rt}}M \\
        & = \frac{M P_0 e^{rt}}{M + P_0 (e^{rt}-1)}
    \end{aligned}    
    $$

```

%high-order ODEs
```{exercise}
:label: ch0-ex-q4

Solve the following initial value problems
```

```{solution} ch0-ex-q4

```
