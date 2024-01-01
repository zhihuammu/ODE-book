# Estimate of truncation error at each step for Predictor-Corrector methods -- Milne's Device

For Predictor-Corrector methods an estimate of error at each step can be
found using the following procedure known as {index}`Milne's device`. We
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
    y_{j+1}^{(c)} ~=~ y_j + \frac{h}{24} \left(
        9f_{j+1}^{(p)} + 19f_{j} - 5f_{j-1} + f_{j-2}
    \right)    
\end{aligned}
$$(eq:ch03:3.2)

 The exact solution of the differential equation at
$x = x_{j+1},\, (Y_{j+1}),\,$ satisfies the two similar equations:


$$
\begin{aligned}
    Y^{}_{j+1} &= y_j
    + \frac{h}{24}(55f_j - 59f_{j-1} + 37f_{j-2} - 9f_{j-3})
    + C^{(p)}_5 h^5y^{(5)}(z_1), & x_{{j-3}} &\leq z_1 \leq x_{{j+1}}
\end{aligned}
$$(eq:ch03:3.3)

$$
\begin{aligned}
    Y_{j+1} &= y_j
    + \frac{h}{24}(9F_{j+1} + 19f_j - 5f_{j-1} + f_{j-2})
    +C^{(c)}_5 h^5y^{(5)}(z_2), & x_{{j-2}} &\leq z_2 \leq x_{{j+1}}    
\end{aligned}
$$(eq:ch03:3.4)

where $\displaystyle C^{(p)}_5=\frac{251}{720}$ and $\displaystyle  C^{(c)}_5=- \frac{19}{720}$ are the error constants for the predictor and corrector, respectively; and $F_{j+1} = f(x_{j+1}, Y_{j+1})$ is the exact value of function $f$ at $(x_{j+1}, Y_{j+1})$.

From equations {eq}`eq:ch03:3.1` and {eq}`eq:ch03:3.3` 

$$
\begin{aligned}
    Y_{j+1} - y^{(p)}_{j+1} ~=~ C^{(p)}_5 h^5y^{(5)}(z_1)
\end{aligned}
$$(eq:ch03:3.5)

and from equations {eq}`eq:ch03:3.2`and {eq}`eq:ch03:3.4` we get

$$

\begin{aligned}
    Y_{j+1} - y_{j+1}^{(c)} ~&=~  \frac{9h}{24}
    \left(F_{j+1} - f_{j+1}^{(p)}\right) +C^{(c)}_5 h^5y^{(5)}(z_2)\\[4pt]    
    &=~ \frac{9h}{24}
    \left(f(x_{j+1},Y_{j+1}) - f(x_{j+1},y_{j+1}^{(p)})\right) +C^{(c)}_5 h^5y^{(5)}(z_2)\\[4pt]
    &=~ \frac{3h}{8}(Y_{j+1} - y_{j+1}^{(c)})f_y(x_{j+1},\eta){+C^{(c)}_5 h^5y^{(5)}(z_2)}
\end{aligned}

$$

:::{note} 
:class: dropdown
Using the Mean Value Theorem, we can get

$$
\begin{aligned}
f(x_{j+1},Y_{j+1}) - f(x_{j+1},y_{j+1}^{(p)}) 
& = f_y (x_{j+1},z) \left( Y_{j+1} - y_{j+1}^{(p)} \right) \\
& = f_y (x_{j+1},z) \left( Y_{j+1} - y_{j+1}^{(c)} \right)  \left[1+ \frac{y_{j+1}^{(c)}-y_{j+1}^{(p)}}{Y_{j+1}-y_{j+1}^{(c)}}   \right] \\
& = \left( Y_{j+1} - y_{j+1}^{(c)} \right)  f_y (x_{j+1},\eta)   \\
\end{aligned}
$$

where $Y_{j+1}\leq z \leq y_{j+1}^{(p)}$, $Y_{j+1}\leq \eta \leq y_{j+1}^{(c)}$ and we assume

$$
f_y (x_{j+1},\eta) = f_y (x_{j+1},z) \left[1+ \frac{y_{j+1}^{(c)}-y_{j+1}^{(p)}}{Y_{j+1}-y_{j+1}^{(c)}}   \right]
$$

:::


<!-- and using the mean value theorem

 assuming that $\displaystyle \,f_y(x_{j+1},\eta) = \frac{\partial f}{\partial y} =
\frac{f(x_{j+1},Y_{j+1}) - f(x_{j+1},y_{j+1}^{(p)})}{(Y_{j+1} - y_{j+1}^{(c)})}\,$
and $\,Y_{j+1} \leq \eta \leq y_{j+1}\,$.  -->

Thus 

$$

\begin{aligned}
    \left(Y_{j+1} - y_{j+1}^{(c)}\right) \left\{
        1 - \frac{3h}{8}f_y(x_{j+1},\eta)
    \right\} ~=~ C_5^{(c)} h^5 y^{(5)}(z_2)
\end{aligned}

$$

 We can now assume that $h$ is chosen sufficiently small
to ensure that 

$$

\begin{aligned}
    \frac{3h}{8}\left|f_y(x_{j+1},\eta)\right| \ll 1
\end{aligned}

$$

 thus 

$$
\begin{aligned}
    Y_{j+1} - y_{j+1}^{(c)} ~\simeq~ C_5^{(c)} h^5y^{(5)}(z_2)  
\end{aligned}
$$(eq:ch03:3.6)

 We also assume that $\,y^{(5)}(x)\,$ does not vary strongly
over the interval $\,(x_{j-3},x_{j+1})\,$ so that $y^{(5)}(z_1)\,$ and
$\,y^{(5)}(z_2)\,$ are approximately equal. Eliminating these fifth
derivatives between {eq}`eq:ch03:3.5` and {eq}`eq:ch03:3.6`
gives 

$$
\frac{Y_{j+1}-y_{j+1}^{(p)}}{C_5^{(p)}}=\frac{Y_{j+1}-y_{j+1}^{(c)}}{C_5^{(c)}}
$$

:::{note}
:class: dropdown
$$
C_5^{(c)}Y_{j+1}-C_5^{(c)}y_{j+1}^{(p)}
=C_5^{(p)} Y_{j+1}-C_5^{(p)}y_{j+1}^{(c)}
$$

$$
\left(C_5^{(c)}-C_5^{(p)}\right)Y_{j+1} + C_5^{(p)}y_{j+1}^{(c)}
= C_5^{(c)}y_{j+1}^{(p)}
$$

$$
\left(C_5^{(c)}-C_5^{(p)}\right)Y_{j+1} + C_5^{(p)}y_{j+1}^{(c)}
- C_5^{(c)} y_{j+1}^{(c)}
= C_5^{(c)} \left( y_{j+1}^{(p)} - y_{j+1}^{(c)}\right)
$$

$$
\left(C_5^{(c)}-C_5^{(p)}\right) \left(Y_{j+1} - y_{j+1}^{(c)}\right) 
= C_5^{(c)} \left( y_{j+1}^{(p)} - y_{j+1}^{(c)}\right)
$$
:::

$$\therefore \quad
 Y_{j+1} - y_{j+1}^{(c)}
= \frac{C_5^{(c)}}{C_5^{(p)}-C_5^{(c)}} \left( y_{j+1}^{(c)} - y_{j+1}^{(p)} \right) 
$$


Thus the error in the converged solution of the
corrector formula, due to truncation, can be estimated by calculating


$$
\begin{aligned}
\epsilon = \frac{C_5^{(c)}}{C_5^{(p)}-C_5^{(c)}} \left( y_{j+1}^{(c)} - y_{j+1}^{(p)} \right)
\end{aligned}
$$

 Note that, the reliability of this estimate depends on
the validity of the above assumptions including the assumption that the
errors propagated from previous calculations are negligible.

The above analysis easily generalizes to any predictor-corrector process
in which the predictor formula has a truncation error of the form
$\,C_n^{(p)}h^ny^{(n)}(z_1)\,$ and the corrector formula has a truncation error of the form $\,C_n^{(c)}h^ny^{(n)}(z_2)\,$, then
an estimate of the error arising from the truncation is given by,

$$
 \epsilon
= \frac{C_n^{(c)}}{C_n^{(p)}-C_n^{(c)}} \left( y_{j+1}^{(c)} - y_{j+1}^{(p)} \right) 
$$(eq:ch03:3.7)



:::{prf:example}
:label: chap04-example-5

For the differential equation 

$$
\begin{aligned}
        && y' ~&=~ -y + x + 1; & y(0) ~&=~ 1; & &0 \leq x \leq 1, &&   
\end{aligned}
$$

The predicted and corrected solutions produced by the fourth-order Adams-Bashforth-Moulton method {eq}`eq:ch03:3.1` and {eq}`eq:ch03:3.2` at $\,x \!=\! 1.0$, using
$\,h \!=\! 0.1$, are $\,y^{(p)} \!=\! 1.3678801$,
$\,y^{(c)} \!=\! 1.3678784\,$. 

- Apply the formula {eq}`eq:ch03:3.7` to estimate the error between the corrected solution and the exact solution. 

- Compare this with the actual error calculated using the analytic
solution $(y = e^{-x} + x)$.


:::{admonition} Solution
:class: solution, dropdown



$$
\begin{aligned}
        \epsilon ~&=~ \frac{C_5^{(c)}}{C_5^{(p)}-C_5^{(c)}} \left(y^{(c)} - y^{(p)}\right)\\[4pt]
        &=~ \frac{-\frac{19}{720}}{\frac{251}{720}-\left(-\frac{19}{720}\right)} \left(1.3678784 - 1.3678801\right)\\[4pt]        
        &=~ -\frac{19}{270}(-1.7 \!\times\! 10^{-6})\\[4pt]
        &=~ 1.2 \!\times\! 10^{-7}.    
\end{aligned}
$$

 At $\,x \!=\! 1.0$, the actual error is
$\,1.0 \!\times\! 10^{-6}$. Hence, the error formula underestimate the
error by approximating one order of magnitude, which is perfectly
acceptable for this problem.
:::