# Characteristic Polynomials and Root Condition

It is possible to derive any number of multistep methods of various
order, but the most important factor related to each method is its
stability property. 

```{prf:definition} Stability
Stability of a numerical method is its capability to keep errors at bay during computation. These errors are required to be dampened out eventually or remain bounded without contaminating the numerical solution significantly.
```


For simplicity, we study the stability by
considering a general linear multistep method,


$$
\sum_{i=0}^{k}\alpha_i y_{j+i}~=~ h\sum_{i=0}^{k}\beta_i f_{j+i}, \qquad
     \text{with}~ \alpha_k =1 
$$(eq:ch04:1.1) 

 and a test differential equation,


$$
\frac{dy}{dx}= f(x,y) = \lambda y, \quad
     y(x_0) \,=\,y_0
$$(eq:ch04:1.2)

where $\lambda$ is a constant.

:::{note}
:class: dropdown

The general solution to the test problem {eq}`eq:ch04:1.2` is 

$$
\begin{aligned}
    && y \,&=\, A\,e^{\lambda x}\,,
    & y(x_0) &= y_0 ~~\Rightarrow~~ A = y_0\,e^{-\lambda x_0} &&
\end{aligned}
$$

 thus, the exact solution is:
$\displaystyle{y_j ~=~ y_0\,e^{\lambda(x_j-x_0)}.}$
:::

According to the test problem {eq}`eq:ch04:1.2`, we can substitute
$
    f_j = \lambda y_j
$
into equation {eq}`eq:ch04:1.1` and get

$$
\sum_{i=0}^{k}\alpha_i y_{j+i}~=~ h\lambda\sum_{i=0}^{k}\beta_i y_{j+i}~, 
$$(eq:ch04:1.3)

which can be re-arranged as

$$
\sum_{i=0}^{k}\gamma_i y_{j+i}=0~, ~\text{with}~ \gamma_i =\alpha_i - h\lambda \beta_i
$$(eq:ch04:1.4)

We can write equation {eq}`eq:ch04:1.4` in the operator form as

$$
\L (\E) y_j = 
\left(\gamma_0 \E^0 + \gamma_1 \E^1 + \gamma_2 \E^2 + \cdots + \gamma_k \E^k \right) y_j =0~\,
$$

and get its {index}`characteristic equation`

$$
\L (z, h\lambda)=
\gamma_0 + \gamma_1 z + \gamma_2 z^2 + \cdots + \gamma_k z^k = 0
$$(eq:ch04:1.5)

This is a polynomial equation of degree $k$ and has $k$
roots, $\,z_1, z_2, \dots, z_k\,$, which may be real or complex.
If these roots are distinct, the general solution of the difference
equation {eq}`eq:ch04:1.4` is 

$$
\begin{aligned}
y_j ~=~ A_1\, z_1^j + A_2\, z_2^j + \,\dots\, + A_k\,z_k^j
\end{aligned}
$$(eq:ch04:1.6)

 where $A_1$, $A_2$, ..., $A_k$ are constant. See {numref}`chap01:complexNumber:DE` for more details on difference and characteristic equations.

:::{admonition} Question
:class: question

What kind of conditions shall we impose to keep the general solution {eq}`eq:ch04:1.6` bounded?

:::

::::{prf:definition} Characteristic Polynomials
:label: def:char-poly

For a general linear multistep method 

$$
\sum_{i=0}^k \alpha_i y_{j+i} = h \sum_{i=0}^k f_{j+i},
$$

the expression in the form

$$
\L (z, h\lambda) = \sum_{i=0}^k \left(\alpha_i - h\lambda \beta_i\right) z^i
$$(eq:chap04:charpoly)

is called its **{index}`characteristic polynomial`**.

:::{note}
:class: dropdown
In some books, $\pi(z, h\lambda)$ is used to represent the characteristic polynomial.
:::

We call

$$
\rho(z) = \sum_{i=0}^{k} \alpha_i z^i
$$(eq:chap04:charpoly:first)

the **{index}`first characteristic polynomial`**, and

$$
\sigma(z) = \sum_{i=0}^{k} \beta_i z^i
$$(eq:chap04:charpoly:second)

the **{index}`second characteristic polynomial`** of the multistep method.

These polynomails given in equations {eq}`eq:chap04:charpoly`, {eq}`eq:chap04:charpoly:first` and {eq}`eq:chap04:charpoly:second` have the following relation

$$
\L (z, h\lambda) = \rho(z) - h\lambda \sigma(z)
$$(eq:chap04:chapoly:relation)
::::

:::{prf:example}
Find the characteristic polynomial $\L (z, h\lambda)$ for a 2-step method 

$$
\alpha_0 y_{j-2} + \alpha_1 y_{j-1} + \alpha_2 y_{j}
= h(\beta_0f_{j-2 } + \beta_1 f_{j-1} + \beta_2 f_{j})    
$$

:::{admonition} Solution
:class: solution, dropdown

- Method 1:

    Substituting $\,f = \lambda\,y\,$ into the 2-step method formula, we have

    $$
    \alpha_0 y_{j-2} + \alpha_1 y_{j-1} + \alpha_2 y_{j}
    = h\lambda(\beta_0 y_{j-2} + \beta_1 y_{j-1} + \beta_2 y_{j})    
    $$

    and re-arrange it as

    $$
    (\alpha_0-h\lambda \beta_0) y_{j-2}
    + (\alpha_1-h\lambda \beta_1) y_{j-1}
    + (\alpha_2-h\lambda \beta_2) y_{j} = 0
    $$

    Writing the equation in shift operator form 

    $$
    \left[
    (\alpha_0-h\lambda \beta_0) \E^0
    + (\alpha_1-h\lambda \beta_1) \E^1
    + (\alpha_2-h\lambda \beta_2) \E^2
    \right] y_{j-2} =0 
    $$

    so the characteristic polynomial is

    $$
    \begin{aligned}
    \L (z, h\lambda) 
    &=\sum_{i=0}^{2} (\alpha_i - h\lambda \beta_i) z^i\\
    & = (\alpha_0-h\lambda \beta_0) z^0
    + (\alpha_1-h\lambda \beta_1) z^1
    + (\alpha_2-h\lambda \beta_2) z^2
    \end{aligned}
    $$

- Method 2:
    
    Using {eq}`eq:chap04:charpoly` given in {prf:ref}`def:char-poly`, we can quickly work out the characteristic polynomial for this 2-step method

    $$
    \begin{aligned}
    \L (z, h\lambda) 
    &=\sum_{i=0}^{2} (\alpha_i - h\lambda \beta_i) z^i\\
    & = (\alpha_0-h\lambda \beta_0) z^0
    + (\alpha_1-h\lambda \beta_1) z^1
    + (\alpha_2-h\lambda \beta_2) z^2
    \end{aligned}
    $$

:::


:::{prf:definition} Root Condition
:label: definition-root-condition
Let $\,z_1,z_2,\dots,z_k\,$ denote the roots of the first
characteristic polynomial $\,\rho(z)\,$ associated with a
linear multistep method. If $\,|z_i|\leq1\,$, for each
$\,i=1,2,...,k\,$, and all roots with absolute value $1$ are simple
roots (i.e. not repeated), then the difference method is said to satisfy
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

:::{prf:theorem} Stability
A linear multistep method of order $\,\geq1\,$ is `stable` if the
roots of its first characteristic polynomial $\,\rho(z)\,$ satisfies
the root condition, i.e. the roots of $\,\rho(z)\,$ lie inside or on
the unit circle, and the roots on the unit circle are distinct (or
simple) - this is called the root condition.
:::

:::{prf:definition} Strong Stability
A method is *{index}`strongly stable`* if the roots of $\rho(z) = 0$ are inside
the unit circle except for only one root, call *principal root*, with
the magnitude of one(i.e. $|z| = 1$).
:::

:::{prf:definition} Weak Stability
A method is *{index}`weakly stable`* if it is stable (i.e. satisfies the root
condition) but has more than one root on the unit circle.
:::

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
    p=[1 0 0 1 0];     %vector defining the coefficients of the polynomial
    roots(p)         %solve the polynomial equation
    ```

    Output

    ```matlab
    ans =

        0.0000 + 0.0000i
       -1.0000 + 0.0000i
        0.5000 + 0.8660i
        0.5000 - 0.8660i
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