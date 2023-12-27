# Derivation of Multistep Methods by Numerical Integration

Assuming that $\,y_j\,$, $\,y_{j+1}\,$ and $\,y_{j+2}\,$ are known, we
aim to determine $\,y_{j+3}\,$. With this aim we integrate equation {eq}`eq:ch02:1.1`
over the interval $\,[x_{j+2},x_{j+3}]\,$;

:::{math}
:label: eq:ch02:2.1

\begin{aligned}
    \dy ~&=~ f(x,y) \dx\\
    \int_{x_{j+2}}^{x_{j+3}} \dy ~&=~ \int_{x_{j+2}}^{x_{j+3}} f(x,y) \dx\\
    \therefore\quad y_{j+3} - y_{j+2} ~&=~ \int_{x_{j+2}}^{x_{j+3}} f(x,y) \dx\\
    \text{or}\quad y_{j+3} ~&=~ y_{j+2} + \int_{x_{j+2}}^{x_{j+3}} f(x,y) \dx     
\end{aligned}
:::

To find the terms on the right hand side, we need to
integrate $\displaystyle \int_{x_{j+2}}^{x_{j+3}} f(x,y)\,\dx$. The straight
integration cannot be done since the value of $y$ is not known. Instead,
we integrate by approximating the function $\,f(x,y)\,$ as an
interpolating polynomial that is determined by using the previously
obtained or given data points (cf. interpolation and their application
in numerical integration).
