# Laplace Transform

## Definition

$$\displaystyle F(s) = \Laplace{f(t)}(s)=\int_0^\infty e^{-st} f(t) \dt$$

## Properties

1. $\displaystyle \Laplace{f+g} = \Laplace{f} + \Laplace{g}$.

2. $\displaystyle \Laplace{cf} = c\Laplace{f}$ for any constant $c$.

3. $\displaystyle \Laplace{e^{at}f(t)}(s)=F(s-a)$.

4. $\displaystyle \Laplace{f'}(s)=sF(s) - f(0)$.

5. $\displaystyle \Laplace{f''}(s)=s^2F(s) -sf(0)- f'(0)$.

## Table of Laplace Transforms

:::{table} 
:align: left  
|  $f(t)$   | $F(s)=\Laplace{f}(s)$ |
|-----------| -------------------------- |
| $1$       | $\dfrac{1}{s}$, $\quad s>0$        |
| $e^{at}$ | $\dfrac{1}{s-a}$, $\quad s>a$        |
| $t^n$      | $\dfrac{n!}{s^{n+1}}$, $\quad s>0$ , $\quad n=1,2,\ldots$        |
| $\sin bt$       | $\dfrac{b}{s^2+b^2}$, $\quad s>0$        |
| $\cos bt$       | $\dfrac{s}{s^2+b^2}$, $\quad s>0$        |
| $e^{at} t^n$       | $\dfrac{n!}{(s-a)^{n+1}}$, $\quad s>a$, $\quad n=1,2,\ldots$        |
| $e^{at} \sin bt$        | $\dfrac{b}{(s-a)^2+b^2}$, $\quad s>a$        |
| $e^{at} \cos bt$        | $\dfrac{s-a}{(s-a)^2+b^2}$, $\quad s>a$        |
| $\sinh bt$|  $\dfrac{b}{s^2-b^2}$|
| $\cosh bt$|  $\dfrac{s}{s^2-b^2}$|
:::


## Inverse Laplace Transform

$$f(t) = \invLaplace{F(s)}$$