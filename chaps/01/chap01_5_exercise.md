(chap01:exercises)=
# Chapter 1 Exercises

You should try the following exercise questions first, then check with the answers. 

For detailed solutions, you can download {download}`the full solutions for Chapter 1 Exercises </exSol/Ex1/Ex1_Solution_annotated.pdf>`.

:::{exercise}
:label: ch1-ex-q1

Simplify the following expressions used to calculate $z$, and find the real and imaginary components of $z$:

1. $\displaystyle z=\frac{4+3\i}{3-4\i}$,
1. $\displaystyle z=e^{\i\theta}-e^{-\i\theta}$,
1. $\displaystyle z=e^{\i 2\theta} \cdot e^{-\i\theta}$,
1. $\displaystyle z=\frac{2e^{\i\theta}(e^{\i\theta}-1)}{3e^{\i\theta}-1}$.

:::

:::{solution} ch1-ex-q1
:class: dropdown

1.  $z=\i$

1.  $z=\i 2\sin\theta$

1. $z=\cos\theta+\i\sin\theta$

1. $z=\dfrac{4\cos\theta-\cos 2\theta-3}{5-3\cos\theta}+\i\dfrac{4\sin\theta-\sin 2\theta}{5-3\cos\theta}$

:::

:::{exercise} 
:label: ch1-ex-q5


For the following second-order homogeneous linear difference equation

$$y_{n+2} - 2 a y_{n+1}+ a^2 y_n =0, \quad a\in R, a\ne0,$$

prove that 

$$y_n = c_1 a^n + c_2 n a^n$$

is the solution to the equation.

:::

:::{solution} ch1-ex-q5
:class: dropdown

According to the question, the members of the sequence at $n$, $n+1$ and $n+2$ are:

- $y_n = c_1 a^n + c_2 n a^n$

- $y_{n+1} = c_1 a^{n+1} + c_2 (n+1) a^{n+1}$

- $y_{n+2} = c_1 a^{n+2} + c_2 (n+2) a^{n+2}$

Substitute the above three members into the left hand side (LHS) of the equation, so

$$\displaystyle
\begin{aligned}
\text{LHS} & =  y_{n+2} - 2 a y_{n+1}+ a^2 y_n \\
           & =   \left(c_1 a^{n+2} + c_2 (n+2) a^{n+2} \right) -2a \left(c_1 a^{n+1} + c_2 (n+1) a^{n+1} \right) + a^2 \left(c_1 a^n + c_2 n a^n \right)  \\
           & =   c_1 a^{n+2} + c_2 (n+2) a^{n+2}  -2 c_1 a^{n+2} -2 c_2 (n+1) a^{n+2}  + c_1 a^{n+2} + c_2 n a^{n+2} \\       
           & =  a^{n+2} \left[c_1+c_2 (n+2) - 2 c_1 - 2 c_2 (n+1) + c_1 + c_2 n\right]    \\
           & =  a^{n+2} \left\{ c_1 (1-2+1) + c_2 \left[(n+2)-2(n+1)+n\right]\right\} \\
           & =  0
\end{aligned} $$
**Q.E.D.**
:::

:::{exercise}
:label: ch1-ex-q2

For each of the following difference equations, form the characteristic equation, and from its roots determine the corresponding general solution:

1. $y_{j+1}=y_{j-1}$
1. $y_{j+1}=4y_j-3y_{j-1}$
1. $y_{j+1}=2y_{j-1}-y_j$
1. $y_{j+1}+9y_j - 9y_{j-1}-y_{j-2}=0$

:::

:::{solution} ch1-ex-q2
:class: dropdown

1. $y_j = c_1 + c_2 (-1)^j$

1. $y_j = c_1 + c_2 (3)^j$

1. $y_j = c_1 + c_2 (-2)^j$

1. $y_j = c_1 + c_2 \left(-5+2\sqrt{6}\right)^j+c_3\left(-5-2\sqrt{6}\right)^j$
:::



:::{exercise}
:label: ch1-ex-q3

For each of the following difference equations, form the characteristic equation, and from its roots determine the corresponding general solution:
		

1. $y_{n+2}-9y_{n+1}+20y_n=0$
2. $y_{n+2}+y_{n}+y_{n-1}=0$        
3. $y_{n+2}=\dfrac{y_{n+1}+y_{n-1}}{2}$
4. $y_{n+2}=-\dfrac{y_{n+1}+y_{n-1}}{2}$
5. $y_{n+4}-16 y_n=0$
6. $y_{n+4}+16 y_n=0$        

:::

:::{solution} ch1-ex-q3
:class: dropdown

1. $y_n=c_1 (4)^n + c_2 (5)^n$

2. $y_n=c_1 \left(\dfrac{-1+\sqrt{3}\i}{2}\right)^n + c_2 \left(\dfrac{-1-\sqrt{3}\i}{2}\right)^n$

3. $y_n=c_1+c_2 \left(\dfrac{-1+\sqrt{7}\i}{4}\right)^n + c_3 \left(\dfrac{-1-\sqrt{7}\i}{4}\right)^n$

4. $y_n=c_1 (-1)^n+c_2 \left(\dfrac{1+\sqrt{7}\i}{4}\right)^n + c_3 \left(\dfrac{1-\sqrt{7}\i}{4}\right)^n$

5. $y_n = c_1 (2)^n + c_2 (-2)^n + 2^n \left(c_3 \cos\dfrac{n\pi}{2}+c_4 \sin\dfrac{n\pi}{2}\right)$

6. $y_n=2^n\left(c_1\cos\dfrac{n\pi}{4}+c_2\sin\dfrac{n\pi}{4}\right)+2^n\left(c_3\cos\dfrac{3n\pi}{4}+c_4\sin\dfrac{3n\pi}{4}\right)$
		
:::


:::{exercise} 
:label: ch1-ex-q4

Find the general solution to the difference equation

$$y_{n}=y_{n-1} + y_{n-2},$$

where $y_0=0$ and $y_1=1$.

:::

:::{solution} ch1-ex-q4
:class: dropdown

$\displaystyle y_n=\frac{1}{\sqrt{5}}\left[ \left(\frac{1+\sqrt{5}}{2}\right)^n - \left(\frac{1-\sqrt{5}}{2}\right)^n \right]$

:::

