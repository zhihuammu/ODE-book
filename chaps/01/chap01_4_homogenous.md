(chap01:complexNumber:DE)=
# Homogeneous Linear Difference Equations with Constant Coefficients

Here we focus on homogeneous linear difference equations with constant coefficients,

$$
a_0 y_n + a_1 y_{n+1} + a_2 y_{n+2} + \ldots + a_{k-1} y_{n+k-1} + a_k y_{n+k} = 0,
$$(eq:DE:linear:homogeneous:constant)

where $a_p~(p=0,1,2,\ldots,k)$ are a given set of $k+1$ constants, with $a_0 \neq 0$ and $a_k=1$.

Using the shift operator $\E$, Eq. {eq}`eq:DE:linear:homogeneous:constant` can be written as

$$
L(\E) y_n =0,
$$(eq:DE:linear:homogeneous:constant:aux)

where $L(\E)$ is the operator function

$$
L(\E)= a_0 + a_1 \E + a_2 \E^2 + \ldots + a_{k-1} \E^{k-1} + a_k \E^{k}.
$$(eq:DE:linear:constant:LE)

::::{prf:definition} Characteristic Equation
The {index}`characteristic equation` associated with Eq. {eq}`eq:DE:linear:homogeneous:constant` or {eq}`eq:DE:linear:homogeneous:constant:aux` is

$$
L(z)= a_0 + a_1 z + a_2 z^2 + \ldots + a_{k-1} z^{k-1} + a_k z^{k}=0.
$$(eq:DE:linear:char)
The characteristic equation is also called *auxiliary equation*.
::::


````{note}
Note: We can replace the shift operator $\E$ with $z$ in Eq. {eq}`eq:DE:linear:constant:LE` to obtain the characteristic equation. $L(z)$ is a $k$th-degree polynomial and thus has $k$ roots $\{z_p\}~ (p=1,2,3,\ldots,k)$.
````

::::{prf:theorem}
Let $z_p~(p=1,2,3,\ldots,k)$ be any solution to the characteristic equation {eq}`eq:DE:linear:char`, then 
\begin{equation}
y_n = z_p^n
\end{equation}
is a solution to the homogeneous equation {eq}`eq:DE:linear:homogeneous:constant`.

:::{dropdown} Proof (click to show)
<!-- :::{prf:proof} -->

Substituting $y_n=z_p^n$ into Eq. {eq}`eq:DE:linear:homogeneous:constant:aux`, we get
\begin{align*}     
L(\E) z_p^n = ~ & \left(a_0 + a_1 \E + a_2 \E^2 + \ldots + a_{k-1}\E^{k-1}+a_k \E^k\right) z_p^n \\
~ = ~ &  a_0 z_p^n + a_1 z_p^{n+1} + a_2 z_p^{n+2} + \ldots + a_{k-1} z_p^{n+k-1} + a_{k} z_p^{n+k} \\
~ = ~ &  \left( a_0  + a_1 z_p + a_2 z_p^{2} + \ldots + a_{k-1} z_p^{k-1} + a_{k} z_p^{k} \right) z_p^n \\
~ = ~ & 0 \cdot z_p^n \\
~ = ~ & 0
\end{align*}
Note: Eq. {eq}`eq:DE:linear:homogeneous:constant:aux` is equivalent to Eq. {eq}`eq:DE:linear:homogeneous:constant`.
<!-- ::: -->

::::



::::{prf:theorem}
Assume the $k$ roots of  the characteristic equation are distinct, then a fundamental set of solutions is
\begin{equation}
z_p^n \quad (p=1,2,\ldots,k).
\end{equation}
An immediate consequence of this theorem, for this particular case, is that the general solution to the homogeneous equation {eq}`eq:DE:linear:homogeneous:constant` is

````{math}
:label: eq:DE:linear:homo:sol
\begin{equation}
y_n = c_1 z_1^n + c_2 z_2^n + \ldots + c_k z_k^n,
\end{equation}
````

where the constants $c_p~(p=1,2,\ldots,k)$ are arbitrary.

:::{dropdown} Proof (click to show)
<!-- ::::{prf:proof} -->
Substituting Eq. {eq}`eq:DE:linear:homo:sol` into Eq. {eq}`eq:DE:linear:homogeneous:constant:aux`, we get 
\begin{align*}
L(\E) y_n  = ~ & L(\E) \left(c_1 z_1^n + c_2 z_2^n + \ldots + c_k z_k^n\right) \\
~ = ~ & c_1 L(\E) z_1^n + c_2 L(\E) z_2^n + \ldots + c_k L(\E)z_k^n \\
~ = ~ & c_1 \cdot 0 + c_2 \cdot 0 + \ldots + c_k \cdot 0 \\
~ = ~ & 0 
\end{align*}
::::



## First-order Difference Equations


Find the solution to 

$$ y_{n+1}-ay_n =0, ~ y_0 = Q.$$


:::::{admonition} **Solution:**
:class: solution
````{tab-set}
```{tab-item} Method 1 (iterative method)
From the equation, we get

$$y_{n+1} = a y_n$$

so

$$y_n = a y_{n-1} = a ( a y_{n-2}) = a(a(ay_{n-3}))=\ldots=a^n y_0 = Q a^n.$$
```

```{tab-item} Method 2 (characteristic equation)
Using the shift operator $\E$, write the equation into

$$(\E-a) y_n = 0,$$

we get the characteristic equation

$$z -a =0,$$

and it has only one root $z=a$. So the general solution is

$$y_n = c z^n, $$

Using the initial condition, we get

$$y_0 = Q = c \cdot a^0,$$

$$y_n = Q a^n.$$
```
````
:::::

## Second-order Difference Equations


Find the solution to

$$y_{n+2} + a y_{n+1} + b y_n = 0.$$

:::{admonition} **Solution**
:class: solution

Substituting $y_n = z^n$ into the equation, we get

$$z^{n+2} + a z^{n+1} + b z^n=0,$$

so

$$z^n (z^2+az+b)=0,$$

obviously the characteristic equation is

$$z^2+az+b=0,$$

and we get

$$z_{1,2}=\frac{-a\pm \sqrt{a^2-4b}}{2}.$$

- Case 1: Two distinct real solutions;
- Case 2: Two identical real solutions;
- Case 3: Two complex conjugate solutions.
:::

````{admonition} **Case (1) Two different real solutions: $z_1 \neq z_2$ and $z_{1,2}\in \mathbb{R}$**:
:class: important

The general solution is 

$$y_n = c_1 z_1^n + c_2  z_2^n.$$

::::{prf:example}
Find the general solution to

$$y_{n+2} + \frac{5}{6} y_{n+1} + \frac{1}{6} y_n = 0.$$

<!-- ```{dropdown} Solution (click to show) -->
```{admonition} Solution
:class: dropdown, solution

The characteristic equation is 

$$z^2 + \frac{5}{6} z + \frac{1}{6}=0,$$
	
using factorisation, we get

$$\left(z+\frac{1}{2}\right)\left(z+\frac{1}{3}\right)=0,$$ 
	
and we get two different real solutions
	
$$z_1 = -\frac{1}{2}, ~ z_2 = -\frac{1}{3}.$$
	
So the general solution is
	
$$y_n = c_1 \left(-\frac{1}{2}\right)^n+c_2\left(-\frac{1}{3}\right)^n$$
::::

````

````{admonition} **Case (2) Two repeated real solutions: $z_1 = z_2 = z \in \mathbb{R}$**:
:class: important

The general solution is

$$y_n = \left(c_1  + c_2 n \right) z^n.$$

::::{prf:example}
Find the general solution to

$$y_{n+2}+y_{n+1}+\frac{1}{4} y_n = 0$$

```{admonition} Solution
:class: dropdown, solution

The characteristic equation is

$$z^2+z+\frac{1}{4}=0,$$

so

$$z_1=z_2=-\frac{1}{2},$$

and the general solution is

$$y_n = c_1 \left(-\frac{1}{2}\right)^n + c_2 n \left(-\frac{1}{2}\right)^n =\left( c_1  + c_2 n \right) \left(-\frac{1}{2}\right)^n. $$
::::
````

````{admonition} **Case (3) Two conjugate complex solutions: $z_{1,2}=\alpha\pm  \i \beta  \in \mathbb{C}$, $\i=\sqrt{-1}$**:
:class: important

The general solution is 

$$y_n = r^n \left(c_1 \cos n\theta + c_2 \sin n\theta \right),$$

where $r=\sqrt{\alpha^2+\beta^2}$, $\theta=\tan^{-1}\left(\dfrac{\beta}{\alpha}\right)$.

::::{prf:example}
$$ y_{n+2} + \frac{1}{4} y_n = 0 $$

```{admonition} Solution
:class: dropdown, solution
The characteristic equation is

$$ z^2 + \frac{1}{4}=0, $$

so

$$ z_{1,2}= \pm  \frac{1}{2} \i , $$

and

$$ r=\frac{1}{2},~\theta=\frac{\pi}{2},$$

therefore the general solution is

$$ y_n = \left(\frac{1}{2}\right)^n \left(c_1 \cos \left(\frac{n \pi}{2}\right) + c_2 \sin \left(\frac{n \pi}{2}\right)\right). $$
::::

````

## Higher-order Difference Equations

For a $k$-th order difference equation

$$ 	a_0 y_n + a_1 y_{n+1} + a_2 y_{n+2} + \ldots + a_{k-1} y_{n+k-1} + a_k y_{n+k} = 0, $$

its characteristic equation  

$$ a_0 + a_1 z + a_2 z^2 + \ldots + a_{k-1} z^{k-1} + a_k z^{k}=0 $$

has $k$ roots $z_p~(p=1,2,3,\ldots,k)$.

````{admonition} Case (1) $k$ distinct real roots: $z_1 \neq z_2 \neq \ldots \neq z_k \in \mathbb{R}$
:class: important

The general solution to the difference equation is


$$ y_n = c_1 z_1^n + c_2 z_2^n + \ldots + c_k z_k^n $$

````


````{admonition} Case (2) $k$ repeated real roots: $z_1 = z_2 = \ldots = z_k = z \in \mathbb{R}$
:class: important

The general solution to the difference equation is

$$ y_n = \left( c_1  + c_2 n + c_3 n^2 \ldots + c_k n^{k-1} \right) z^n $$

````


````{admonition} Case (3) $m$-pair ($k=2m$) distinct complex conjugate roots:
:class: important

$$z_1 \sim  z_k = \alpha_p \pm \i \beta_p =r_p e^{\pm \i \theta_p}~ \left(\i^2=-1, ~ p=1,2,\ldots,m\right)$$

The general solution to the difference equation is

\begin{align*}
	y_n = & ~ r_1^n \left(c_1 \cos n\theta_1 + c_2 \sin n\theta_1\right) + r_2^n \left(c_3 \cos n\theta_2 + c_4 \sin n\theta_2\right) \\
	~ & ~ + \ldots + r_m^n \left(c_{2m-1} \cos n\theta_m + c_{2m} \sin n\theta_m\right),    
\end{align*}

````


````{admonition} Case (4) $m$-pair ($k=2m$) repeated complex conjugate roots
:class: important

$$z_1 \sim  z_k = \alpha \pm \i \beta =r e^{\pm \i \theta}~ \left(i^2=-1, ~ p=1,2,\ldots,m\right)$$

The general solution to the difference equation is

\begin{align*}
	y_n = & ~ r^n \left(c_1 \cos n\theta + c_2 \sin n\theta\right) + r^n  n \left(c_3 \cos n\theta + c_4 \sin n\theta\right) \\
	~ & ~ + \ldots + r^n n^{m-1}\left(c_{2m-1} \cos n\theta + c_{2m} \sin n\theta\right)    
\end{align*}


````

::::{prf:example}

If the roots of a characteristic equation are

$$z_1 \sim z_{13} = -\frac{1}{2}, \frac{1}{3}, \frac{3}{4}, \frac{3}{4}, \frac{3}{4}, 1\pm\sqrt{3}\i, 1\pm \i, 1\pm i, 1\pm \i, $$

find the general solution to the corresponding difference equation.

```{admonition} Solution
:class: dropdown, solution

$$1+\sqrt{3}=2 e^{\i \frac{\pi}{3}},~ 1+\i = \sqrt{2} e^{\i\frac{\pi}{4}},$$

so the general solution is 

\begin{align*}
	y_n = &~ c_1 \left(-\frac{1}{2}\right)^n + c_2 \left(\frac{1}{3}\right)^n \\
	~ & ~ + c_3 \left(\frac{3}{4}\right)^n + c_4 n \left(\frac{3}{4}\right)^n + c_5 n^2 \left(\frac{3}{4}\right)^n\\
	~ & ~ + 2^n \left[c_6 \cos \left(\frac{n\pi}{3}\right) + c_7 \sin \left(\frac{n\pi}{3}\right)\right]\\
	~ & ~ + (\sqrt{2})^n \left[c_8 \cos \left(\frac{n\pi}{4}\right) + c_9 \sin \left(\frac{n\pi}{4}\right)\right]\\
	~ & ~ + (\sqrt{2})^n n \left[c_{10} \cos \left(\frac{n\pi}{4}\right) + c_{11} \sin \left(\frac{n\pi}{4}\right)\right]\\
	~ & ~ + (\sqrt{2})^n n^2 \left[c_{12} \cos \left(\frac{n\pi}{4}\right) + c_{13} \sin \left(\frac{n\pi}{4}\right)\right]\\        
\end{align*}
::::