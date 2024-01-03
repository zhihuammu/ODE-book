(chap:errorConstant:constants)=
# Order and Error Constants

:::{prf:theorem} Global Error and Order of Accuracy
If the {index}`local error` associated to a multistep formula is $\,O(h)^{p+1}$
then, the {index}`global error` is expected to be $\,O(h)^p$, and we can say that
the method is of order $p$. To determine the order of a multistep method
we can use the following approach.
:::

The most general linear multistep method has the form 

$$\begin{aligned}
    \sum_{i=0}^{k} \alpha_i y_{j+i} = h \sum_{i=0}^{k} \beta_i f_{j+i},
    \hspace{1cm}\text{with}\ \alpha_k = 1    
\end{aligned}$$(eq:ch03:2.1)

where $k$ denotes the number of steps and $\alpha_i$ and
$\beta_i$ are constants. For example, the most general three-step method
has the form 

$$\begin{aligned}
    \alpha_0 y_j + \alpha_1 y_{j+1} + \alpha_2 y_{j+2} + \alpha_3 y_{j+3}
    ~=~ h \bigl[
        \beta_0 f_j + \beta_1 f_{j+1} + \beta_2 f_{j+2} + \beta_3 f_{j+3}
    \bigr]
\end{aligned}$$(eq:ch03:2.2)

Accordingly, for example, for the Adam-Bashforth
three-step method 

$$\begin{aligned}
    y_{j+3}~=~y_{j+2}\,+\,\frac{h}{12} \bigl[
        23f_{j+2} - 16f_{j+1} + 5f_j
    \bigr]
\end{aligned}$$ 

we have the following coefficients 

$$\begin{aligned}
    && \alpha_0 &= 0,            & \alpha_1 &= 0,
     & \alpha_2 &= -1,           & \alpha_3 &= 1 &&
     \\[1ex]
    && \beta_0 &= \frac{5}{12},  & \beta_1 &= -\frac{16}{12},
     & \beta_2 &= \frac{23}{12}, & \beta_3 &= 0 &&
\end{aligned}$$

 The exact solution of the differential equation at
$x = x + ih$, (i.e. $\,y(x+ih)\,$), also satisfies equation {eq}`eq:ch03:2.1`, so we can write 

$$\begin{aligned}
    \sum_{i=0}^{k} \alpha_i ~ y{(x+ih)} ~=~ h \sum_{i=0}^{k}
    \beta_i ~ f{(x+ih)} ~+~ T
\end{aligned}$$ 

Thus the local error $T$ is given by 

$$\begin{aligned}
    T ~=~ \sum_{i=0}^{k} \alpha_i ~ y{(x+ih)} ~-~ h \sum_{i=0}^{k}
    \beta_i ~ f{(x+ih)}
\end{aligned}$$(eq:ch03:2.3)

Using the Taylor series expansion 

$$\begin{aligned}
    y(x+ih) ~=~ y(x) + ihy'(x) + \frac{(ih)^2}{2!}y''(x) + \dots
    + \frac{(ih)^p}{p!}y^{(p)}(x)~,
\end{aligned}$$ 

we can expand the right-hand side of equation
{eq}`eq:ch03:2.3` as:

- $\displaystyle i = 0\quad \alpha_0 y(x) - h\beta_0 y'(x) $
- $\displaystyle i = 2\quad \alpha_2 \left[ y(x) + 2hy'(x) + \frac{(2h)^2}{2!}y''(x) + \dots  \right]
         -h\beta_2 \left[ y'(x) + 2hy''(x) + \frac{(2h)^2}{2!}y'''(x) + \dots \right]$
- $\displaystyle i = 3\quad \alpha_3 \left[y(x) + 3hy'(x) + \frac{(3h)^2}{2!}y''(x) + \dots \right]
         -h\beta_3 \left[y'(x) + 3hy''(x) + \frac{(3h)^2}{2!}y'''(x) + \dots \right] $

Thus, collecting the corresponding coefficients of $y(x),\,y',\,...$ we
have the following expressions \[Note: we will add the stepsize $h$,
attached to each term, later in the equation for $T$, shown below\]

$$\begin{aligned}
    & \bigl[
        (\alpha_0 + \alpha_1 + \alpha_2 + \dots + \alpha_k)
    \bigr]\,y(x)
    \\
    & \bigl[
        (\alpha_1 + 2\alpha_2 + 3\alpha_3 + \dots + k\alpha_k)
        - (\beta_0 + \beta_1 + \beta_2 + \dots + \beta_k)
    \bigr]\,y'(x)
    \\
    & \bigl[
        \frac{1}{2!}(\alpha_1 + 2{^2}\alpha_2 + 3{^2}\alpha_3 + \dots + k{^2}\alpha_k)
        -
        \frac{1}{1!}({\beta_1} + {2}\beta_2 + \dots + {k}\beta_k)
    \bigr]\,y''(x)
\end{aligned}$$ 

or in general, 

$$\begin{aligned}
    \left[
        \frac{1}{p!}(\alpha_1 + 2^p\alpha_2 + 3^p\alpha_3 + \dots + k^p\alpha_k)
        - \frac{1}{(p-1)!}(\beta_1 + 2^{p-1}\beta_2 + 3^{p-1}\beta_3
                           + \dots + k^{p-1}\beta_k)
    \right] y^p(x)
\end{aligned}$$ 

for $p = 2,3,\dots$

Thus, let coefficients of $y(x) = C_0$, $~y'(x) = C_1$,\...etc., then
$T$ can be written as, 

$$\begin{aligned}
    T ~=~ C_0y(x) \,+\, C_1hy'(x) \,+\, C_2h^2y''(x) \,+\,
    \dots \,+\, C_p\,h^p\,y^{(p)}(x)
\end{aligned}$$ 

The term $C_{p+1}\,h^{p+1}\,y^{(p+1)}(x)~$ is called the
principal or leading {index}`local truncation error` and $C_{p+1}\,$ is the
*{index}`error constant`*. For a polynomial of degree $\,p\,$ we have
$~y^{(p+1)}(x) = 0~$ and hence the method is of order $\,p\,$ if,
$~C_0 = C_1 = C_2 = \dots = C_p=0,~$ and $~C_{p+1}\neq 0$.

:::{admonition} Summary
:class: important

- $C_0 = \alpha_0 + \alpha_1 + \alpha_2 + \cdots + \alpha_k$

- $C_1 = (\alpha_1 + 2\alpha_2 + 3\alpha_3 + \dots + k\alpha_k) 
        - (\beta_0 + \beta_1 + \beta_2 + \dots + \beta_k)$

- $C_2 = \frac{1}{2!}(\alpha_1 + 2{^2}\alpha_2 + 3{^2}\alpha_3 + \dots + k{^2}\alpha_k)
        -
        \frac{1}{1!}({\beta_1} + {2}\beta_2 + \dots + {k}\beta_k)$

- For $p=2, 3, \ldots$ :

    $$ C_p =
        \frac{1}{p!}(\alpha_1 + 2^p\alpha_2 + 3^p\alpha_3 + \dots + k^p\alpha_k)
        - \frac{1}{(p-1)!}(\beta_1 + 2^{p-1}\beta_2 + 3^{p-1}\beta_3
                           + \dots + k^{p-1}\beta_k)
    $$
:::

:::::{prf:example}
:label: chap04-example-3
Find the order and the error constants of the following formulae,

1.  $\displaystyle y_{j+4} = y_j + \frac{h}{3}(8f_{j+3} - 4f_{j+2} + 8f_{j+1})$

    ::::{admonition} Solution 
    :class: solution, dropdown


    A comparison with 

    $$\begin{aligned}
                \sum_{i=0}^{4} \alpha_i y_{j+i} ~=~ h \sum_{i=0}^{4} \beta_i f_{j+i},            
    \end{aligned}$$ 
    
    gives, 
    
    $$\begin{aligned}
                && \alpha_0 &= -1, & \alpha_1 &= 0, & \alpha_2 &= 0,
                 & \alpha_3 &=  0, & \alpha_4 &= 1 &&
                \\
                && \beta_0 &= 0, & \beta_1 &= \frac{8}{3}, & \beta_2 &= -\frac{4}{3},
                 & \beta_3 &= \frac{8}{3}, & \beta_4 &= 0 &&
            
    \end{aligned}$$ 
    
    Thus 
    
    $$\begin{aligned}
                C_0 ~&=~ \alpha_0 + \alpha_1 + \alpha_2 + \alpha_3 + \alpha_4 ~=~ 0 \phantom{\frac{}{0}}\\
                C_1 ~&=~ (\alpha_1 + 2\alpha_2 + 3\alpha_3 + 4\alpha_4) - (\beta_0 + \beta_1 + \beta_2 + \beta_3 + \beta_4) ~=~ 0 \phantom{\frac{0}{0}}\\
                C_2 ~&=~ \frac{1}{2!}(\alpha_1 + 2^2\alpha_2 + 3^2\alpha_3 + 4^2\alpha_4) - \frac{1}{1!}(\beta_1 + 2\beta_2 + 3\beta_3 + 4\beta_4) ~=~ 0\\
                C_3 ~&=~ \frac{1}{3!}(\alpha_1 + 2^3\alpha_2 + 3^3\alpha_3 + 4^3\alpha_4) - \frac{1}{2!}(\beta_1 + 2^2\beta_2 + 3^2\beta_3 + 4^2\beta_4) ~=~ 0\\
                C_4 ~&=~ \frac{1}{4!}(\alpha_1 + 2^4\alpha_2 + 3^4\alpha_3 + 4^4\alpha_4) - \frac{1}{3!}(\beta_1 + 2^3\beta_2 + 3^3\beta_3 + 4^3\beta_4) ~=~ 0\\
                C_5 ~&=~ \frac{1}{5!}(\alpha_1 + 2^5\alpha_2 + 3^5\alpha_3 + 4^5\alpha_4) - \frac{1}{4!}(\beta_1 + 2^4\beta_2 + 3^4\beta_3 + 4^4\beta_4) ~=~ \frac{28}{90}=\frac{14}{45}\\
            
    \end{aligned}$$

    $\therefore$ The method is of order $4$ and the error constant is
    $\dfrac{14}{45}$.

    Matlab code for error constant calculation:

    :::{literalinclude} /codes/example3a.m
    :language: matlab
    :::

    ::::


2.  $\displaystyle y_{j+3} ~=~ y_{j+2} + \frac{h}{12}(23f_{j+2} - 16f_{j+1} + 5f_j)$

    ::::{admonition} Solution
    :class: solution, dropdown
    
    A comparison with
    
     $$\begin{aligned}
                \sum_{i=0}^{3} \alpha_i y_{j+i} ~=~ h \sum_{i=0}^{3} \beta_i f_{j+i}
            
    \end{aligned}$$ 
    
    gives, 
    
    $$\begin{aligned}
                && \alpha_0 &=  0, & \alpha_1 &=  0,
                 & \alpha_2 &= -1, & \alpha_3 &=  1 &&
                \\
                && \beta_0 &= \frac{5}{12}, & \beta_1 &= -\frac{16}{12},
                 & \beta_2 &= \frac{23}{12}, & \beta_3 &= 0 &&
            
    \end{aligned}$$ 
    
    Thus
    
     $$\begin{aligned}
                C_0 ~&=~ \alpha_0 + \alpha_1 + \alpha_2 + \alpha_3 ~=~ 0 \phantom{\frac{}{0}}\\
                C_1 ~&=~ (\alpha_1 + 2\alpha_2 + 3\alpha_3) - (\beta_0 + \beta_1 + \beta_2 + \beta_3) ~=~ 0 \phantom{\frac{0}{0}}\\
                C_2 ~&=~ \frac{1}{2!}(\alpha_1 + 2^2\alpha_2 + 3^2\alpha_3) - \frac{1}{1!}(\beta_1 + 2\beta_2 + 3\beta_3) ~=~ 0\\
                C_3 ~&=~ \frac{1}{3!}(\alpha_1 + 2^3\alpha_2 + 3^3\alpha_3) - \frac{1}{2!}(\beta_1 + 2^2\beta_2 + 3^2\beta_3) ~=~ 0\\
                C_4 ~&=~ \frac{1}{4!}(\alpha_1 + 2^4\alpha_2 + 3^4\alpha_3) - \frac{1}{3!}(\beta_1 + 2^3\beta_2 + 3^3\beta_3) ~=~ \frac{9}{24}\\            
    \end{aligned}$$

    $\therefore$ The method is of order $3$ and the error constant in
    $\dfrac{3}{8}$.

    Matlab code for error constant calculation:

    :::{literalinclude} /codes/example3b.m
    :language: matlab
    :::

    ::::

:::::

:::{note}
The formulae for $\,C_0$, $C_1$, ..., $C_p\,$ can be used to
derive a linear multistep method of given structure and maximal order
(see {prf:ref}`ch04-example-4`, below).
:::

:::{prf:example}
:label: ch04-example-4

Construct an implicit linear two-step method of maximal order,
containing one free parameter, and find its order.

:::{admonition} Solution
:class: solution

For a two-step method $\,k \!=\! 2;\ \alpha_2 \!=\! 1\,$, by hypothesis.
Let $\,\alpha_0 \!=\! a\,$ be the free parameter. There remain four
undetermined coefficients $\,\alpha_1,\, \beta_0,\, \beta_1\,$ and
$\,\beta_2\,$, and thus we can set
$\,C_0\!=\!C_1\!=\!C_2\!=\!C_3\!=\!0\,$.

Using the formulae for $\,C_0,\,C_1,\,C_2\,$ and $\,C_3\,$ we get

$$\begin{aligned}
    C_0 ~&=~ a + \alpha_1 + 1 ~=~ 0\\
    C_1 ~&=~ \alpha_1 + 2 - (\beta_0 + \beta_1 + \beta_2) ~=~ 0\\
    C_2 ~&=~ \frac{1}{2!}(\alpha_1 + 4) - (\beta_1 + 2\beta_2) ~=~ 0\\
    C_3 ~&=~ \frac{1}{3!}(\alpha_1 + 8) - \frac{1}{2!}(\beta_1 + 4\beta_2) ~=~ 0
\end{aligned}$$

Solving this set of equations gives 

$$\begin{aligned}
    \alpha_1 &= -1 - a, & \beta_0 &= -\frac{1}{12}(1 + 5a), &
    \beta_1 &= \frac{2}{3}(1 - a), & \beta_2 &= \frac{1}{12}(5 + a)
\end{aligned}$$

 and the method is 
 
 $$\begin{aligned}
    y_{j+2} - (1 + a)y_{j+1} + ay_j ~=~ \frac{{h}}{12} \bigl[
        (5 + a)f_{j+2} + 8(1 - a)f_{j+1} - (1 + 5a)f_j
    \bigr]    
\end{aligned}$$(eq:ch03:4.1)

Furthermore, 

$$\begin{aligned}
    C_4 ~&=~ \frac{1}{4!}(\alpha_1 + 16) - \frac{1}{3!}(\beta_1 + 8\beta_2)
    ~=~ -\frac{1}{4!}(1 + a)\\
    C_5 ~&=~ \frac{1}{5!}(\alpha_1 + 32) - \frac{1}{4!}(\beta_1 + 16\beta_2)
    ~=~ -\frac{1}{3\times 5!}(17 + 13a)
\end{aligned}$$ 

If $\,a \!\neq\! -1\,$, then $\,C_4 \!\neq\! 0\,$, and
method {eq}`eq:ch03:4.1` is of order $3$. If $\,a \!=\! -1\,$, then
$\,C_4 \!=\! 0\,,~ C_5 \!\neq\! 0\,\,$, and method
{eq}`eq:ch03:4.1`, which is now Simpson's rule, is of order $4$.

Note that when $\,a \!=\! 0\,$, then method {eq}`eq:ch03:4.1` is the
two-step Adams-Moulton method, and if $\,a \!=\! -5\,$, it is an
explicit method.
:::