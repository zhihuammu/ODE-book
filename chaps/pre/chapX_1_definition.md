```{math}
\newcommand{\diff}[3][]{\frac{\mathrm{d}^{#1} #2}{\mathrm{d} #3^{#1}}}
\newcommand{\pdiff}[3][]{\frac{\partial^{#1} #2}{\partial #3^{#1}}}
```
(chap:pre:1)=
# Definitions, Classification and Terminology

```{prf:definition} Differential Equations
An equation containing the derivatives of one or more unknown functions (or
dependent variables), with respect to one or more independent variables, is said to be a **{index}`differential equation`** (DE).
```

We can classify differential equations by **type**, **order**, **linearity** and **homogeneity**.

1. Classification by Type
    - **Ordinary Differential Equation (ODE)**

        If a differential equation contains only ordinary derivatives of one or more unknown functions with respect to a single independent variable, it is said to be an {index}`ordinary differential equation`` (ODE).

        ```{prf:example}    
        The following equations are ordinary differential equations:

        $$
        \diff{y}{x} + 5y = e^x,  \quad
        \diff[2]{y}{x} - \diff{y}{x} + 6y = 0,  \quad 
        \diff{x}{t} + \diff{y}{t} = 2x + y
        $$        

        - In the first two equations, $y=y(x)$. 
        - In the third equation, $x=x(t)$ and $y=y(t)$. 
        
        The functions here are functions of a single variable.
        ```

    - **Partial Differential Equation (PDE)**

        An equation involving partial derivatives of one or more unknown functions of two or more independent variables is called a {index}`partial differential equation` (PDE).

        ```{prf:example}
        The following equations are partial differential equations:

        $$
        \pdiff[2]{u}{x} + \pdiff[2]{u}{y} = 0, \quad
        \pdiff[2]{u}{x} = \pdiff[2]{u}{t} - 2\pdiff{u}{t}, \quad
        \pdiff{u}{y}=-\pdiff{v}{x}
        $$

        - In the first equation, $u=u(x, y)$.
        - In the second equation, $u=u(x, t)$.
        - In the second equation, $u=u(y,\ldots)$, $v=v(x,\ldots)$

        The functions here are multi-variable functions.
        ```
```{prf:remark} Notations of derivatives
Ordinary derivatives can be written by using
- Leibniz notation

    $\displaystyle \diff{y}{x}$, $\displaystyle \diff[2]{y}{x}$, $\displaystyle \diff[3]{y}{x}$, ...

- Prime notation
    - $y'$, $y''$, $y'''$
    - The fourth derivative $y^{(4)}$
    - The $k$-th derivative $y^{(k)}$
- Newton's dot notation
    - $\dot y$, $\ddot y$
```
2. Classification by Order

    The order of a differential equation is the order of the highest derivative in the equation.

    ```{prf:example}
    The following equation

    $$
    \diff[2]{y}{x} + 5 \left(\diff{y}{x}\right)^3 - 4y = e^x
    $$

    is a second-order ordinary differential equation.
    ```

    ```{prf:remark} Order and Degree of differential equations
    - **Order**: The order of a differential equation is defined to be that of the highest order derivative it contains.

    - **Degree**: The degree of a differential equation is defined as the power to which the highest order derivative is raised.

    The equation

    $$
        \left(y'''\right)^2 + \left(y''\right)^4+ y =x
    $$

    is a second-degree, third-order differential equation.
    ```


```{prf:remark} Forms of Differential Equations
For an $n$-th order ordinary differential equation, we can express it in

- **General Form**

    $$
    F(x, y, y', y'', \ldots, y^{(n)}) = 0
    $$

- **Normal form**

    $$
    \diff[n]{y}{x} = f(x, y', y'', \ldots, y^{(n-1)})
    $$

    For example:
    - A *first-order* ordinary differential equation: $\displaystyle \diff{y}{x}= f(x, y)$

    - A *second-order* ordinary differential equation: $\displaystyle \diff[2]{y}{x}= f(x, y, y')$
```
3. Classification by Linearity
    - **Linear**

        An $n$-th order ordinary equation is linear if it can be expressed as

         $$
        a_n(x) y^{(n)} + a_{n-1}(x) y^{(n-1)} + \cdots + a_1(x) y' + a_0(x) y = g(x),
        \quad a_n(x)\neq 0
        $$(eq:ode:linear)

        with two properties

        - The dependant variable $y$ and all its derivatives $y'$, $y''$, ... $y^{(n)}$ are of the first degree.
        - The coefficients $a_0(x) $, $a_1(x) $, ..., $a_n(x) $ depend at most on the independent variable $x$.

    - **Nonlinear**

        A non-linear ordinary differential equation is one that is not linear. If an ordinary differential equation involves any of the followings 

        - $y^2$, $(y')^2$
        - $\sin y$, $\sin y'$, $\cos y$, $\cos y'$
        - $e^y$, $e^{y'}$

        it is then non-linear.

4. Classification by Homogeneity
    - **Homogeneous**

        Equation {eq}`eq:ode:linear` is *homogeneous* if $g(x) = 0$.

    - **Nonhomogeneous**

        Equation {eq}`eq:ode:linear` is *nonhomogeneous* if $g(x)\neq 0$.