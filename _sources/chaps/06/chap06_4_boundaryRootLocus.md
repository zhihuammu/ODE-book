# The Boundary Root Locus Method for Finding Regions of Absolute Stability

We illustrate this method by considering the following example.

:::{prf:example}
Find the region of absolute stability for the two-step explicit Adams
method 

$$
\begin{aligned}
        y_{j+1} ~=~ y_j + \frac{h}{2}(3f_j - f_{j-1})    
\end{aligned}
$$

 when applied to $y' = \lambda y$.

:::{admonition} Solution
:class: solution

The characteristic equation is 

$$
\begin{aligned}
        z^2 - (1 + \frac{3}{2}h\lambda)z + \frac{1}{2}h\lambda ~=~ 0    
\end{aligned}
$$

 thus 

$$
\begin{aligned}
        \rho(z) ~=~ z^2 - z
        \qquad\text{and}\qquad
        \sigma(z) ~=~ \frac{1}{2}(3z - 1)    
\end{aligned}
$$

 Since
$\qquad \pi ~=~ \rho(z) - h\lambda\sigma(z) ~=~ 0
    \qquad\Rightarrow\qquad
    h\lambda ~=~\dfrac{\rho(z)}{\sigma(z)}$

and we get
$\displaystyle\qquad h\lambda ~=~ \frac{z^2 - z}{\frac{1}{2}(3z - 1)} ~=~ \frac{2(z^2 - z)}{3z - 1}\,$.

Using the relation $z = e^{\i\theta}$ for the locus of points on the
boundary of the unit circle we get 

$$
\begin{aligned}
        h\lambda ~=~ \frac{2(e^{\i 2\theta} - e^{i\theta})}{3e^{\i\theta} - 1}\,.    
\end{aligned}
$$

 The following derivations illustrate in detail the steps
required for finding the $x$, $y$ coordinates of the points on the
boundary locus of the region of absolute stability. We can use
$\,e^{\i n\theta} = \cos n\theta + \i\sin n\theta\,$ and get:


$$
\begin{aligned}
        h\lambda ~=~ \frac{2\,(\cos2\theta + \i\sin2\theta - \cos\theta - \i\sin\theta)}{3(\cos\theta + \i\sin\theta) - 1}    
\end{aligned}
$$

 Since $\,h\lambda$ expression is complex, we can now
separate the real and imaginary components as 


$$
\begin{aligned}
        h\lambda ~=~ x(\theta) + \i\,y(\theta) \qquad
        \text{where}&\qquad x(\theta) ~=~\frac{2(\cos\theta - 1)^2}{3\cos\theta - 5}
        \\[1ex]
        \text{and}&\qquad y(\theta) ~=~ \frac{2\sin\theta\,(\cos\theta - 2)}{3\cos\theta - 5}\,.    
\end{aligned}
$$



It can easily be seen that $x(-\theta) = x(\theta)$ and
$y(-\theta) = -y(\theta)$, so that the locus is symmetric about the
x-axis. Evaluating $x$ and $y$ at intervals of $\theta$ of $30^{\circ}$,
we obtain the following table:


| $\theta$  | $0^{\circ}$  | $30^{\circ}$ | $60^{\circ}$  | $90^{\circ}$  | $120^{\circ}$ | $150^{\circ}$ | $180^{\circ}$ |
|---|---|---|---|---|---|---|---|
| $x$  | 0.000  | -0.015  | -0.143  | -0.400  | -0.692  | -0.917  | -1.000|
|$y$  | 0.000  | 0.472  | 0.742  | 0.800  | 0.666  | 0.377  | 0.000|


These points are plotted in the complex $h\lambda$ plane, and the
resulting region $A$, $A \subset \C$, of absolute stability is shown in the following
figure:

```{figure} /images/06/fig-chap06-c5m39f1shade.svg
---
width: 500px
name: figure-AB2
---
Stability region of AB 2-step method.
```

:::

The region of absolute stability can be easily found by using a
mathematical package. A worksheet solution for Example 3 above is
attached which illustrates the computational steps involved when a
Matlab program for finding the region of absolute stability is used.

The boundaries of the regions of absolute stability for various order
Adams methods are shown 
```{figure} /images/06/fig-chap06-c5m39f2.svg
---
width: 500px
name: figure-ABk
---
Stability region of AB $k$-step method.
```

```{figure} /images/06/fig-chap06-c5m39f3.svg
---
width: 500px
name: figure-AMk
---
Stability region of AM $k$-step method.
```

We learn from these diagrams that the region of
absolute stability becomes smaller as the order of the method increases;
for the formula of the same order the Adams-Moulton formula has a
significantly larger region of absolute stability than the
Adams-Bashforth formula. The size of these regions is usually quite
acceptable for a practical point of view. For example, the real values
of $\,h\lambda\,$ in the region of absolute stability for the
fourth-order Adams-Moulton formula are given by $~-3 < h\lambda < 0\,$.
This is not a serious restriction on $h$ in most cases.

The Adams-family of formulae is very convenient for creating a variable
order program, and their stability regions are quite acceptable. There
will be difficulties with problems for which $\lambda$ is negative and
large in magnitude; these problems are best treated by other methods.

There are special methods for which the region of absolute stability
consists of all complex values of $\,h\lambda\,$ with
$\,Real(h\lambda) < 0\,$. These methods are called *A-stable*, and with
them there is no restriction on $h$ in order to have stability of the
type we have been considering.

:::{prf:definition} $A$-stability
The property that $\displaystyle\,\lim_{j \to \infty} y_j = 0\;$
($y_j\,$ approximated solution) for all $\,h>0\,$ and all complex
$\lambda$ with $\,Real(\lambda)<0\,$ is called *{index}`A-stability`*.
:::

For certain applications, stiff differential equations, the A-stability
property of the numerical method is an important consideration.

:::{prf:example}
Show that the backward Euler method (or first order Adams-Moulton
formula) 

$$
\begin{aligned}
        y_{j+1} ~=~ y_j + h\,f_{j+1}    
\end{aligned}
$$

 is A-stable.

:::{admonition} Solution
:class: solution

Applying this formula to the test equation $y' = \lambda y$ we find

$$
\begin{aligned}
y_{j+1} & =  y_j + hy_{j+1} \\
(1-h\lambda) y_{j+1} & = y_j \\
(1-h\lambda) y_{j+1} - y_j & =0
\end{aligned}
$$

This has a solution of the form $y_j = A_1z_1^j$. 

$$
\begin{aligned}
        && (1 - h\lambda)z - 1 ~&=~ 0
        & \therefore\quad z ~&=~ \frac{1}{1 - h\lambda}\,. &&    
\end{aligned}
$$

 Substituting gives: 

$$
\begin{aligned}
        y_j ~&=~ A_1 \left(
            \frac{1}{1 - h\lambda}
        \right)^j,\quad \text{where $A_1$ is constant;}    
\end{aligned}
$$

 then $y_j \to 0$ as $x_j \to \infty$ if and only if


$$
\begin{aligned}
        \frac{1}{|1 - h\lambda|} \,<\, 1\,.    
\end{aligned}
$$

 This will be true for all $h\lambda$ with
$Real(\lambda) < 0$, and thus the backward Euler formula is an A-stable
method.
:::

It would have been useful to have A-stable multistep methods of order
greater than 2, but it has been shown that, Dahlquist (1963), there are
no such methods.

