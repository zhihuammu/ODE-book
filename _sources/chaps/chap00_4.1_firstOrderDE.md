### First-order Difference Equations


Find the solution to $$ y_{n+1}-ay_n =0, ~ y_0 = Q.$$

\uwave{Solution Method 1}:

From the equation, we get

$$y_{n+1} = a y_n$$

so

$$y_n = a y_{n-1} = a ( a y_{n-2}) = a(a(ay_{n-3}))=\ldots=a^n y_0 = Q a^n.$$

\uwave{Solution Method 2}:

Using the shift operator $E$, write the equation into

$$(E-a) y_n = 0,$$

we get the characteristic equation

$$\xi -a =0,$$

and it has only one root $\xi=a$. So the general solution is

$$y_n = c \xi^n, $$

Using the initial condition, we get

$$y_0 = Q = c \cdot a^0,$$

$$y_n = Q a^n.$$
