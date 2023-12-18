# Estimate of truncation error at each step for Predictor-Corrector methods -- Milne's Device

For Predictor-Corrector methods an estimate of error at each step can be
found using the following procedure known as Milne's device. We
illustrate the technique by finding the error of the
Adam-Bashforth-Moulton method. The Predictor formula is


$$
\begin{aligned}
    y_{j+1}^{(p)} ~=~ y_j + \frac{h}{24} \left(
        55f_{j} - 59f_{j-1} + 37f_{j-2} - 9f_{j-3}
    \right)
\end{aligned}
$$(eq:ch03:3.1)

 and the corrector is 

$$
\begin{aligned}
    y_{j+1} ~=~ y_j + \frac{h}{24} \left(
        9f_{j+1} + 19f_{j} - 5f_{j-1} + f_{j-2}
    \right)    
\end{aligned}
$$(eq:ch03:3.2)

 The exact solution of the differential equation at
$x = x_{j+1},\, (Y_{j+1}),\,$ satisfies the two similar equations:


$$
\begin{aligned}
    Y^{(p)}_{j+1} &= y_j
    + \frac{h}{24}(55f_j - 59f_{j-1} + 37f_{j-2} - 9f_{j-3})
    + \frac{251}{720}h^5y^v(\xi_1), & x_{{j-3}} &\leq \xi_1 \leq x_{{j+1}}
\end{aligned}
$$(eq:ch03:3.3)

$$
\begin{aligned}
    Y_{j+1} &= y_j
    + \frac{h}{24}(9F_{j+1} + 19f_j - 5f_{j-1} + f_{j-2})
    - \frac{19}{720}h^5y^v(\xi_2), & x_{{j-2}} &\leq \xi_2 \leq x_{{j+1}}    
\end{aligned}
$$(eq:ch03:3.4)

From equations {eq}`eq:ch03:3.1` and {eq}`eq:ch03:3.3` 

$$
\begin{aligned}
    Y_{j+1} - y^{(p)}_{j+1} ~=~ \frac{251}{720}h^5y^v(\xi_1)
\end{aligned}
$$(eq:ch03:3.5)

 and from equations {eq}`eq:ch03:3.2`and {eq}`eq:ch03:3.4` and using the mean value theorem


$$

\begin{aligned}
    Y_{j+1} - y_{j+1} ~&=~ \frac{9h}{24}
    (f(x_{j+1},Y_{j+1}) - f(x_{j+1},y_{j+1})) - \frac{19}{720}h^5y^v(\xi_2)\\[4pt]
    &=~ \frac{3h}{8}(Y_{j+1} - y_{j+1})f_y(x_{j+1},\eta_{j+1}){-\frac{19}{720}h^5y^v(\xi_2)}
\end{aligned}

$$

 assuming that $\displaystyle \,f_y = \frac{\partial f}{\partial y} =
\frac{f(x_{j+1},Y_{j+1}) - f(x_{j+1},y_{j+1})}{(Y_{j+1} - y_{j+1})}\,$
and $\,Y_{j+1} \leq \eta_{j+1} \leq y_{j+1}\,$. Thus 

$$

\begin{aligned}
    \left(Y_{j+1} - y_{j+1}\right) \left\{
        1 - \frac{3h}{8}f_y(x_{j+1},\eta_{j+1})
    \right\} ~=~ -\frac{19}{720}h^5h^v(\xi_2)
\end{aligned}

$$

 We can now assume that $h$ is chosen sufficiently small
to ensure that 

$$

\begin{aligned}
    \frac{3h}{8}\left|f_y(x_{j+1},\eta_{j+1})\right| \ll 1
\end{aligned}

$$

 thus 

$$
\begin{aligned}
    Y_{j+1} - y_{j+1} ~\simeq~ -\frac{19}{720}h^5y^v(\xi_2)  
\end{aligned}
$$(eq:ch03:3.6)

 We also assume that $\,y^v(x)\,$ does not vary strongly
over the interval $\,(x_{j-3},x_{j+1})\,$ so that $y^v(\xi_1)\,$ and
$\,y^v(\xi_2)\,$ are approximately equal. Eliminating these fifth
derivatives between {eq}`eq:ch03:3.5` and {eq}`eq:ch03:3.6`
gives 

$$
\begin{aligned}
    Y_{j+1} - y_{j+1} ~\simeq~
    -\frac{19}{720}\frac{720}{251}(Y_{j+1} - y^{(p)}_{j+1})
\end{aligned}
$$

 or 

$$
\begin{aligned}
    Y_{j+1} - y_{j+1} ~\simeq~ -\frac{19}{251}(Y_{j+1} - y^{(p)}_{j+1})
\end{aligned}
$$

 taking $-\dfrac{19}{251}\,Y_{j+1}$ to the LHS, and adding
$-\dfrac{19}{251}y_{j+1}$ to both sides of the equation gives:


$$
\begin{aligned}
    Y_{j+1} - y_{j+1} + \frac{19}{251}Y_{j+1} - \frac{19}{251}y_{j+1}
    ~&\simeq~ - \frac{19}{251}y_{j+1} + \frac{19}{251}y_{j+1}^{(p)}
    \\
    (Y_{j+1} - y_{j+1}) \left(1+\frac{19}{251}\right)
    ~&\simeq~ -\frac{19}{251} \left(y_{j+1} - y_{j+1}^{(p)}\right)
    \\
    \therefore~ \left(Y_{j+1}-y_{j+1}\right)
    ~&\simeq~ -\frac{19}{270} \left(y_{j+1} - y_{j+1}^{(p)}\right)
\end{aligned}
$$

 Thus the error in the converged solution of the
corrector formula, due to truncation, can be estimated by calculating


$$
\begin{aligned}
    -\frac{19}{270} \left(y_{j+1} - y_{j+1}^{(p)}\right)
\end{aligned}
$$

 Note that, the reliability of this estimate depends on
the validity of the above assumptions including the assumption that the
errors propagated from previous calculations are negligible.

The above analysis easily generalizes to any predictor-corrector process
in which the predictor formula has a truncation error of the form
$\,C_1h^ny^{(n)}(\xi_1)\,$ and the corrector formula has a truncation
error of the form $\,-C_2h^ny^{(n)}(\xi_2)\,$ with $\,C_1,C_2>0\,$ then
an estimate of the error arising from the truncation is given by,


$$
\begin{aligned}
    Y_{j+1}-y_{j+1}~\simeq~-\frac{C_2}{C_1+C_2} \left(
        y_{j+1}-y_{j+1}^{(p)}
    \right)
\end{aligned}
$$ (eq:ch03:3.7)



:::{prf:example}
For the differential equation 

$$
\begin{aligned}
        && y' ~&=~ -y + x + 1; & y(0) ~&=~ 1; & &0 \leq x \leq 1, &&   
\end{aligned}
$$

 calculate the error at $\,x \!=\! 1.0$, using
$\,h \!=\! 0.1$, using the error formula {eq}`eq:ch03:3.7` above.
Compare this with the actual error calculated using the analytic
solution $(y = e^{-x} + x)$.


:::{admonition} Solution
:class: tip

At $\,x \!=\! 1.0$, using ABM method $\,y^{(p)} \!=\! 1.3678801$,
$\,y^{(c)} \!=\! 1.3678784\,$. Using the error formula the error is

$$
\begin{aligned}
        Y_{j+1} - y_{j+1} ~&=~ -\frac{19}{270} \left(y^{(c)} - y^{(p)}\right)\\[4pt]
        &=~ -\frac{19}{270}(-1.7 \!\times\! 10^{-6})\\[4pt]
        &=~ 1.2 \!\times\! 10^{-7}.    
\end{aligned}
$$

 At $\,x \!=\! 1.0$, the actual error is
$\,1.0 \!\times\! 10^{-6}$. Hence, the error formula underestimate the
error by approximating one order of magnitude, which is perfectly
acceptable for this problem.
:::