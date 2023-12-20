# Introduction

One-step methods, like Runge-Kutta formulae, used for solving
Ordinary Differential Equations (ODEs) require the solution value at one mesh
point to compute the solution at the next. The methods thus obtained are simple
and easy to program. On the other hand, they are inefficient in that they do not
make use of all the previous computed results.

It seems plausible that more
accuracy can be obtained if the values of $\,y_{j+1}\,$ is made to depend not
only on $y_j$ but also on $y_{j-1}$ and $y_{j-2}$, for example. However, one-step methods are
useful for calculating the first few starting points. Once the values at a
number of points have been computed, they can be used in the computation of
later points using multistep methods which are economical as well as being
generally more accurate.

Methods using more than one value of the dependent
variable to determine the approximation at the next mesh points are called
multivalue or multistep methods. A method is called a $k$-step method if the
values $\,y_j, y_{j-1},...,y_{j+1-k}\,$ are required for the calculation of
$y_{j+1}$.

The most common method used to derive the difference-equations for multistep
methods is by the polynomial interpolation.  Another method for deriving the
formulae for multistep methods is called the method of undetermined coefficients
-- (covered in the second year Numerical Methods unit).

The interpolating polynomials are used in many areas of numerical analysis.
In this chapter, we shall review some properties of the interpolating
polynomials and develop means for working with functions that are stored in
tabular form.

:::{note} 

- One-step Methods:  $(y_j) \Longrightarrow y_{j+1}$

- Multi-step Methods:  $(y_{j-k}, y_{j-k+1}, \ldots, y_j) \Longrightarrow y_{j+1}$

:::