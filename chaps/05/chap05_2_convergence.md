# Zero-Stability, Consistency and Convergence Theorem

:::{prf:definition} Zero-Stability
A linear multistep method {eq}`eq:ch04:1.1` is said to be {index}`zero-stable` if it satisfies the root condition given in {prf:ref}`definition-root-condition`.

This means no root of the
first characteristic polynomial $\,\rho(z)\,$ has modulus greater that
one, and every root of modulus one is simple.
:::

:::{prf:definition} Consistency
In numerical analysis, consistency is the property of a numerical method performing differentiation or integration in a way similar to the actual differentiation or integration. In another word, consistency tells how similar is the discrete system to the original continuous system.

The condition for the discrete system produced by a linear multistep method {eq}`eq:ch04:1.1`

$$
\sum_{i=0}^{k}\alpha_i y_{j+i}~=~ h\sum_{i=0}^{k}\beta_i f_{j+i}, \qquad
     \text{with}~ \alpha_k =1 
$$

being *consistent* with the continuous integral equation

$$
\int_{x_j}^{x_{j+k}} \dy = \int_{x_j}^{x_{j+k}} f \dx
$$

is that the method has an order of accuracy $p \geq 1$.
:::


In terms of error constants $C_p$ introduced in {numref}`chap:errorConstant:constants`, the condition of consistency is
equivalent to $C_0 = 0$, $C_1 = 0$. This ensures the method has an order of accuracy $p\geq 1$. Thus the condition of consistency can also be expressed by the relations 

$$
\begin{aligned}
    && \sum_{i=0}^{k}  \alpha_i ~&=~ 0\,;
     & \sum_{i=0}^{k} i\alpha_i ~&=~ \sum_{i=0}^{k} \beta_i\,. &&
\end{aligned}
$$

And in terms of the first and second characteristic polynomials $\rho(z)$ and $\sigma(z)$, the condition of consistency can be expressed by the following relations - i.e. the linear multistep method {eq}`eq:ch04:1.1` is consistent *iff*: 

$$
\begin{aligned}
    \rho(1) ~&=~ 0\,, \qquad\text{and}\qquad \rho'(1) = \sigma(1)\,.
\end{aligned}
$$

Thus, for a consistent method, the first characteristic polynomial
always has a root at $+1$, i.e. the *principal root* $z_1$. The
remaining roots $\,z_i\,, ~i=2,3,\dots,k\,$, are the *parasitic
roots*.

:::{prf:remark} Condition of Consistency
In summary there are three equivalent conditions of consistency: 

1. The method's order of accuracy $p \geq 1$. 

2. The error constants satisfy $C_0=0$ and $C_1=0$.

3. $\rho(1)=0$ and $\rho'(1)=\sigma(1)$.

If a linear multistep method satisfies any of these three conditions, then it is a *consistent* method.
:::

A linear multistep method which is zero-stable is frequently called
'stable'. Essentially a method is stable if errors introduced at one
step are not propagated at subsequent steps. 

In addition, it is also important for us to know whether the numerical solution $y${sub}`num` will approach
the exact solution $y${sub}`ex` when we reduce the step size $h$ towards zero. 

:::{prf:definition} Convergence
For an initial value problem

$$
\left\{
\begin{aligned}
 y'&=f(t, y) \\
 y(0)&=y_0
\end{aligned}
\right.
\qquad  t \in [0, T],
$$

when we reduce the step size $h$ towards zero, if the numerical solution $y${sub}`num` approaches to
the exact solution $y${sub}`ex`, we says the numerical solution converges to the exact solution, and we call the numerical method a convergent method.

$$
\max _{t\in [0, T]} \| y_\text{num}(t) - y_\text{ex}(t) \| \rightarrow 0 \qquad \mbox{as} \qquad {h}\rightarrow 0.
$$

:::


Zero-stability ensures that
the parasitic solutions of the general solution to a difference equation
are damped out in the limit as $\,h \to 0\,$ -- this effect is related
to the fundamental theorem on linear multistep methods by **Dahlquist**:

:::{prf:theorem} Dahlquist Equivalence
The necessary and sufficient conditions for a linear multistep method to
be {index}`convergent` are that it is consistent and zero-stable.
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

:::{admonition} Solution
:class: solution, dropdown

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
        &\rho (z) = \alpha_3z^3 + \alpha_2z^2 + \alpha_1z + \alpha_0 = z^3 - z^2
        \\
        &\sigma(z) = \beta_3z^3 + \beta_2z^2 + \beta_1z + \beta_0 = \frac{1}{12}(23z^2 - 16z + 5)    
\end{aligned}
$$

Let

$$
\rho (z) = z^3 - z^2 = z^2(z - 1) = 0
$$

so we get the roots $z_1 = 0\,, \qquad z_2 = 0\,, \qquad z_3 = 1$. 

 Since $\,z_1,\,z_2\,$ are less than $1$, and
$\,z_3\!=\!1$ is simple, the corresponding characteristic polynomial
satisfies the root condition and is zero-stable.

Checking the consistency, we have

$$
\begin{aligned}
    \rho(1)=&1^3 - 1^2 =0 \\
    \rho'(1)= & \left.(3z^2-2z)\right\vert_{z=1} = 3(1)-2(1) = 1 \\
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

:::{admonition} Solution
:class: solution, dropdown

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
        \rho(z) ~&=~ \alpha_4z^4 + \alpha_3z^3 + \alpha_2z^2 + \alpha_1z + \alpha_0 ~=~ z^4 - 1
        \\
        \sigma(z) ~&=~ \frac{4}{3} \bigl[
            2z^3 - z^2 + 2z
        \bigr]    
\end{aligned}
$$

 $\therefore\qquad z^4 - 1 = 0\,,$\
$\therefore\qquad z^2 = \pm 1\,,\qquad z_1 = 1\,,\quad z_2 = -1\,,\quad z_3 = -i\,,\quad z_4 = +i$\
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
    \rho(z) ~&=~ z^k - z^{k-1}\\
                &=~ z^{k-1}(z - 1)
\end{aligned}
$$

 Hence, $z_1 = 1$, and the reminding roots
$z_2,z_3,\dots,z_k = 0$, they all satisfy the root conditions and
are zero stable. It can be shown that they are consistent and therefore,
all Adams methods are convergent.
:::