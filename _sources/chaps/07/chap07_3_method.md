# Methods for Stiff Equations

The above examples illustrate the problem of restriction on the value of
$\,h\lambda\,$ for the stability of stiff equations. The problem, then,
is to find methods that do not restrict the step size for stability
reasons.

There are special methods for which the region of absolute stability
consists of all complex values of $\,h\lambda\,$ with
$\,Real(h\lambda)<0\,$. These methods are called *A-stable*, and with
them there is no restriction on $h$ in order to have stability of the
type we have been considering.

The most widely used class of linear multistep methods for stiff
problems are called *{index}`backward differentiation formulae`* (BDF). These
methods are shown to be stiffly stable. The *k*-step backward difference
formulae have the general form 

$$
\begin{aligned}
    && \sum_{i=0}^{k} \alpha_iy_{j+i} ~&=~ h\beta_k f_{j+k},
    & \text{with}\ \alpha_k &= 1~. &&    
\end{aligned}
$$(eq:ch06:3.1)

 The coefficients of $k^\text{th}$ order $k$-step methods
for $k=1,2,\dots,6$ are given in the table below.


| $k$ | $\beta_k$ | $\alpha_0$ | $\alpha_1$ | $\alpha_2$ | $\alpha_3$ | $\alpha_4$ | $\alpha_5$ | $\alpha_6$|
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| $1$ | $1$ | $-1$ | $1$ |
| $2$ | $\tfrac{2}{3}$ | $\tfrac{1}{3}$ | $-\tfrac{4}{3}$ | $1$ |
| $3$ | $\tfrac{6}{11}$ | $-\tfrac{2}{11}$ | $\tfrac{9}{11}$ | $- \tfrac{18}{11}$ | $1$ |
| $4$ | $\tfrac{12}{25}$ | $\tfrac{3}{25}$ | $-\tfrac{16}{25}$ | $\tfrac{36}{25}$ | $-\tfrac{48}{25}$ | $1$ |
| $5$ | $\tfrac{60}{137}$ | $-\tfrac{12}{137}$ | $\tfrac{75}{137}$ | $-\tfrac{200}{137}$ | $\tfrac{300}{137}$ | $-\tfrac{300}{137}$ | $1$ |
| $6$ | $\tfrac{60}{147}$ | $\tfrac{10}{147}$ | $-\tfrac{72}{147}$ | $\tfrac{225}{147}$ | $-\tfrac{400}{147}$ | $\tfrac{450}{147}$ | $-\tfrac{360}{147}$ | $1$ |


For example $k = 1$ gives the backward Euler method (or first order
Adams-Moulton formula) 

$$

\begin{aligned}
    y_{j+1} ~&=~ y_j + hf_{j+1}
\end{aligned}

$$

 and $k = 2$ gives the formula, 

$$

\begin{aligned}
    y_{j+2} ~=~ \frac{1}{3}\,(4y_{j+1} - y_j) + \frac{2h}{3}f_{j+2}
\end{aligned}

$$

The region of absolute stability of these methods for $k = 1,2,\dots,6$,
using the Boundary Locus method are shown in the following diagram.

```{figure} /images/07/fig-chap07-c6m31f2.svg
---
width: 500px
name: fig-chap07-c6m31f2
---
Stability regions of BDF methods.
```

:::{note}
Note that all these methods have unbounded region of absolute stability
which makes them particularly suitable for the solution of stiff
problems. The detail consideration of the stability theories of these
methods is outside the scope of this course and complete treatment of
this topic can be found in Gear C.W. (1969), Lambert J.D. (1973) and
Hairer E. and Wanner G. (1996).
:::