# Interval and Region of Absolute Stability

In {ref}`sec:zero-stability`, we derived the error propagation equation {eq}`eq:ch04:1.1.c` for a linear multistep method expressed as

$$
\sum_{i=0}^{k}\alpha_i e_{j+i}~=~ h\sum_{i=0}^{k}\beta_i \biggl( f(x_{j+i}) - f_{j+i} \biggr) + C_p h^p y^{(p)}(\xi).
$$(eq:chap06:error:propagation:1)

When dealing non-linear ODEs in real-world applications, we often linearise these equations in order to analyse their stability. Supposing $y'=f(x,y)$ can be linearised as 

$$
    y'(x) = \lambda y,
$$(eq:ch05:1.2)

where $\lambda$ is the eigenvalue of the system, then equation {eq}`eq:chap06:error:propagation:1` becomes

$$
\sum_{i=0}^{k} (\alpha_i - h \lambda \beta_i)e_{j+i}~=~  C_p h^p y^{(p)}(\xi).
$$(eq:chap06:error:propagation:2)

Let the RHS of equation {eq}`eq:chap06:error:propagation:2` be zero, we can get

$$
\sum_{i=0}^{k} (\alpha_i - h \lambda \beta_i)e_{j+i}~=~  0.
$$(eq:chap06:error:propagation:3)

Obviously, we need to let the errors tend to zero (or be bounded) to ensure that the method is stable. 

::::{prf:definition} Stability Polynomial
We define

$$
\pi (z, h\lambda) = \sum_{i=0}^k (\alpha_i - h \lambda \beta_i) z^i
$$(eq:chap06:poly:stability)

as the **stability polynomial** of a linear multistep method. Using the first and second characteristic polynomials, the stability polynomial can be also be calculated as

$$
\pi (z, h\lambda) = \rho(z) - h\lambda \sigma(z)
$$

In some books, the stability polynomial $\pi (z, h\lambda)$ is also called the *characteristic polynomial*.
::::

:::{prf:definition} Absolute Stability
A linear multistep method, when applied to a test problem $y'=\lambda y$ with a given value of $h \lambda$, is said to be **absolutely stable** if all perturbations in the numerical solution tend to zero as $j \rightarrow \infty$. This requires that for the given value of $h\lambda$ the moduli of all the roots of the stability polynomial $\pi(z, h\lambda)$ are less than $1$.
:::

<!-- :::{prf:definition} Relative Stability
A linear multistep method is said to be *{index}`relatively stable`* in a region
$\mathcal{R}$ of the complex plane, if for all $h\lambda$, all roots of
the stability polynomial $\pi (z,h\lambda)$ associated with the
method satisfy 

$$
\begin{aligned}
    && \left| z_i(h\lambda) \right| \,&<\, \left| z_1(h\lambda) \right|\,
    & \qquad i &= 2,\,3,\dots,k &&    
\end{aligned}
$$(eq:ch05:1.4)

 where $z_1(h\lambda) = 1$ is a simple root (i.e. the
parasitic roots are less in magnitude than the principal root).
::: -->

:::{prf:definition} Region of Absolute Stability
For a $k$-step linear multistep method, its region of absolute stability $\mathcal{R}$ is a subset of the complex plane in which the method is absolutely stable. $\mathcal{R}$ is the set of values $h\lambda$ for which the moduli of all the roots of the stability polynomial $\pi(z, h\lambda)$ are less than $1$

$$
\mathcal{R} = \{ h\lambda \in \mathbb{C} : \pi(z_i, h\lambda)=0, |z_i (h\lambda)|<1, i=1,2,\ldots, k \}, 
$$(eq:ch05:1.3)

Here, $z_i (h\lambda)$ represents the $i$-th root of the stability $\pi(z_i, h\lambda)$ for the given value $h\lambda$.
:::



:::{prf:definition} Interval of Absolute Stability
An interval $\mathcal{R}_0=(a,b)$ of the real axis is said to be an *{index}`interval of absolute stability`* if the method is absolutely stable for all real values of $h\lambda \in \mathcal{R}_0$. 

$$
\mathcal{R}_0 = \{ h\lambda \in \mathbb{R} : \pi(z_i, h\lambda)=0, |z_i (h\lambda)|<1, i=1,2,\ldots, k \}
$$(eq:ch05:1.3.2)

An interval of absolute stability is simply the intersection of region $\mathcal{R}$ with the real axis.
:::



Here it should be noted that the literature in this area contains many
similar definitions. Sometimes the concept of absolute stability is
defined so that the roots can have magnitude 1 and sometimes strictly
$\,<1\,$; it makes little difference, provided that the root with
magnitude 1 is kept in mind when considering a problem and analysing the
results - for references see Lambert (1971,1991) and Shampine (1994)
from the reading list.

In the following, through examples, we will show two methods for finding the
interval and region of absolute stability for linear multistep methods.

