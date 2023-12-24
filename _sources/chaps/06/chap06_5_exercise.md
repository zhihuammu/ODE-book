(chap:stability2:exercise)=
# Chapter 6 Exercises

You should try the following exercise questions first, then check with the answers. 

For detailed solutions, please find them in the Moodle area for this Unit.

:::{exercise}
:label: chap06-ex6-1
Show that the method 

$$
\begin{aligned}
            y_{j+1} ~=~ y_j + hf_{j+1}        
    \end{aligned}
$$

 is absolutely stable for all $h\lambda \not\in (0,2)$.
:::{hint}
To show that the method is absolutely stable for all $h\lambda \not\in (0,2)$, we just need show that the stability interval is $h\lambda \in (-\infty, 0] \cup [2, \infty )$.
:::


:::{solution} chap06-ex6-1
:class: dropdown

Re-arrange the equation as

$$
y_{j+1} - y_j = h ( f_{j+1} + 0 f_j )
$$

so

$$
\alpha_1 = 1, ~ \alpha_0 =-1, ~ \beta_1 = 1, ~ \beta_0=0
$$

Thus the characteristic equation is

$$
\begin{aligned}
L(\xi, h\lambda) & = \sum_{i=0}^{k} \left(\alpha_i - h\lambda \beta_i \right) \xi^i \\
& = (\alpha_1 - h\lambda \beta_1) \xi +  (\alpha_0 - h\lambda \beta_0) \\
& = (1-h\lambda) \xi - 1 \\
& = 0
\end{aligned}
$$

so

$$
\xi = \frac{1}{1-h\lambda}
$$

In the stability interval, it is requested that $|\xi(h\lambda)|\leq 1$, so

$$
\left\vert \frac{1}{1-h\lambda} \right\vert \leq 1
$$

Thus we have

$$
    \left\vert {1-h\lambda} \right\vert \geq 1,
$$

which gives

$$
    {1-h\lambda} \geq 1  \quad \text{or} \quad  {1-h\lambda} \leq -1
$$

therefore

$$
    h\lambda \leq 0 \quad \text{or} \quad h\lambda \geq 2
$$

the stability interval is $h\lambda \in (-\infty, 0] \cup [2, \infty )$.
:::

:::{exercise}
It can be shown that the method 

$$
\begin{aligned}
            y_{j+2} ~=~ y_j + \frac{h}{2}(f_{j+1} + 3f_j)        
    \end{aligned}
$$

 has an interval of absolute stability of
    $\left(-\frac{4}{3},0\right)$. Show that its region of stability is
    the circle on this interval as diameter.
:::

:::{exercise}
Find the interval of absolute stability of the $3^\text{rd}$ and
    $4^\text{th}$ order Adams-Bashforth and Adams-Moulton methods using
    method.
:::

:::{exercise}
Show that the method 

$$
\begin{aligned}
            y_{j+2} ~=~ y_{j+1} + \frac{h}{2}(f_{j+2} + f_{j+1})        
    \end{aligned}
$$

 has an interval of absolute stability of
    $(-\infty,0)$. Explain how you can verify your results.
:::

:::{exercise}
Show that the Simpson's rule: 

$$
\begin{aligned}
            y_{j+2} ~=~ y_j + \frac{h}{3}(f_{j+2} + 4f_{j+1} + f_j)        
    \end{aligned}
$$

 has no interval of absolute stability. Try to verify
    your results by plotting the region of absolute stability.
:::

**Answers to Tutorial Exercises**

Answers are given in each question. For question 3, you can check your
answers with the table of the interval of absolute stability and the
plots of the region of absolute stability for various methods show in
Chapter 5.

**Make sure you label both the $Re$ and $Im$ axes, shade and show
clearly the region of absolute stability in your plots.**