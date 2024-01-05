(chap01:sequence)=
# Sequences

In analysis, we often deal with functions defined on continuous domains. For example, a cubic function defined on the real number set $\mathbb{R}$ as 

$$
f(x)=x^3, \qquad x \in \mathbb{R}.
$$

Sometimes the domain might not be continuous but discrete. For example, we can define an exponential  function, with base $3$, on the integer number set $\mathbb{Z}$ as

$$
f(n)=3^n, \qquad n \in \mathbb{Z},
$$(eq:sequence:example:1)

where $\mathbb{Z}=\{\ldots,-2,-1,0,1,2,\ldots\}$. 

We can also define a quadratic function on the whole number set $\mathbb{N}_0$ as

$$
f(n)=n^2, \qquad n \in \mathbb{N}_0,
$$(eq:sequence:example:2)

where $\mathbb{N}_0=\{0, 1, 2, 3,\ldots\}$, and so the output of this function will be 

$$
0, 1, 4, 9, 16, \ldots
$$

Functions given in {eq}`eq:sequence:example:1` and {eq}`eq:sequence:example:2` are called sequences.

::::{prf:definition} {index}`Sequence`
:label: def-sequence
In mathematics, a sequence is a function whose domain is a set of integers. An output of a sequence is called a member or term of it. 
Specifically, we will regard the expression $\{y_n\}_{n=0}^{+\infty}$ to be an alternative notation for the function $y_n=y(n), n=0,1,2,\ldots$
::::

```{Note}
A sequence is not necessarily a set. The elements in a set cannot be repeated, while the members in a sequence can be repeated, e.g. $0, 1, 1, 2, 2, 2, 3.7, 4.9, 4.9,\ldots$
```
