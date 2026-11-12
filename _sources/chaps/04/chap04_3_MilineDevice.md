# Local Truncation Errors of Predictor-Corrector methods -- Milne's Device

For Predictor-Corrector methods an estimate of local error at each step can be
found by using the following procedure known as {index}`Milne's device`. We
illustrate the technique by finding the error of the
Adam-Bashforth-Moulton method. The predictor formula is


$$
\begin{aligned}
    y_{j+1}^{(\text{pre})} ~=~ y_j + \frac{h}{24} \left(
        55f_{j} - 59f_{j-1} + 37f_{j-2} - 9f_{j-3}
    \right)
\end{aligned}
$$(eq:ch03:3.1)

 and the corrector is 

$$
\begin{aligned}
    y_{j+1}^{(\text{cor})} ~=~ y_j + \frac{h}{24} \left(
        9f_{j+1}^{(\text{pre})} + 19f_{j} - 5f_{j-1} + f_{j-2}
    \right)    
\end{aligned}
$$(eq:ch03:3.2)

 The exact solution of the differential equation at
$x = x_{j+1}$, i.e. $Y_{j+1}=y(x_{j+1})$, satisfies the two similar equations:


$$
\begin{aligned}
    Y^{}_{j+1} &= y_j
    + \frac{h}{24}(55f_j - 59f_{j-1} + 37f_{j-2} - 9f_{j-3})
    + C^{(\text{pre})}_5 h^5y^{(5)}(z_1), & x_{{j-3}} &\leq z_1 \leq x_{{j+1}}
\end{aligned}
$$(eq:ch03:3.3)

$$
\begin{aligned}
    Y_{j+1} &= y_j
    + \frac{h}{24}(9F_{j+1} + 19f_j - 5f_{j-1} + f_{j-2})
    +C^{(\text{cor})}_5 h^5y^{(5)}(z_2), & x_{{j-2}} &\leq z_2 \leq x_{{j+1}}    
\end{aligned}
$$(eq:ch03:3.4)

where $\displaystyle C^{(\text{pre})}_5=\frac{251}{720}$ and $\displaystyle  C^{(\text{cor})}_5=- \frac{19}{720}$ are the error constants for the predictor and corrector, respectively; and $F_{j+1} = f(x_{j+1}, Y_{j+1})$ is the exact value of function $f$ at $(x_{j+1}, Y_{j+1})$.

From equations {eq}`eq:ch03:3.1` and {eq}`eq:ch03:3.3` 

$$
\begin{aligned}
    Y_{j+1} - y^{(\text{pre})}_{j+1} ~=~ C^{(\text{pre})}_5 h^5y^{(5)}(z_1)
\end{aligned}
$$(eq:ch03:3.5)

and from equations {eq}`eq:ch03:3.2`and {eq}`eq:ch03:3.4` we get

$$

\begin{aligned}
    Y_{j+1} - y_{j+1}^{(\text{cor})} ~&=~  \frac{9h}{24}
    \left(F_{j+1} - f_{j+1}^{(\text{pre})}\right) +C^{(\text{cor})}_5 h^5y^{(5)}(z_2)\\[4pt]    
    &=~ \frac{9h}{24}
    \left(f(x_{j+1},Y_{j+1}) - f(x_{j+1},y_{j+1}^{(\text{pre})})\right) +C^{(\text{cor})}_5 h^5y^{(5)}(z_2)\\[4pt]
    &=~ \frac{3h}{8}(Y_{j+1} - y_{j+1}^{(\text{cor})})f_y(x_{j+1},\eta){+C^{(\text{cor})}_5 h^5y^{(5)}(z_2)}
\end{aligned}

$$

:::{note} 
:class: dropdown
Using the Mean Value Theorem, we can get

$$
\begin{aligned}
f(x_{j+1},Y_{j+1}) - f(x_{j+1},y_{j+1}^{(\text{pre})}) 
& = f_y (x_{j+1},z) \left( Y_{j+1} - y_{j+1}^{(\text{pre})} \right) \\
& = f_y (x_{j+1},z) \left( Y_{j+1} - y_{j+1}^{(\text{cor})} \right)  \left[1+ \frac{y_{j+1}^{(\text{cor})}-y_{j+1}^{(\text{pre})}}{Y_{j+1}-y_{j+1}^{(\text{cor})}}   \right] \\
& = \left( Y_{j+1} - y_{j+1}^{(\text{cor})} \right)  f_y (x_{j+1},\eta)   \\
\end{aligned}
$$

where $Y_{j+1}\leq z \leq y_{j+1}^{(\text{pre})}$, $Y_{j+1}\leq \eta \leq y_{j+1}^{(\text{cor})}$ and we assume

$$
f_y (x_{j+1},\eta) = f_y (x_{j+1},z) \left[1+ \frac{y_{j+1}^{(\text{cor})}-y_{j+1}^{(\text{pre})}}{Y_{j+1}-y_{j+1}^{(\text{cor})}}   \right]
$$

:::


<!-- and using the mean value theorem

 assuming that $\displaystyle \,f_y(x_{j+1},\eta) = \frac{\partial f}{\partial y} =
\frac{f(x_{j+1},Y_{j+1}) - f(x_{j+1},y_{j+1}^{(\text{pre})})}{(Y_{j+1} - y_{j+1}^{(\text{cor})})}\,$
and $\,Y_{j+1} \leq \eta \leq y_{j+1}\,$.  -->

Thus 

$$

\begin{aligned}
    \left(Y_{j+1} - y_{j+1}^{(\text{cor})}\right) \left\{
        1 - \frac{3h}{8}f_y(x_{j+1},\eta)
    \right\} ~=~ C_5^{(\text{cor})} h^5 y^{(5)}(z_2)
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
    Y_{j+1} - y_{j+1}^{(\text{cor})} ~\simeq~ C_5^{(\text{cor})} h^5y^{(5)}(z_2)  
\end{aligned}
$$(eq:ch03:3.6)

 We also assume that $\,y^{(5)}(x)\,$ does not vary strongly
over the interval $\,(x_{j-3},x_{j+1})\,$ so that $y^{(5)}(z_1)\,$ and
$\,y^{(5)}(z_2)\,$ are approximately equal. Eliminating these fifth
derivatives between {eq}`eq:ch03:3.5` and {eq}`eq:ch03:3.6`
gives 

$$
\frac{Y_{j+1}-y_{j+1}^{(\text{pre})}}{C_5^{(\text{pre})}}=\frac{Y_{j+1}-y_{j+1}^{(\text{cor})}}{C_5^{(\text{cor})}}
$$

:::{note}
:class: dropdown
$$
C_5^{(\text{cor})}Y_{j+1}-C_5^{(\text{cor})}y_{j+1}^{(\text{pre})}
=C_5^{(\text{pre})} Y_{j+1}-C_5^{(\text{pre})}y_{j+1}^{(\text{cor})}
$$

$$
\left(C_5^{(\text{cor})}-C_5^{(\text{pre})}\right)Y_{j+1} + C_5^{(\text{pre})}y_{j+1}^{(\text{cor})}
= C_5^{(\text{cor})}y_{j+1}^{(\text{pre})}
$$

$$
\left(C_5^{(\text{cor})}-C_5^{(\text{pre})}\right)Y_{j+1} + C_5^{(\text{pre})}y_{j+1}^{(\text{cor})}
- C_5^{(\text{cor})} y_{j+1}^{(\text{cor})}
= C_5^{(\text{cor})} \left( y_{j+1}^{(\text{pre})} - y_{j+1}^{(\text{cor})}\right)
$$

$$
\left(C_5^{(\text{cor})}-C_5^{(\text{pre})}\right) \left(Y_{j+1} - y_{j+1}^{(\text{cor})}\right) 
= C_5^{(\text{cor})} \left( y_{j+1}^{(\text{pre})} - y_{j+1}^{(\text{cor})}\right)
$$
:::

$$\therefore \quad
 Y_{j+1} - y_{j+1}^{(\text{cor})}
= \frac{C_5^{(\text{cor})}}{C_5^{(\text{pre})}-C_5^{(\text{cor})}} \left( y_{j+1}^{(\text{cor})} - y_{j+1}^{(\text{pre})} \right) 
$$


Thus the error in the converged solution of the
corrector formula, due to truncation, can be estimated by calculating


$$
\begin{aligned}
T = \frac{C_5^{(\text{cor})}}{C_5^{(\text{pre})}-C_5^{(\text{cor})}} \left( y_{j+1}^{(\text{cor})} - y_{j+1}^{(\text{pre})} \right)
\end{aligned}
$$

 Note that, the reliability of this estimate depends on
the validity of the above assumptions including the assumption that the
errors propagated from previous calculations are negligible.

The above analysis easily generalizes to any predictor-corrector process
in which the predictor formula has a truncation error of the form
$\,C_n^{(\text{pre})}h^ny^{(n)}(z_1)\,$ and the corrector formula has a truncation error of the form $\,C_n^{(\text{cor})}h^ny^{(n)}(z_2)\,$, then
an estimate of the error arising from the truncation is given by,

$$
 T
= \frac{C_n^{(\text{cor})}}{C_n^{(\text{pre})}-C_n^{(\text{cor})}} \left( y_{j+1}^{(\text{cor})} - y_{j+1}^{(\text{pre})} \right) 
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
$\,h \!=\! 0.1$, are $\,y^{(\text{pre})} \!=\! 1.3678801$,
$\,y^{(\text{cor})} \!=\! 1.3678784\,$. 

- Apply the formula {eq}`eq:ch03:3.7` to estimate the error between the corrected solution and the exact solution. 

- Compare this with the actual error calculated using the analytic
solution $(y = e^{-x} + x)$.


:::{admonition} Solution
:class: solution, dropdown



$$
\begin{aligned}
        T ~&=~ \frac{C_5^{(\text{cor})}}{C_5^{(\text{pre})}-C_5^{(\text{cor})}} \left(y^{(\text{cor})} - y^{(\text{pre})}\right)\\[4pt]
        &=~ \frac{-\frac{19}{720}}{\frac{251}{720}-\left(-\frac{19}{720}\right)} \left(1.3678784 - 1.3678801\right)\\[4pt]        
        &=~ -\frac{19}{270}(-1.7 \!\times\! 10^{-6})\\[4pt]
        &=~ 1.2 \!\times\! 10^{-7}.    
\end{aligned}
$$

 At $\,x \!=\! 1.0$, the actual error is
$\,1.0 \!\times\! 10^{-6}$. Hence, the error formula underestimates the
error by about one order of magnitude, which is reasonably
acceptable for this problem.
:::