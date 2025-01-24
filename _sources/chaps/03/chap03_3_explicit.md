# Explicit  Multistep Methods

Although any type of the interpolating polynomials can be used for
deriving the multistep methods, some can lead to algebraically easier
derivation. Since the derivation is algebraically detailed we derive
only a simple three--step method by substituting the G--N forward
interpolation formula as the integrand in equation {eq}`eq:ch02:2.1`
and using the relation 

$$\begin{aligned}
    x = x_j + sh, \quad \frac{\dx}{\ds} = h, \quad \text{and when}\quad
    & x = x_{j+3},\quad s = 3\\
    & x = x_{j+2},\quad s = 2    
\end{aligned}$$ 

\[side work: we can write $x_{j+3} = x_j + 3h$, and
$x_j + 3h = x_j + sh$, $\therefore\,s = 3$\]

$$\begin{aligned}
    \therefore\quad y_{j+3} ~=~ y_{j+2} &+ \int_{x_{j+2}}^{x_{j+3}} \left(
    f_j + s\Delta f_j + \frac{s(s-1)}{2!}\Delta^2 f_j + \dots
    \right) \dx\\
    ~=~ y_{j+2} &+ h\int_{2}^{3} \left(
    f_j + s\Delta f_j + \frac{s(s-1)}{2!}\Delta^2 f_j
    \right) \ds\\
    &+ h\int_{2}^{3} \frac{s(s-1)(s-2)}{3!}f'''(z) \ds
    
\end{aligned}$$ 

The last term on the right hand side is the error due to
truncation of the polynomial.

Carrying out the integration we get: 

$$
\begin{aligned}
    y_{j+3} ~&=~ y_{j+2} + h\left[ sf_j + \frac{s^2}{2}\Delta f_j + \left(
            \frac{s^3}{6} - \frac{s^2}{4} \right)\Delta^2 f_j \right]_{s=2}^{s=3}\\
    &= y_{j+2} + h \left[ f_j + \frac{5}{2}\Delta f_j + \frac{23}{12}\Delta^2 f_j     \right] \\
    &=~ y_{j+2} + h\left[f_j + \frac{5}{2}(f_{j+1} - f_j) + \frac{23}{12}(f_{j+2} - 2f_{j+1} + f_j) \right]    
\end{aligned}$$ 

Thus

:::{math}
:label: eq:ch02:2.2

\begin{aligned}
    y_{j+3} ~&=~ y_{j+2} + \frac{h}{12}\bigl[
    23f_{j+2} - 16f_{j+1} + 5f_j
    \bigr]\,.  
\end{aligned}
:::

The difference equation {eq}`eq:ch02:2.2` is called the *Adams--Bashforth three step
method* which is a third--order method (i.e. the local truncation error
is $O(h^4)$). Note that in order to derive a formula of order $p$, it
suffices to take the terms in the G-N interpolation formula up to
$\Delta^{p-1}$ (or $\nabla^{p-1}$) inclusive.

::::{prf:example}
Consider the following table for $\,\dfrac{\dy}{\dx} = x + y\,$,
$\,y(0) = 1\,$. The values of $y(0.2)$ and $y(0.4)$ are calculated using
a single--step method.


| $j$ | $x$ | $y$ | $f(x,y)$|
|--|-----|---------|--------|
|0 | 0.0 | 1.00000 | 1.00000|
|1 | 0.2 | 1.24281 | 1.44281|
|2 | 0.4 | 1.58365 | 1.98365|

Calculate $y(0.6)$ using the Adams--Bashforth three step method.

<!-- :::{dropdown} Solution (click to show) -->
:::{admonition} Solution
:class: solution, dropdown
$$
\begin{aligned}
        y_3 ~&=~ y_2 + \frac{h}{12}\bigl[23f_2 - 16f_1 + 5f_0\bigr]\\
        y(0.6) ~&=~ 1.58365 + \frac{0.2}{12}\bigl[
        23\times 1.98365 - 16\times 1.44281 + 5\times 1.0
        \bigr] = {2.04263}        
\end{aligned}
$$

The exact solution is $2.04424$ (using the analytic solution
$\,y = 2\text{e}^x - x - 1$). Thus, the computed value has an error of
$0.00164$.
:::

Now we can use the following table, obtained by using the RK4 method
with $\,h = 0.1\,$, and use the values at $\,x = 0.3\,$, $\,x = 0.4\,$
and $\,x = 0.5\,$ to obtain a better approximation for $y$ at
$\,x = 0.6\,$.

| $j$ | $x$ | $y$ | $f(x,y)$|
|--|-----|---------|--------|
|0 | 0.0 | 1.00000 | 1.00000|
|1 | 0.1 | 1.11034 | 1.21034|
|2 | 0.2 | 1.24281 | 1.44281|
|3 | 0.3 | 1.39972 | 1.69972|
|4 | 0.4 | 1.58364 | 1.98364|
|5 | 0.5 | 1.79744 | 2.29744|

<!-- :::{dropdown} Solution (click to show) -->
:::{admonition} Solution
:class: solution, dropdown
$$
\begin{aligned}
        y_6 ~&=~ y_5 + \frac{h}{12}\bigl[23f_5 - 16f_4 + 5f_3\bigr]\\
        \therefore y(0.6) ~&=~ 1.79744 + \frac{0.1}{12}\bigl[
        23\times 2.29744 - 16\times 1.98364 + 5\times 1.69972
        \bigr] ~=~ 2.04412        
\end{aligned}
$$ 

which has an error of $0.00012$ compared with the exact
answer $2.04424$. We can reduce the error further by using more past
points for fitting the polynomial.
:::
::::

Some of the more common open methods together with their local
truncation errors are listed below:

- {index}`Adams--Bashforth` One--Step Method, $k=1$

    $\displaystyle y_{j+1} = y_j + hf_j \phantom{\frac00}$ (this is the *Euler* method)\
    with the local truncation error: 
    $\displaystyle \tau_{j+1} = \frac{1}{2}y^{(2)}(z_j)h^2, ~\ x_j < z_j < x_{j+1}$.

- Adams--Bashforth Two--Step Method, $k=2$

    $\displaystyle y_{j+1} = y_j + \frac{h}{2}\bigl[\,3f_j - f_{j-1}\,\bigr]$\
    with the local truncation error:
    $\displaystyle \tau_{j+1} = \frac{5}{12}y^{(3)}(z_j)h^3,
    ~\ x_j < z_j < x_{j+1}$.

- Adams--Bashforth Three--Step Method, $k=3$

    $\displaystyle y_{j+1} = y_j + \frac{h}{12}\bigl[\,23f_j - 16f_{j-1} + 5f_{j-2}\,\bigr]$\
    with the local truncation error:
    $\displaystyle \tau_{j+1} = \frac{9}{24}y^{(4)}(z_j)h^4,
    ~\ x_j < z_j < x_{j+1}$.

- Adams--Bashforth Four--Step Method, $k=4$

    $\displaystyle y_{j+1} = y_j + \frac{h}{24}\bigl[\,55f_j - 59f_{j-1} + 37f_{j-2} - 9f_{j-3}\,\bigr]$\
    with the local truncation error:
    $\displaystyle \tau_{j+1} = \frac{251}{720}y^{(5)}(z_j)h^5,
    ~\ x_j < z_j < x_{j+1}$.

- Adams--Bashforth Five--Step Method, $k=1$

    $\displaystyle y_{j+1} = y_j + \frac{h}{720}\bigl[\,1901f_j - 2774f_{j-1} + 2616f_{j-2} - 1274f_{j-3} + 251f_{j-4}\,\bigr]$\
    with the local truncation error:
    $\displaystyle \tau_{j+1} = \frac{95}{288}y^{(6)}(z_j)h^6,
    ~\ x_j < z_j < x_{j+1}$.