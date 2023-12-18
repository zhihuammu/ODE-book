# Stiff Systems of Differential Equations

Although there are situations when a single differential equation is
stiff, in real life problems, stiffness is mainly a phenomenon related
to systems of differential equations. A stiff system of differential
equation, similarly, has a transient solution as well as a slowly
varying or steady-state solution.

Consider a general system of $\,n\,$ ordinary differential equations of
the form 

$$

\begin{aligned}
    \mathbf{y}' ~=~ \mathbf{f} (x,\mathbf{y})
\end{aligned}

$$

 given by 

$$

\begin{aligned}
    {\bf y^\prime} ~=~ {\bf \Lambda\,y} + {\bf g}(x).
\end{aligned}

$$

 where $\,\bf y\,$ and $\,\bf g\,$ are vectors with
$\,n\,$ components and $\,\bf \Lambda\,$ is the Jacobian matrix, **J**,
of $\,\bf f\,$ (i.e. $\,{\bf f}_y(x_j,y_j)\,$ at some local point, or at
some step, $\,j\,$). For example, for a system of three equations:


$$

\begin{aligned}
    y'_1 ~&=~ f_1(x,y_1,y_2,y_3)
    \\[1ex]
    y'_2 ~&=~ f_2(x,y_1,y_2,y_3)
    \\[1ex]
    y'_3 ~&=~ f_3(x,y_1,y_2,y_3)
\end{aligned}

$$

 the associated Jacobian matrix is 

$$

\begin{aligned}
    \mathbf{J} = \begin{pmatrix}
        \dfrac{\partial f_1}{\partial y_1} & \dfrac{\partial f_1}{\partial y_2} & \dfrac{\partial f_1}{\partial y_3}\\[4pt]
        \dfrac{\partial f_2}{\partial y_1} & \dfrac{\partial f_2}{\partial y_2} & \dfrac{\partial f_2}{\partial y_3}\\[4pt]
        \dfrac{\partial f_3}{\partial y_1} & \dfrac{\partial f_3}{\partial y_2} & \dfrac{\partial f_3}{\partial y_3}\\[4pt]
     \end{pmatrix}
\end{aligned}

$$

 Here, the eigenvalues $\,\lambda_i\,$ of the Jacobian
matrix play the part of $\,\lambda\,$. The system of equations is stiff
if there is an eigenvalue, $\,\lambda_i\,$, of $\mathbf{f}$, with a
negative real part of a very large magnitude. In a system of equations
there are several $\,\lambda's\,$ with corresponding time constants,


$$

\begin{aligned}
    && \tau_i ~&=~ \dfrac{1}{|Real\,(\lambda_i)|} & i &= 1,2,...,n &&
\end{aligned}

$$



*In a system of equations the larger the magnitude difference between
the eigenvalues of the corresponding Jacobian matrix, the higher is the
degree of stiffness*. The degree of stiffness can then be measured by
calculating the *stiffness ratio*, $\,S(x)\,$, given by


$$

\begin{aligned}
    && S(x) ~&=~ \dfrac{\max{|Real\,(\lambda_i)|}}{\min{|Real\,(\lambda_i)|}}
    & i &= 1,2,...,n &&
\end{aligned}

$$

 The higher the stiffness ratio the higher the degree of
stiffness of the system.

:::{note}
The above system is a linear system and the terms in the
Jacobian, $\dfrac{\partial \mathbf{f}}{\partial \mathbf{y}}\,$, and thus the corresponding
eigenvalues are constant throughout the integration. For non-linear
systems the terms in the Jacobian, $\dfrac{\partial \mathbf{f}}{\partial \mathbf{y}}\,$,
and thus the corresponding eigenvalues can be a function of some
variables in the system and they are calculated locally as the
integration proceeds.
:::

:::{prf:example}


Consider the non-linear system 

$$

\begin{aligned}
        f_1 ~&=~ -0.013y_1 + 10^3y_1y_3\\
        f_2 ~&=~ +2.5\times10^3y_2y_3\\
        f_3 ~&=~ 0.013y_1 - 10^3y_1y_3 - 2.5\times10^3y_2y_3
    
\end{aligned}

$$

 with initial conditions 

$$

\begin{aligned}
        \mathbf{y}(0) ~=~ \begin{pmatrix}
            1 \\ 1 \\ 0
        \end{pmatrix}.
    
\end{aligned}

$$

 This is an example from chemical reaction kinetics and
$y_3$ represents the concentration of a very reactive species which is
an intermediate in the course of reaction and always stays small. $y_1$
and $y_2$ are monotonically decreasing and increasing respectively.
$y_3$ increases to a maximum and thereafter is monotonically decreasing.
It can be shown that $\,y_3<1.3\times10^{-5}$. The Jacobian of the
system is given by 

$$

\begin{aligned}
        \mathbf{J} ~=~ \begin{pmatrix}
            -0.013+10^3y_3 & 0 &
            \phantom{-}10^3y_1\phantom{~-2.5\times10^3y_2}
            \\
            0 & \phantom{-}2.5 \times10^3y_3 &
            \phantom{-10^3y_1-~}2.5\times10^3y_2
            \\
            \phantom{-}0.013-10^3y_3 & -2.5 \times10^3 y_3 &
            -10^3y_1-2.5 \times10^3 y_2
        \end{pmatrix}
    
\end{aligned}

$$

 Since $y_3$ is small, the last column has elements which
are much larger than the remainder - the large magnitude differences
between the columns is a characteristic of stiff systems. Note that at
any time step $j$, the calculated values of $y_1$, $y_2$, and $y_3$ can
be used for calculating the corresponding values of $\lambda_1$,
$\lambda_2$, and $\lambda_3$.
:::

:::{prf:example}


Consider the differential equation system 

$$

\begin{aligned}
        && u' ~&=~ \phantom{-}998u + 1998v & u(0) &= 1 &&
        \\
        && v' ~&=~ -999u - 1999v & v(0) &= 0 &&
    
\end{aligned}

$$

 The analytic solution is 

$$

\begin{aligned}
        u ~&=~ 2e^{-t} - e^{-1000t}\\
        v ~&=~ -e^{-t} + e^{-1000t}\\
    
\end{aligned}

$$

 where $t$ is the independent variable.
 
  <!-- See Appendix
[\[app:linear:diff:system\]](#app:linear:diff:system){reference-type="ref"
reference="app:linear:diff:system"} (page ) for more details on the
analytical solution of a linear differential equation system. -->

The Jacobian $\mathbf{J}$ of this system is: 

$$

\begin{aligned}
        \begin{pmatrix}
            \phantom{-}998 & \phantom{-}1998 \\ -999 & -1999
        \end{pmatrix}
    
\end{aligned}

$$

 The corresponding eigenvalues are $\,\lambda_1 = -1\,$
and $\,\lambda_2 = -1000\,$. Thus, the stiffness ratio is $1000$ which
is not too high; in practical problems a ratio of the order of
$10^{6\pm2}$ is not unusual. The stiffness phenomenon of this problem
can also be observed from the analytical solution; both dependent
variables contain both fast and slow components. Depending which
numerical method is chosen for the solution of this system there will be
restrictions on $h$ even when the rapidly changing component is
insignificant.

:::{note}
Note that the above problem is a linear system and the terms of the
Jacobian, $\,\dfrac{\partial \mathbf{f}}{\partial \mathbf{y}}\,$, and thus the
corresponding eigenvalues are constant throughout the integration!
:::
