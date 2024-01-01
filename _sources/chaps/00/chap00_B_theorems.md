# Basic Theorems


:::{index} Binomial expansion
:::

## Binomial expansion

$\forall x \in \R,~ y\in \R$ and $n \in \N$

$$
\begin{aligned}
(x+y)^n & =  \begin{pmatrix} n \\ 0 \end{pmatrix} x^{n} y^0 + \begin{pmatrix} n \\ 1 \end{pmatrix} x^{n-1} y
            + \begin{pmatrix} n \\ 2 \end{pmatrix} x^{n-2} y^2
            + \ldots
            + \begin{pmatrix} n \\ n-1 \end{pmatrix} x y^{n-1}
            + \begin{pmatrix} n \\ n \end{pmatrix} x^0  y^{n} \\
        & = \sum_{k=0}^{n} \begin{pmatrix} n \\ k \end{pmatrix} x^{n-k} y^k,                
\end{aligned}
$$(eq:bi:exap)

where

:::{index} pair: Binomial expansion; binomial coefficient
:::
$$
\begin{pmatrix} n \\ k \end{pmatrix} = \dfrac{n!}{k!(n-k)!}
=\dfrac{n(n-1)(n-2)\cdots(n-k+1)}{k!}
$$(eq:bi:coe)

is called the *binomial coefficient*.

Let $y=1$, we get 

$$
(1+x)^{n}=1+nx+\frac{n(n-1)}{2!} x^{2}+\frac{n(n-1)(n-2)}{3!}x^{3}+\cdots +nx^{n-1}+x^{n}.
$$(eq:bi:exap:variant)


## Newton's general binomial expansion

Instead of strictly using natural numbers $n$ as the power in the binomial formula {eq}`eq:bi:exap`, we can loose the condition to introduce any real number $r$, $r\in\R$, as the power. Thus we can define the generalised binomial coefficient as

$$
\begin{pmatrix} r \\ k \end{pmatrix} 
=\dfrac{r(r-1)(r-2)\cdots(r-k+1)}{k!},
$$(eq:bi:coe:general)

and the generalised bionomial expansion