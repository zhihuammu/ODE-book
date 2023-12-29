# Complex Numbers

::::{prf:definition} Imaginary unit $i$
The imaginary unit $i$ is defined as that   $i^2=-1$.
::::

For example, if we have the following equation

$$z^2=-4,$$ 

the roots will be  

$$z=\pm\sqrt{-4}=\pm\sqrt{4i^2}=\pm 2 i.$$

::::{prf:definition} Complex number and Complex conjugate
A {index}`complex number` is a number in the form of
\begin{equation}
    z=x+iy,\qquad x, y\in \mathbb{R},
\end{equation}
where $x$ is the real component of the complex number and $iy$ is its imaginary component. We often call $y$ the imaginary component for simplicity. The modulus of the complex number is calculated as
\begin{equation}
    |z|=\sqrt{x^2+y^2}.
\end{equation}
Its {index}`complex conjugate` is defined as
\begin{equation}
    \bar{z}=x-iy.
\end{equation}
::::


For example $z_1= 2+ 3i$ and $z_2=2-3i$ are two complex numbers, and they are each other's complex conjugate.


::::{prf:definition} Complex Arithmetic
The arithmetic operations on two complex numbers given as $z_1=x_1+iy_1$ and $z_2=x_2+iy_2$ are defined as
\begin{align}
\text{``$+$''}:\quad ~ & ~ z_1+z_2=(x_1+iy_1)+(x_2+iy_2)=(x_1+x_2)+i(y_1+y_2), \\
\text{``$-$''}:\quad ~ & ~ z_1-z_2=(x_1+iy_1)-(x_2+iy_2)=(x_1-x_2)+i(y_1-y_2), \\
\text{``$\times$''}:\quad ~ & ~ z_1\cdot z_2=(x_1+iy_1)\cdot(x_2+iy_2)=(x_1+x_2)+i(y_1+y_2), \\
\text{``$\div$''}:\quad ~ & ~ \frac{z_1}{z_2}=\frac{(x_1+iy_1)}{(x_2+iy_2)}=\frac{(x_1+iy_1)(x_2-iy_2)}{(x_2+iy_2)(x_2-iy_2)}=\frac{(x_1+iy_1)(x_2-iy_2)}{x_2^2 + y_2^2}.
\end{align}

::::

::::{prf:example}
Applying four arithmetic operations on $1+2i$ and $2-5i$, calculate
- $(1+2i) + (2-5i)$
- $(1+2i) - (2-5i)$
- $(1+2i) \times (2-5i)$
- $\dfrac{1+2i}{2-5i}$

```{dropdown} Solution (click to show)
<!-- :class: dropdown -->
\begin{align*}
& (1+2i) + (2-5i)= 3-3i \\
& (1+2i) - (2-5i)= -1+7i \\
& (1+2i) \times (2-5i)= 2-5i +4i -10i^2=12-i \\
& \frac{1+2i}{2-5i}=\frac{(1+2i)(2+5i)}{(2-5i)(2+5i)}=\frac{-8+9i}{29}
\end{align*}
::::

::::{prf:definition} {index}`Complex number set`
We denote the set of all the complex numbers as
\begin{equation}
\mathbb{C}=\{z|z=x+iy, ~x, y\in \mathbb{R}\}.
\end{equation}
::::

For the real number set $\mathbb{R}$, we can use the number line to represent it. For the complex number set $\mathbb{C}$, we can use the complex plane to represent it.

<!-- ```{figure} /images/fig-complexPlane.svg
---
width: 500px
name: figure-complexPlane
---
The complex plane $\mathbb{C}$.
``` -->

```{tikz} The complex plane $\mathbb{C}$.
:libs: angles,quotes
:include: /images/01/complexPlane.tikz
```

For $z=x+iy$, we can also write it in the second form (polar form) as
\begin{equation}
z  =  r\left(\cos \theta + i \sin \theta\right)
\end{equation}
or the third form (exponential form)
\begin{equation}
z  = r e^{i\theta},    
\end{equation}
where $r=|z|$, and $\theta$ is the angle defined by the real axis and the straight line connecting the origin and $z$ in the complex plane.

:::{prf:remark} {index}`Three forms of a complex number`

:Standard form: $z=x+iy$
:Polar form: $z=r(\cos\theta+i\sin\theta)$
:Exponential form: $z=r e^{i\theta}$

where $r=|z|=\sqrt{x^2+y^2}$, $\tan \theta = \dfrac{y}{x}$.

:::

If we use the exponential form to represent complex numbers, then the multiplication and division of two complex numbers can be expressed in simpler ways. Let $z_1= r_1 e^{i\theta_1}$ and $z_2 = r_2 e^{i\theta_2}$, then
\begin{align}
& z_1 \cdot z_2  = r_1 e^{i\theta_1} \cdot r_2 e^{i\theta_2}=r_1 r_2 e^{i(\theta_1+\theta_2)}\\
& \frac{z_1}{z_2}  = \frac{r_1 e^{i\theta_1}}{r_2 e^{i\theta_2}}=\frac{r_1}{r_2}e^{i(\theta_1-\theta_2)}
\end{align}