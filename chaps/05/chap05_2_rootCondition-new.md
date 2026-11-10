# Root Condition and Zero-Stability

It is possible to derive any number of multistep methods of various
order, but the most important factor related to each method is its
stability property. 

```{prf:definition} Stability
Stability of a numerical method is its ability to control the growth of perturbations, such as round-off and truncation errors, during the computation. A stable method ensures that these errors decay or remain bounded so that they do not grow uncontrollably and significantly corrupt the numerical solution.
```

<!-- Stability of a numerical method is its capability to keep errors at bay during computation. These errors are required to be dampened out eventually or remain bounded without contaminating the numerical solution significantly. -->

The general form of a $k$-step linear multistep method can be written as


$$
\sum_{i=0}^{k}\alpha_i y_{j+i}~=~ h\sum_{i=0}^{k}\beta_i f_{j+i} \qquad
     \text{with}~ \alpha_k =1, 
$$(eq:ch04:1.1) 

and the exact solution $y(x_{j+i})$ and its first derivative $f(x_{j+i})=y'(x_{j+i})$ satisfies a similar equation given by

$$
\sum_{i=0}^{k}\alpha_i y(x_{j+i})~=~ h\sum_{i=0}^{k}\beta_i f(x_{j+i}) + C_p h^p y^{(p)}(x_j),
$$(eq:ch04:1.1.b) 

where $C_p h^p y^{(p)}(\xi)$ is the leading truncation error of the method.

Subtracting equation {eq}`eq:ch04:1.1` from equation {eq}`eq:ch04:1.1.b` gives


$$
\sum_{i=0}^{k}\alpha_i \biggl( y(x_{j+i}) - y_{j+i} \biggr)~=~ h\sum_{i=0}^{k}\beta_i \biggl( f(x_{j+i}) - f_{j+i} \biggr) + C_p h^p y^{(p)}(\xi),
$$

which can be written in another form

$$
\sum_{i=0}^{k}\alpha_i e_{j+i}~=~ h\sum_{i=0}^{k}\beta_i \biggl( f(x_{j+i}) - f_{j+i} \biggr) + C_p h^p y^{(p)}(\xi),
$$(eq:ch04:1.1.c) 

where $e_{j+i}=y(x_{j+i}) - y_{j+i}$ is the error at $x_{j+i}$. Equation {eq}`eq:ch04:1.1.c` can be considered the error propagation equation of the discrete system. In the extreme case, when the right hand side of equation {eq}`eq:ch04:1.1.c` vanishes, will the errors be controlled or amplified?

Let $h \rightarrow 0$, we get a homogeneous linear difference equation for error terms $e_j, e_{j+1}, \ldots, e_{j+k}$

$$
\alpha_0 e_j + \alpha_1 e_{j+1} + \alpha_2 e_{j+2} + \cdots + \alpha_k e_{j+k} = 0,
$$(eq:ch04:1.1.d)

and its characteristic equation is

$$
    \alpha_0 + \alpha_1 z + \alpha_2 z^2 + \dots + \alpha_k z^k = 0.
$$(eq:ch04:1.1.e) 

- If equation {eq}`eq:ch04:1.1.e` has $k$ non-repeated roots $z_1 \neq z_2 \neq \ldots \neq z_k$, then the general solution to equation {eq}`eq:ch04:1.1.d` is

    $$
    e_j = c_1 z_1^j + c_2 z_2^j + \cdots + c_k z_k^j.
    $$({eq}`eq:ch04:1.1.f`)

- If equation {eq}`eq:ch04:1.1.e` has $k$ repeated roots $z_1 = z_2 = \ldots = z_k = z$, then the general solution to equation {eq}`eq:ch04:1.1.d` is

    $$
    e_j = ( c_1  + c_2 j + c_3 j^2 + \cdots + c_k j^{k-1} ) z^j.
    $$({eq}`eq:ch04:1.1.f`)

See {numref}`chap01:complexNumber:DE` for more details on difference and characteristic equations.

:::{admonition} Question
:class: question

What kind of conditions shall we impose to keep the error $e_{j}=y(x_{j}) - y_{j}$ bounded for $j = 1, 2, 3, \ldots, n, \ldots$?

:::


::::{prf:definition} First and Second characteristic polynomials
:label: def:char-poly

For a general linear multistep method 

$$
\sum_{i=0}^k \alpha_i y_{j+i} = h \sum_{i=0}^k f_{j+i},
$$

we call

$$
\rho(z) = \sum_{i=0}^{k} \alpha_i z^i
$$(eq:chap04:charpoly:first)

the **{index}`first characteristic polynomial`**, and 

$$
\sigma(z) = \sum_{i=0}^{k} \beta_i z^i
$$(eq:chap04:charpoly:second)

the **{index}`second characteristic polynomial`**.

<!-- 
$$
\L (z, h\lambda) = \rho(z) - h\lambda \sigma(z)
$$(eq:chap04:chapoly:relation)
the **{index}`stability polynomial`** of the multistep method.

:::{note}
In some books, $\pi(z, h\lambda)$ is used to represent the stability polynomial.
::: -->

::::

<!-- 
:::{prf:example}
Find the first and second characteristic polynomials and stability polynomial for a 2-step method 

$$
\alpha_0 y_{j-2} + \alpha_1 y_{j-1} + \alpha_2 y_{j}
= h(\beta_0f_{j-2 } + \beta_1 f_{j-1} + \beta_2 f_{j})    
$$

:::{admonition} Solution
:class: solution, dropdown

- First characteristic polynomial:
    
    $$
    \rho(z) = \alpha_0 + \alpha_1 z + \alpha_2 z^2
    $$

- Second characteristic polynomial:

    $$
    \sigma(z) = \beta_0 + \beta_1 z + \beta_2 z^2
    $$

- Stability polynomial:

    $$
    \begin{aligned}
    L(z, h \lambda) & = ( \alpha_0 + \alpha_1 z + \alpha_2 z^2 ) - h \lambda (\beta_0 + \beta_1 z + \beta_2 z^2) \\
                    & = (\alpha_0  - h \lambda \beta_0 ) + (\alpha_1 - h \lambda \beta_1) z + (\alpha_2 - h \lambda \beta_2) z^2
    \end{aligned}
    $$
-->

:::


:::{prf:definition} Root Condition
:label: definition-root-condition
Let $\,z_1,z_2,\dots,z_k\,$ denote the roots of the first
characteristic polynomial $\rho(z) = \alpha_0 + \alpha_1 z + \dots + \alpha_k z^k$ associated with a
linear multistep method. If $\,|z_i|\leq1\,$, for each
$\,i=1,2,...,k\,$, and all roots with absolute value $1$ are simple
roots (i.e. not repeated), then the method is said to satisfy
the **{index}`root condition`**.
:::

```{tikz} Unit circle in the complex plane $\C$.
:xscale: 48
:libs: arrows.meta

\draw (0mm,0mm) circle (20mm);
\draw[-Stealth] (-24mm,0mm) -- (24mm,0mm);
\draw[-Stealth] (0mm,-24mm) -- (0mm,24mm);
\coordinate (Z) at (35:20mm);

\node[anchor = north west, inner sep = 0pt] at (2mm,24mm)
{\scriptsize Im$(z)$};
\node[anchor = west] at (24mm,0mm) {\scriptsize Re$(z)$};

\draw[domain=0:35, smooth] plot ({8mm*cos(\x)},{8mm*sin(\x)});
\node at (17.5:6mm) {\scriptsize$\theta$};

\draw
(0mm,0mm)
-- node[anchor = north, inner sep = 2pt] {\scriptsize\hspace*{2ex}cos$(\theta)$}
({20mm*cos(35)},0mm)
--
(Z)
-- node[anchor = south east, inner sep = 1pt] {\scriptsize$z$}
(0mm,0mm);

\node[anchor = south west, inner sep = 1pt] (S) at (20mm,8mm) {\scriptsize sin$(\theta)$};
\draw[-Stealth] ({20mm*cos(35)},4mm) -- (S);
```

```{index} Stability
```

::::{prf:definition} Zero-Stability
A linear multistep method is **zero-stable** if its first characteristic polynomial $\,\rho(z)\,$ satisfies
the root condition given in {prf:ref}`definition-root-condition`, i.e. the roots of $\,\rho(z)\,$ lie inside or on
the unit circle, and the roots on the unit circle are distinct.

- A zero-stable method is `strongly stable` if all the roots of $\rho(z)$ are inside the unit circle except for only one root, called *principal root*, with the magnitude of one (i.e. $|z| = 1$).

- A zero-stable method is `weakly stable` if it has more than one root on the unit circle.

:::{note}
In electrical engineering and control theory, the right hand side of a first-order ODE 

 $$\diff{y}{x}=f(x, y)$$

is called the input of the system. In this context, we can interpret `zero-stability` as the stability of the system with **zero input**.

We use the root condition to assess whether the discretised system (difference equation) can remain stable under **zero input** condition.
:::

::::

<!-- 
:::{prf:definition} Strong Stability
A zero-stable method is *{index}`strongly stable`* if the roots of $\rho(z)$ are inside
the unit circle except for only one root, call *principal root*, with
the magnitude of one (i.e. $|z| = 1$).
:::

:::{prf:definition} Weak Stability
A zero-stable method is *{index}`weakly stable`* if it but has more than one root on the unit circle.
::: 
-->

:::::{prf:example}
Find the roots associated with the following characteristic polynomials:

1.  $\rho(z)= z^3 + z $

    ::::{dropdown} Solution (click to show)
    
    Let $z^3 + z ~=~ 0$\
    $\therefore\quad z(z^2 + 1) ~=~ 0$\
    $\therefore\quad z_1 ~=~ 0, ~~ z_2 ~=~ i, ~~z_3 ~= -i$

    We can also use Matlab to find the roots of the polynomial

    ```matlab
    p=[1 0 1 0];     %vector defining the coefficients of the polynomial
    roots(p)         %solve the polynomial equation
    ```

    Output

    ```matlab
    ans =

        0.0000 + 0.0000i
        0.0000 + 1.0000i
        0.0000 - 1.0000i
    ```

    $z_1$, $z_2$, and $z_3$ are shown on the unit circle. Because
    there are more than one root on the unit circle, the method is
    weakly stable.

    ```{tikz}
    :libs: arrows.meta
    :xscale: 40

    \draw[-Stealth] (-25mm,0mm) -- (25mm,0mm);
    \draw[-Stealth] (0mm,-25mm) -- (0mm,25mm);
    \node[inner sep = 0pt, anchor = west] at (27mm,0mm) {Re$(z)$};
    \node[inner sep = 0pt, anchor = west] at (2mm,25mm) {Im$(z)$};
    \draw (0mm,0mm) circle (20mm);

    \coordinate (xi1) at (0:0mm);
    \fill (xi1) circle (1mm);
    \node[anchor = south west] at (xi1) {$z_1 = 0$};

    \coordinate (xi2) at (90:20mm);
    \fill (xi2) circle (1mm);
    \node (l2) at (20mm,20mm) {$z_2 = i$};
    \draw[-Stealth] (xi2) -- (l2);

    \coordinate (xi3) at (270:20mm);
    \fill (xi3) circle (1mm);
    \node[anchor = north west] at (xi3) {$z_3 = -i$};     
    ```
    ::::      

2.  $\rho(z)=z^4 + z$

    :::{dropdown} Solution (click to show)

    Let $z^4 + z ~=~ 0$

    $$
    \begin{aligned}
    z^4 + z  & = z(z^3 + 1) \\
                 & = z (z+1) (z^2-z+1) \\
    \end{aligned}
    $$

    $\therefore\quad z_1 ~=~ 0$, $z_2 = -1$,  $z_3 = \dfrac{1}{2} + i\dfrac{\sqrt{3}}{2}$, 
    $z_4 = \dfrac{1}{2} - i\dfrac{\sqrt{3}}{2}$.

    We can also use Matlab to find the roots of the polynomial

    ```matlab
    syms z
    solve(z^4+z)
    ```

    Output

    ```matlab
    ans =
                    -1
                    0
    1/2 - (3^(1/2)*1i)/2
    (3^(1/2)*1i)/2 + 1/2
    ```    

    Because there are more than one root on the unit circle, the method
    is weakly stable.

    ```{tikz}
    :libs: arrows.meta
    :xscale: 40

    \draw[-Stealth] (-25mm,0mm) -- (25mm,0mm);
    \draw[-Stealth] (0mm,-25mm) -- (0mm,25mm);
    \node[inner sep = 0pt, anchor = west] at (27mm,0mm) {Re$(z)$};
    \node[inner sep = 0pt, anchor = west] at (2mm,25mm) {Im$(z)$};
    \draw (0mm,0mm) circle (20mm);

    \coordinate (xi1) at (0:0mm);
    \fill (xi1) circle (1mm);
    \node[anchor = south west] at (xi1) {$z_1$};

    \foreach\x/\a/\d in {2/180/south,3/60/west,4/300/west}
    {
        \fill (\a:20mm) circle (1mm);
        \node[anchor = \d, inner sep = 1mm] at (\a:23mm) {$z_\x$};
    }
    ```  
    ::: 
:::::