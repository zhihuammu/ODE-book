# Interval and Region of Absolute Stability

Consider the linear multistep method 

$$
\begin{aligned}
    && \sum_{i=0}^{k} \alpha_iy_{j+i} ~&=~ h \sum_{i=0}^{k} \beta_if_{j+i}
    & \text{with}\ \alpha_k = 1 &&
\end{aligned}
$$(eq:ch05:1.1)

 and a test differential equation, 

$$
\begin{aligned}
    && \frac{\dy}{\dx} ~&=~ f(x,y) ~=~ \lambda\,y\,,
    & y(x_0) = y_0 &&
\end{aligned}
$$(eq:ch05:1.2)

 where $\lambda$ is a (real or complex) constant.

:::{prf:definition} Abosolute Stability
A linear multistep method is said to be *{index}`absolutely stable`* in a region
$\,\Re\,$ of the complex plane if for all $\,h\lambda\,$ all roots of
the stability polynomial $\,\L (z,h\lambda)$ associated with the
method satisfy 

$$
\begin{aligned}
    && \left| z_i(h\lambda) \right| \,&<\, 1,
    & i &= 1,\,2,\dots,k &&
\end{aligned}
$$(eq:ch05:1.3)
:::

:::{prf:definition} Relative Stability
A linear multistep method is said to be *{index}`relatively stable`* in a region
$\,\Re\,$ of the complex plane if, for all $\,h\lambda\,$ all roots of
the stability polynomial $\,\L (z,h\lambda)$ associated with the
method satisfy 

$$
\begin{aligned}
    && \left| z_i(h\lambda) \right| \,&<\, \left| z_1(h\lambda) \right|\,
    & \qquad i &= 2,\,3,\dots,k &&    
\end{aligned}
$$(eq:ch05:1.4)

 where $z_1(h\lambda) = +1$ is a simple root (i.e. the
parasitic roots are less in magnitude than the principal root).
:::

:::{prf:definition} Stability Interval
An interval $(a,b)$ of the real axis is said to be an *{index}`interval of
absolute/relative stability`* if the method is absolutely/relatively
stable for all $\,h\lambda \in (a,b)\,$. If the method is absolutely
unstable for all $\,h\lambda \in (a,b)\,$, it is said to have no
interval of absolute stability.
:::

:::{note}
An interval of absolute stability is simply the intersection
of region $\Re$ with the real axis.
:::

Here it should be noted that the literature in this area contains many
similar definitions. Sometimes the concept of absolute stability is
defined so that the roots can have magnitude 1 and sometimes strictly
$\,<1\,$; it makes little difference, provided that the root with
magnitude 1 is kept in mind when considering a problem and analysing the
results - for references see Lambert (1971,1991) and Shampine (1994)
from the reading list.

In the following, through examples, we show two methods for finding the
interval and region of absolute stability for linear multistep methods.

