# Gregory-Newton Interpolation Formulae

## The need for interpolation



:::{admonition} Question
:class: important
Given a general sequence
$\left\{f_j\right\}_{j=-\infty}^{+\infty}$, if we know the value of each
member $f_j$, how can we find the value of $f(x)$ for
$x_j < x < x_{j+1}$?
:::

:::{figure} ../images/fig-interpolation.svg
---
width: 600px
name: figure-discretepoints
---

:::


Possiple options are:
-   Take an average: $f(x)=\dfrac{f_j + f_{j+1}}{2}$
-   A precise forward-shift: $f(x)=E^{s} f_j$,
    $0<s=\dfrac{x-x_j}{x_{j+1}-x_j}<1$

For the first option, we may ask "Is this accurate?" For the second option, we may ask "How to SHIFT?"


## Gregory-Newton Forward Interpolation

Let $f_j$ denote $f(x_j)$. We wish to obtain an approximate value for
$f_{j+s}$, where: $s \>=\> \dfrac{x - x_j}{h}$

Note that we have $\,f_{j+s}=f(x_j\!+\!sh)=E^sf(x_j)=E^sf_j\,$.

To obtain a formula involving forward differences we substitute
$\,E=1+\Delta\,$ therefore: 

$$\begin{aligned}
        f_{j+s} &= E^{s} f_j \\
                &= (1 + \Delta)^s f_j     
\end{aligned}
$$

We need to work out $(1 + \Delta)^s=?$ Let's look at the Binomial Expansion first

::::{note} 
$$
\begin{aligned}
	    (a+b)^n & =  \sum_{k=0}^{n} \begin{pmatrix} n \\ k \end{pmatrix} a^{n-k}b^{k} \\
			    & = \begin{pmatrix} n \\ 0 \end{pmatrix} a^{n}b^{0} 
					+ \begin{pmatrix} n \\ 1 \end{pmatrix} a^{n-1}b^{1}
					+ \begin{pmatrix} n \\ 2 \end{pmatrix} a^{n-2}b^{2}
					+ \cdots
					+ \begin{pmatrix} n \\ n \end{pmatrix} a^{0}b^{n}
\end{aligned}
$$

$\begin{pmatrix} n \\ k \end{pmatrix} = \dfrac{n!}{k!(n-k)!}
	=\dfrac{n(n-1)(n-2)\cdots(n-k+1)}{k!}$

::::

So the shift operator can be expanded as

$$
\begin{align}
E^{s} & =  (1+\Delta)^s  \\
      & =  \sum_{n=0}^{\infty} \begin{pmatrix} s \\ n \end{pmatrix} 1^{s-n}\Delta^{n} \\
      & = \begin{pmatrix} s \\ 0 \end{pmatrix} \Delta^{0} 
            + \begin{pmatrix} s \\ 1 \end{pmatrix} \Delta^{1}
            + \begin{pmatrix} s \\ 2 \end{pmatrix} \Delta^{2}
            + \cdots
            + \begin{pmatrix} s \\ k \end{pmatrix} \Delta^{k}
            + \cdots \\
      & = 1+ s\Delta + \frac{s(s-1)}{2!} \Delta^2 + \frac{s(s-1)(s-2)}{3!} \Delta^3 +\cdots + \frac{s(s-1)(s-2)\cdots(s-k+1)}{k!}\Delta^k + \cdots
\end{align}
$$

:::{note}
$\begin{pmatrix} s \\ k \end{pmatrix} = \dfrac{s!}{k!(s-k)!} =\dfrac{s(s-1)(s-2)\cdots(s-k+1)}{k!}$,

$\begin{pmatrix} s \\ 0 \end{pmatrix} = \dfrac{s!}{0!(s-0)!}=1$.
:::

Therefore, the forward Gregory-Newton Interpolation formulae is

:::{math}
:label: eq:GN:forward
f_{j+s} =  f_j + s\Delta f_j
        + \frac{s(s-1)}{2!}\Delta^2 f_j + \cdots 
        + \frac{s(s-1)(s-2)\cdots(s-k+1)}{k!}\Delta^k f_j + \cdots    
:::

This is an infinite series in $s$ and in practice we terminate it after
a finite number of terms $k$. Thus, we can write:

$$f(x_j+sh) \>=\> P_k(x_s) + e_k(x_s) \>\simeq\> P_k(x_s)$$

where $P_k(x_s)$ represents the polynomial, and $e_k(x_s)$ is the error caused by terminating the series

$$
P_k(x_s)\>=\> f_j
            + s\Delta f_j
            + \frac{s(s-1)}{2!}\Delta^2 f_j
            + \dots
            + \frac{s(s-1)(s-2)\dots(s-k+1)}{k!}\Delta^{k} f_j
$$

:::{note}
The G-N forward interpolation formula (polynomial) is useful for
interpolating near the *beginning* of a sequence.
:::

## Gregory-Newton Backward Interpolation


To find $f(x)=f(x_j+sh)$ for $x_{j-1}<x<x_j$, we can also use backward
shifting 

$$\begin{aligned}
        f_{j+s} & = E^{s} f_j  \hspace{4cm} \left(s=\frac{x-x_j}{h}<0\right) \\
        \>&=\> (1 - \nabla)^{-s} f_j\\
        \>&=\> \left(1 + \frac{(-s)}{1!}(-\nabla)
        + \frac{(-s)(-s-1)}{2!}\nabla^2
        + \frac{(-s)(-s-1)(-s-2)}{3!}(-\nabla)^3
        + \cdots\right) f_j\\
        \>&=\> f_j + s\nabla f_j + \frac{s(s+1)}{2!}\nabla^2 f_j + \cdots
        + \frac{s(s+1)\cdots(s+k-1)}{k!}\nabla^k f_j + \dots
    
\end{aligned}
$$ 
We can separate the whole polynomial into two parts:

$$f(x_j + sh) = P_k(x_s) + e_k(x_s) \simeq P_k(x_s)$$

Therefore the backward Gregory-Newton interpolation formula is

:::{math}
:label: eq:GN:backward
f_{j+s}= f_j + s\nabla f_j
            + \frac{s(s+1)}{2!}\nabla^2 f_j
            + \cdots
            + \frac{s(s+1)\cdots(s+k-1)}{k!}\nabla^k f_j + \cdots
:::

:::{note}
The G-N backward interpolation formula (polynomial) is useful for
interpolating near the *end* of a sequence.
:::

Consider the following example difference table:

::: center
::: tabular
CCCCCC x & f(x) & f & \^2 f & \^3 f & \^4 f\
\
\
0 & 0\
& & 1\
1 & 1 & & 6\
& & 7 & & 6\
2 & 8 & & 12 & & 0\
& & 19 & & 6 &\
3 & 27 & & 18 & & 0\
& & 37 & & 6 &\
4 & 64 & & 24 & & 0\
& & 61 & & 6\
5 & 125 & & 30\
& & 91\
6 & 216\
:::
:::

When the tabulated function behaves like a polynomial, its
$n^\text{th}$-order differences are constant (or almost constant) and
the function can be approximated by a polynomial of degree $n$; in the
above table $3^\text{rd}$ order differences are constant, therefore the
function can be approximated by a $3^\text{rd}$ order polynomial - note
that $f(x)$ is in fact $x^3$. In order to find a polynomial of degree
$n$ which approximates the tabulated function sufficiently accurate, we
need to know the function values at $(n+1)$ points.

Let $y_j$ denote $f(x_j)$. We wish to obtain an approximate value for
$y_{j+s}$, where:

$$\begin{aligned}
    s ~=~ \frac{x - x_j}{h}
\end{aligned}$$

Note that we have $\,y_{j+s}=f(x_j\!+\!sh)=E^sf(x_j)=E^sy_j\,$.

To obtain a formula involving forward differences we substitute
$\,E=1+\Delta\,$ and, using the binomial expansion, therefore:
$$\begin{aligned}
    y_{j+s} ~&=~ (1 + \Delta)^s y_j \phantom{\left(\tfrac00\right)}\\
    y_{j+s} ~&=~ \left(1 + s\Delta + \tfrac{s(s-1)}{2!}\Delta^2
    + \tfrac{s(s-1)(s-2)}{3!}\Delta^3 + \dots\right) y_j\\
    \therefore\quad y_{j+s} ~&=~ y_j + s\Delta y_j
    + \tfrac{s(s-1)}{2!}\Delta^2 y_j
    + \tfrac{s(s-1)(s-2)}{3!}\Delta^3 y_j + \dots
    \numberthis\label{eq:ch01:2.1}
\end{aligned}$$

This is an infinite series in $s$ (or equivalently in $x$ since
$\,s=\frac{x-x_j}{h}\,$), and in practice we terminate it after a finite
number of terms $k$. Thus, equivalently we may write:

$$\begin{aligned}
    y(x_j+sh)~=~P_k(x_s)+e_k(x_s)~\simeq~P_k(x_s)
\end{aligned}$$

with $$\begin{aligned}
    P_k(x_s)~=~ y_j
    + s\Delta y_j
    + \tfrac{s(s-1)}{2!}\Delta^2 y_j
    + \dots
    + \tfrac{s(s-1)(s-2)\dots(s-k+1)}{k!}\Delta^{k} y_j
    \numberthis\label{eq:ch01:2.2}
\end{aligned}$$

where $\,P_k(x_s)\,$ is the polynomial that represents the function and
$\,e_k(x_s)\,$ is the error associated with terminating the infinite
series. Equation ([\[eq:ch01:2.1\]](#eq:ch01:2.1){reference-type="ref"
reference="eq:ch01:2.1"}) (or
([\[eq:ch01:2.2\]](#eq:ch01:2.2){reference-type="ref"
reference="eq:ch01:2.2"})) is called the . Because it involves forward
differences it is useful for interpolating near the *beginning* of a
table.

In a similar manner the **G-N backward formula** can be derived
$$\begin{aligned}
    y_{j+s} ~&=~ (1 - \nabla)^{-s} y_j\\
    y_{j+s} ~&=~ \left(1 + \tfrac{(-s)}{1!}(-\nabla)
    + \tfrac{(-s)(-s-1)}{2!}\nabla^2
    + \tfrac{(-s)(-s-1)(-s-2)}{3!}(-\nabla)^3
    + \dots\right) y_j\\
    y_{j+s} ~&=~ y_j + s\nabla y_j + \tfrac{s(s+1)}{2!}\nabla^2 y_j + \dots+ \tfrac{s(s+1)\dots(s+k-1)}{k!}\nabla^k y_j
    \numberthis\label{eq:ch01:2.3}
\end{aligned}$$ Since $$\begin{aligned}
    y(x_j + sh) ~&=~ P_k(x_s) + e_k(x_s) \simeq P_k(x_s)
\end{aligned}$$ we can write $$\begin{aligned}
    y(x_j + sh) ~&=~ P_k(x_s) ~=~ y_j + s\nabla y_j
    + \tfrac{s(s+1)}{2!}\nabla^2 y_j
    + \dots
    + \tfrac{s(s+1)\dots(s+k-1)}{k!}\nabla^k y_j
    \numberthis\label{eq:ch01:2.4}
\end{aligned}$$

Equation ([\[eq:ch01:2.4\]](#eq:ch01:2.4){reference-type="ref"
reference="eq:ch01:2.4"}) (or
([\[eq:ch01:2.3\]](#eq:ch01:2.3){reference-type="ref"
reference="eq:ch01:2.3"})) is called the and it can be more useful for
interpolating near the *end* of a table.

Remark 1.1: An alternative notation for expressing the terms in the
Newton interpolating polynomials is by using binomial coefficients; for
example, equation ([\[eq:ch01:2.1\]](#eq:ch01:2.1){reference-type="ref"
reference="eq:ch01:2.1"}) can be expressed as: $$\begin{aligned}
    y_{j+s} = \sum_{i=0}^{k} \begin{pmatrix} s \\ i \end{pmatrix} \Delta^i y_j
    \numberthis\label{eq:ch01:2.5}
\end{aligned}$$ where $k$ denotes the number of terms included in the
series and $\genfrac(){0pt}{0}{s}{i}$ are binomial coefficients defined
as:

$$\begin{aligned}
    \begin{pmatrix} s \\ 0 \end{pmatrix} = 1,
    \quad \text{and} \quad
    \begin{pmatrix} s \\ i \end{pmatrix} = \frac{s(s-1)\dots(s-i+1)}{i!},
    \quad \text{for} \quad
    i > 0
    \numberthis\label{eq:ch01:2.6}
\end{aligned}$$ By including terms for $i =$ 0, 1, 2, 3, \..., we will
have: $$\begin{aligned}
    y_{j+s} ~&=~ \left(1 + s\Delta + \tfrac{s(s-1)}{2!}\Delta^2
    + \tfrac{s(s-1)(s-2)}{3!}\Delta^3 + \dots\right) y_j\\
    \text{and}\quad
    y_{j+s} ~&=~ y_j + s\Delta y_j+ \tfrac{s(s-1)}{2!}\Delta^2 y_j
    + \tfrac{s(s-1)(s-2)}{3!}\Delta^3 y_j + \dots
\end{aligned}$$

Note that it is sometimes more convenient to write the interpolating
polynomial in terms of function definition. For example, the G-N
backward interpolation polynomial can be written in terms of the forward
difference operator $\,\Delta\,$, as:

$$\begin{aligned}
    y(x_{j+s}) ~\approxeq~ P_k(x) ~=~ y_j + s\Delta y_{j-1}
    + \tfrac{s(s+1)}{2!}\Delta^2 y_{j-2}
    + \tfrac{s(s+1)(s+2)}{3!}\Delta^3 y_{j-3}
    + \dots
\end{aligned}$$

or in terms of $f(x)$

$$\begin{aligned}
    f(x_{j+s}) ~\approxeq~ P_k(x) ~=~ f_j + s\Delta f_{j-1}
    + \tfrac{s(s+1)}{2!}\Delta^2 f_{j-2}
    + \tfrac{s(s+1)(s+2)}{3!}\Delta^3 f_{j-3}
    + \dots
\end{aligned}$$

This relationship can be seen from the following table

::: center
::: tabular
LLLLLLLL x & f(x) & f & \^2 f & \^3 f & \^4 f & \^5 f & \^6 f\
\
\
x\_-4 & f\_-4\
& & f\_-4\
x\_-3 & f\_-3 & & \^2 f\_-4\
& & f\_-3 & & \^3 f\_-4\
x\_-2 & f\_-2 & & \^2 f\_-3 & & \^4 f\_-4\
& & f\_-2 & & \^3 f\_-3 & & \^5 f\_-4\
x\_-1 & f\_-1 & & \^2 f\_-2 & & \^4 f\_-3 & & \^6 f\_-4\
& & f\_-1 & & \^3 f\_-2 & & \^5 f\_-3 &\
x_0 & f_0 & & \^2 f\_-1 & & \^4 f\_-2 & & \^6 f\_-3\
& & f_0 & & \^3 f\_-1 & & \^5 f\_-2 &\
x_1 & f_1 & & \^2 f_0 & & \^4 f\_-1 & & \^6 f\_-2\
& & f_1 & & \^3 f_0 & & \^5 f\_-1\
x_2 & f_2 & & \^2 f_1 & & \^4 f_0\
& & f_2 & & \^3 f_1\
x_3 & f_3 & & \^2 f_2\
& & f_3\
x_4 & f_4\
:::
:::

We see from the above table that the differences used form a diagonal
row going upward and to the right. This ascending diagonal row of
differences starting at $\,f_j\,$ is equal to the backward differences;
those in the downward sloping row are forward differences.

*From the tabulated values of the function $y$ given below interpolate a
value for $y(0.55)$.*

::: center
::: tabular
CCCCCCCC x & y & y & \^2 y & \^3 y & \^4 y & \^5 y & \^6 y\
\
\
0.5 & 0.47943\
& & 0.16479\
0.7 & 0.64422 & & -0.02568\
& & 0.13911 & & -0.00555\
0.9 & 0.78333 & & -0.03123 & & 0.00124\
& & 0.10788 & & -0.00430 & & 0.00017\
1.1 & 0.89121 & & -0.03553 & & 0.00142 & & -0.00006\
& & 0.07235 & & -0.00288 & & 0.00011\
1.3 & 0.96356 & & -0.03841 & & 0.00153\
& & 0.03394 & & -0.00135\
1.5 & 0.99749 & & -0.03976\
& & -0.00583\
1.7 & 0.99166\
:::
:::

*Solution:*

*We need to use the formula $s=\dfrac{x-x_j}{h}$ to calculate $s$.*

*First choose $\,x_0\,$ to be $0.5$; then, since $\,h = 0.2\,$ and
$\,x = x_0 + sh\,$ (i.e. $0.55=0.5+s(0.2)$), we have*
$\,s = \frac{0.05}{0.2} = 0.25$.

*Thus using* $y_s = y_0 + s\Delta y_0 + \frac{s(s-1)}{2!}\Delta^2 y_0
+ \frac{s(s-1)(s-2)}{3!}\Delta^3 y_0 + \frac{s(s-1)(s-2)(s-3)}{4!}\Delta^4 y_0
\dots$

::: tabular
lL *gives,* $y(0.55)~$ & = + +\
& + + + ...\
& = 0.47943 + 0.04120 + 0.00241 - 0.00030 - 0.00005\
& = 0.52268 = 0.5227 *to 4 decimal places.*
:::

*The tabulated function is in fact $\,\sin x\,$ and note that
$\,\sin(0.55) = 0.5227\,$ to $4$ decimal places.*

*Note that since in the above calculations we used the terms of the
Gregory-Newton forward interpolating polynomial up to and including
$\Delta^4$, then we can denote $y(0.55)$ as $P_4(0.55)$, and we could
say $y(0.55)~=~P_4(0.55)=0.5227$, that is using the first 5 terms of the
polynomial. Similarly if for example terms up to degree 2 (or second
order differences) were used, then we could say $y(0.55)~=~P_2(0.55)$,
that is including in the calculations the first three terms of the G-N
interpolating polynomial series up to $\Delta^2$ term.*

------------------------------------------------------------------------

## Gregory-Newton Interpolation Formulae

Consider the following example difference table:

::: center
::: tabular
CCCCCC x & f(x) & f & \^2 f & \^3 f & \^4 f\
\
\
0 & 0\
& & 1\
1 & 1 & & 6\
& & 7 & & 6\
2 & 8 & & 12 & & 0\
& & 19 & & 6 &\
3 & 27 & & 18 & & 0\
& & 37 & & 6 &\
4 & 64 & & 24 & & 0\
& & 61 & & 6\
5 & 125 & & 30\
& & 91\
6 & 216\
:::
:::

When the tabulated function behaves like a polynomial, its
$n^\text{th}$-order differences are constant (or almost constant) and
the function can be approximated by a polynomial of degree $n$; in the
above table $3^\text{rd}$ order differences are constant, therefore the
function can be approximated by a $3^\text{rd}$ order polynomial - note
that $f(x)$ is in fact $x^3$. In order to find a polynomial of degree
$n$ which approximates the tabulated function sufficiently accurate, we
need to know the function values at $(n+1)$ points.

Let $y_j$ denote $f(x_j)$. We wish to obtain an approximate value for
$y_{j+s}$, where:

$$\begin{aligned}
    s ~=~ \frac{x - x_j}{h}
\end{aligned}$$

Note that we have $\,y_{j+s}=f(x_j\!+\!sh)=E^sf(x_j)=E^sy_j\,$.

To obtain a formula involving forward differences we substitute
$\,E=1+\Delta\,$ and, using the binomial expansion, therefore:
$$\begin{aligned}
    y_{j+s} ~&=~ (1 + \Delta)^s y_j \phantom{\left(\tfrac00\right)}\\
    y_{j+s} ~&=~ \left(1 + s\Delta + \tfrac{s(s-1)}{2!}\Delta^2
    + \tfrac{s(s-1)(s-2)}{3!}\Delta^3 + \dots\right) y_j\\
    \therefore\quad y_{j+s} ~&=~ y_j + s\Delta y_j
    + \tfrac{s(s-1)}{2!}\Delta^2 y_j
    + \tfrac{s(s-1)(s-2)}{3!}\Delta^3 y_j + \dots
    \numberthis\label{eq:ch01:2.1}
\end{aligned}$$

This is an infinite series in $s$ (or equivalently in $x$ since
$\,s=\frac{x-x_j}{h}\,$), and in practice we terminate it after a finite
number of terms $k$. Thus, equivalently we may write:

$$\begin{aligned}
    y(x_j+sh)~=~P_k(x_s)+e_k(x_s)~\simeq~P_k(x_s)
\end{aligned}$$

with $$\begin{aligned}
    P_k(x_s)~=~ y_j
    + s\Delta y_j
    + \tfrac{s(s-1)}{2!}\Delta^2 y_j
    + \dots
    + \tfrac{s(s-1)(s-2)\dots(s-k+1)}{k!}\Delta^{k} y_j
    \numberthis\label{eq:ch01:2.2}
\end{aligned}$$

where $\,P_k(x_s)\,$ is the polynomial that represents the function and
$\,e_k(x_s)\,$ is the error associated with terminating the infinite
series. Equation ([\[eq:ch01:2.1\]](#eq:ch01:2.1){reference-type="ref"
reference="eq:ch01:2.1"}) (or
([\[eq:ch01:2.2\]](#eq:ch01:2.2){reference-type="ref"
reference="eq:ch01:2.2"})) is called the . Because it involves forward
differences it is useful for interpolating near the *beginning* of a
table.

In a similar manner the **G-N backward formula** can be derived
$$\begin{aligned}
    y_{j+s} ~&=~ (1 - \nabla)^{-s} y_j\\
    y_{j+s} ~&=~ \left(1 + \tfrac{(-s)}{1!}(-\nabla)
    + \tfrac{(-s)(-s-1)}{2!}\nabla^2
    + \tfrac{(-s)(-s-1)(-s-2)}{3!}(-\nabla)^3
    + \dots\right) y_j\\
    y_{j+s} ~&=~ y_j + s\nabla y_j + \tfrac{s(s+1)}{2!}\nabla^2 y_j + \dots+ \tfrac{s(s+1)\dots(s+k-1)}{k!}\nabla^k y_j
    \numberthis\label{eq:ch01:2.3}
\end{aligned}$$ Since $$\begin{aligned}
    y(x_j + sh) ~&=~ P_k(x_s) + e_k(x_s) \simeq P_k(x_s)
\end{aligned}$$ we can write $$\begin{aligned}
    y(x_j + sh) ~&=~ P_k(x_s) ~=~ y_j + s\nabla y_j
    + \tfrac{s(s+1)}{2!}\nabla^2 y_j
    + \dots
    + \tfrac{s(s+1)\dots(s+k-1)}{k!}\nabla^k y_j
    \numberthis\label{eq:ch01:2.4}
\end{aligned}$$

Equation ([\[eq:ch01:2.4\]](#eq:ch01:2.4){reference-type="ref"
reference="eq:ch01:2.4"}) (or
([\[eq:ch01:2.3\]](#eq:ch01:2.3){reference-type="ref"
reference="eq:ch01:2.3"})) is called the and it can be more useful for
interpolating near the *end* of a table.

Remark 1.1: An alternative notation for expressing the terms in the
Newton interpolating polynomials is by using binomial coefficients; for
example, equation ([\[eq:ch01:2.1\]](#eq:ch01:2.1){reference-type="ref"
reference="eq:ch01:2.1"}) can be expressed as: $$\begin{aligned}
    y_{j+s} = \sum_{i=0}^{k} \begin{pmatrix} s \\ i \end{pmatrix} \Delta^i y_j
    \numberthis\label{eq:ch01:2.5}
\end{aligned}$$ where $k$ denotes the number of terms included in the
series and $\genfrac(){0pt}{0}{s}{i}$ are binomial coefficients defined
as:

$$\begin{aligned}
    \begin{pmatrix} s \\ 0 \end{pmatrix} = 1,
    \quad \text{and} \quad
    \begin{pmatrix} s \\ i \end{pmatrix} = \frac{s(s-1)\dots(s-i+1)}{i!},
    \quad \text{for} \quad
    i > 0
    \numberthis\label{eq:ch01:2.6}
\end{aligned}$$ By including terms for $i =$ 0, 1, 2, 3, \..., we will
have: $$\begin{aligned}
    y_{j+s} ~&=~ \left(1 + s\Delta + \tfrac{s(s-1)}{2!}\Delta^2
    + \tfrac{s(s-1)(s-2)}{3!}\Delta^3 + \dots\right) y_j\\
    \text{and}\quad
    y_{j+s} ~&=~ y_j + s\Delta y_j+ \tfrac{s(s-1)}{2!}\Delta^2 y_j
    + \tfrac{s(s-1)(s-2)}{3!}\Delta^3 y_j + \dots
\end{aligned}$$

Note that it is sometimes more convenient to write the interpolating
polynomial in terms of function definition. For example, the G-N
backward interpolation polynomial can be written in terms of the forward
difference operator $\,\Delta\,$, as:

$$\begin{aligned}
    y(x_{j+s}) ~\approxeq~ P_k(x) ~=~ y_j + s\Delta y_{j-1}
    + \tfrac{s(s+1)}{2!}\Delta^2 y_{j-2}
    + \tfrac{s(s+1)(s+2)}{3!}\Delta^3 y_{j-3}
    + \dots
\end{aligned}$$

or in terms of $f(x)$

$$\begin{aligned}
    f(x_{j+s}) ~\approxeq~ P_k(x) ~=~ f_j + s\Delta f_{j-1}
    + \tfrac{s(s+1)}{2!}\Delta^2 f_{j-2}
    + \tfrac{s(s+1)(s+2)}{3!}\Delta^3 f_{j-3}
    + \dots
\end{aligned}$$

This relationship can be seen from the following table

::: center
::: tabular
LLLLLLLL x & f(x) & f & \^2 f & \^3 f & \^4 f & \^5 f & \^6 f\
\
\
x\_-4 & f\_-4\
& & f\_-4\
x\_-3 & f\_-3 & & \^2 f\_-4\
& & f\_-3 & & \^3 f\_-4\
x\_-2 & f\_-2 & & \^2 f\_-3 & & \^4 f\_-4\
& & f\_-2 & & \^3 f\_-3 & & \^5 f\_-4\
x\_-1 & f\_-1 & & \^2 f\_-2 & & \^4 f\_-3 & & \^6 f\_-4\
& & f\_-1 & & \^3 f\_-2 & & \^5 f\_-3 &\
x_0 & f_0 & & \^2 f\_-1 & & \^4 f\_-2 & & \^6 f\_-3\
& & f_0 & & \^3 f\_-1 & & \^5 f\_-2 &\
x_1 & f_1 & & \^2 f_0 & & \^4 f\_-1 & & \^6 f\_-2\
& & f_1 & & \^3 f_0 & & \^5 f\_-1\
x_2 & f_2 & & \^2 f_1 & & \^4 f_0\
& & f_2 & & \^3 f_1\
x_3 & f_3 & & \^2 f_2\
& & f_3\
x_4 & f_4\
:::
:::

We see from the above table that the differences used form a diagonal
row going upward and to the right. This ascending diagonal row of
differences starting at $\,f_j\,$ is equal to the backward differences;
those in the downward sloping row are forward differences.

*From the tabulated values of the function $y$ given below interpolate a
value for $y(0.55)$.*

::: center
::: tabular
CCCCCCCC x & y & y & \^2 y & \^3 y & \^4 y & \^5 y & \^6 y\
\
\
0.5 & 0.47943\
& & 0.16479\
0.7 & 0.64422 & & -0.02568\
& & 0.13911 & & -0.00555\
0.9 & 0.78333 & & -0.03123 & & 0.00124\
& & 0.10788 & & -0.00430 & & 0.00017\
1.1 & 0.89121 & & -0.03553 & & 0.00142 & & -0.00006\
& & 0.07235 & & -0.00288 & & 0.00011\
1.3 & 0.96356 & & -0.03841 & & 0.00153\
& & 0.03394 & & -0.00135\
1.5 & 0.99749 & & -0.03976\
& & -0.00583\
1.7 & 0.99166\
:::
:::

*Solution:*

*We need to use the formula $s=\dfrac{x-x_j}{h}$ to calculate $s$.*

*First choose $\,x_0\,$ to be $0.5$; then, since $\,h = 0.2\,$ and
$\,x = x_0 + sh\,$ (i.e. $0.55=0.5+s(0.2)$), we have*
$\,s = \frac{0.05}{0.2} = 0.25$.

*Thus using* $y_s = y_0 + s\Delta y_0 + \frac{s(s-1)}{2!}\Delta^2 y_0
+ \frac{s(s-1)(s-2)}{3!}\Delta^3 y_0 + \frac{s(s-1)(s-2)(s-3)}{4!}\Delta^4 y_0
\dots$

::: tabular
lL *gives,* $y(0.55)~$ & = + +\
& + + + ...\
& = 0.47943 + 0.04120 + 0.00241 - 0.00030 - 0.00005\
& = 0.52268 = 0.5227 *to 4 decimal places.*
:::

*The tabulated function is in fact $\,\sin x\,$ and note that
$\,\sin(0.55) = 0.5227\,$ to $4$ decimal places.*

*Note that since in the above calculations we used the terms of the
Gregory-Newton forward interpolating polynomial up to and including
$\Delta^4$, then we can denote $y(0.55)$ as $P_4(0.55)$, and we could
say $y(0.55)~=~P_4(0.55)=0.5227$, that is using the first 5 terms of the
polynomial. Similarly if for example terms up to degree 2 (or second
order differences) were used, then we could say $y(0.55)~=~P_2(0.55)$,
that is including in the calculations the first three terms of the G-N
interpolating polynomial series up to $\Delta^2$ term.*