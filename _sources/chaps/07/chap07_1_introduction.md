# Introduction and background

Stiff differential equations are equations which are ill-conditioned in
a computational sense. There are many definitions of the concept of
stiff differential equations. The most important common feature of these
definitions is that when such equations are being solved with standard
numerical methods, the step size h is forced to be excessively small in
order to maintain stability. This characteristic can be seen with
differential equations whose solutions contain terms of the form
$e^{\lambda x}$ where $\,\lambda\,$ is a negative number (or complex
with a negative real part). The problem of stiffness is particularly
enhanced when the solution consists of a transient part that decay
rapidly to zero, together with another part which varies much less
rapidly. Such a situations occur in a number of applications for example
in chemical kinetics and in electrical circuits.

:::{prf:example}
Consider the differential equation 

$$
\begin{aligned}
        y' ~=~ \lambda y + g(x)    
\end{aligned}
$$

 where $\lambda \leq 0$, and $g(x)$ is a smooth, slowly
varying function. The actual solution of the equation is


$$
\begin{aligned}
        y ~=~ Ae^{\lambda x} + f(x)    
\end{aligned}
$$

 Here $\,\lambda x\,$ will soon be sufficiently negative
that the first component will decay to insignificant level compared to
the second. We generally can say, stiffness occurs when some components
of the solution decay much faster than others.
:::

::::{prf:example}
Consider the initial value problem

$$
\begin{aligned}
            y' ~&=~ -40y + 40x + 1 & y(0) &= 4        
\end{aligned}
$$

The solution of this initial value problem is

$$
\begin{aligned}
        y ~=~ 4e^{-40x} + x.        
\end{aligned}
$$

:::{admonition} Analytical solution process
:class: solution, dropdown
Rewriting the equation as

$$
(\D+40)y=40x+1,
$$

so its auxiliary (characteristic) equation is

$$
z+40=0,
$$

and we get the root $z=-40$.

Therefore the complementary (homogeneous) solution to the problem is

$$
y_h = c e^{-40x}.
$$

Now let's try to find a particular solution to the problem

$$
(\D+40) y_p = 40x+1. 
$$

Let  $y_p = Ax+B$, and we get

$$
\begin{aligned}
(\D+40) y_p & = (\D+40) Ax+ (\D+40) B \\
            & = A+40Ax + 40B \\
            & = 40Ax+(A+40B) \\
            & = 40x+1
\end{aligned}
$$

so

$$
A=1, \quad B=0.
$$

Thus the solution to the IVP is

$$
y= y_h + y_p= c e^{-40x} + x 
$$

Substituting the initial condition $y(0)=4$, we can get $c=4$, therefore the overall solution to this IVP is

$$
y=4e^{-40x}+x
$$

:::

The solution consists of two parts. A slowly varying
function, $x$, and a rapidly decreasing exponential term, $4e^{-40x}$.
The diagram shows the graph of the solution.

```{figure} /images/07/fig-chap07-c6m39f1.svg
---
width: 300px
name: figure-fig-chap07-c6m39f1
---
```

The solution using Euler method, $y_{j+1} = y_j + hf_j$, with various
step length is shown below:


| $x_j$ | $y_j$     | $y_j$      | $y_j$ | $y(x_j)$ |
|--|--|--|--|--|
|       | $h = 0.1$ | $h = 0.05$ | $h = 0.01$ |
| 0.0   | 4.0000 | 4.0000 | 4.0000 | 4.0000|
|0.5 | -971.5 | 4.5000 | 0.5000 | 0.5000|
|1.0 | 236197 | 5.0000 | 1.0000 | 1.0000|
|1.5 | -5.7$\times 10^7$ | 5.5000 | 1.5000 | 1.5000|
|2.0 | 1.4$\times 10^{10}$ | 6.0000 | 2.0000 | 2.0000|


The table shows nonsense results for $x \geq 0.5$ except when $h = 0.01$
is used. However, numerically this is not efficient, because a
comparatively small $h$ is begin used to approximate the function in the
region which it is almost like a straight line.

To understand these results, let us examine Euler's method when applied
to the problem, i.e. 

$$
\begin{aligned}
        && y_{j+1} ~&=~ y_j + h(-40y_j + 40jh + 1),
        & y_0 &= 4 &&    
\end{aligned}
$$

or 

$$
\begin{aligned}
        && y_{j+1} ~&=~ (1 - 40h)y_j + 40jh^2 + h,
        & y_0 &= 4 &&    
\end{aligned}
$$

the general solution of this difference equation is (see
Chapter 4), 

$$
\begin{aligned}
        y_j ~=~ y_0(1 {-} 40h)^j + jh    
\end{aligned}
$$

for a fixed $j$,
$\displaystyle\lim_{h \to 0} (1 - 40h)^j = 1$, but if $h$ is not very
small then $(1 - 40h)^j$ can be quite large for large $j$. In fact, if
$h = 0.1$, then $y_0(1 - 40h)^j = y_0(-3)^j$ oscillates with growing
magnitude as $j$ increases. However, only when $|1 - 40h| < 1$
$(i.e.\ 0 < h < \frac{1}{20})$, the numerical solution resembles the
real solution.
::::

Generally, stiff differential equations arise in physical conditions due
to the existence of greatly varying *{index}`time constants`*. Time constant is
the term used to refer to the rate of decay. To find the time constant
for a problem consider for example the equation $\,y' = \lambda y\,$
which has the solution $\,Ae^{\lambda x}\,$. Interpreting the
independent variable $\,x\,$ to be time, if $\,\lambda\,$ is negative
then $\,y\,$ decays by a factor of $\,e^{-1}\,$ in time $\tau$,


$$
\begin{aligned}
    \tau = -\frac{1}{\lambda}
\end{aligned}
$$

This is the time constant for this problem. Note that,
the more negative $\,\lambda\,$ the shorter (or the faster) is the time
constant. In a problem with several components, and thus several time
constants, those with the shortest time constants will control the
stability of the method. Further more, the larger the magnitude
difference between the time constants, the higher is the degree of
stiffness.