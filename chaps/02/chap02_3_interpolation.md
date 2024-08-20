```{index} Gregory-Newton Interpolation Formulae
```
# Gregory-Newton Interpolation Formulae

## The need for interpolation



:::{admonition} Question
:class: question
Given a general sequence
$\left\{f_j\right\}_{j=-\infty}^{+\infty}$, if we know the value of each
member $f_j$, how can we find the value of $f(x)$ for
$x_j < x < x_{j+1}$?
:::

<!-- :::{figure} /images/fig-interpolation.svg
---
width: 600px
name: figure-discretepoints
---
::: -->

```{tikz} Sequence and interpolation.
:xscale: 60
:include: /images/02/interpolation.tikz
```

Possiple options are:
-   Take an average: $f(x)=\dfrac{f_j + f_{j+1}}{2}$
-   A precise forward-shift: $f(x)=\E ^{s} f_j$,
    $0<s=\dfrac{x-x_j}{x_{j+1}-x_j}<1$

For the first option, we may ask "Is this accurate?" For the second option, we may ask "How to SHIFT?"

```{index} Gregory-Newton Interpolation Formulae; Gregory-Newton Forward Interpolation
```
## Gregory-Newton Forward Interpolation

Let $f_j$ denote $f(x_j)$. We wish to obtain an approximate value for
$f_{j+s}$, where: 

$$s \>=\> \dfrac{x - x_j}{h}$$

Note that we have $\,f_{j+s}=f(x_j\!+\!sh)=\E ^sf(x_j)=\E ^sf_j\,$.

To obtain a formula involving forward differences we substitute
$\,\E =1+\Delta\,$ therefore: 

$$\begin{aligned}
        f_{j+s} &= \E ^{s} f_j \\
                &= (1 + \Delta)^s f_j     
\end{aligned}
$$

<!-- We need to work out $(1 + \Delta)^s=?$ Let's look at {ref}`chap:sec:generalBinomialExpansion` first

::::{note} 
$$
\begin{aligned}
	    (a+b)^n & =  \sum_{k=0}^{n} \begin{pmatrix} n \\ k \end{pmatrix} a^{n-k}b^{k} \\
			    & = \begin{pmatrix} n \\ 0 \end{pmatrix} a^{n}b^{0} 
					+ \begin{pmatrix} n \\ 1 \end{pmatrix} a^{n-1}b^{1}
					+ \begin{pmatrix} n \\ 2 \end{pmatrix} a^{n-2}b^{2}
					+ \cdots
					+ \begin{pmatrix} n \\ n \end{pmatrix} a^{0}b^{n}
\end{aligned}
$$

where

$$\begin{pmatrix} n \\ k \end{pmatrix} = \dfrac{n!}{k!(n-k)!}
	=\dfrac{n(n-1)(n-2)\cdots(n-k+1)}{k!}$$

$$
(1+y)^s = 1 + s y + \frac{s(s-1)}{2!}y^2+\frac{s(s-1)(s-2)}{3!}y^3 + \cdots
$$(eq:bi:exap:variant:general)
:::: -->

By using {ref}`chap:sec:generalBinomialExpansion`, we can expand the shift operator as

$$
\begin{align}
\E ^{s} & =  (1+\Delta)^s  \\
      & =  \sum_{n=0}^{\infty} \begin{pmatrix} s \\ n \end{pmatrix} 1^{s-n}\Delta^{n} \\
      & = \begin{pmatrix} s \\ 0 \end{pmatrix} \Delta^{0} 
            + \begin{pmatrix} s \\ 1 \end{pmatrix} \Delta^{1}
            + \begin{pmatrix} s \\ 2 \end{pmatrix} \Delta^{2}
            + \cdots
            + \begin{pmatrix} s \\ k \end{pmatrix} \Delta^{k}
            + \cdots \\
      & = 1+ s\Delta + \frac{s(s-1)}{2!} \Delta^2 + \frac{s(s-1)(s-2)}{3!} \Delta^3 +\cdots + \frac{s(s-1)(s-2)\cdots(s-k+1)}{k!}\Delta^k + \cdots
\end{align}
$$

:::{note}
$\begin{pmatrix} s \\ k \end{pmatrix} = \dfrac{s!}{k!(s-k)!} =\dfrac{s(s-1)(s-2)\cdots(s-k+1)}{k!}$,

$\begin{pmatrix} s \\ 0 \end{pmatrix} = \dfrac{s!}{0!(s-0)!}=1$.
:::

Therefore, the forward Gregory-Newton Interpolation formulae is

:::{math}
:label: eq:GN:forward
f_{j+s} =  f_j + s\Delta f_j
        + \frac{s(s-1)}{2!}\Delta^2 f_j + \cdots 
        + \frac{s(s-1)(s-2)\cdots(s-k+1)}{k!}\Delta^k f_j + \cdots    
:::

This is an infinite series in $s$ and in practice we terminate it after
a finite number of terms $k$. Thus, we can write:

$$f(x_j+sh) \>=\> P_k(x_s) + e_k(x_s) \>\simeq\> P_k(x_s)$$

where $P_k(x_s)$ represents the polynomial, and $e_k(x_s)$ is the error caused by terminating the series

$$
P_k(x_s)\>=\> f_j
            + s\Delta f_j
            + \frac{s(s-1)}{2!}\Delta^2 f_j
            + \dots
            + \frac{s(s-1)(s-2)\dots(s-k+1)}{k!}\Delta^{k} f_j
$$

:::{note}
The G-N forward interpolation formula (polynomial) is useful for
interpolating near the *beginning* of a sequence.
:::


```{index} Gregory-Newton Interpolation Formulae; Gregory-Newton Backward Interpolation
```
## Gregory-Newton Backward Interpolation


To find $f(x)=f(x_j+sh)$ for $x_{j-1}<x<x_j$, we can use backward
shifting to derive the interpolation formula:

$$
s=\frac{x-x_j}{h}<0
$$

$$
f_{j+s}= f_j + s\nabla f_j
            + \frac{s(s+1)}{2!}\nabla^2 f_j
            + \cdots
            + \frac{s(s+1)\cdots(s+k-1)}{k!}\nabla^k f_j + \cdots
$$(eq:GN:backward)

We can separate the whole polynomial into two parts:

$$f(x_j + sh) = P_k(x_s) + e_k(x_s) \simeq P_k(x_s)$$



:::{note}
The G-N backward interpolation formula (polynomial) is useful for
interpolating near the *end* of a sequence.
:::

