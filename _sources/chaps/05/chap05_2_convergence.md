# Zero-Stability, Consistency and Convergence Theorem

:::{prf:definition} Zero-Stability
A method is said to be zero-stable if it satisfies the root condition,
i.e. the linear multistep method {eq}`eq:ch04:1.1`
 is said to be **zero-stable** if no root of the
first characteristic polynomial $\,\rho(\xi)\,$ has modulus greater that
one, and every root of modulus one is simple.
:::

:::{prf:definition} Consistency
The linear multistep method {eq}`eq:ch04:1.1`
 is said to be *consistent* if it has order
$\geq 1$. The condition that the order $p \geq 1$ is called the
condition of *consistency*.
:::

In terms of constants $C_p$, introduced in Chapter (3), the condition is
equivalent to $C_0 = 0$, $C_1 = 0$. The condition of consistency can be
expressed by the relations 

$$
\begin{aligned}
    && \sum_{i=0}^{k}  \alpha_i ~&=~ 0\,;
     & \sum_{i=0}^{k} i\alpha_i ~&=~ \sum_{i=0}^{k} \beta_i\,. &&
\end{aligned}
$$

 and in terms of the polynomials $\rho(\xi)$ and
$\sigma(\xi)$ the condition of consistency can be expressed by the
relations - i.e. the linear multistep method {eq}`eq:ch04:1.1` is consistent *iff*: 

$$
\begin{aligned}
    \rho(1) ~&=~ 0\,, \qquad\text{and}\qquad \rho'(1) = \sigma(1)\,.
\end{aligned}
$$

Thus, for a consistent method, the first characteristic polynomial
always has a root at $+1$, i.e. the *principal root* $\xi_1$. The
remaining roots $\,\xi_i\,, ~i=2,3,\dots,k\,$, are the *parasitic
roots*.

:::{prf:remark} Three ways to assess consistency
<!-- :class: dropdown -->

- The method's order of accuray $\geq 1$. 

- The constants satisfy $C_0=0$ and $C_1=0$.

- $\rho(1)=0$ and $\rho'(1)=\sigma(1)$.

:::

A linear multistep method which is zero-stable is frequently called
'stable'. Essentially a method is stable if errors introduced at one
step are not propagated at subsequent steps. Zero-stability ensures that
the parasitic solutions of the general solution to a difference equation
are damped out in the limit as $\,h \to 0\,$ -- this effect is related
to the fundamental theorem on linear multistep methods by 'Dahlquist':

:::{prf:theorem} Convergence
The necessary and sufficient conditions for a linear multistep method to
be convergent are that it is consistent and zero-stable.
:::

:::{prf:example}
Investigate the convergence of the third order Adams-Bashforth formula:


$$
\begin{aligned}
        y_{j+1} ~=~ y_j + \frac{h}{12} \bigl[
            23f_j - 16f_{j-1} + 5f_{j-2}
        \bigr]    
\end{aligned}
$$

:::{dropdown} Solution (click to show)

 Rearranging the formula to obtain 

$$
\begin{aligned}
        y_{j+1} - y_{j} + 0 y_{j-1} + 0y_{j-2} ~=~ h \left(
            0f_{j+1}+ \frac{23}{12}f_j - \frac{16}{12}f_{j-1} + \frac{5}{12}f_{j-2}
        \right)
\end{aligned}
$$

 we have the following coefficents 

$$
\begin{aligned}
        && \alpha_3 &= 1\,,  & \alpha_2 &= {-1}\,,
         & \alpha_1 &= 0\,, & \alpha_0 &= 0 &&
        \\[1em]
        && \beta_3 &= 0\,,  & \beta_2 &= \frac{23}{12}\,,
         & \beta_1 &= -\frac{16}{12}\,, & \beta_0 &= \frac{5}{12} &&    
\end{aligned}
$$

 and the first and second characteristic polynomials

$$
\begin{aligned}
        &\rho (\xi) = \alpha_3\xi^3 + \alpha_2\xi^2 + \alpha_1\xi + \alpha_0 = \xi^3 - \xi^2
        \\
        &\sigma(\xi) = \beta_3\xi^3 + \beta_2\xi^2 + \beta_1\xi + \beta_0 = \frac{1}{12}(23\xi^2 - 16\xi + 5)    
\end{aligned}
$$

Let

$$
\rho (\xi) = \xi^3 - \xi^2 = \xi^2(\xi - 1) = 0
$$

so we get the roots $\xi_1 = 0\,, \qquad \xi_2 = 0\,, \qquad \xi_3 = 1$. 

 Since $\,\xi_1,\,\xi_2\,$ are less than $1$, and
$\,\xi_3\!=\!1$ is simple, the corresponding characteristic polynomial
satisfies the root condition and is zero-stable.

Checking the consistency, we have

$$
\begin{aligned}
    \rho(1)=&1^3 - 1^2 =0 \\
    \rho'(1)= & \left.(3\xi^2-2\xi)\right\vert_{\xi=1} = 3(1)-2(1) = 1 \\
    \sigma(1)= & \frac{1}{12}\left(23(1)^2-16(1)+5\right) = 1
\end{aligned}
$$
so the method is also consistent $(\text{i.e.}\,\rho(1) = 0,~ \rho'(1) = \sigma(1) )$.

Therefore the method is convergent.
:::

:::{prf:example}
Investigate the stability of the Milne's predictor method:

$$
\begin{aligned}
        y_{j+4} - y_j ~=~ \frac{4h}{3} \bigl[
            2f_{j+3} - f_{j+2} + 2f_{j+1}
        \bigr]   
\end{aligned}
$$

:::{dropdown} Solution (click to show)
 We find the following coefficients: 

$$
\begin{aligned}
        && \alpha_0 &= -1\,,
         & \alpha_1 &= 0\,,
         & \alpha_2 &= 0\,,
         & \alpha_3 &= 0\,,
         & \alpha_4 &= 1 &&
        \\[1ex]
        && \beta_0 &= 0\,,
         & \beta_1 &= \frac{8}{3}\,,
         & \beta_2 &= - \frac{4}{3}\,,
         & \beta_3 &= \frac{8}{3}\,,
         & \beta_4 &= 0 &&    
\end{aligned}
$$

 and 

$$
\begin{aligned}
        \rho(\xi) ~&=~ \alpha_4\xi^4 + \alpha_3\xi^3 + \alpha_2\xi^2 + \alpha_1\xi + \alpha_0 ~=~ \xi^4 - 1
        \\
        \sigma(\xi) ~&=~ \frac{4}{3} \bigl[
            2\xi^3 - \xi^2 + 2\xi
        \bigr]    
\end{aligned}
$$

 $\therefore\qquad \xi^4 - 1 = 0\,,$\
$\therefore\qquad \xi^2 = \pm 1\,,\qquad \xi_1 = 1\,,\quad \xi_2 = -1\,,\quad \xi_3 = -i\,,\quad \xi_4 = +i$\
There are no repeated roots, and modulus of all roots are $\,\leq 1\,$,
therefore the method satisfies the root condition, but since there are
more than one root with modulus one the method is weakly stable. The
method is consistent
$(\text{i.e.}\ \,\rho(1) = 0,~ \rho'(1) = \sigma(1) = 4)$, and since
zero stable, the method is also convergent.
:::

:::{prf:remark} Adams methods
The characteristic polynomial $\rho$ for all Adams methods
(AB and AM) are of the form: 

$$
\begin{aligned}
    \rho(\xi) ~&=~ \xi^k - \xi^{k-1}\\
                &=~ \xi^{k-1}(\xi - 1)
\end{aligned}
$$

 Hence, $\xi_1 = 1$, and the reminding roots
$\xi_2,\xi_3,\dots,\xi_k = 0$, they all satisfy the root conditions and
are zero stable. It can be shown that they are consistent and therefore,
all Adams methods are convergent.
:::