# Difference Equations

For some sequences, their algebraic expressions are directly given, such as the sequences we defined in {eq}`eq:sequence:example:1` and {eq}`eq:sequence:example:2`. While for some other sequences, a member of a sequence $y_n$ is determined by one or several previous members of the sequence, e.g.

\begin{equation}
\begin{split}
& y_n = y_{n-1}, \\
& y_n = y_{n-1}+3, \\
& y_n = 2y_{n-1}, \\
& y_n = y_{n-1} + y_{n-2}.
\end{split}  
\end{equation}

We can call these algebraic expressions Difference Equations.

::::{prf:definition} Difference Equation
A difference equation is an equation that defines a sequence recursively: each member of the sequence is defined as a function of previous terms of the sequence

```{math}
:label: eq:DE:definition
\begin{equation}
y_{n+k} = F(n, y_{n}, y_{n+1}, y_{n+2} ..., y_{n+k-2}, y_{n+k-1}), \quad n \in \mathbb{N}_0
\end{equation} 
````

where $y_{n+k}$ is the current value in the sequence, $F$ is a function, and $k$ is the order of the equation (the difference between the highest and lowest indices that appear in the equation). The subscript $n+k$ is an index representing the current time step, and the variables $y_{n}$, $y_{n+1}$, $\ldots$, $y_{n+k-1}$ represent previous members in the sequence. 
::::

```{note}
For a given difference equation, if we increase or decrease the subscript of each term by the same amount, the new equation actually represent the same sequence as the old equation does. Also, the properties of the new equation remain the same as the old one. So the new difference equation is equivalent to the old one (the roots of the two equations are the same). For example, we can increase the subscripts in the equation 

$$y_n = y_{n-1} + y_{n-2}$$

by $2$ to get an equivalent equation

$$y_{n+2} = y_{n+1} + y_{n}$$
```

::::{prf:theorem} Existence and Uniqueness
Equation {eq}`eq:DE:definition` has one and only one solution corresponding to each arbitrary selection of the $k$ initial values $y_0, y_1, y_2, \ldots, y_{k-1}$.
::::

::::{prf:definition} Linear Difference Equation
A difference equation is linear if it can be expressed in the form
````{math}  
:label: eq:DE:linear
\begin{equation}
a_0(n) y_n + a_1(n) y_{n+1} + a_2(n) y_{n+2} + \ldots + a_k(n) y_{n+k} = R(n),
\end{equation} 
````
where $a_p(n), p=1,2,\ldots, n$ and $R(n)$ are given functions of $n$.
::::

::::{prf:definition} Homogeneous Linear Difference Equation
When the right hand side of Eq. {eq}`eq:DE:linear` vanishes i.e. $R(n)=0$, we get 
````{math}  
:label: eq:DE:linear:homogeneous
\begin{equation}
a_0(n) y_n + a_1(n) y_{n+1} + a_2(n) y_{n+2} + \ldots + a_k(n) y_{n+k} = 0,
\end{equation} 
````
which is called a homogeneous (linear) difference equation.
::::


::::{prf:example}
We indicate for each of the following difference equations its order, it is linear or nonlinear, and whether it is homogeneous or inhomogeneous.
\begin{align*}
&y_{n+1} - 2 y_n = 0   & \text{(first order, linear, homogeneous)} \\
&y_{n+1} - 3 y_n + y_{n-1} = e^{-n}   & \text{(second order, linear, inhomogeneous)} \\
&y_{n+3} - y_n^2 = n 2^n &  \text{(third order, nonlinear, inhomogeneous)}
\end{align*}    
::::

::::{prf:definition} Shift Operator
We define $E$ as an operator shifting a member in a sequence to the next member
````{math}  
\begin{equation}
E y_n = y_{n+1}.
\end{equation} 
````
If we apply the shift operator consecutively for $2$ times, we write it as
````{math}  
\begin{equation}
E^2 y_n = E(E y_n) = E y_{n+1} = y_{n+2}.
\end{equation} 
````
If we apply the shift operator consecutively for $k$ times, we write it as
````{math}  
\begin{equation}
E^k y_n = y_{n+k}.
\end{equation} 
````    
::::

::::{prf:example}
We can apply multiple shifting operations on a member in a sequence

$$\left(E^4 - E^2 +1 \right) y_n = y_{n+4} - y_{n+2} + y_n.$$

We can also express algebraic operations on several members in a sequence as shifting operations on a single member, e.g.

$$ y_{n+2} - 2y_{n+1} + y_n = \left( E^2 - 2E + 1\right) y_n.  $$
::::


