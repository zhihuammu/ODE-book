# Finite Difference Tables

## Forward Difference Table


:::{table} A forward difference table
:name: table-forward-difference
:align: center
|   $x$   |  $f(x)$  |    $\Delta f$    |  $\Delta^2 f$     | $\Delta^3 f$       |  $\Delta^4 f$     |
| :------:| :------: |:----------------:| :---------------: | :-----------------:| :---------------: |
|$x_{-2}$ | $f_{-2}$ |
|         |          | $\Delta f_{-2}$  |
| $x_{-1}$| $f_{-1}$ |                  | $\Delta^2 f_{-2}$ |
|         |          | $\Delta f_{-1}$  |                   | $\Delta^3 f_{-2}$  |
| $x_0$   | $f_0$    |                  | $\Delta^2 f_{-1}$ |                    | $\Delta^4 f_{-2}$ |
|         |          | $\Delta f_0$     |                   |  $\Delta^3 f_{-1}$ |  
| $x_1$   | $f_1$    |                  |  $\Delta^2 f_0$   |                       
|         |          | $\Delta f_1$     |
| $x_2$   | $f_2$    |  
:::

where $ \Delta f_0=f_1-f_0 $;
$ \Delta^2 f_0=\Delta f_1-\Delta f_0 $; 
With this notation the same suffixes appear along diagonals running from
top left to bottom right.

## Backward Difference Table

:::{table} A backward difference table
:name: table-backward-difference
:align: center
|   $x$   |  $f(x)$  |    $\nabla f$    |  $\nabla^2 f$     | $\nabla^3 f$       |  $\nabla^4 f$     |
| :------:| :------: |:----------------:| :---------------: | :-----------------:| :---------------: |
|$x_{-2}$ | $f_{-2}$ |
|         |          | $\nabla f_{-1}$  |
| $x_{-1}$| $f_{-1}$ |                  | $\nabla^2 f_{0}$  |
|         |          | $\nabla f_{0}$   |                   | $\nabla^3 f_{ 1}$  |
| $x_0$   | $f_0$    |                  | $\nabla^2 f_{ 1}$ |                    | $\nabla^4 f_{2}$ |
|         |          | $\nabla f_1$     |                   |  $\nabla^3 f_{2}$ |  
| $x_1$   | $f_1$    |                  |  $\nabla^2 f_2$   |                       
|         |          | $\nabla f_2$     |
| $x_2$   | $f_2$    |  
:::

where $ \nabla f_0 = f_0 - f_{-1} $;
$ \nabla^2 f_0 = \nabla f_0 - \nabla f_{-1} $; 
Note that with this notation the same suffixes appear along diagonals running
from bottom left to top right of the difference table.
Note that $ \Delta f_1 =\nabla f_2  $ and
$  \Delta^2 f_0 =\nabla^2 f_2 .$

```{prf:remark}
At same locations in a difference table, the forward and backward differences are the same. For example, if the sequences $\{f_n\} (n\in \Z)$ given in {numref}`table-forward-difference`
 and {numref}`table-backward-difference` are the same, then 
 
 $$
 \Delta f_{-2} & = \nabla f_{-1} \\
 \nabla f_2 & = \Delta f_1\\
 \Delta^2 f_{-1} & = \nabla^2 f_{ 1} \\
\Delta^3 f_{-2} & = \nabla^3 f_{ 1} \\
\Delta^4 f_{-2} & = \nabla^4 f_{2}\\
& \vdots \\
 $$ 
```

## Use Difference Table for interpolation

:::::{prf:example}
Given the following sequence $\left\{f_j\right\}_{j=0}^{4}$ with $h=1$,
find $f(0.1)$ and $f(3.8)$.

:::{table} 
:align: center  
|   $j$ | $x_j$ | $f_j=f(x_j)$| $1^\text{st}$diff | $2^\text{nd}$diff |  $3^\text{rd}$diff |  $4^\text{th}$diff |
|:-----:| :---: |:-----------:| :---------------: | :----------------:| :----------------: | :-----------------:|
|    0  |    0  |        1    |                                                                 
|       |       |             |           ......  |
|    1  |    1  |        2    |                   |         ......    |
|       |       |             |           ......  |                   |         ......     |   
|    2  |    2  |        4    |                   |         ......    |                    |         ......|
|       |       |             |           ......  |                   |         ......     |   
|    3  |    3  |        8    |                   |         ......    |                        
|       |       |             |           ......  |                                               
|    4  |    4  |        16   |     
:::

<!-- ::::{dropdown} Solution (click to show) -->
````{admonition} Solution
:class: solution, dropdown

- Complete the difference table

  |   $j$ | $x_j$ | $f_j=f(x_j)$| $1^\text{st}$diff | $2^\text{nd}$diff |  $3^\text{rd}$diff |  $4^\text{th}$diff |
  |:-----:| :---: |:-----------:| :---------------: | :----------------:| :----------------: | :-----------------:|
  |    0  |    0  |        1    |                                                                 
  |       |       |             |           1       |
  |    1  |    1  |        2    |                   |         1         |
  |       |       |             |           2       |                   |         1          |   
  |    2  |    2  |        4    |                   |         2         |                    |         1          |
  |       |       |             |           4       |                   |         2          |   
  |    3  |    3  |        8    |                   |         4         |                        
  |       |       |             |           8       |                                               
  |    4  |    4  |        16   |     


- $x=0.1$

  $\displaystyle s=\frac{x-x_0}{h}=\frac{0.1-0}{1}=0.1$,

  $$
  \begin{aligned}
  f(0.1) = & f_0 + s\Delta f_0 + \frac{s(s-1)}{2!}\Delta^2 f_0 + \frac{s(s-1)(s-2)}{3!}\Delta^3 f_0 \\
          & + \frac{s(s-1)(s-2)(s-3)}{4!}\Delta^4 f_0 \\
        = & 1+0.1(1)+\frac{0.1(0.1-1)}{2}(1) + \frac{0.1(0.1-1)(0.1-2)}{6}(1) \\
          & + \frac{0.1(0.1-1)(0.1-2)(0.1-3)}{24}(0.1) \\
        = & 1+0.1 - 0.045 +0.0285 -0.0206625 \\
        = & 1.0628375
  \end{aligned}
  $$

- $x=3.8$

  $\displaystyle s=\frac{x-x_4}{h}=\frac{3.8-4}{1}=-0.2$,

  $$
  \begin{aligned}
  f(3.8)= &  f_4 + s\nabla f_4 + \frac{s(s+1)}{2!}\nabla^2 f_4            
              + \frac{s(s+1)(s+2)}{3!}\nabla^3 f_4 \\
          &    + \frac{s(s+1)(s+2)(s+3)}{4!}\nabla^4 f_4 \\
        = & 16+(-0.2)(8) + \frac{(-0.2)(-0.2+1)}{2}(4) 
                        + \frac{(-0.2)(-0.2+1)(-0.2+2)}{6}(2)  \\
          &              + \frac{(-0.2)(-0.2+1)(-0.2+2)(-0.2+3)}{24}(1) \\
        = & 16-1.6-0.32-0.096-0.0336 \\
        = & 13.9504
  \end{aligned}
  $$
````
:::::

::::{prf:example}
From the tabulated values of the function $f(x)$ given below interpolate a value for $f(0.55)$.

:::{table} 
:align: center
|$x$ |  $f(x)$  |  $\Delta f$ |  $\Delta^2 f$ |  $\Delta^3 f$ |  $\Delta^4 f$ |  $\Delta^5 f$ |  $\Delta^6 f$ |
|:--:| :------: |:-----------:| :-----------: | :------------:| :-----------: | :------------:| :-----------: |
|0.5 |  0.47943 |             |                                                             
|    |          |  0.16479    |                                                            
|0.7 |  0.64422 |             |    -0.02568   |                                              
|    |          |  0.13911    |               |   -0.00555    |                             
|0.9 |  0.78333 |             |    -0.03123   |               |    0.00124    |                
|    |          |  0.10788    |               |   -0.00430    |               |   0.00017     |
|1.1 |  0.89121 |             |    -0.03553   |               |    0.00142    |               |    -0.00006   |
|    |          |  0.07235    |               |   -0.00288    |               |   0.00011     |
|1.3 |  0.96356 |             |    -0.03841   |               |    0.00153    |                
|    |          |  0.03394    |               |   -0.00135    |                              
|1.5 |  0.99749 |             |    -0.03976   |                                              
|    |          |  -0.00583   |                                                            
|1.7 |  0.99166 | 
:::

:::{admonition} Solution
:class: solution, dropdown

- Choose $x_j=x_0=0.5$;

- Calculate $\displaystyle s=\frac{x-x_0}{h}=\frac{0.55-0.5}{0.2}=0.25$;

- Using $\displaystyle f_s  =   f_0 + s\Delta f_0 + \frac{s(s-1)}{2!}\Delta^2 f_0 +
	\frac{s(s-1)(s-2)}{3!}\Delta^3 f_0 + \frac{s(s-1)(s-2)(s-3)}{4!}\Delta^4 f_0  +\cdots$

- We can keep up to 4-th order difference for this question:

$$
\begin{aligned}
		f(0.55) = P_4(0.55) = &  0.47943 + 0.25\times 0.16479 	+ \frac{0.25\times(-0.75)}{2}\times(-0.02568) \\
		                      & + \frac{0.25\times(-0.75)\times(-1.75)}{6}\times(-0.00555) \\
		                      & + \frac{0.25\times(-0.75)\times(-1.75)\times(-2.75)}{24}\times(0.00124) \\
		                    = & 0.47943 + 0.04120 + 0.00241 - 0.00030 - 0.00005\\
		                    = & 0.52268 = 0.5227~~\text{to 4 decimal places.}		
\end{aligned}
$$

:::

:::{note}
:class: dropdown
The tabulated function is in fact $\, f(x)=\sin x\,$ and note that
$\,\sin(0.55) = 0.5227\,$ to $4$ decimal places.
:::

::::

## Difference Table and Polynomial Function

:::{table} 
|   $x$ | $f(x)$|  $\Delta f$ |  $\Delta^2 f$     | $\Delta^3 f$      | $\Delta^4 f$  |
|:-----:| :---: |:-----------:| :---------------: | :----------------:| :----------------: |
|    0  |    0  |                                              
|       |       |        1    |                                 
|    1  |    1  |             |         6         |              
|       |       |        7    |                   |     6             |
|    2  |    8  |             |         12        |                   | 0   |
|       |       |        19   |                   |     6             |
|    3  |    27 |             |         18        |                   | 0   |
|       |       |        37   |                   |     6             | 
|    4  |    64 |             |         24        |                   | 0   |
|       |       |        61   |                   |     6        
|    5  |   125 |             |         30        |              
|       |       |        91   |                                 
|    6  |   216 |   
:::

-   $3^\text{rd}$ order differences are constant;

-   the function can be approximated by a $3^\text{rd}$ order
    polynomial 
    $f(x)=x^3$;

-   In order to find a polynomial of degree $n$ which approximates the
    tabulated function sufficiently accurate, we need to know the
    function values at $(n+1)$ points.