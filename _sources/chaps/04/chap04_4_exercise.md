(chap:errorConstant:exercise)=
# Exercises

:::{exercise}
Use a Gregory-Newton interpolation formula to derive the error term
for the following integration formulae:

1.  $\displaystyle y_{{j}} ~=~ y_{j-1} + \frac{h}{12}(5f_{{j}} + 8f_{j-1} - f_{{j-2}})$
    Hint: G-N backward $0$ to $-1$

2.  $\displaystyle y_{j+1} ~=~ y_j + \frac{h}{2}(f_{j+1} + f_j)$
:::

:::{exercise}
Use the method described in the text (see Example 3) to find the
order and the error constants of the following formulae:

1.  $\displaystyle y_{j+1} ~=~ y_j
            + \frac{h}{12}(5f_{j+1} + 8f_j - f_{j-1})$

2.  $\displaystyle y_{j+1} ~=~ y_{j-1}
            + \frac{h}{3}(f_{j+1} + 4f_j + f_{j-1})$

3.  $\displaystyle y_{j+1} ~=~ y_j + \frac{h}{24}(55f_j - 59f_{j-1}
            + 37f_{j-2} - 9f_{j-3})$

4.  $\displaystyle y_{j+1} ~=~ y_j + \frac{h}{720}(1901f_j - 2774f_{j-1}
            + 2616f_{j-2} - 1274f_{j-3} + 251f_{j-4})$
:::

:::{exercise}
Derive a Milne's Device local error estimate for the Milne-Simpson
Predictor-Corrector method: 

$$\begin{aligned}
        y^{(p)}_{j+1} ~&=~ y_{j-3} + \frac{h}{3}(8f_j - 4f_{j-1} + 8f_{j-2})
        + \frac{28}{90}h^5y^v(\xi_1)
        \\
        y^{(c)}_{j+1} ~&=~ y_{j-1} + \frac{h}{3}(f_{j+1} + 4f_j + f_{j-1})
        - \frac{1}{90}h^5y^v(\xi_2)   
\end{aligned}$$
:::

:::{exercise}
Modify your Matlab program 2 for Adams--Bashforth method (Chapter 2)
to implement Milne-Simpson Predictor-Corrector method. Use your
program to find solution for the initial--value--problem

$$\begin{aligned}
        && y' ~&=~ -y + x + 1
            & y(0) &= 1,
            & &0 \leq x \leq 1 &&   
\end{aligned}$$ 

with $h \!=\! 0.1$. Use the Milne's Device error
formula, derived in question 3 above to find an error estimate at
$\,x \!=\! 1.0\,$. Compare the error with the actual error and that
of the Adams--Bashforth--Moulton method calculated in the lecture
notes, Example 5, and comment.
:::    

## Answers to Tutorial Exercises

1.  
    1. $\dfrac{-1}{24}h^4f'''(\xi)$,
    1. $\dfrac{-1}{12}h^3f''(\xi)$

2.  
    1. $\dfrac{-1}{24}h^4f'''(\xi)$,
    1. $\dfrac{-1}{90}h^5f^{iv}(\xi)$，
    1. $\dfrac{251}{720}h^5f^{iv}(\xi)$,
    1. $\dfrac{95}{288}h^6f^v(\xi)$

3.  $\dfrac{-1}{29}(y^c - y^p)$.

4.  At $x = 1.0$:

    The error in ABM method using Milne's Device error formula is
    $\approx 1.2\times10^{-7}$, the actual error is
    $\approx 1.2\times10^{-6}$;

    The error in MS method using Milne's Device error formula is
    $\approx 5.5\times10^{-8}$, the actual error is
    $\approx 3.0\times10^{-7}$;
