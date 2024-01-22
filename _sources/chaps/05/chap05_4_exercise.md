(chap:stability1:exercise)=
# Chapter 6 Exercise

You should try the following exercise questions first, then check with the answers. 

- {download}`Handwritten solution for Exercises 5.1 and 5.2</exSol/Ex5/Ex5_1-2_sol.pdf>`

:::{exercise}
:label: ch5-ex-q1

Find the first and second characteristic polynomials and investigate
the stability of the following multistep methods.

1.  $y_{j+1} ~=~ y_j + \frac{h}{2}(3f_j - f_{j-1})$

2.  $y_{j+1} + 9y_j - 9y_{j-1} - y_{j-2} ~=~ 6h\,(f_j + f_{j-1})$

3.  $y_{j+1} ~=~ 4y_j - 3y_{j-1} - 2hf_{j-1}$

4.  $y_{j+1} ~=~ 2y_{j-1} - y_j + \frac{h}{2}(5f_j + f_{j-1})$
:::

:::{solution} ch5-ex-q1
:class: dropdown
1. Roots are 0 and 1
2. Roots are 1, -0.1, -9.9
3. Roots are 1 and 3
4. Roots are 1 and -2
:::

:::{exercise}
:label: ch5-ex-q2
Consider the multistep methods in {numref}`ch5-ex-q1`,
determine their order of accuracy and error constants using the techniques
covered in {ref}`chap:errorConstant:constants`.
:::

:::{solution} ch5-ex-q2
:class: dropdown
1. $2^\text{nd}$ order, $\frac{5}{12}$, 
2. $4^\text{th}$ order, $\frac{1}{10}$
3. $2^\text{nd}$ order, $\frac{2}{3}$, 
4. $2^\text{nd}$ order, $\frac{1}{4}$
:::

:::{exercise}
:label: ch5-ex-q3
Investigate the stability of the following explicit 2-step method
(i.e. mid-point rule): 

$$

\begin{aligned}
            y_{j+1} ~=~ y_{j-1}+2hf_{j}
        
    \end{aligned}

$$

Use this method to approximate the solution to the
following initial value problem: 

$$

\begin{aligned}
            && y'(x) \,&=\, \lambda y & y(0)\,&=\,1 & 0 &\leq \,x\, \leq 5 &&
        
    \end{aligned}

$$

using $\lambda = -2$, with $h = 0.02$ and
$h = 0.05$. Use the analytic solution $y_{ex} = e^{-2x}$ to find the
starting values, and plot the solution curves. Next, solve the same
problem with the same parameters using the two-step AB method. By
considering the stability of the methods and the errors in the
calculations, compare the two solution methods and comment on your
results. 

<!-- Note: You could simply use an Excel sheet to both find
the approximate solution and plot the results. -->

:::

:::::{solution} ch5-ex-q3
:class: dropdown

- {download}`Matlab solution for Exercise 5.3</exSol/Ex5/Ex5_3_Solution.mlx>`

::::{grid}

:::{grid-item} 
:columns: 6
```{image}  /images/05/fig-chap05-c4ans3-h005.svg    
:width: 600px
:align: center
```
:::

:::{grid-item} 
:columns: 6
```{image}  /images/05/fig-chap05-c4ans3-h002.svg    
:width: 600px
:align: center
```
:::

::::


