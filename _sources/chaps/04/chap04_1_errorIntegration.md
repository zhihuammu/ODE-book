# Derivation of Local Error Terms for Integration Formulae

The error terms associated with various integration formulae can be 
derived by using the interpolating formulae or by the method of
undetermined coefficients. For this unit we only consider the former
through the following examples.

:::{prf:example}
Use the Gregory-Newton forward-interpolation formula:

 $$\begin{aligned}
        f_s ~&=~ f_0 + s\Delta f_0 + \frac{s(s-1)}{2!}\Delta^2 f_0
        + \frac{s(s-1)(s-2)}{3!}\Delta^3 f_0
        + \frac{s(s-1)(s-2)(s-3)}{4!}\Delta^4 f_0
    
\end{aligned}$$

to derive the Simpson rule with error term $\epsilon$:

$$\begin{aligned}
        \int_{x_0}^{x_2} f(x)\,\dx ~=~ \frac{h}{3}(f_2 + 4f_1 + f_0) + \epsilon
    
\end{aligned}$$

:::{Admonition} Solution 
:class: solution, dropdown

$$\begin{aligned}
        &Using      & s ~&=~ \frac{x - x_0}{h}, & \dx ~&=~ h\,\ds\\
        &\therefore & x ~&=~ x_0,               &  s ~&=~ 0\\
        &           & x ~&=~ x_2,               &  s ~&=~ 2\\
    
\end{aligned}$$

$$\begin{aligned}
        \therefore \quad \int_{x_0}^{x_2} f(x)\,\dx ~&=~ h \int_{0}^{2} \left(
            f_0 + s\Delta f_0 + \frac{s(s-1)}{2!}\Delta^2 f_0
        \right)\,\ds + \epsilon
        \\[1em]
        \text{Substituting} \quad \Delta f_0 ~&=~ f_1 - f_0,
        \quad \text{and} \quad \Delta^2 f_0 ~=~ f_2 - 2f_1 + f_0
        \quad \text{gives}
        \\[1em]
        \int_{x_0}^{x_2} f(x)\,\dx ~&=~ h \left[
            sf_0 + \frac{s^2}{2}(f_1 - f_0) + \frac{1}{2}\left(
                \frac{s^3}{3} - \frac{s^2}{2}
            \right)(f_2 - 2f_1 + f_0)
        \right]_0^2 + \epsilon
        \\
        &=~ h \left[
            2f_0 + 2(f_1 - f_0) + \frac{1}{3}(f_2 - 2f_1 + f_0)
        \right] + \epsilon
        \\
        &=~ \frac{h}{3}\bigl[f_0 + 4f_1 + f_2\bigr] + \epsilon
    
\end{aligned}$$

For the derivation of the error term we integrate the
terms involving third and fourth differences (i.e. $\Delta^3$ and
$\Delta^4$), thus 

$$\begin{aligned}
        \epsilon ~&=~ h \int_{0}^{2} \left\{
            \frac{s(s-1)(s-2)}{3!}\Delta^3 f_0
            + \frac{s(s-1)(s-2)(s-3)}{4!}\Delta^4 f_0
        \right\}\ds
        \\
        &=~ h \int_{0}^{2} \left\{
            \frac{s^3 - 3s^2 + 2s}{3!}\Delta^3 f_0
            + \frac{s^4 - 6s^3 + 11s^2 - 6s}{4!}\Delta^4 f_0
        \right\}\ds
        \\
        &=~ h \left\{
            \frac{1}{6} \left[
                \frac{s^4}{4} - \frac{3s^3}{3} + \frac{2s^2}{2}
            \right]_0^2 \Delta^3 f_0
            +
            \frac{1}{24} \left[
                \frac{s^5}{5} - \frac{3s^4}{2} + \frac{11s^3}{3} - 3s^2
            \right]_0^2 \Delta^4 f_0
        \right\}
        \\
        &=~ h \left\{
            0 + \frac{1}{24} \left[
                \frac{32}{5} - 24 + \frac{88}{3} - 12
            \right] \Delta^4 f_0
        \right\}
    
\end{aligned}$$ 

Use the [Mean Value Theorem](https://en.wikipedia.org/wiki/Mean_value_theorem)
and LET $\Delta^{4} f_0 = h^4f^{iv}(z)$ where
$x_0 \leq z \leq x_2$

 $$\begin{aligned}
        \therefore \quad \epsilon ~&=~ h^5 \left\{
            \frac{1}{24} \left(-\frac{4}{15}\right)
        \right\} f^{iv}(z)
        \\
        \epsilon ~&=~ -\frac{1}{90}h^5f^{iv}(z).
    
\end{aligned}$$
:::

:::{prf:theorem} Mean Value Theorem
Let  $f=f(x)$, $x \in \R$  be continuous over the closed interval  $[a, b]$
and differentiable over the open interval  $(a, b)$. 
Then, there exists at least one point  $c\in (a,b)$ such that

$$
f'(c)=\frac{f(b)-f(a)}{b-a}
$$
:::


:::{prf:example}
Use the Gregory-Newton forward-interpolation formula:

$$f_s = f_0 + s\Delta f_0 + \frac{s(s-1)}{2!}\Delta^2 f_0
        + \frac{s(s-1)(s-2)}{3!}\Delta^3 f_0
        + \frac{s(s-1)(s-2)(s-3)}{4!}\Delta^4 f_0$$

to show that for Milne's formula: 

$$\begin{aligned}
        \int_{x_{-1}}^{x_3} f(x)\,\dx ~=~ \frac{4h}{3} (2f_0 - f_1 + 2f_2) + \epsilon
    
\end{aligned}$$ 

the error term 

$$\begin{aligned}
        \epsilon ~=~ \frac{14}{45}h^5 f^{iv}(z)
        \quad for \quad x_{-1} \leq z \leq x_3
    
\end{aligned}$$ 

can be obtained by integrating the terms involving third
and fourth differences.

<!-- :::{dropdown} Solution (click to show) -->
:::{admonition} Solution
:class: solution, dropdown

$$\begin{aligned}
        &Using      & x ~&=~ x_0 + sh & \dx ~&=~ h\,\ds\\
        &\therefore & x ~&=~ x_{-1},  &  s ~&=~ -1\\
        &           & x ~&=~ x_3,     &  s ~&=~  3
    
\end{aligned}$$ 

For the derivation of the error term we integrate the
terms involving third and fourth differences (i.e. $\Delta^3$ and
$\Delta^4$), thus 

$$\begin{aligned}
        \epsilon ~&=~ h \int_{-1}^{3} \left\{
            \frac{s(s-1)(s-2)}{3!}\Delta^3 f_0
            + \frac{s(s-1)(s-2)(s-3)}{4!}\Delta^4 f_0
        \right\}\ds
        \\
        &=~ h \int_{-1}^{3} \left\{
            \frac{s^3 - 3s^3 + 2s}{3!}\Delta^3 f_0
            + \frac{s^4 - 6s^3 + 11s^2 - 6s}{4!}\Delta^4 f_0
        \right\}\ds
        \\
        &=~ h \left\{
            \frac{1}{6} \left[
                \frac{s^4}{4} - \frac{3s^3}{3} + \frac{2s^2}{2}
            \right]_{-1}^3 \Delta^3 f_0
            +
            \frac{1}{24} \left[
                \frac{s^5}{5} - \frac{3s^4}{2} + \frac{11s^3}{3} - 3s^2
            \right]_{-1}^3 \Delta^4 f_0
        \right\}
        \\
        &=~ h \left\{
            0 + \frac{1}{24} \left[
                \left( \frac{243}{5} - \frac{243}{2} + 99 - 27 \right)
                {-} \left( -\frac{1}{5} - \frac{3}{2} - \frac{11}{3} - 3 \right)
            \right] {\Delta^4 f_0}
        \right\}
        \\
        &=~ \frac{h}{24} \left[
            \frac{244}{5} - \frac{240}{2} + \frac{11}{3} + 75
        \right] \Delta^4 f_0
    
\end{aligned}$$ 

Let $\Delta^4 f_0 ~=~ h^4 f^{iv}(z)$ where
$x_{-1} \leq z \leq x_3$

 $$\begin{aligned}
        \therefore \quad \epsilon ~=~ \frac{14}{45}\,h^5f^{iv}(z).
    
\end{aligned}$$
:::

