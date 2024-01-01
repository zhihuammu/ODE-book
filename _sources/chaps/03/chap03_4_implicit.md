# Implicit  Multistep Methods

Implicit (closed) methods are derived by using the additional point
$\,(x_{j+1},y_{j+1})\,$ as an interpolation node in the approximation of
the integral $\displaystyle \int_{x_j}^{x_{j+1}} f(x,y) \dx$. The simplest of the
implicit methods is the *Backward Euler* method: 

$$
\begin{aligned}
    y_{j+1} ~=~ y_j + hf_{j+1}
\end{aligned}
$$ 

with the local truncation error:
$\displaystyle \tau_{j+1} = -\frac{1}{2}y^{(2)}(z_j)h^2,
    ~\ x_j < z_j < x_{j+1}$.

Some of the more common implicit methods are listed below:

- {index}`Adams--Moulton` One--Step Method, $k=1$

    $\displaystyle y_{j+1} = y_j + \frac{h}{2}\bigl[\,f_{j+1} + f_j\,\bigr]$
    (this is the *Trapezoidal* method)\
    with the local truncation error:
    $\displaystyle \tau_{j+1} = -\frac{1}{12}y^{(3)}(z_j)h^3,
    ~\ x_j < z_j < x_{j+1}$.

- Adams--Moulton Two--Step Method, $k=2$

    $\displaystyle y_{j+1} = y_j + \frac{h}{12}\bigl[\,5f_{j+1} + 8f_j - f_{j-1}\,\bigr]$\
    with the local truncation error:
    $\displaystyle \tau_{j+1} = -\frac{1}{24}y^{(4)}(z_j)h^4,
    ~\ x_j < z_j < x_{j+1}$.

- Adams--Moulton Three--Step Method, $k=3$

    $\displaystyle y_{j+1} = y_j + \frac{h}{24}\bigl[\,9f_{j+1} + 19f_j - 5f_{j-1} + f_{j-2}\,\bigr]$\
    with the local truncation error:
    $\displaystyle \tau_{j+1} = -\frac{19}{720}y^{(5)}(z_j)h^5,
    ~\ x_j < z_j < x_{j+1}$.

- Adams--Moulton Four--Step Method, $k=4$

    $\displaystyle y_{j+1} = y_j + \frac{h}{720}\bigl[\,251f_{j+1} + 646f_j - 264f_{j-1} + 106f_{j-2} - 19f_{j-3}\,\bigr]$\
    with the local truncation error:
    $\displaystyle \tau_{j+1} = -\frac{3}{160}y^{(6)}(z_j)h^6,
    ~\ x_j < z_j < x_{j+1}$.

It is important to compare an $m$--step Adams--Bashforth open method to
an $(m\!-\!1)$--step Adams--Moulton closed method. Both require $m$
evaluations of $f$ per step, and both have the terms
$\,y^{m\!+\!1}(z)\,h^{m\!+\!1}\,$ in their local truncation errors. In
general, the coefficients of the terms involving $f$ and those in the
local truncation error are smaller for the Adams--Moulton methods. This
means a greater stability for the closed methods and smaller rounding
errors.