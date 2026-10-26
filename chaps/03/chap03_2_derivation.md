# Derivation of Multistep Methods by Numerical Integration

Assuming that $\,y_j\,$, $\,y_{j+1}\,$ and $\,y_{j+2}\,$ are known, we
aim to determine $\,y_{j+3}\,$. With this aim we integrate equation {eq}`eq:ch02:1.1`
over the interval $\,[x_{j+2},x_{j+3}]\,$;

:::{math}
:label: eq:ch02:2.1

\begin{aligned}
    y'~ & = ~ f(x,y) \\
    \int_{x_{j+2}}^{x_{j+3}} y' \dx ~&=~ \int_{x_{j+2}}^{x_{j+3}} f(x,y) \dx\\
    \biggl[ y(x) \biggr]_{x_{j+2}}^{x_{j+3}} ~&=~ \int_{x_{j+2}}^{x_{j+3}} f(x,y) \dx\\
    \therefore\quad y(x_{j+3}) - y(x_{j+2}) ~&=~ \int_{x_{j+2}}^{x_{j+3}} f(x,y) \dx\\
    \text{or}\quad y_{j+3} ~&=~ y_{j+2} + \int_{x_{j+2}}^{x_{j+3}} f(x,y) \dx     
\end{aligned}
:::

:::{note} 
Here we use $y_{j+3}$ and $ y_{j+2}$ to represent $y(x_{j+3})$ and $y(x_{j+2})$, respectively.
:::

To find the terms on the right hand side, we need to
integrate $\displaystyle \int_{x_{j+2}}^{x_{j+3}} f(x,y)\,\dx$. The straight
integration cannot be done since $y(x)$ is not known. Instead,
we integrate by approximating the **two-variable** function $\,f(x,y)\,$ as an
**single-variable** interpolation/extrapolation polynomial that is determined by using the previously
obtained or given data points (cf. interpolation and their application
in numerical integration).
