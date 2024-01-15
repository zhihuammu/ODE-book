# An experiment

:::{prf:example}
Solve the following initial value problem

$$
y' = -\lambda y + \lambda t + 1, ~ t\in [0, 1], \quad y(0)=1, \lambda=10
$$

by using the 4-step Adams-Bashforth method

$$
y_{j+1} = y_j + \frac{h}{24}\left[\,55f_j - 59f_{j-1} + 37f_{j-2} - 9f_{j-3}\right].
$$

You should
1. Find the accuracy of the method;
2. Implement the method in Matlab/Python, and compare the numerical solution with the exact solution

    $$y=e^{-\lambda t}+t.$$
:::

