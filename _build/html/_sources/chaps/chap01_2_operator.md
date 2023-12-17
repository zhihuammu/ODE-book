# Finite Difference Operators

## Discrete Data Points

For a function defined on a continuous domain

$$f=f(x), ~~ x\in \mathbb{R},$$
	
we can use a **general** sequence to represent it at discrete locations

$$\left\{f_j\right\}_{j=-\infty}^{+\infty},$$
	
where  $f_j = f(x_j)$.

Usually, though not necessarily, we make $\left\{x_j\right\}_{j=-\infty}^{+\infty}$ be equally spaced, so

$$x_j= jh$$

where $h=x_{j+1}-x_j$ is called the step size (or step length), $h\in(0,+\infty)$.

```{figure} ../images/discrete.svg
---
width: 600px
name: figure-discretepoints
---
Discrete data points and sequence.
```

````{note}
In [Chapter 1](chap00:complexNumber), a [sequence](def-seq) is defined as a function of integers.
Here we generalise this concept to use a sequence to represent the function at discrete points, whose 
$x$ coordinates are not necessarily intergers.

````



## Forward Difference Operator $\Delta$

::::{prf:definition} Forward Difference
Given a sequence $\left\{f_j\right\}_{j=-\infty}^{+\infty}$, the first-order forward difference for an member $f_j$ is the difference between the next member and itself: 

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

````{note}
For function $f(x)$, $x\in\mathbb{R}$ with a step size $h$,

$$\Delta f(x) = f(x+h)-f(x)$$
````

````{admonition} **Second-order Forward Difference**:
:class: tip
\begin{align*}
  \Delta^2 f_j & = \Delta(\Delta f_j) = \Delta(f_{j+1} - f_j) = \Delta(f_{j+1}) - \Delta(f_j) \\
              & = (f_{j+2} - f_{j+1}) - (f_{j+1} - f_j) = f_{j+2} - 2f_{j+1} + f_j
\end{align*}  
````

````{admonition} **Third-order Forward Difference**:
:class: tip
\begin{align*}
  \Delta^3 f_j & = \Delta(\Delta^2 f_j)=\Delta(f_{j+2} - 2f_{j+1} + f_j)  \\
                & = (f_{j+3}-f_{j+2}) - 2(f_{j+2}-f_{j+1}) + (f_{j+1} - f_{j}) \\
                & = f_{j+3} - 3f_{j+2} + 3f_{j+1} - f_j
\end{align*}  
````

````{admonition} **Higher-order Forward Difference**:
:class: tip
$$
\Delta^n f_j = f_{j+n} - nf_{j+n-1} + \frac{n(n-1)}{2!}f_{j+n-2} - \frac{n(n-1)(n-2)}{3!}f_{j+n-3} + \dots
$$    
````

## Forward difference operator $\Delta$

Given 

------ -----------------------------------------------------------------
$\Delta f(x) = f(x+h) - f(x)$, where $h$ denotes stepsize
or     $\Delta f_j = f_{j+1} - f_j$
e.g.   $\Delta f_0 = f_1 - f_0; \quad \Delta f_1 = f_2 - f_1;$ ...etc.
------ -----------------------------------------------------------------

    The second- and higher-order differences are similarly defined:

      ------ -------------------------------------------------------------
$\Delta^2 f_j = \Delta(\Delta(f_j)) = \Delta(f_{j+1} - f_j)
            = \Delta(f_{j+1}) - \Delta(f_j)$
$= (f_{j+2} - f_{j+1}) - (f_{j+1} - f_j)
            = f_{j+2} - 2f_{j+1} + f_j$
e.g.   $\Delta^2 f_1 = \Delta(\Delta(f_1)) = \Delta(f_2 - f_1)
            = \Delta(f_2) - \Delta(f_1)$
$= (f_3- f_2) - (f_2 - f_1)
            = f_3 - 2f_2 + f_1$
      ------ -------------------------------------------------------------

    Further

      -- --------------------------------------------------
$\Delta^3 f_j = \Delta(\Delta^2 f_j) = \dots =
            f_{j+3} - 3f_{j+2} + 3f_{j+1} - f_j$
      -- --------------------------------------------------

    and in general

      -- --------------------------------------------------------
$\Delta^n f_j = f_{j+n} - nf_{j+n-1}
            + \frac{n(n-1)}{2!}f_{j+n-2}
            + \frac{n(n-1)(n-2)}{3!}f_{j+n-3} + \dots$
      -- --------------------------------------------------------

2.  Backward difference operator $\nabla$ (read as nabla)

      ------ --------------------------------------------------------------------
             $\nabla f(x) = f(x) - f(x-h)$
      or     $\nabla f_j = f_j - f_{j-1}$
      e.g.   $\nabla f_0 = f_0 - f_{-1}; \quad \nabla f_1 = f_1 - f_0;$ ...etc.
      ------ --------------------------------------------------------------------

    similarly

      -- -------------------------------------------------------------
         $\nabla^2 f_j = \nabla(\nabla(f_j)) = \nabla(f_j - f_{j-1})
                     = \nabla(f_j) - \nabla(f_{j-1})$
         $= (f_j - f_{j-1}) - (f_{j-1} - f_{j-2})
                     = f_j - 2f_{j-1} + f_{j-2}$
      -- -------------------------------------------------------------

    Further

      -- --------------------------------------------------
         $\nabla^3 f_j = \nabla(\nabla^2 f_j) = \dots =
                     f_j - 3f_{j-1} + 3f_{j-2} - f_{j-3}$
      -- --------------------------------------------------

    and in general

      -- ------------------------------------------------------
         $\nabla^n f_j = f_j - nf_{j-1}
                     + \frac{n(n-1)}{2!}f_{j-2}
                     + \frac{n(n-1)(n-2)}{3!}f_{j-3} + \dots$
      -- ------------------------------------------------------

3.  Shift operator $E$

      -- ---------------------------------------------- -- --
         $Ef(x) = f(x+h)$or$Ef_j = f_{j+1}$                
         $E^{-1}f(x) = f(x-h)$or$E^{-1} f_j= f_{j-1}$      
      -- ---------------------------------------------- -- --

    similarly

      -- -------------------------------------------------------------------------------------- -- --
         $E^2 f_j = E(E f_j)= E f_{j+1}=f_{j+2}, \qquad E^{n} f_j=f_{j+n}$                         
         $E^{-2} f_j = E^{-1}(E^{-1} f_j)= E^{-1} f_{j-1}=f_{j-2}, \qquad E^{-n} f_j=f_{j-n}$      
      -- -------------------------------------------------------------------------------------- -- --

The following relations between the shift operator and forward and
backward difference operators exist as follows:

$E = 1 + \Delta$

  -------- -----------------------------------------------------------------------------
  Proof:   $(1+\Delta) f(x) = f(x) + \Delta f(x) = f(x) + f(x+h)-f(x)=f(x+h) = E f(x)$
           $\therefore$ $E = 1 + \Delta$
  -------- -----------------------------------------------------------------------------

also

$E^{-1} = 1 - \nabla$

  -------- -----------------------------------------------------------------------------------------------
  Proof:   $(1-\nabla) f(x) = f(x) - \nabla f(x) = f(x) - \left[f(x)-f(x-h)\right]=f(x-h) = E^{-1} f(x)$
           $\therefore$ $E^{-1}=1-\nabla$
  -------- -----------------------------------------------------------------------------------------------




