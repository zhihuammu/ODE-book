# Formulas and Theorems

:::{index} Binomial Expansion
:::

(chap:sec:Binomial Expansion)=
## Binomial Expansion

For any two real numbers $x$ and $y$, and a whole number $n$ as the power, the [binomial expansion](https://en.wikipedia.org/wiki/Binomial_theorem), also named binomial theorem, describes the algebraic expansion of powers of a binomial as below

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

:::{index} Binomial Expansion; binomial coefficient
:::

where

$$
\begin{pmatrix} n \\ k \end{pmatrix} = \dfrac{n!}{k!(n-k)!}
=\dfrac{n(n-1)(n-2)\cdots(n-k+1)}{k!}
$$(eq:bi:coe)

is called the *binomial coefficient*.

Substituting $x=1$ into {eq}`eq:bi:exap`, we get 

$$
(1+y)^{n}=1+ny+\frac{n(n-1)}{2!} y^{2}+\frac{n(n-1)(n-2)}{3!}y^{3}+\cdots +ny^{n-1}+y^{n}.
$$(eq:bi:exap:variant)

:::{index} Binomial Expansion; general binomial expansion
:::

(chap:sec:generalBinomialExpansion)=
## Newton's generalised binomial theorem

Instead of strictly using a whole number $n$ as the power in the binomial formula {eq}`eq:bi:exap`, we can loose the condition to introduce any real number $s$ as the power. First we replace the whole number $n$ with a real number $s$ to get the generalised binomial coefficient 

:::{index} Binomial Expansion; general binomial coefficient
:::
$$
\begin{pmatrix} s \\ k \end{pmatrix} 
=\dfrac{s(s-1)(s-2)\cdots(s-k+1)}{k!},
$$(eq:bi:coe:general)

then we can get the generalised bionomial expansion

$$
\begin{aligned}
 (x+y)^{s}&=\sum _{k=0}^{\infty }{s \choose k}x^{s-k}y^{k}\\
          &=x^{s}y^{0}+s x^{s-1}y+{\frac {s(s-1)}{2!}}x^{s-2}y^{2}+{\frac {s(s-1)(s-2)}{3!}}x^{s-3}y^{3}+\cdots .
\end{aligned}
$$(eq:bi:exap:general)

Substituting $x=1$ into {eq}`eq:bi:exap:general`, we get

$$
(1+y)^s = 1 + s y + \frac{s(s-1)}{2!}y^2+\frac{s(s-1)(s-2)}{3!}y^3 + \cdots
$$(eq:bi:exap:variant:general)


## Mean Value Theorem
:::{prf:theorem} Mean Value Theorem
Let  $f=f(x)$, $x \in \R$  be continuous over the closed interval  $[a, b]$
and differentiable over the open interval  $(a, b)$. 
Then, there exists at least one point  $\xi\in (a,b)$ such that

$$
f'(\xi)=\frac{f(b)-f(a)}{b-a}
$$
:::