# [Format for constructing differences]{.underline}

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
