# Finite Difference Tables

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

 [Format for constructing differences]{.underline}

::: center
::: tabular
LLLLLL x & f(x) & f & \^2 f & \^3 f & \^4 f\
\
\
x\_-2 & f\_-2\
& & f\_-2\
x\_-1 & f\_-1 & & \^ f\_-2\
& & f\_-1 & & \^3 f\_-2\
x_0 & f_0 & & \^2 f\_-1 & & \^4 f\_-2\
& & f_0 & & \^3 f\_-1\
x_1 & f_1 & & \^2 f_0\
& & f_1\
x_2 & f_2\
:::
:::

where $\,\Delta f_0=f_1-f_0\,$;
$\,\Delta^2 f_0=\Delta f_1-\Delta f_0\,$; \...\
With this notation the same suffixes appear along diagonals running from
top left to bottom right.

[Format for constructing backward differences]{.underline}

::: center
::: tabular
LLLLLL x & f(x) & f & \^2 f & \^3 f & \^4 f\
\
\
x\_-2 & f\_-2\
& & f\_-1\
x\_-1 & f\_-1 & & \^2 f_0\
& & f_0 & & \^3 f_1\
x_0 & f_0 & & \^2 f_1 & & \^4 f_2\
& & f_1 & & \^3 f_2\
x_1 & f_1 & & \^2 f_2\
& & f_2\
x_2 & f_2\
:::
:::

where $\,\nabla f_0 = f_0 - f_{-1}\,$;
$\,\nabla^2 f_0 = \nabla f_0 - \nabla f_{-1}\,$; \...\
Note that with this notation the same suffixes appear along diagonals
running from bottom left to top right of the difference table.\
Note that $\,\Delta f_1\,=\nabla f_2\,\,$ and
$\,\,\Delta^2 f_0\,=\nabla^2 f_\cort{2}\,.$




# Finite Difference Tables and Notations

Consider the following difference table with given data:

:::{table} 
:widths: 5 5 5 5 5 5 5
:align: center
| $i$ | $x$ | $y=f(x)$ | $1^\text{st}$ diff  | $2^\text{nd}$ diff |  $3^\text{rd}$ diff |  $4^\text{th}$ diff  |
| --- | --- |----------|---------------------|--------------------|---------------------|----------------------|
| 0   | 0.00| 1.0000   |                     |                    |                     |                      |  
|     |     |          |-0.0588              |                    |                     |                      |
|  1  | 0.25| 0.9412   |                     |   -0.0824          |                     |                      |   
|     |     |          |  -0.1412            |                    |       0.0636        |                      |  
|  2  | 0.50| 0.8000   |                     |   -0.0188          |                     |    -0.0248           |
|     |     |          |  -0.1600            |                    |    0.0388           |                      |
|  3  | 0.75| 0.6400   |                     |   0.0200           |                     |                      |
|     |     |          |  -0.1400            |                    |                     |                      |
|  4  | 1.00| 0.5000   |                     |                    |                     |                      |
:::

The difference tables can be used by various formulae, namely, *forward*, *backward* and *central* difference methods, to appropriately interpolate function and derivative values for the missing intermediate points in the table.

Since we are going to construct formulae involving general finite differences, we need to introduce a notation to represent the numbers in a difference table. First, any $x$-value in a difference table can be labelled $x_0$, then those above this value are successively $\,x_{-1}, x_{-2}, ...\,$ etc. and those below it are $\,x_1, x_2, ...\,$ etc. To denote function values at $\,x_j\,$ we write $\,f_j=f(x_j)$. Furthermore, to introduce a notation for the finite differences we first define some difference operators:
