# Predictor-Corrector Methods

Implicit methods are useful for so-called stiff equations, to be
discussed later. However, another use of implicit methods is to combine
an explicit with an implicit formula to form a predictor-corrector
method. A commonly used {index}`predictor-corrector`` method is the combination of
the fourth--order Adams methods: 

$$\begin{aligned}
    y^{(p)}_{j+1} ~&=~ y_j + \frac{{h}}{24}\bigl[
    55f_j - 59f_{j-1} + 37f_{j-2} - 9f_{j-3}
    \bigr]\\[4pt]
    y_{j+1} ~&=~ y_j + \frac{{h}}{24}\bigl[
    9f^{(p)}_{j+1} + 19f_j - 5f_{j-1} + f_{j-2}
    \bigr]    
\end{aligned}$$ 

First a predicted value $y^{(p)}_{j+1}$ of $y_{j+1}$ is
computed by the Adams--Bashforth formula, then $y^{(p)}_{j+1}$ is used
to give $f_{j+1}$ (i.e can be denoted as $f^{(p)}_{j+1}$). The evaluated
value of $f^{(p)}_{j+1}$ is used in the Adams--Moulton formula to
correct the approximation given by the Adams--Bashforth formula, and to
evaluate an improved value of $f_{j+1}$. This is the most common
procedure for applying predictor-corrector method used and is denoted by
**PECE**; **P** for computing the Predictor value of $y_{j+1}$, **E** for
Evaluating the function $f^{(p)}_{j+1}$, **C** for applying the Corrector
formula and **E** for a new evaluation of the function.

It is common to take additional corrector steps in order to improve the
solution. For example, one possibility is **PECECE** (or PE(CE)$^2$)
procedure (i.e. two fixed point iteration per step). Alternatively,
corrector iterations can be carried out until the difference between two
successive iterations is less than a pre-specified tolerance.

:::::{prf:example}
:label: example-3.2
Consider the initial--value problem 

$$\begin{aligned}
        y' &= -y + x + 1, & 0 \leq x \leq 1,\quad y(0) &= 1.       
\end{aligned}$$ 

Find approximate solutions using the
Adams--Bashforth--Moulton fourth--order predictor-corrector method, with
$\,h=0.1\,$. Find solution in the interval $[0,~~1]$ and apply only one
corrector iteration for each step.

:::{hint}
:class: dropdown
- Step 1 - find the starting values

    First, we calculate the starting values from the exact solution
    $\,y(x) = e^{-x} + x\,$ using $\,h = 0.1\,$ (we could use any one--step
    method to find the starting values, see Matlab programs attached).

- Step 2 - calculate the predictor solution    

    Second, we use the $4^\text{th}$--order Adams--Bashforth method to
    predict a value for $y_{j+1}$: 
    
    $$\begin{aligned}
            y_{j+1} ~&=~ y_j + \frac{h}{24}\bigl[
            55f_j - 59f_{j-1} + 37f_{j-2} - 9f_{j-3}
            \bigr]            
    \end{aligned}$$

- Step 3 - calculate the corrector solution
    and then use the $4^\text{th}$--order Adams--Moulton method:

    $$\begin{aligned}
            y_{j+1} ~&=~ y_j + \frac{h}{24}\bigl[
            9f_{j+1} + 19f_j - 5f_{j-1} + f_{j-2}
            \bigr],            
    \end{aligned}$$ 

    to correct the estimated value of $y_{j+1}$, using one
    corrector evaluation only.
:::

<!-- :::{dropdown} Solution (click to show) -->
:::{admonition} Solution
:class: solution, dropdown

<!-- **Solution** -->

- Step 1 - using the exact solution, $\,y(x) = e^{-x} + x\,$, the
    calculated starting values $y_0$, $y_1$, $y_2$ and $y_3$, and the
    corresponding function values $f(x,y)$ are shown in the table below:

    | $j$ | $x$ | $y$ | $f(x,y)$ |
    |--|--|--|--|
    |0 | 0.0 | 1.0000000 | 0.0000000|
    |1 | 0.1 | 1.0048374 | 0.0951626|
    |2 | 0.2 | 1.0187308 | 0.1812692|
    |3 | 0.3 | 1.0408182 | 0.2591818|

- Step 2 - using the starting values we can now advance the
    solution to $x = {0.4}$, i.e. to calculate $y_4$ using the
    following $4^\text{th}$ Adams--Bashforth formula: 
    
    $$\begin{aligned}
        y_4^p ~&=~ y_3 + \frac{{h}}{24}\bigl[
        55f_3 - 59f_2 + 37f_1 - 9f_0
        \bigr]        
    \end{aligned}$$ 
    
    and then use the $4^\text{th}$--order Adams--Moulton formula: 
    
    $$\begin{aligned}
        y_4 ~&=~ y_3 + \frac{{h}}{24}\bigl[
        9f_4^p + 19f_3 - 5f_2 + f_1
        \bigr],        
    \end{aligned}$$ 
    
    $$\begin{aligned}
        y_4^p ~&=~ 1.0408182 + \frac{0.1}{24}\bigl[
        55(0.2591818) - 59(0.1812692) + 37(0.0951626) - 9(0)
        \bigr] \\
         ~&=~ 1.0408182 + \frac{0.1}{24}\bigl[
        14.254998 - 10.694886 + 3.521016 + 0
        \bigr] \\
         ~&=~ {1.0703229}       
    \end{aligned}$$

    To calculate the function value, we substitute $\,y_4^p = 1.0703229\,$
    and $\,x = 0.4\,$ in $\,f(x,y) = -y + x + 1\,$, to get
    $f_4^p = 0.3296671$. This completes the $PE$ stage.

- Step 3 - We now use $\,f_4^p = 0.3296771$ in the corrector formula to obtain a
    corrector value for $y_4$: 

    $$\begin{aligned}
            y_4^c ~&=~ 1.0408182 + \frac{0.1}{24}\bigl[
            9(0.3296771) + 19(0.2591818) - 5(0.1812692) + 0.0951626
            \bigr] \\
            ~&=~ 1.0408182 + \frac{0.1}{24}\bigl[
            2.9670937 + 4.9244538 - 0.906346 + 0.0951626
            \bigr] \\
            ~&=~ {1.0703197}        
    \end{aligned}$$

    We now substitute the corrector value of $y_{4}^c = 1.0703197$ and
    $x = 0.4$ in $f(x,y) ~=~ -y + x + 1$, to get
    $f_4^c = 0.3296803$. This completes the $CE$ stage. Check
    this value in the following completed table of results for $x_j = 0.4$.

    We then advance the solution to $x = 0.5$ by repeating the $PE$
    procedure to calculate $y^{p}_{5}$ and $f^{p}_5$, then $y_{5}$ of
    corrector, and then $f_5$, and so on, (i.e. repeating steps 2 and 3).
    Remember, once the corrector value of $y$ is calculated for each step in
    $x$, we take this as new $y$ value and cross out the predictor
    estimates.

    The computed solution, including the absolute error, up to $x=1.0$ are
    displayed in the following table. (Reproduce all the results using
    step-by-step $PECE$ calculation to ensure that you follow the method
    completely).


    | $j$ | $x_j$ | $y^{AB}_j$ | $f^{AB}_j$ | $y^{AM}_j$ | $f^{AM}_j$ | $y_{ex}$ | $\|y_{ex} - y^{AM}_j\|$ |
    |--|--|--|--|--|--|--|--|
    |4 | 0.4 | 1.0703229 | 0.3296771 | 1.0703197 | 0.3296803 | 1.0703200 | 0.0000003|
    |5 | 0.5 | 1.1065330 | 0.3934670 | 1.1065301 | 0.3934699 | 1.1065307 | 0.0000006|
    |6 | 0.6 | 1.1488135 | 0.4511865 | 1.1488109 | 0.4511891 | 1.1488116 | 0.0000007|
    |7 | 0.7 | 1.1965868 | 0.5034132 | 1.1965844 | 0.5034156 | 1.1965853 | 0.0000009|
    |8 | 0.8 | 1.2493301 | 0.5506699 | 1.2493279 | 0.5506721 | 1.2493290 | 0.0000010|
    |9 | 0.9 | 1.3065705 | 0.5934295 | 1.3065685 | 0.5934315 | 1.3065697 | 0.0000011|
    |10 | 1.0 | 1.3678800 | 0.6321200 | 1.3678783 | 0.6321217 | 1.3678794 | 0.0000012|


    Note that the method produces an absolute error of the order $10^{-7}$
    to $10^{-6}$, which is expected for a $4^\text{th}$order ABM method,
    using $h = 0.1$ -- remember, the error should be of the $O(h^5)$ from
    the truncation error terms listed for each ABM formulae above.
:::
:::::