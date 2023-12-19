# Characteristic Polynomials and Root Condition

It is possible to derive any number of multistep methods of various
order, but the most important factor related to each method is its
stability property. For simplicity, we study the stability by
considering a general linear multistep method,


$$
\sum_{i=0}^{k}\alpha_i y_{j+i}~=~ h\sum_{i=0}^{k}\beta_i f_{j+i}, \qquad
     \text{with}~ \alpha_k =1 
$$(eq:ch04:1.1) 

 and a test differential equation,


$$
\frac{dy}{dx}= f(x,y) = \lambda y, \quad
     y(x_0) \,=\,y_0
$$(eq:ch04:1.2)

where $\lambda$ is a constant. Note that the
general solution is 

$$
\begin{aligned}
    && y \,&=\, A\,e^{\lambda x}\,,
    & y(x_0) &= y_0 ~~\Rightarrow~~ A = y_0\,e^{-\lambda x_0} &&
\end{aligned}
$$

 thus, the exact solution is:
$\displaystyle{y_j ~=~ y_0\,e^{\lambda(x_j-x_0)}.}$

Consider a $k$-step multistep formula of the form 

$$
\begin{aligned}
    y_{j+1} ~=~ y_{j-k+1} \,+\, h \left(
        \beta_0f_{j+1} + \beta_1f_j + \dots + \beta_kf_{j-k+1}
    \right)~.
\end{aligned}
$$(eq:ch04:1.3)

Substituting $\,f=\lambda\,y\,$, we have


$$
\begin{aligned}
    y_{j+1} ~=~ y_{j-k+1} \,+\, h \left(
        \beta_0\lambda\,y_{j+1} + \beta_1\lambda\,y_j
        + \dots + \beta_k\lambda\,y_{j-k+1}
    \right)
\end{aligned}
$$

or 

$$
\begin{aligned}
    (1-\beta_0 h\lambda)\,y_{j+1} ~=~ y_{j-k+1} \,+\, h\lambda \left(
        \beta_1y_{j}+\beta_2y_{j-1}+\,.\,.\,.\,+\beta_ky_{j-k+1}
    \right).
\end{aligned}
$$(eq:ch04:1.4)

This is a linear difference equation, in order to find
its solution, we need to use its characteristic equation given by


$$
\begin{aligned}
    (1-\beta_0 h\lambda)\,\xi^{j+1} - h \lambda \left(
\beta_1\xi^{j} + \beta_2\xi^{j-1} + \dots + \beta_k\xi^{j-k+1}  
\right) - \xi^{j-k+1} = 0 \,
%\label{eq:ch04:1.5}
\end{aligned}
$$

 dividing by $\,\xi^{j-k+1}\,$ gives: 

$$
\begin{aligned}
(1-\beta_0 h\lambda)\,\xi^{k}\,-\,h \lambda \left(
\beta_1\xi^{k-1} + \beta_2\xi^{k-2} + \dots + \beta_k
\right) \,-\, 1 ~=~ 0~.
\end{aligned}
$$(eq:ch04:1.5)

This is a polynomial equation of degree $k$ and has $k$
roots, $\,\xi_1, \xi_2, \dots, \xi_k\,$, which may be real or imaginary.
If these roots are distinct, the general solution of the difference
equation {eq}`eq:ch04:1.4` is 

$$
\begin{aligned}
y_j ~=~ A_1\, \xi_1^j + A_2\, \xi_2^j + \,\dots\, + A_k\,\xi_k^j
\end{aligned}
$$(eq:ch04:1.6)

 where $A_1$, $A_2$, ..., $A_k$ are constant. See [Chapter 1](chap01:complexNumber)
for more details on difference and
characteristic equations.

:::{prf:example}
Consider a $k = 2$-step multistep formula of the form 

$$
\begin{aligned}
        y_{j+1} ~=~ y_{j-1} + h(\beta_0f_{j+1} + \beta_1f_j + \beta_2f_{j-1})    
\end{aligned}
$$

 Substituting $\,f = \lambda\,y\,$, we have


$$
\begin{aligned}
        y_{j+1} ~=~ y_{j-1} + h(\beta_0\lambda\,y_{j+1}
        + \beta_1\lambda\,y_j + \beta_2\lambda\,y_{j-1})    
\end{aligned}
$$

 or 

$$
\begin{aligned}
        (1 - \beta_0h\lambda)y_{j+1} ~=~ y_{j-1} + h\lambda(\beta_1y_j + \beta_2y_{j-1})    
\end{aligned}
$$

The characteristic equation is given by:

$$
\begin{aligned}
        (1 - \beta_0h\lambda)\xi^{j+1} ~=~ \xi^{j-1} + h\lambda \left(
            \beta_1\xi^j + \beta_2\xi^{j-1}
        \right)    
\end{aligned}
$$

 dividing by $\,\xi^{j-1}$ gives: 

$$
\begin{aligned}
        (1 - \beta_0h\lambda)\xi^2 - h\lambda \left(
            \beta_1\xi^1 + \beta_2\xi^0
        \right) - 1 ~=~ 0    
\end{aligned}
$$

 This quadratic polynomial can be written as:

$$
\begin{aligned}
        (1 - \beta_0h\lambda)\xi^2 - h\lambda\beta_1\xi - (1 + \beta_2h\lambda)
        ~=~ 0    
\end{aligned}
$$

 or 

$$
\begin{aligned}
        \pi(\xi,h\lambda) ~=~ (1 - h\lambda\beta_0)\,\xi^2
        - h\lambda\beta_1\,\xi - (1 + h\lambda\beta_2) ~=~ 0    
\end{aligned}
$$

 where coefficients $\,(1 - h\lambda\beta_0)\,$,
$\,-h\lambda\beta_1\,$, and $\,-(1 + h\lambda\beta_2)\,$ are all
constants.
:::

In general we may say that associated with any difference equation of
the form {eq}`eq:ch04:1.1` is a polynomial $\,\pi(\xi,h\lambda)\,$ of the
form {eq}`eq:ch04:1.5`, called the *characteristic polynomial* of the
difference method.

The characteristic polynomial, $\,\pi(\xi,h\lambda)\,$, associated with
any linear multistep method {eq}`eq:ch04:1.1` can be expressed in terms of two polynomials
defined as the first and second characteristic polynomials, $\rho(\xi)$,
and $\sigma(\xi)$ respectively, thus 

$$
\begin{aligned}
    \pi(\xi,h\lambda) ~=~ \rho(\xi) - h\lambda\,\sigma(\xi)
    \label{eq:ch04:1.7}
\end{aligned}
$$

 where 

$$
\begin{aligned}
    &&  \rho(\xi) ~&=~ \sum_{i=0}^k\, \alpha_i\,\xi^i~,
    & \sigma(\xi) ~&=~ \sum_{i=0}^k\, \beta_i\,\xi^i~.&&
\end{aligned}
$$(eq:ch04:1.8)



:::{prf:definition} Root Condition
Let $\,\xi_1,\xi_2,\dots,\xi_k\,$ denote the roots of the first
characteristic polynomial equation $\,\rho(\xi)\,$ associated with a
linear multistep method. If $\,|\xi_i|\leq1\,$, for each
$\,i=1,2,...,k\,$, and all roots with absolute value $1$ are simple
roots (i.e. not repeated), then the difference method is said to satisfy
the *root condition*.
:::

<!-- ```{figure} /images/fig-chap05-C4M39F1.svg
---
width: 400px
name: figure-chap05-rootCondition
---
Unit cicle in the complex plane $\mathbb{C}$.
``` -->

```{tikz}
:xscale: 48
:libs: arrows.meta

\draw (0mm,0mm) circle (20mm);
\draw[-Stealth] (-24mm,0mm) -- (24mm,0mm);
\draw[-Stealth] (0mm,-24mm) -- (0mm,24mm);
\coordinate (Z) at (35:20mm);

\node[anchor = north west, inner sep = 0pt] at (2mm,24mm)
{\scriptsize Im$(\xi)$};
\node[anchor = west] at (24mm,0mm) {\scriptsize Re$(\xi)$};

\draw[domain=0:35, smooth] plot ({8mm*cos(\x)},{8mm*sin(\x)});
\node at (17.5:6mm) {\scriptsize$\phi$};

\draw
(0mm,0mm)
-- node[anchor = north, inner sep = 2pt] {\scriptsize\hspace*{2ex}cos$(\phi)$}
({20mm*cos(35)},0mm)
--
(Z)
-- node[anchor = south east, inner sep = 1pt] {\scriptsize$z$}
(0mm,0mm);

\node[anchor = south west, inner sep = 1pt] (S) at (20mm,8mm) {\scriptsize sin$(\phi)$};
\draw[-Stealth] ({20mm*cos(35)},4mm) -- (S);
```

:::{prf:definition} Stability
A linear multistep method of order $\,\geq1\,$ is called *stable* if the
roots of its first characteristic polynomial $\,\rho(\xi)\,$ satisfies
the root condition, i.e. the roots of $\,\rho(\xi)\,$ lie inside or on
the unit circle, and the roots on the unit circle are distinct (or
simple) - this is called the root condition.
:::

:::{prf:definition} Strong Stability
A method is *strongly stable* if the roots of $\rho(\xi) = 0$ are inside
the unit circle except for only one root, call *principal root*, with
the magnitude of one(i.e. $|\xi| = 1$).
:::

:::{prf:definition} Weak Stability
A method is *weakly stable* if it is stable (i.e. satisfies the root
condition) but has more than one root on the unit circle.
:::

:::{prf:example}
Find the roots associated with the following characteristic polynomials:

1.  $\xi^3 + \xi ~=~ 0$\
    $\therefore\quad \xi(\xi^2 + 1) ~=~ 0$\
    $\therefore\quad \xi_1 ~=~ 0,\, |\xi_2| ~=~ |\xi_3| ~=~ 1$\
    (using $\,z = a + ib\,$ with $\,a = 0\,$, $\,b = -1\,$ and
    $\,|z| = \sqrt{a^2 + b^2}\,$).

    $\xi_1$, $\xi_2$, and $\xi_3$ are shown on the unit circle. Because
    there are more than one root on the unit circle, the method is
    weakly stable.

    <!-- ```{image}  /images/fig-chap05-C4M39F2.svg    
    :width: 300px
    :align: center
    ``` -->

    ```{tikz}
    :libs: arrows.meta
    :xscale: 60

    \draw[-Stealth] (-25mm,0mm) -- (25mm,0mm);
    \draw[-Stealth] (0mm,-25mm) -- (0mm,25mm);
    \node[inner sep = 0pt, anchor = west] at (27mm,0mm) {Re$(\xi)$};
    \node[inner sep = 0pt, anchor = west] at (2mm,25mm) {Im$(\xi)$};
    \draw (0mm,0mm) circle (20mm);

    \coordinate (xi1) at (0:0mm);
    \fill (xi1) circle (1mm);
    \node[anchor = south west] at (xi1) {$\xi_1 = 0$};

    \coordinate (xi2) at (90:20mm);
    \fill (xi2) circle (1mm);
    \node (l2) at (20mm,20mm) {$\xi_2 = i$};
    \draw[-Stealth] (xi2) -- (l2);

    \coordinate (xi3) at (270:20mm);
    \fill (xi3) circle (1mm);
    \node[anchor = north west] at (xi3) {$\xi_3 = -i$};
    ```    

2.  $\xi^4 + \xi ~=~ 0$\
    $\therefore\quad \xi(\xi^3 + 1) ~=~ 0$\
    $\therefore\quad \xi_1 ~=~ 0,\ \xi{^3} + 1 ~=~ 0 \quad \Rightarrow$\
    $\xi_2 = -1$,  $\xi_3 = \dfrac{1}{2} + i\dfrac{\sqrt{3}}{2}$, 
    $\xi_4 = \dfrac{1}{2} - i\dfrac{\sqrt{3}}{2}$,

    Because there are more than one root on the unit circle, the method
    is weakly stable.

    <!-- ```{image}  /images/fig-chap05-C4M39F3.svg    
    :width: 300px
    :align: center
    ``` -->

    ```{tikz}
    :libs: arrows.meta
    :xscale: 60

    \draw[-Stealth] (-25mm,0mm) -- (25mm,0mm);
    \draw[-Stealth] (0mm,-25mm) -- (0mm,25mm);
    \node[inner sep = 0pt, anchor = west] at (27mm,0mm) {Re$(\xi)$};
    \node[inner sep = 0pt, anchor = west] at (2mm,25mm) {Im$(\xi)$};
    \draw (0mm,0mm) circle (20mm);

    \coordinate (xi1) at (0:0mm);
    \fill (xi1) circle (1mm);
    \node[anchor = south west] at (xi1) {$\xi_1$};

    \foreach\x/\a/\d in {2/180/south,3/60/west,4/300/west}
    {
        \fill (\a:20mm) circle (1mm);
        \node[anchor = \d, inner sep = 1mm] at (\a:23mm) {$\xi_\x$};
    }
    ```   
:::
