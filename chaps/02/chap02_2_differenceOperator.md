# Finite Difference Operators

## Discrete Data Points and General Sequences

For a function defined on a continuous domain

$$f=f(x), ~~ x\in \mathbb{R},$$
	
we can use a **general** sequence to represent it at discrete locations

$$\left\{f_j\right\}_{j=-\infty}^{+\infty},$$
	
where  $f_j = f(x_j)$.

Usually, though not necessarily, we let $\left\{x_j\right\}_{j=-\infty}^{+\infty}$ be equally spaced, so

$$x_j= jh$$

where $h=x_{j+1}-x_j$ is called the {index}`step size` (or step length), $h\in(0,+\infty)$.


```{tikz} A general sequence $\{f_j\}_{j=0}^{6}$.
:xscale: 60
:include: /images/02/discrete.tikz
```

::::{prf:remark}
In {numref}`chap01:sequence`, a sequence is defined as a function of integers i.e. 

$$y_j=y(j), \quad j \in \mathbb{Z}.$$

Here we generalise this concept to use a sequence to represent the function at discrete points, 

$$y_j = y(x_j), \quad x_j = jh,~ j\in \mathbb{Z}$$

where
$x$ coordinates are not necessarily intergers.

::::



## Forward Difference Operator $\Delta$

::::{prf:definition} Forward Difference
Given a sequence $\left\{f_j\right\}_{j=-\infty}^{+\infty}$, the first-order {index}`forward difference` for an member $f_j$ is the difference between the next member and itself: 

\begin{equation}
  \Delta f_j = f_{j+1} - f_j,
\end{equation}

and the $k-$th order forward difference is defined as: 

\begin{equation}
  \Delta^k f_j= \Delta\left(\Delta^{k-1} f_j \right).
\end{equation}
::::

::::{prf:example}
- $\Delta f_0 = f_1 - f_0$

- $\Delta f_{10}= f_{11} - f_{10}$
::::

::::{note}
For function $f(x)$, $x\in\mathbb{R}$ with a step size $h$,

$$\Delta f(x) = f(x+h)-f(x)$$
::::

- **Second-order Forward Difference**:
  \begin{align*}
    \Delta^2 f_j & = \Delta(\Delta f_j) \\
                & = \Delta(f_{j+1} - f_j) \\
                & = \Delta(f_{j+1}) - \Delta(f_j) \\
                & = (f_{j+2} - f_{j+1}) - (f_{j+1} - f_j) \\
                & = f_{j+2} - 2f_{j+1} + f_j
  \end{align*}  

- **Third-order Forward Difference**:
  \begin{align*}
    \Delta^3 f_j & = \Delta(\Delta^2 f_j)\\
                & =\Delta(f_{j+2} - 2f_{j+1} + f_j)  \\
                & = (f_{j+3}-f_{j+2}) - 2(f_{j+2}-f_{j+1}) + (f_{j+1} - f_{j}) \\
                & = f_{j+3} - 3f_{j+2} + 3f_{j+1} - f_j
  \end{align*}  

- **Higher-order Forward Difference**:

  $$
  \Delta^n f_j = f_{j+n} - nf_{j+n-1} + \frac{n(n-1)}{2!}f_{j+n-2} - \frac{n(n-1)(n-2)}{3!}f_{j+n-3} + \dots
  $$    

## Backward difference operator $\nabla$

::::{prf:definition} Backward Difference
Given a sequence $\left\{f_j\right\}_{j=-\infty}^{+\infty}$, the first-order {index}`backward difference` for an member $f_j$ is the difference between itself and the previous member: 

\begin{equation}
  \nabla f_j = f_{j} - f_{j-1},
\end{equation}

and the $k$-th order backward difference is defined as: 

\begin{equation}
  \nabla^k f_j= \nabla\left(\nabla^{k-1} f_j \right).
\end{equation}
::::

::::{prf:example}
- $\nabla f_1 = f_1 - f_0$
- $\nabla f_0 = f_0 - f_{-1}$
::::

::::{note}
For function $f(x)$, $x\in\mathbb{R}$ with a step size $h$,

$$\nabla f(x) = f(x)-f(x-h)$$
::::

- **Second-order Backward Difference**:
  \begin{align*}
  \nabla^2 f_j & = \nabla(\nabla(f_j)) \\
              & = \nabla(f_j - f_{j-1}) \\
              & = \nabla(f_j) - \nabla(f_{j-1}) \\
              & = (f_j - f_{j-1}) - (f_{j-1} - f_{j-2}) \\
              & = f_j - 2f_{j-1} + f_{j-2} 
  \end{align*}                     


- **Third-order Backward Difference**:
  \begin{align*}
    \nabla^3 f_j & = \nabla(\nabla^2 f_j)\\
                & =\nabla(f_{j} - 2f_{j-1} + f_{j-2})  \\
                & = (f_{j}-f_{j-1}) - 2(f_{j-1}-f_{j-2}) + (f_{j-2} - f_{j-3}) \\
                & = f_j - 3f_{j-1} + 3f_{j-2} - f_{j-3}
  \end{align*}  


- **Higher-order Forward Difference**:

  $$
  \nabla^n f_j = f_j - nf_{j-1}
                      + \frac{n(n-1)}{2!}f_{j-2}
                      - \frac{n(n-1)(n-2)}{3!}f_{j-3} + \dots
  $$  



## Shift operators $\E$ and $\E ^{-1}$
::::{prf:definition}
    
Given a sequence $\left\{f_j\right\}_{j=-\infty}^{+\infty}$,
we define $\E$ as an operator {index}`shifting` a member in a sequence to the next member
\begin{equation}
  \E  f_j = f_{j+1},
\end{equation}
and shifting a member forward $k$ times gives

$$\E ^k f_j= \E  (\E ^{k-1}f_j)= f_{j+k}.$$

Similarly, we define $\E ^{-1}$ as an operator shifting a member in a
sequence to the previous member
\begin{equation}
  \E ^{-1} f_j = f_{j-1}
\end{equation}
and shifting a member backward $k$ ($k>0$) times gives

$$\E ^{-k} f_j= \E ^{-1}(\E ^{-(k-1)}f_j)= f_{j-k}.$$    
::::

:::{admonition} Note 
The forward and backward shifting operations can also be applied to
functions defined on continuous domains

-   $\E  f(x)= f(x+h)$,

-   $\E ^{-1} f(x) = f(x-h)$.

If we do shifting for $k$ times , then

-   $\E ^k f(x)= f(x+kh)$

-   $\E ^{-k} f(x) = f(x-kh)$
:::

:::{admonition} Questions
:class: question

-   If we shift forward for $k=0.9$ steps, what we will get?

  $$\E ^{0.9} f_j= \E ^{0.9} f(x_j)= f(x_j+0.9h)=?$$

-   If we shift backward for $k=0.9$ steps, what we will get?

  $$\E ^{-0.9} f_j= \E ^{-0.9} f(x_j)= f(x_j-0.9h)=?$$
:::

::::{prf:theorem} 

The {index}`difference operators` and {index}`shift operators` have the following
relations:

-   $\E =1+\Delta$

-   $\E ^{-1}=1-\nabla$

::::

:::{dropdown} Proof (click to show)
Applying the operators on $f(x)$

-   $\E =1+\Delta$

$$
\begin{aligned}
(1+\Delta) f(x) & = f(x) + \Delta f(x) \\
                & = f(x) + f(x+h)-f(x) \\
                & = f(x+h) \\
                & = \E  f(x)
\end{aligned}
$$

-   $\E ^{-1}=1-\nabla$

$$
\begin{aligned}
(1-\nabla) f(x) & = f(x) - \nabla f(x) \\
                & = f(x) - \left[f(x)-f(x-h)\right]\\
                & = f(x-h) \\
                & = \E ^{-1} f(x)
\end{aligned}
$$
:::

