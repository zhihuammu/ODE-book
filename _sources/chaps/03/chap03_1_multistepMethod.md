# Multistep Methods

Once the approximated solution at a number of mesh points has been
computed they could be used to calculate more accurate computation of
later points. Methods using more than one value of the dependent
variable to determine the approximation at the next mesh points are
called *multistep methods*.

::::{prf:definition} Linear Multistep Method
The most general *{index}`linear multistep method`* for solving the initial value problem 

:::{math}
:label: eq:ch02:1.1

y' = f(x,y) \hspace{1.5cm} a\leq x\leq b, \quad y(a)=\eta
:::

has the form 

:::{math}
:label: eq:ch02:1.2

\sum_{i=0}^{k} \alpha_i y_{j+i} = h\sum_{i=0}^{k}\beta_i f_{j+i},
\hspace{1cm} \text{with}\ \alpha_k = 1
:::

where $k$ denotes the number of steps and $\alpha_i$ and
$\beta_i$ are constants. In an expanded form we can write this as

:::{math}
:label: eq:ch02:1.3
\begin{aligned}
    &\alpha_0 y_j + \alpha_1 y_{j+1} + \alpha_2 y_{j+2} + \dots +
    \alpha_{k-1}y_{j+k-1} + \alpha_k y_{j+k}
    \\
    &\hspace{2cm}~=~h\,[\beta_0 f_j + \beta_1 f_{j+1} + \beta_2 f_{j+2} + \dots +
    \beta_{k-1} f_{j+k-1} + \beta_k f_{j+k}]    
\end{aligned}
:::

When $\,\beta_k=0\,$, the method is called an *explicit*
or *open method* and equation {eq}`eq:ch02:1.2`
gives $y_{j+k}$ explicitly in terms of
previously determined values. When $\,\beta_k \neq 0\,$, the method is
called an *implicit* or *closed method* because $y_{j+k}$ implicitly,
through $f_{j+k}$, appears on the right hand side of equation{eq}`eq:ch02:1.2`.
::::

Two well known multistep method formulae are:

1.  Fourth--order Adams--Bashforth 

    $$
    \begin{aligned}
            y_{j+4} ~=~ y_{j+3} + \frac{h}{24}\,
            \bigl[ 55f_{j+3} - 59f_{j+2} + 37f_{j+1} - 9f_j \bigr]\,.            
    \end{aligned}
    $$ 
    
    Here $\,k = 4\,$ and $\,\beta_4 = 0\,$; thus, this
    is an open formula and starting values are $\,y_{j+3}\,$,
    $\,y_{j+2}\,$, $\,y_{j+1}\,$ and $\,y_j\,$.

2.  Fourth--order Adams--Moulton 

    $$
    \begin{aligned}
            y_{j+4} ~=~ y_{j+3} + \frac{h}{24}\,
            \bigl[ 9f_{j+4} + 19_{j+3} - 5f_{j+2} + f_{j+1} \bigr]\,.           
    \end{aligned}
    $$ 
    
    Here $\,k = 3\,$ and
    $\,\beta_3 = \frac{9}{24} \neq 0\,$; thus, this is a closed formula
    and starting values are $\,y_{j+3}\,$, $\,y_{j+2}\,$ and
    $\,y_{j+1}\,$.