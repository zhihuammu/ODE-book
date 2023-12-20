(chap:derivation:exercises)=
# Chapter 3 Exercises 

You should try the following exercise questions first, then check with the answers. 

For detailed solutions, please find them in the Moodle area for this Unit.

::::{exercise}
Use a G-N interpolation formula to derive the following multistep
formulae:

-   $ y_{j+2} = y_j + (f_{j+2} + 4f_{j+1} + f_j) $          [ G-N forward 0 to 2 ]
-   $ y_{j+2} = y_{j+1} + (5f_{j+2} + 8f_{j+1} - f_j) $     [ G-N forward 1 to 2 ]
-   $ y_{j+3} = y_{j-1} + (8f_{j+2} - 4f_{j+1} + 8f_j) $    [ G-N forward -1 to 3 ]
-   $ y_j     = y_{j-1} + (5f_j + 8f_{j-1} - f_{j-2}) $     [ G-N backward 0 to -1 ]
::::

::::{exercise}
The family of Multistep explicit Adams methods can be expanded as

$$\begin{aligned}
        y_{j+1} ~&=~ y_j + h(1 + \frac{1}{2}\nabla + \frac{5}{12}\nabla^2
        + \frac{3}{8}\nabla^3 + \frac{251}{720}\nabla^4 + \dots)f_j
        
\end{aligned}$$ 

Use this formula and the following difference table
to solve the initial value problem: 

$$\begin{aligned}
        y' ~&=~ -y - 2x, & y(0) ~&=~ -1,
        & \text{for $x = 0.1$ to $x = 0.5$ with $h = 0.1$.}
        
\end{aligned}$$

Work to four decimal places. Compare your results
with the analytical solution: $\,y(x) = -3e^{-x} - 2x + 2\,$.
Comment on the accuracy of your results.


| $j$ | $x$ | $y$ | $f$ | $\nabla f$ | $\nabla^2 f$ |
|:--:|:--:|:--:|:--:|:--:|:--:|
|0 | 0.0 | -1.00000 | 1.0000 |
|  |     |          |        |............|
|1 | 0.1 | ............   |  ............|      | ............|
|  |     |          |        |............|
|2 | 0.2 | ............   | ............ |
::::

::::{exercise}
The family of Multistep explicit Adams methods can be expanded as

:::{math}
:label: eq:ch02:1

\begin{aligned}
        y_{j+1} ~&=~ y_j + h(1 + \frac{1}{2}\nabla + \frac{5}{12}\nabla^2
        + \frac{3}{8}\nabla^3 + \frac{251}{720}\nabla^4 + \dots)f_j   
\end{aligned}
:::

Similarly, the family of Multistep implicit Adams
methods can be expanded as 

:::{math}
:label: eq:ch02:2

\begin{aligned}
        y_{j+1} ~&=~ y_j + h(1 - \frac{1}{2}\nabla - \frac{1}{12}\nabla^2
        - \frac{1}{24}\nabla^3 - \frac{19}{720}\nabla^4 - \dots)f_{j+1}
        \label{eq:ch02:2}
        
\end{aligned}
:::

 Use formula {eq}`eq:ch02:1` as a predictor, formula {eq}`eq:ch02:2`
as a corrector and the following difference
table to solve the initial value problem: $y' = -y -2x$,
$y(0) = -1$, to advance the solution to $x = 0.4$. State results to
four decimal places. Compare your result at each step with the
corresponding solution obtained in question 2, above, and comment.\

| $j$ | $x$ | $y$ | $f$ | $\nabla f$ | $\nabla^2 f$ | $\nabla^3 f$ | $\nabla^4 f$ | $\nabla^5 f$|
|:--:|:--:|:--:|:--:|:--:|:--:| :--:|:--:|:--:|
|0 | 0.0 | -1.00000 | 1.0000|
| | | | | ............|
|1 | 0.1 | ............| ............|   | ............|
| | | | | ............|   | ............|
|2 | 0.2 | ............| ............|   | ............|   | ............|
| | | | | ............|  |............|  |............|
|3 | 0.3 | ............| ............|  |............|  |............|
| | | | | ............|  |............|
|4 | 0.4 | ............| ............|  |............|
| | | | | ............|
|5 | 0.5 | ............| ............|

::::

::::{exercise}
Consider the initial--value problem 

$$\begin{aligned}
        y' ~&=~ x^2 - y, & y(0) ~&=~ 1.        
\end{aligned}$$

1.  Use the step-by-step method applied in {prf:ref}`example-3.2`, to find
    approximate solutions at $x = 0.4$ and $x = 0.5$ using the
    $4^\text{th}$ order ABM predictor-corrector method (listed on
    page 6 Chapter 2), with $\,h = 0.1\,$. Use the exact solution,
    $y_{ex} = 2 - 2x + x^2 - e^{-x}$, to calculate the starting
    values. Work to 7 decimal places. Note: you can use an Excel
    spreadsheet to carry out your calculations.

2.  Modify **[](ch03:program1)** to find approximate solutions in the
    range $x = 0$ to $x=0.5$, with $\,h = 0.1\,$. Use the exact
    solution, $y_{ex} = 2 - 2x + x^2 - e^{-x}$, to calculate the
    starting values.

3.  Modify **[](ch03:program2)** to check your results at $x = 0.4$
    and $x = 0.5$. Run your program for smaller and larger step size
    values and comment on your results.

4.  Modify **[](ch03:program3)** - with the `ode113` solver - to find
    solution and comment on your results. Try different tolerance
    values for *AbsTol* and *RelTol* and comment on your findings.
::::

## Answers to Tutorial Exercises - Chapter

2.  $y_1 = -0.9000$, $y_2 = -0.8450$, $y_3 = -0.8114$, $y_4 = -0.8019$,
    $y_5 = -0.8102$.

3.  $x = 0.1$, $y^p = -0.9000$, $y^c = -0.9150$, $y_{ex} = -0.9145$\
    $x = 0.2$, $y^p = -0.8577$, $y^c = -0.8566$, $y_{ex} = -0.8562$\
    $x = 0.3$, $y^p = -0.8227$, $y^c = -0.8228$, $y_{ex} = -0.8225$\
    $x = 0.4$, $y^p = -0.8112$, $y^c = -0.8113$, $y_{ex} = -0.8110$

4.  1.  $h = 0.1$,  $x = 0.4$, $y^p = 0.6896771$, $y^c = 0.6896803$,
        $y_{ex} = 0.6896800$

          $x = 0.5$, $y^p = 0.6434670$, $y^c = 0.6434699$,
        $y_{ex} = 0.6434693$

    2.  $x = 0.4$, $y^c = 0.6896803$, $y_{ex} = 0.6896800$,
        $|y_{ex} - y| = 0.00000031$

        $x = 0.5$, $y^c = 0.6434699$, $y_{ex} = 0.6434693$,
        $|y_{ex} - y| = 0.00000056$

    3.  $x = 0.4$, $y = 0.6896806$, $y_{ex} = 0.6896800$,
        $|y_{ex} - y| = 0.00000064$

        $x = 0.5$, $y = 0.6434702$, $y_{ex} = 0.6434693$,
        $|y_{ex} - y| = 0.00000085$

    4.  $\textit{RelTol} = \textit{AbsTol} = 1.e-4$:

        $x = 0.4$, $y = 0.6896797$, $y_{ex} = 0.6896800$,
        $|y_{ex} - y| = 0.00000023$

        $x = 0.5$, $y = 0.6434691$, $y_{ex} = 0.6434693$,
        $|y_{ex} - y| = 0.00000021$

    5.  $\textit{RelTol} = \textit{AbsTol} = 1.e-6$:

        $x = 0.4$, $y = 0.6896799$, $y_{ex} = 0.6896800$,
        $|y_{ex} - y| = 0.00000001$

        $x = 0.5$, $y = 0.6434693$, $y_{ex} = 0.6434693$,
        $|y_{ex} - y| = 0.00000001$

