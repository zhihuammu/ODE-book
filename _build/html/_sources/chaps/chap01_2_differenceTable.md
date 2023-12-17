# Finite Difference Operators

## Discrete Data Points

For a function defined on a continuous domain

$$f=f(x), ~~ x\in \mathbb{R},$$
	
we can use a *general* sequence to represent it at discrete locations

$$\left\{f_j\right\}_{j=-\infty}^{+\infty},$$
	
where  $f_j = f(x_j)$.

Usually, though not necessarily, we make $\left\{x_j\right\}_{j=-\infty}^{+\infty}$ be equally spaced, so

$$x_j= jh$$

where $h=x_{j+1}-x_j$ is called the step size (or step length), $h\in(0,+\infty)$.

```{figure} ../images/discrete.svg
---
width: 600px
name: figure-discretepoints
---
Discrete data points and sequence.
```

## Forward Difference Operator $\Delta$

::::{prf:definition} Forward Difference
Given a sequence $\left\{f_j\right\}_{j=-\infty}^{+\infty}$, the first-order forward difference for an member $f_j$ is the difference between the next member and itself: 

\begin{equation}
  \Delta f_j = f_{j+1} - f_j,
\end{equation}

and the $k-$th order forward difference is defined as: 

\begin{equation}
  \Delta^k f_j= \Delta\left(\Delta^{k-1} f_j \right).
\end{equation}
::::

::::{prf:example}
- $\Delta f_0 = f_1 - f_0$

- $\Delta f_{10}= f_{11} - f_{10}$
::::

````{note}
For function $f(x)$, $x\in\mathbb{R}$ with a step size $h$,

$$\Delta f(x) = f(x+h)-f(x)$$
````

````{admonition} **Second-order Forward Difference**:
:class: tip
\begin{align*}
  \Delta^2 f_j & = \Delta(\Delta f_j) = \Delta(f_{j+1} - f_j) = \Delta(f_{j+1}) - \Delta(f_j) \\
              & = (f_{j+2} - f_{j+1}) - (f_{j+1} - f_j) = f_{j+2} - 2f_{j+1} + f_j
\end{align*}  
````

````{admonition} **Third-order Forward Difference**:
:class: tip
\begin{align*}
  \Delta^3 f_j & = \Delta(\Delta^2 f_j)=\Delta(f_{j+2} - 2f_{j+1} + f_j)  \\
                & = (f_{j+3}-f_{j+2}) - 2(f_{j+2}-f_{j+1}) + (f_{j+1} - f_{j}) \\
                & = f_{j+3} - 3f_{j+2} + 3f_{j+1} - f_j
\end{align*}  
````

````{admonition} **Higher-order Forward Difference**:
:class: tip
$$
\Delta^n f_j = f_{j+n} - nf_{j+n-1} + \frac{n(n-1)}{2!}f_{j+n-2} - \frac{n(n-1)(n-2)}{3!}f_{j+n-3} + \dots
$$    
````

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

# Difference operators

## Forward difference operator $\Delta$

Given 

------ -----------------------------------------------------------------
$\Delta f(x) = f(x+h) - f(x)$, where $h$ denotes stepsize
or     $\Delta f_j = f_{j+1} - f_j$
e.g.   $\Delta f_0 = f_1 - f_0; \quad \Delta f_1 = f_2 - f_1;$ ...etc.
------ -----------------------------------------------------------------

    The second- and higher-order differences are similarly defined:

      ------ -------------------------------------------------------------
$\Delta^2 f_j = \Delta(\Delta(f_j)) = \Delta(f_{j+1} - f_j)
            = \Delta(f_{j+1}) - \Delta(f_j)$
$= (f_{j+2} - f_{j+1}) - (f_{j+1} - f_j)
            = f_{j+2} - 2f_{j+1} + f_j$
e.g.   $\Delta^2 f_1 = \Delta(\Delta(f_1)) = \Delta(f_2 - f_1)
            = \Delta(f_2) - \Delta(f_1)$
$= (f_3- f_2) - (f_2 - f_1)
            = f_3 - 2f_2 + f_1$
      ------ -------------------------------------------------------------

    Further

      -- --------------------------------------------------
$\Delta^3 f_j = \Delta(\Delta^2 f_j) = \dots =
            f_{j+3} - 3f_{j+2} + 3f_{j+1} - f_j$
      -- --------------------------------------------------

    and in general

      -- --------------------------------------------------------
$\Delta^n f_j = f_{j+n} - nf_{j+n-1}
            + \frac{n(n-1)}{2!}f_{j+n-2}
            + \frac{n(n-1)(n-2)}{3!}f_{j+n-3} + \dots$
      -- --------------------------------------------------------

2.  Backward difference operator $\nabla$ (read as nabla)

      ------ --------------------------------------------------------------------
             $\nabla f(x) = f(x) - f(x-h)$
      or     $\nabla f_j = f_j - f_{j-1}$
      e.g.   $\nabla f_0 = f_0 - f_{-1}; \quad \nabla f_1 = f_1 - f_0;$ ...etc.
      ------ --------------------------------------------------------------------

    similarly

      -- -------------------------------------------------------------
         $\nabla^2 f_j = \nabla(\nabla(f_j)) = \nabla(f_j - f_{j-1})
                     = \nabla(f_j) - \nabla(f_{j-1})$
         $= (f_j - f_{j-1}) - (f_{j-1} - f_{j-2})
                     = f_j - 2f_{j-1} + f_{j-2}$
      -- -------------------------------------------------------------

    Further

      -- --------------------------------------------------
         $\nabla^3 f_j = \nabla(\nabla^2 f_j) = \dots =
                     f_j - 3f_{j-1} + 3f_{j-2} - f_{j-3}$
      -- --------------------------------------------------

    and in general

      -- ------------------------------------------------------
         $\nabla^n f_j = f_j - nf_{j-1}
                     + \frac{n(n-1)}{2!}f_{j-2}
                     + \frac{n(n-1)(n-2)}{3!}f_{j-3} + \dots$
      -- ------------------------------------------------------

3.  Shift operator $E$

      -- ---------------------------------------------- -- --
         $Ef(x) = f(x+h)$or$Ef_j = f_{j+1}$                
         $E^{-1}f(x) = f(x-h)$or$E^{-1} f_j= f_{j-1}$      
      -- ---------------------------------------------- -- --

    similarly

      -- -------------------------------------------------------------------------------------- -- --
         $E^2 f_j = E(E f_j)= E f_{j+1}=f_{j+2}, \qquad E^{n} f_j=f_{j+n}$                         
         $E^{-2} f_j = E^{-1}(E^{-1} f_j)= E^{-1} f_{j-1}=f_{j-2}, \qquad E^{-n} f_j=f_{j-n}$      
      -- -------------------------------------------------------------------------------------- -- --

The following relations between the shift operator and forward and
backward difference operators exist as follows:

$E = 1 + \Delta$

  -------- -----------------------------------------------------------------------------
  Proof:   $(1+\Delta) f(x) = f(x) + \Delta f(x) = f(x) + f(x+h)-f(x)=f(x+h) = E f(x)$
           $\therefore$ $E = 1 + \Delta$
  -------- -----------------------------------------------------------------------------

also

$E^{-1} = 1 - \nabla$

  -------- -----------------------------------------------------------------------------------------------
  Proof:   $(1-\nabla) f(x) = f(x) - \nabla f(x) = f(x) - \left[f(x)-f(x-h)\right]=f(x-h) = E^{-1} f(x)$
           $\therefore$ $E^{-1}=1-\nabla$
  -------- -----------------------------------------------------------------------------------------------

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

------------------------------------------------------------------------

## Exercise ()

1.  Complete a difference table for the following data:

    ::: center
    ::: tabular
    C\|CCCCCCC x & 1.20 & 1.25 & 1.30 & 1.35 & 1.40 & 1.45 & 1.50\
    f(x) & 0.1823 & 0.2231 & 0.2624 & 0.3001 & 0.3365 & 0.3716 & 0.4055\
    :::
    :::

    What degree of polynomial is required to fit exactly all seven data
    pairs? What lesser-degree polynomial will nearly fit the data?
    Justify your answer.

2.  Complete the difference table for the following data and by using
    the Gregory-Newton backward interpolating polynomial of degree 1, 2,
    3, 4 and 5 estimate $\,f(4.12)$, using $\,x_j=5\,$. By comparing the
    results, explain briefly how the computed results can be checked and
    improved.

    ::: center
    ::: tabular
    C\|CCCCCCC x & 0 & 1 & 2 & 3 & 4 & 5\
    f(x) & 1 & 2 & 4 & 8 & 16 & 32\
    :::
    :::

3.  Use the table below and the Gregory-Newton forward-interpolating
    polynomials of degree 3 and 4 to estimate $\,f(0.158)\,$. Choose
    $\,x_0=0.125\,$. Compare the two estimates and comment on the
    results.

    ::: center
    ::: tabular
    CCCCCCCC x & f(x) & f & \^2 f & \^3 f & \^4 f\
    \
    \
    0.125 & 0.79168\
    & & -0.01834\
    0.250 & 0.77334 & & -0.01129\
    & & -0.02963 & & 0.00134\
    0.375 & 0.74371 & & -0.00995 & & 0.00038\
    & & -0.03958 & & 0.00172 &\
    0.500 & 0.70413 & & -0.00823 & & 0.00028\
    & & -0.04781 & & 0.00200\
    0.625 & 0.65632 & & -0.00623\
    & & -0.05404\
    0.750 & 0.60228\
    :::
    :::

4.  By using the binomial coefficients $\genfrac(){0pt}{1}{-s}{i}$ and a
    formula similar to equation $(2.6)$ given in Chapter 1, derive the
    Gregory-Newton backward difference interpolation formula (i.e.
    equation ([\[eq:ch01:2.3\]](#eq:ch01:2.3){reference-type="ref"
    reference="eq:ch01:2.3"}) in Chapter 1).

5.  Complete the difference table for the following data and by using
    the Gregory-Newton forward interpolating polynomial find
    $\,f(1.72)$.

    ::: center
    ::: tabular
    C\|CCCCCCC x & 1.7 & 1.8 & 1.9 & 2.0 & 2.1\
    f(x) & 0.39798486 & 0.33998641 & 0.28181856 & 0.22389078 &
    0.16660698\
    :::
    :::

    Note: the function representing this set of data is derived from
    Bessel function of order 0 for given $x$ values. Note that you can
    find the solution in MATLAB, using the command *besselj*$(0,x)$,
    which evaluates the function *besselj* of order 0 at a given $x$
    value. Compare your result with the MATLAB answer, and comment
    whether the accuracy of your solution is within the expected range.

6.  Given the finite difference table below, find $\,f(2.25)\,$ using
    the Gregory-Newton

    1.  forward difference interpolation formula

    2.  backward difference interpolation formula

    ::: center
      ----- ---------- -------------------- -------------------- -------------------- -------------------- --
       $x$    $f(x)$    $1^\text{st}$ diff   $2^\text{nd}$ diff   $3^\text{rd}$ diff   $4^\text{th}$ diff  
                                                                                                           
                                                                                                           
       1.0   2.287355                                                                                      
                             2.183107                                                                      
       1.5   4.470462                             0.065280                                                 
                             2.248387                                 -1.741634                            
       2.0   6.718850                            -1.676354                                 -1.610458       
                             0.572034                                 -3.352092                            
       2.5   7.290883                            -5.028446                                                 
                            -4.456412                                                                      
       3.0   2.834471                                                                                      
      ----- ---------- -------------------- -------------------- -------------------- -------------------- --
    :::

    For each case use an appropriate $\,x_j\,$ when calculating
    $s ~=~ \frac{x-x_j}{h}$. Compare the two estimates and comment on
    the results. The exact value of $\,f(2.25) = 7.382153$. Compare your
    estimated solutions with the exact value together with the data
    provided in the difference table, comment on the behaviour of the
    corresponding polynomial function. Can you suggest a way of
    improving the approximated solution.

7.  Repeat Exercise 6, using the finite difference table below which is
    drawn from the same function, but in the interval $[0,\,2.0]$, to
    find $\,f(0.75)\,$, including comments on the results and analysis.
    The exact value of $\,f(0.75) = 1.437778$.

    ::: center
      ----- ---------- -------------------- -------------------- -------------------- -------------------- --
       $x$    $f(x)$    $1^\text{st}$ diff   $2^\text{nd}$ diff   $3^\text{rd}$ diff   $4^\text{th}$ diff  
                                                                                                           
                                                                                                           
       0.0   0.000000                                                                                      
                             0.790439                                                                      
       0.5   0.790439                             0.706477                                                 
                             1.496916                                 -0.020286                            
       1.0   2.287355                             0.686191                                 -0.600624       
                             2.183107                                 -0.620911                            
       1.5   4.470462                             0.065280                                                 
                             2.248387                                                                      
       2.0   6.718850                                                                                      
      ----- ---------- -------------------- -------------------- -------------------- -------------------- --
    :::

    You will find that your answer for $\,f(0.75)\,$ is correct to 6
    decimal places. However, from Exercise 6, the estimated solution for
    $\,f(2.25)\,$ is only correct to 2 decimal places. By giving at
    least one reason, explain why there is such a difference in the
    accuracy of the estimated solutions.

[**Answers to Tutorial Exercises - Chapter** ]{.underline}

1.  A sixth-degree polynomial is required to fit exactly all the 7 data
    points; however, since the third order differences are small and
    nearly constant, a third degree polynomial will almost fit all seven
    points.

2.  $P_1(4.12) = 17.92$, $P_2 = 17.4976$, $P_3 = 17.41875$,
    $P_4 = 17.39785$, $P_5 = 17.39135$.

3.  $P_3(0.158) = 0.78801$ for degree 3, and $P_4(0.158) = 0.78800$ for
    degree 4.

4.  The answer is equation 2.3, page 5 in Chapter 1.

5.  $f(1.72) = 0.38641856$, MATLAB answer is
    $besselj(0,1.72) = 0.38641848$.

6.  1.  Forward $f(2.25) = 7.386171$

    2.  Backward $f(2.25) = 7.386171$.

7.  1.  Forward $f(0.75) = 1.437778$

    2.  Backward $f(0.75) = 1.437778$.
