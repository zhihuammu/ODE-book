## Multistep Methods

The most general *linear multistep method* for solving the initial value

\begin{equation} 
y ' = f(x,y) \qquad a\leq x\leq b, \qquad y(a)=\eta 
\end{equation}

\begin{equation*} 
y ' = f(x,y) \qquad a\leq x\leq b, \qquad y(a)=\eta 
\end{equation*}


```{Note}
Definition

$$ y' = f(x,y) \qquad a\leq x\leq b, \qquad y(a)=\eta $$

dfdfsdfs
```

$$ y' = f(x,y) \qquad a\leq x\leq b, \qquad y(a)=\eta $$

```{seealso}
Jupyter Book uses [Jupytext](https://jupytext.readthedocs.io/en/latest/) to convert text-based files to notebooks, and can support [many other text-based notebook files](https://jupyterbook.org/file-types/jupytext.html).
```

```{tip}
Jupyter Book uses [Jupytext](https://jupytext.readthedocs.io/en/latest/) to convert text-based files to notebooks, and can support [many other text-based notebook files](https://jupyterbook.org/file-types/jupytext.html).
```

```{important}
Jupyter Book uses [Jupytext](https://jupytext.readthedocs.io/en/latest/) to convert text-based files to notebooks, and can support [many other text-based notebook files](https://jupyterbook.org/file-types/jupytext.html).
```

```{warning}
Jupyter Book uses [Jupytext](https://jupytext.readthedocs.io/en/latest/) to convert text-based files to notebooks, and can support [many other text-based notebook files](https://jupyterbook.org/file-types/jupytext.html).
```

```{python}
print("Hallo I'm an RMarkdown block!")
```

```{admonition} Definition
:class: tip
Here's the admonition content
```

```{prf:algorithm} Ford–Fulkerson
:label: my-algorithm

**Inputs** Given a Network $G=(V,E)$ with flow capacity $c$, a source node $s$, and a sink node $t$

**Output** Compute a flow $f$ from $s$ to $t$ of maximum value

1. $f(u, v) \leftarrow 0$ for all edges $(u,v)$
2. While there is a path $p$ from $s$ to $t$ in $G_{f}$ such that $c_{f}(u,v)>0$
    for all edges $(u,v) \in p$:

    1. Find $c_{f}(p)= \min \{c_{f}(u,v):(u,v)\in p\}$
    2. For each edge $(u,v) \in p$

        1. $f(u,v) \leftarrow f(u,v) + c_{f}(p)$ *(Send flow along the path)*
        2. $f(u,v) \leftarrow f(u,v) - c_{f}(p)$ *(The flow might be "returned" later)*
```

````{prf:proof}
We'll omit the full proof.

But we will prove sufficiency of the asserted conditions.

To this end, let $y \in \mathbb R^n$ and let $S$ be a linear subspace of $\mathbb R^n$.

Let $\hat y$ be a vector in $\mathbb R^n$ such that $\hat y \in S$ and $y - \hat y \perp S$.

Let $z$ be any other point in $S$ and use the fact that $S$ is a linear subspace to deduce

```{math}
\| y - z \|^2
= \| (y - \hat y) + (\hat y - z) \|^2
= \| y - \hat y \|^2  + \| \hat y - z  \|^2
```

Hence $\| y - z \| \geq \| y - \hat y \|$, which completes the proof.
````

````{prf:theorem} Orthogonal-Projection-Theorem
:label: my-theorem

Given $y \in \mathbb R^n$ and linear subspace $S \subset \mathbb R^n$,
there exists a unique solution to the minimization problem

```{math}
\hat y := \argmin_{z \in S} \|y - z\|
```

The minimizer $\hat y$ is the unique vector in $\mathbb R^n$ that satisfies

* $\hat y \in S$

* $y - \hat y \perp S$


The vector $\hat y$ is called the **orthogonal projection** of $y$ onto $S$.
````

Since Pythagoras, we know that :math:`a^2 + b^2 = c^2`.
