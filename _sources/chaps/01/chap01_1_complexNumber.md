
```{index} Complex Number
```
```{index} Complex Number; Complex Conjugate
```

# Complex Numbers

````{prf:definition} Imaginary unit $\i$
The imaginary unit $\i$ is defined as that   $\i^2=-1$.
````

For example, if we have the following equation

$$z^2=-4,$$ 

the roots will be  

$$z=\pm\sqrt{-4}=\pm\sqrt{4\i^2}=\pm 2 \i.$$

````{prf:definition} Complex number and Complex conjugate
A {index}`complex number` is a number in the form of
\begin{equation}
    z=x+\i y,\qquad x \in \R, y\in \mathbb{R},
\end{equation}
where $x$ is the real component of the complex number and $\i y$ is its imaginary component. We often call $y$ the imaginary component for simplicity. The modulus of the complex number is calculated as
\begin{equation}
    |z|=\sqrt{x^2+y^2}.
\end{equation}
Its {index}`complex conjugate` is defined as
\begin{equation}
    \bar{z}=x-\i y.
\end{equation}
````

For example $z_1= 2+ 3\i$ and $z_2=2-3\i$ are two complex numbers, and they are each other's complex conjugate.

````{prf:definition} Complex Arithmetic
The arithmetic operations on two complex numbers given as $z_1=x_1+\i y_1$ and $z_2=x_2+\i y_2$ are defined as
\begin{align}
\text{``$+$''}:\quad ~ & ~ z_1+z_2=(x_1+\i y_1)+(x_2+\i y_2)=(x_1+x_2)+\i (y_1+y_2), \\
\text{``$-$''}:\quad ~ & ~ z_1-z_2=(x_1+\i y_1)-(x_2+\i y_2)=(x_1-x_2)+\i (y_1-y_2), \\
\text{``$\times$''}:\quad ~ & ~ z_1\cdot z_2=(x_1+ \i y_1)\cdot(x_2+\i y_2)=(x_1+x_2)+\i (y_1+y_2), \\
\text{``$\div$''}:\quad ~ & ~ \frac{z_1}{z_2}=\frac{(x_1+\i y_1)}{(x_2+\i y_2)}=\frac{(x_1+\i y_1)(x_2-\i y_2)}{(x_2+\i y_2)(x_2-\i y_2)}=\frac{(x_1+\i y_1)(x_2-\i y_2)}{x_2^2 + y_2^2}.
\end{align}
````

````{prf:example}
Applying four arithmetic operations on $1+2i$ and $2-5i$, calculate
- $(1+2\i) + (2-5\i)$
- $(1+2\i) - (2-5\i)$
- $(1+2\i) \times (2-5\i)$
- $\dfrac{1+2\i}{2-5\i}$

```{admonition} Solution
:class: solution, dropdown

\begin{align*}
& (1+2\i) + (2-5\i)= 3-3\i \\
& (1+2\i) - (2-5\i)= -1+7\i \\
& (1+2\i) \times (2-5\i)= 2-5\i +4\i -10\i^2=12-\i \\
& \frac{1+2\i}{2-5\i}=\frac{(1+2\i)(2+5\i)}{(2-5\i)(2+5\i)}=\frac{-8+9\i}{29}
\end{align*}
````

```{index} Complex Number; Complex Number Set
```
````{prf:definition} Complex number set
We denote the set of all the complex numbers as
\begin{equation}
\mathbb{C}=\{z|z=x+\i y, ~x\in \R, y\in \mathbb{R}\}.
\end{equation}
````

For the real number set $\mathbb{R}$, we can use the number line to represent it. For the complex number set $\mathbb{C}$, we can use the complex plane to represent it.


```{tikz} The complex plane $\mathbb{C}$.
:libs: angles,quotes
:include: /images/01/complexPlane.tikz
```

For $z=x+\i y$, we can also write it in the second form (polar form) as

$$
z  =  r\left(\cos \theta + \i \sin \theta\right)
$$

or the third form (exponential form)

$$
z  = r e^{\i \theta},
$$

where $r=|z|$, and $\theta$ is the angle defined by the real axis and the straight line connecting the origin and $z$ in the complex plane.

```{index} Complex Number; Three forms
```

```{prf:remark} Three forms of a complex number
- **Standard form**: $z=x+\i y$
- **Polar form**: $z=r(\cos\theta+\i\sin\theta)$
- **Exponential form**: $z=r e^{\i \theta}$

where $r=|z|=\sqrt{x^2+y^2}$, $\tan \theta = \dfrac{y}{x}$.
```

If we use the exponential form to represent complex numbers, then the multiplication and division of two complex numbers can be expressed in simpler ways. Let $z_1= r_1 e^{\i \theta_1}$ and $z_2 = r_2 e^{\i \theta_2}$, then

$$
\begin{align}
& z_1 \cdot z_2  = r_1 e^{\i\theta_1} \cdot r_2 e^{\i\theta_2}=r_1 r_2 e^{\i(\theta_1+\theta_2)}\\
& \frac{z_1}{z_2}  = \frac{r_1 e^{\i\theta_1}}{r_2 e^{\i\theta_2}}=\frac{r_1}{r_2}e^{\i(\theta_1-\theta_2)}
\end{align}
$$