(chap02:exercises)=
# Chapter 2 Exercises

You should try the following exercise questions first, then check with the answers. 

For detailed solutions, please find them in the Moodle area for this Unit.

::::{exercise}
:label: ch2-ex-q1
Complete a difference table for the following data:

|$x$   | 1.20  | 1.25   | 1.30  |  1.35 | 1.40   |   1.45  |1.50  |
|:----:|:----:| :----:|  :----:|  :----:| :----:|  :----:|  :----:| 
|$f(x)$| 0.1823| 0.2231 | 0.2624| 0.3001| 0.3365 | 0.3716  |0.4055|

What degree of polynomial is required to fit exactly all seven data
pairs? What lesser-degree polynomial will nearly fit the data?
Justify your answer.
::::

::::{solution} ch2-ex-q1
:::{dropdown} Click to show
A sixth-degree polynomial is required to fit exactly all the 7 data
    points; however, since the third order differences are small and
    nearly constant, a third degree polynomial will almost fit all seven
    points.
::::



::::{exercise}
:label: ch2-ex-q2
Complete the difference table for the following data and by using
the Gregory-Newton backward interpolating polynomial of degree 1, 2,
3, 4 and 5 estimate $\,f(4.12)$, using $\,x_j=5\,$. By comparing the
results, explain briefly how the computed results can be checked and
improved.

|$x$     | 0    |  1    | 2      | 3      | 4     | 5      |
|:----:  |:----:| :----:|  :----:|  :----:| :----:|  :----:|
| $f(x)$ | 1    | 2     | 4      | 8      | 16    | 32     |
::::

::::{solution} ch2-ex-q2
:::{dropdown} Click to show
$P_1(4.12) = 17.92$, $P_2 = 17.4976$, $P_3 = 17.41875$,
    $P_4 = 17.39785$, $P_5 = 17.39135$.
::::


::::{exercise}
:label: ch2-ex-q3

Use the table below and the Gregory-Newton forward-interpolating
polynomials of degree 3 and 4 to estimate $\,f(0.158)\,$. Choose
$\,x_0=0.125\,$. Compare the two estimates and comment on the
results.

|$x$ | $f(x)$ | $\Delta f$ | $\Delta^2 f$ | $\Delta^3 f$ | $\Delta^4 f$|
|:----:  |:----:| :----:|  :----:|  :----:| :----:| 
|0.125 | 0.79168|
|        |         | -0.01834|
|0.250 | 0.77334 |          | -0.01129|
|        |         | -0.02963 |          | 0.00134|
|0.375 | 0.74371 |          | -0.00995 |         | 0.00038|
|        |         | -0.03958 |          | 0.00172 |        |
|0.500 | 0.70413 |          | -0.00823 |         | 0.00028|
|        |         | -0.04781 |          | 0.00200|
|0.625 | 0.65632 |          | -0.00623|
|        |         | -0.05404|
|0.750 | 0.60228|
::::

::::{solution} ch2-ex-q3
:::{dropdown} Click to show
$P_3(0.158) = 0.78801$ for degree 3, and $P_4(0.158) = 0.78800$ for
    degree 4.
::::


::::{exercise}
:label: ch2-ex-q4

Following the method used to derive the Gregory-Newton forward interpolation formula, derive the  Gregory-Newton backward difference interpolation formula.
::::

::::{solution} ch2-ex-q4
:::{dropdown} Click to show
Use Binomial Expansion to expand $(1-\nabla)^{-s}$ .
::::


::::{exercise}
:label: ch2-ex-q5

Complete the difference table for the following data and by using
the Gregory-Newton forward interpolating polynomial find
$f(1.72)$.


| $x$  | 1.7 | 1.8 | 1.9 | 2.0 | 2.1|
|:----:  |:----:| :----:|  :----:|  :----:| :----:| 
| $f(x)$ | 0.39798486 | 0.33998641 | 0.28181856 | 0.22389078 | 0.16660698|

:::{note}
The function representing this set of data is derived from
Bessel function of order 0 for given $x$ values. Note that you can
find the solution in MATLAB, using the command *besselj*$(0,x)$,
which evaluates the function *besselj* of order 0 at a given $x$
value. Compare your result with the MATLAB answer, and comment
whether the accuracy of your solution is within the expected range.
::::

::::{solution} ch2-ex-q5
:::{dropdown} Click to show
$f(1.72) = 0.38641856$, MATLAB answer is
    $besselj(0,1.72) = 0.38641848$.

<!-- [*Video explanation of this question*](https://mmutube.mmu.ac.uk/edit/1_le2vogg7) -->

<a href="https://mmutube.mmu.ac.uk/media/odeEx1Q5/1_le2vogg7" target="_blank">An old video explaning this question</a>
::::


::::{exercise}
:label: ch2-ex-q6

Given the finite difference table below, find $\,f(2.25)\,$ using the Gregory-Newton

-  forward difference interpolation formula
-  backward difference interpolation formula

|$x$ | $f(x)$ | $1^\text{st}$ diff | $2^\text{nd}$ diff | $3^\text{rd}$ diff | $4^\text{th}$ diff|
|:----:  |:----:| :----:|  :----:|  :----:| :----:| 
|1.0 | 2.287355|
|    |          |  2.183107|
|1.5 | 4.470462 |           |  0.065280|
|    |          |  2.248387 |           | -1.741634|
|2.0 | 6.718850 |           | -1.676354 |           | -1.610458|
|    |          |  0.572034 |           | -3.352092|
|2.5 | 7.290883 |           | -5.028446|
|    |          | -4.456412|
|3.0 | 2.834471|

For each case use an appropriate $\,x_j\,$ when calculating
$s ~=~ \dfrac{x-x_j}{h}$. Compare the two estimates and comment on
the results. The exact value of $\,f(2.25) = 7.382153$. Compare your
estimated solutions with the exact value together with the data
provided in the difference table, comment on the behaviour of the
corresponding polynomial function. Can you suggest a way of
improving the approximated solution.
::::

::::{solution} ch2-ex-q6
:::{dropdown} Click to show
-  Forward $f(2.25) = 7.386171$
-  Backward $f(2.25) = 7.386171$.
::::


::::{exercise}
:label: ch2-ex-q7

Repeat Exercise 6, using the finite difference table below which is
drawn from the same function, but in the interval $[0,\,2.0]$, to
find $\,f(0.75)\,$, including comments on the results and analysis.
The exact value of $\,f(0.75) = 1.437778$.

|$x$ | $f(x)$ | $1^\text{st}$ diff | $2^\text{nd}$ diff  | $3^\text{rd}$ diff | $4^\text{th}$ diff|
|:----:  |:----:| :----:|  :----:|  :----:| :----:| 
|0.0 | 0.000000|
|    |          | 0.790439|
|0.5 | 0.790439 |          | 0.706477|
|    |          | 1.496916 |          | -0.020286|
|1.0 | 2.287355 |          | 0.686191 |           | -0.600624|
|    |          | 2.183107 |          | -0.620911|
|1.5 | 4.470462 |          | 0.065280|
|    |          | 2.248387|
|2.0 | 6.718850|


You will find that your answer for $\,f(0.75)\,$ is correct to 6
decimal places. However, from Exercise 6, the estimated solution for
$\,f(2.25)\,$ is only correct to 2 decimal places. By giving at
least one reason, explain why there is such a difference in the
accuracy of the estimated solutions.
::::

::::{solution} ch2-ex-q7
:::{dropdown} Click to show
-  Forward $f(0.75) = 1.437778$
-  Backward $f(0.75) = 1.437778$.
::::


<!-- # Answers to Tutorial Exercises

:::{dropdown} Click to show

1.  A sixth-degree polynomial is required to fit exactly all the 7 data
    points; however, since the third order differences are small and
    nearly constant, a third degree polynomial will almost fit all seven
    points.

1.  $P_1(4.12) = 17.92$, $P_2 = 17.4976$, $P_3 = 17.41875$,
    $P_4 = 17.39785$, $P_5 = 17.39135$.

1.  $P_3(0.158) = 0.78801$ for degree 3, and $P_4(0.158) = 0.78800$ for
    degree 4.

1.  Use Binomial Expansion to expand $(1-\nabla)^{-s}$ .

1.  $f(1.72) = 0.38641856$, MATLAB answer is
    $besselj(0,1.72) = 0.38641848$.

1.  -  Forward $f(2.25) = 7.386171$
    -  Backward $f(2.25) = 7.386171$.

1.  -  Forward $f(0.75) = 1.437778$
    -  Backward $f(0.75) = 1.437778$.
::: -->