## Homogeneous Linear Difference Equations with Constant Coefficients

Here we focus on homogeneous linear difference equations with constant coefficients,

````{math}
:label: eq:DE:linear:homogeneous:constant
\begin{equation}
a_0 y_n + a_1 y_{n+1} + a_2 y_{n+2} + \ldots + a_{k-1} y_{n+k-1} + a_k y_{n+k} = 0,
\end{equation}
````

where $a_p~(p=0,1,2,\ldots,k)$ are a given set of $k+1$ constants, with $a_0 \neq 0$ and $a_k=1$.

Using the shift operator $E$, Eq. {eq}`eq:DE:linear:homogeneous:constant` can be written as

````{math}
:label: eq:DE:linear:homogeneous:constant:aux
\begin{equation}
L(E) y_n =0,
\end{equation}
````

where $L(E)$ is the operator function

````{math}
:label: eq:DE:linear:constant:LE
\begin{equation}
L(E)= a_0 + a_1 E + a_2 E^2 + \ldots + a_{k-1} E^{k-1} + a_k E^{k}.
\end{equation}
````

::::{prf:definition} Characteristic Equation
The characteristic equation associated with Eq. {eq}`eq:DE:linear:homogeneous:constant` or {eq}`eq:DE:linear:homogeneous:constant:aux` is

````{math}
:label: eq:DE:linear:char
\begin{equation}
L(\xi)= a_0 + a_1 \xi + a_2 \xi^2 + \ldots + a_{k-1} \xi^{k-1} + a_k \xi^{k}=0.
\end{equation}
````

::::
Note: We can replace the shift operator $E$ with $\xi$ in Eq. {eq}`eq:DE:linear:constant:LE` to obtain the characteristic equation. $L(\xi)$ is a $k$th-order polynomial and thus has $k$ roots $\{\xi_p\}~ (p=1,2,3,\ldots,k)$.

::::{prf:theorem}
Let $\xi_p~(p=1,2,3,\ldots,k)$ be any solution to the characteristic equation {eq}`eq:DE:linear:char`, then 
\begin{equation}
y_n = \xi_p^n
\end{equation}
is a solution to the homogeneous equation {eq}`eq:DE:linear:homogeneous:constant`.
::::

::::{prf:proof}
Substituting $y_n=\xi_p^n$ into Eq. {eq}`eq:DE:linear:homogeneous:constant:aux`, we get
\begin{align*}     
L(E) \xi_p^n = ~ & \left(a_0 + a_1 E + a_2 E^2 + \ldots + a_{k-1}E^{k-1}+a_kE^k\right) \xi_p^n \\
~ = ~ &  a_0 \xi_p^n + a_1 \xi_p^{n+1} + a_2 \xi_p^{n+2} + \ldots + a_{k-1} \xi_p^{n+k-1} + a_{k} \xi_p^{n+k} \\
~ = ~ &  \left( a_0  + a_1 \xi_p + a_2 \xi_p^{2} + \ldots + a_{k-1} \xi_p^{k-1} + a_{k} \xi_p^{k} \right) \xi_p^n \\
~ = ~ & 0 \cdot \xi_p^n \\
~ = ~ & 0
\end{align*}
Note: Eq. {eq}`eq:DE:linear:homogeneous:constant:aux` is equivalent to Eq. {eq}`eq:DE:linear:homogeneous:constant`.
::::

::::{prf:theorem}
Assume the $k$ roots of  the characteristic equation are distinct, then a fundamental set of solutions is
\begin{equation}
\xi_p^n \quad (p=1,2,\ldots,k).
\end{equation}
An immediate consequence of this theorem, for this particular case, is that the general solution to the homogeneous equation {eq}`eq:DE:linear:homogeneous:constant` is

````{math}
:label: eq:DE:linear:homo:sol
\begin{equation}
y_n = c_1 \xi_1^n + c_2 \xi_2^n + \ldots + c_k \xi_k^n,
\end{equation}
````

where the constants $c_p~(p=1,2,\ldots,k)$ are arbitrary.
::::

::::{prf:proof}
Substituting Eq. {eq}`eq:DE:linear:homo:sol` into Eq. {eq}`eq:DE:linear:homogeneous:constant:aux`, we get 
\begin{align*}
L(E) y_n  = ~ & L(E) \left(c_1 \xi_1^n + c_2 \xi_2^n + \ldots + c_k \xi_k^n\right) \\
~ = ~ & c_1 L(E) \xi_1^n + c_2 L(E) \xi_2^n + \ldots + c_k L(E)\xi_k^n \\
~ = ~ & c_1 \cdot 0 + c_2 \cdot 0 + \ldots + c_k \cdot 0 \\
~ = ~ & 0 
\end{align*}
::::

### First-order Difference Equations


Find the solution to 

$$ y_{n+1}-ay_n =0, ~ y_0 = Q.$$

**Solution Method 1**:

From the equation, we get

$$y_{n+1} = a y_n$$

so

$$y_n = a y_{n-1} = a ( a y_{n-2}) = a(a(ay_{n-3}))=\ldots=a^n y_0 = Q a^n.$$

**Solution Method 2**:

Using the shift operator $E$, write the equation into

$$(E-a) y_n = 0,$$

we get the characteristic equation

$$\xi -a =0,$$

and it has only one root $\xi=a$. So the general solution is

$$y_n = c \xi^n, $$

Using the initial condition, we get

$$y_0 = Q = c \cdot a^0,$$

$$y_n = Q a^n.$$
