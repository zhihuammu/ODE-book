# The Root Locus Method for Finding the Interval of Absolute Stability

This method consists of repeatedly solving the characteristic polynomial
for various values of $h\lambda$ in the neighbourhood of the origin. Note
that for simple linear and quadratic cases the resulting characteristic
polynomial can be solved and a table or plots of values of
$\,h\lambda\,$ against roots $|z_1|$ and $|z_2|$ allows us to
determine the interval of absolute stability. Any numerical method such
as Newton Raphson iteration, or mathematics software packages like
Matlab may be used for the approximate solution of the characteristic
polynomial.

:::{prf:example}
Find the interval of absolute stability of the two-step explicit AB
method, 

$$
\begin{aligned}
        y_{j+1} ~=~ y_j + \frac{h}{2}(3f_j - f_{j-1})    
\end{aligned}
$$

 when applied to $y' = \lambda y$.

:::{admonition} Solution
:class: solution


The characteristic equation is 

$$
\begin{aligned}
        \L (z,h\lambda) ~=~ z^2 - \left(1 + \frac{3}{2}h\lambda\right)z + \frac{1}{2}h\lambda ~=~ 0    
\end{aligned}
$$

and its roots are


$$
\begin{aligned}
        z_1 ~&=~ \frac{1}{2} \left(
            1 + \frac{3}{2}h\lambda + \sqrt{1 + h\lambda + \frac{9}{4}\left(h\lambda\right)^2}
        \right)
        \\[1ex]
        z_2 ~&=~ \frac{1}{2} \left(
            1 + \frac{3}{2}h\lambda - \sqrt{1 + h\lambda + \frac{9}{4}\left(h\lambda\right)^2}
        \right)    
\end{aligned}
$$

 The following table gives the calculated values of
$|z_1|$ and $|z_2|$ for various $h\lambda$.


| $h\lambda$ | -1.1  | -1.0  | -0.67  | -0.50  | 0.0  | 0.50  | 1.0 |
| -- | -- | -- | -- | -- | -- | -- | -- |
|\|$z_1$\|  | 0.48  | 0.50  | 0.58  | 0.39  | 1.00  | 0.16  | 0.22 |
|\|$z_2$\|  | 1.13  | 1.00  | 0.58  | 0.64  | 0.00  | 1.59  | 2.28 |


By definition the interval of absolute stability is the set of $h\lambda$
for which 

$$
\begin{aligned}
        \left| z_1(h\lambda) \right| < 1,
        \qquad \left| z_2(h\lambda) \right| < 1\,.    
\end{aligned}
$$

 For $\lambda$ real, the acceptable values of
$\,h\lambda\,$ are $-1 \leq h\lambda \leq 0\,$; i.e. the method is stable
inside the interval $\,[-1,0]\,$.

This result implies that if the 2-step *AB* method is used to solve the
differential equation $\,y' = -100y$, with $\lambda = -100$, and
$\,h\lambda > -1$, then $\,h < \dfrac{1}{100}$ for the method to be
absolutely stable.
:::

:::{prf:example}
Find the interval of absolute stability for the implicit, two-step,
Adams method 

$$
\begin{aligned}
        y_{j+1} ~=~ y_j + \frac{h}{12}(5f_{j+1} + 8f_j - f_{j-1})    
\end{aligned}
$$

 when applied to $\,y' = \lambda y$.

:::{admonition} Solution
:class: solution
The characteristic equation is 

$$
\begin{aligned}
        \L (z,h\lambda) ~=~ \left(1 - \frac{5}{12}h\lambda\right)z^2
        - \left(1 + \frac{8}{12}h\lambda\right)z + \frac{1}{12}h\lambda ~=~ 0    
\end{aligned}
$$

 Let $a=\dfrac{h\lambda}{12} $ and its roots are


$$
\begin{aligned}
        z_{1,2} = \frac{1 + 8a
        \pm\sqrt{\left(1 + 8a\right)^2 - 4a\left(1 - 5a\right)}}{2(1 - 5a)}    
\end{aligned}
$$

 The following table gives the calculated values of
$|z_1|$ and $|z_2|$ for various $h\lambda$. Note that the interval
$-6 \leq h\lambda \leq 0$ is an interval of absolute stability for the
method which becomes partially unstable when $h > \dfrac{6}{|\lambda|}$.


| $h\lambda$ | -7.0  | -6.0  | -5.0  | -4.0  | -3.0  | -2.0  | -1.5  | -1.0  | -0.5  | 0.0  | 0.5  | 1.0 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
|\|$z_1$\|  | 0.14  | 0.14  | 0.15  | 0.16  | 0.18  | 0.22  | 0.28  | 0.15  | 0.06  | 1.0  | 0.03  | 0.05 |
|\|$z_2$\|  | 1.07  | 1.00  | 0.91  | 0.78  | 0.62  | 0.41  | 0.28  | 0.39  | 0.61  | 0.0  | 1.65  | 2.81 |

:::

:::{note}
Note that the characteristic polynomials (particularly those with higher
degree) have very often complex roots and therefore it is appropriate to
use a mathematics package (e.g. Matlab) for the computation of the
roots. To illustrate this, a Matlab program is attached that shows a
simple way of finding the interval of absolute stability using a
software package.
:::

The interval of absolute stability for various order Adams methods is
shown in the following Table.


|Order   | Admas-Bashforth | Adams-Moulton |
|--| -- | -- |
|1  | $[ -2.00, 0 ]$  | $[-\infty, 0 ]\cup [2.00, \infty]$ |
|2  | $[ -1.00, 0 ]$  | $[ -\infty, 0 ]$ |
|3  | $[ -0.55, 0 ]$  | $[ -6.00, 0 ]$ |
|4  | $[ -0.30, 0 ]$  | $[ -3.00, 0 ]$ |
|5  | $[ -0.16, 0 ]$  | $[ -1.84, 0 ]$ |
|6  | $[ -0.09, 0 ]$  | $[ -1.19, 0 ]$ |

:::{note}
For all above methods as order increases, the interval of
absolute stability decreases.
:::