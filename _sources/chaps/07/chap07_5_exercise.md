# Chapter 7 Exercise

:::{exercise}
A certain chemical reaction is described by a stiff system

$$
\begin{aligned}
            y'_1 ~&=~ -1000y_1 + y_2, \quad y_1(0) = 1
            \\
            y'_2 ~&=~ 1000y_1 - 2y_2, \quad y_2(0) = 0.        
    \end{aligned}
$$

Show that $\,y_1\,$ decays rapidly while $\,y_2\,$
decays slowly. Find the eigenvalues of the associated Jacobian
matrix and the stiffness ratio.
:::

:::{exercise}
Consider the problem 

$$
\begin{aligned}
            && y' ~&=~ -100y + \cos x,
             & y(0) &= 1. &&        
    \end{aligned}
$$

The general solution is
$y(x) = -A\cos x - B\sin x + Ce^{-100x}$. In what sense could this
single equation be said to exhibit stiffness? If Euler's rule were
used to obtain a numerical solution, what would be the maximum
allowable steplength.
:::

:::{exercise}
Detertermine whether the following problem is stiff
    
$$
\begin{aligned}
            && y'' ~&=~ -20y' + -19y,
             & y(0) &= 2,\quad y'(0) = -20. &&        
    \end{aligned}
$$

 \[Hint: reduce the equation to a system of two first
    order ODEs i.e. let $y = y_1$, $y' = y_2$, then differentiation
    gives $y' = y_1'$, and $y'' = y'_2\,$\].
:::

:::{exercise}
Consider the non-linear chemical system in Example 3. Find
    time-dependent solution of the species $y_1$, $y_2$, and $y_3$ for a
    duration of 60 seconds using the stiff equation solver routine
    ode15s from the MATLAB ODE solver routines. Try to run the model
    using ode113 solver and comment on your results. Change both
    tolerances RelTol and AbsTol and comment on your results.
:::

:::{exercise}
Consider the Robertson Problem in the MATLAB Program 4 handout. Find
time-dependent solution of the species $y_1$, $y_2$, and $y_3$ for a
duration of $t = 100$ seconds using the stiff equation solver
routine ode15s from MATLAB ODE solver routines. Use *tic toc*
commands to record the run time. Try to run the model using ode113
solver and comment on your results. Change the tolerances RelTol and
AbsTol and comment on your results. Using the results from the
ode15s, find the eigenvalues of the the Jacobian Matrix at $t = 0$,
$t = 1.0e-5$ and $t = 60$ seconds, and by finding the corresponding
stiffness ratio, comment on the stability of the system. Produce a
table to record the run times and your computational stats.
:::

:::{exercise}
Find the interval of absolute stability for the backward
differentiation formulae (BDF) for $k = 1,2,\dots,4$ methods using
*root locus* method, and show whether they are convergent. For the
same BDF methods plot the region of absolute stability using
*boundary root locus* method.
:::

:::{exercise}
Consider the following system of ODEs which represents the
mathematical formulation of an electric circuit: 

$$
\begin{aligned}
            \frac{d}{dt} \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} ~=~
            \begin{pmatrix}
                          -1 & -1\phantom{000}\\
                \phantom{-}1 & -5000
            \end{pmatrix}
            ~ \begin{pmatrix} x_1 \\ x_2 \end{pmatrix},
            \qquad\text{where}~
            \begin{pmatrix} x_1 \\ x_2 \end{pmatrix}
            = \begin{pmatrix} 1 \\ 1 \end{pmatrix}        
    \end{aligned}
$$

The above system can be re-arranged as a system of  two ODEs: 

$$
\begin{aligned}
            && y'_1 ~&=~ -y_1 - y_2 & y_1(0) &= 1 &&
            \\
            && y'_2 ~&=~ \phantom{-}y_1 - 5000\,\,y_2 & y_2(0) &= 1 &&        
\end{aligned}
$$

Find time-dependent solution of $y_1$ and $y_2$ for
a duration of 5 seconds using the stiff equation solver routine
ode15s from the MATLAB ODE solver routines. Try to run the model
using ode113 solver and comment on your results. Change both
tolerances RelTol and AbsTol and comment on your results. Set the
option 'Stats' 'on' in the options=odeset command, e.g.

```matlab
options=odeset('Stats','on','RelTol',1e-6,'AbsTol',1.e-8)
```
            
and prepare a table for comparison of the stats using the two
different solvers. Comment on your results.
:::


**Answers to Tutorial Exercises - Chapter** 

1.  The analytical solution of the system is approximately:

    $y_1 = 0.001e^{-t}+e^{-1001t}$, $y_2 = e^{-t}+e^{-1001t}$, and the
    Jacobian Matrix is
    $\begin{pmatrix} -1000 & \phantom{-}1 \\ \phantom{-}1000 & -2 \end{pmatrix}$.

    The eigenvalues are $\approx 1$ and $-1001$; thus the stiffness
    ratio is $\approx 10^3$.

2.  Using Euler Method the steplengths $h < 0.02$.

3.  The eigenvalues of the reduced system are $-1$ and $-19$. Find
    approximated solutions using a non-stiff solver e.g. ode113, and a
    stiff solver, e.g. ode15s, compare the results and comment on the
    stiffness of the system.

4.  You should find that the running time for ode15s is around 0.05
    seconds, even with small value tolerances. On the other hand ode113
    takes about 4 seconds (i.e. 100 times slower) and only works for
    reasonably small tolerances.

5.  You will find the running time for ode15s is much shorter than that
    for ode113. Check your results and comment.

6.  Solution are shown in the lecture notes {numref}`fig-chap07-c6m31f2`.

7.  The plot of the solutions is shown below:
    ```{figure} /images/07/fig-chap07-c6ans7.svg
    ---
    width: 500px
    name: fig-chap07-c6ans7
    ---    
    ```