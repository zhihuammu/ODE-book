# Finite Difference Tables and Notations

Consider the following difference table with given data:
\begin{center}
    \renewcommand{\arraystretch}{0.8}
    \setlength{\tabcolsep}{10pt}
    \begin{tabular}{ccccccc}
        $i$ & $x$ & $y=f(x)$ & $1^\text{st}$ diff & $2^\text{nd}$ diff & $3^\text{rd}$ diff & $4^\text{th}$ diff\\
        \\\hline\\
        0 & 0.00 & 1.0000\\
          &      &        & -0.0588\\
        1 & 0.25 & 0.9412 &         & -0.0824\\
          &      &        & -0.1412 &         & 0.0636\\
        2 & 0.50 & 0.8000 &         & -0.0188 &        & -0.0248\\
          &      &        & -0.1600 &         & 0.0388\\
        3 & 0.75 & 0.6400 &         &  0.0200\\
          &      &        & -0.1400\\
        4 & 1.00 & 0.5000 & \multirow{2}{*}{$\Uparrow$}\\
        \\
          &      & \multicolumn{3}{c}{calculated by $f(x_{j+1}) - f(x_j)$}\\
    \end{tabular}
\end{center}


:::{list-table} Taylor series approximations of $\cos(1.1)$ up to fourth-order accuracy.
:header-rows: 1
:name: taylor-series-example-table

* - Order
  - Approximation
  - Error
* - first
  - 0.456155
  - 2.56e-03
* - second
  - 0.453454
  - 1.42e-04
* - third 
  - 0.453594
  - 2.18e-06
* - fourth
  - 0.453596
  - 7.09e-08
:::

The difference tables can be used by various formulae, namely, **forward**,
**backward** and **central** difference methods, to appropriately
interpolate function and derivative values for the missing intermediate points
in the table.

Since we are going to construct formulae involving general finite differences,
we need to introduce a notation to represent the numbers in a difference table.
First, any $x$-value in a difference table can be labelled $x_0$, then those
above this value are successively $\,x_{-1}, x_{-2}, ...\,$ etc.\ and those
below it are $\,x_1, x_2, ...\,$ etc. To denote function values at $\,x_j\,$ we
write $\,f_j=f(x_j)$. Furthermore, to introduce a notation for the finite
differences we first define some difference operators: