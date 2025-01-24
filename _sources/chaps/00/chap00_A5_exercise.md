(chap:differentialEquation:exercises)=
# Chapter 1 Exercises

%separable first-order ode
```{exercise}
:label: ch0-ex-q1
Determine the type, order, degree, linearity and homogeneity of the following differential equations:

| equation |  type | order | degree | linearity  | homogeneity  |
| -- | -- | -- | --  | --  | -- |
| $\displaystyle \diff{y}{x}=4x^2 - y$                                  | _ | _ | _  | _ | _ |
| $\displaystyle \diff[2]{y}{x} - \left(\diff{y}{x}\right)^2 + 12xy=0$  | _ | _ | _  | _ | _ |
| $\displaystyle \left(\diff{y}{x}\right)^2 + x \diff{y}{x} - 3y^2=0$   | _ | _ | _  | _ | _ |
| $\displaystyle x\diff[2]{y}{x}-5\diff{y}{x}+3xy=\sin x$               | _ | _ | _  | _ | _ |
| $\displaystyle \pdiff[2]{u}{x}+\pdiff[2]{u}{y}=0$                     | _ | _ | _  | _ | _ |
| $\displaystyle \pdiff{u}{t}+\pdiff{u}{x}=0$                           | _ | _ | _  | _ | _ |
| $\displaystyle \pdiff{u}{t}+u\pdiff{u}{x}=0$                          | _ | _ | _  | _ | _ |
| $\displaystyle \pdiff{u}{t}=\pdiff[2]{u}{x}$                          | _ | _ | _  | _ | _ |
```                                                                                    
%second-order homogeneous ode
```{solution} ch0-ex-q1
:class: dropdown

| equation |  type | order | degree | linearity  | homogeneity  |
| -- | -- | -- | --  | --  | -- |
| $\displaystyle \diff{y}{x}=4x^2 - y$                                  | ODE | first  | first  | linear     | non-homogeneous  | 
| $\displaystyle \diff[2]{y}{x} - \left(\diff{y}{x}\right)^2 + 12xy=0$  | ODE | second | first  | nonlinear  | homogeneous      | 
| $\displaystyle \left(\diff{y}{x}\right)^2 + x \diff{y}{x} - 3y^2=0$   | ODE | first  | second | nonlinear  | homogeneous      | 
| $\displaystyle x\diff[2]{y}{x}-5\diff{y}{x}+3xy=\sin x$               | ODE | second | first  | linear     | non-homogeneous  | 
| $\displaystyle \pdiff[2]{u}{x}+\pdiff[2]{u}{y}=0$                     | PDE | second | first  | linear     | homogeneous      | 
| $\displaystyle \pdiff{u}{t}+\pdiff{u}{x}=0$                           | PDE | first  | first  | linear     | homogeneous      | 
| $\displaystyle \pdiff{u}{t}+u\pdiff{u}{x}=0$                          | PDE | first  | first  | nonlinear  | homogeneous      | 
| $\displaystyle \pdiff{u}{t}=\pdiff[2]{u}{x}$                          | PDE | second | first  | linear     | homogeneous      | 
```


%
```{exercise}
:label: ch0-ex-q2

Find the general solution to the following separable ODEs

1. $\displaystyle y\dy = x \dx$

2. $\displaystyle \diff{y}{x}=y \ln y$

3. $\displaystyle y' = \frac{x^2}{y}$

4. $\displaystyle y'=\frac{x^2}{y(1+x^3)}$

5. $\displaystyle xy'=\sqrt{1-y^2}$

6. $\displaystyle \diff{y}{x}=\frac{x-e^{-x}}{y+e^{y}}$

7. $\displaystyle \diff{y}{x}=\frac{x^2}{1+y^2}$

8. $\displaystyle y'=\frac{2-e^x}{3+2y}$
```


```{solution} ch0-ex-q2
:class: dropdown

1. $\displaystyle y\dy = x \dx$

    $$\d \left(\frac{1}{2}y^2\right) = \d \left(\frac{1}{2}x^2\right) $$

    $$y^2=x^2+c $$

2. $\displaystyle \diff{y}{x}=y \ln y$

    $$ \frac{\dy}{y\ln y}=\dx $$

    $$ \frac{\d \ln y}{\ln y} = \dx$$

    Let $u=\ln y$

    $$\frac{\d u}{u} = dx$$

    $$\d \ln u = \dx $$

    $$\ln u = x + c_1 $$

    $$ u = e^{x+c_1} = c e^x $$

    $$ \ln y = c e^x $$

3. $\displaystyle y' = \frac{x^2}{y}$

    $$ \diff{y}{x} =  \frac{x^2}{y} $$

    $$ y \dy = x^2 \dx $$

    $$\d \left(\frac{1}{2}y^2\right)=\d \left(\frac{1}{3} x^3 \right)$$

    $$\frac{1}{2}y^2 = \frac{1}{3}x^3 +c $$

4. $\displaystyle y'=\frac{x^2}{y(1+x^3)}$

    $$ y \dy = \frac{x^2}{1+x^3} \dx $$

    $$ \d \left(\frac{1}{2}y^2\right) =  \d \left(\frac{1}{3} \ln (1+x^3) \right)$$

    $$ \frac{1}{2}y^2 = \frac{1}{3} \ln (1+x^3) + c$$

5. $\displaystyle xy'=\sqrt{1-y^2}$

    $$ \frac{\dy}{\sqrt{1-y^2}}=\frac{\dx}{x} $$

    $$ \d (\sin^{-1} y) = \d (\ln x)$$

    $$ \sin^{-1} y = \ln x +c $$

    $$ y=\sin(\ln x + c ) $$

6. $\displaystyle \diff{y}{x}=\frac{x-e^{-x}}{y+e^{y}}$

    $$ (y+e^y) \dy = (x-e^{-x}) \dx $$

    $$ \d \left(\frac{1}{2}y^2 + e^y\right) = \d \left( \frac{1}{2}x^2 + e^{-x} \right)$$

    $$ \frac{1}{2}y^2 + e^y = \frac{1}{2}x^2 + e^{-x} + c $$

7. $\displaystyle \diff{y}{x}=\frac{x^2}{1+y^2}$

    $$ (1+y^2) \dy = x^2 \dx $$

    $$ \d \left(y+\frac{1}{3}y^3\right) = \d \left(\frac{1}{3}x^3\right)$$

    $$ y+\frac{1}{3}y^3 = \frac{1}{3}x^3 +c$$

8. $\displaystyle y'=\frac{2-e^x}{3+2y}$

    $$ (3+2y) \dy = (2-e^x) dx $$

    $$ \d (3y+y^2) = \d (2x-e^x)$$ 

    $$ 3y+y^2= 2x-e^x + c$$
```

%IVP
```{exercise}
:label: ch0-ex-q3

Solve the following initial value problems defined by separable ODEs

1. $\displaystyle \diff{y}{x}=2xy$, $y(0)=1$

2. $y^2 \dx + (x+1) \dy=0 $, $y(0)=1$

3. $\displaystyle \diff{P}{t}=rP\left(1-\frac{P}{M}\right)$, $P(0)=P_0$, $r$ and $M$ are constants, and $0<P\ll M$.

```


```{solution} ch0-ex-q3
:class: dropdown

1. $\displaystyle \diff{y}{x}=2xy$, $y(0)=1$

    $$\frac{\dy}{y}=2x \dx$$

    $$ \ln |y| = x^2 + c_1 $$

    $$ y=e^{x^2+c_1}=c e^{x^2}$$

    $$ y(0)=c=1$$

    $$ y=e^{x^2}$$

2. $y^2 \dx + (x+1) \dy=0 $, $y(0)=1$

    $$ y^2 \dx = -(x+1) \dy $$

    $$ \frac{\dx}{x+1}=-y^{-2} \dy$$

    $$ \d \ln (x+1) = \d y^{-1}$$

    $$ y^{-1} = \ln (x+1) + c$$

    $$ y= \frac{1}{\ln (x+1)+c}$$

    $$ y(0)=\frac{1}{\ln 1 + c} = 1$$

    $$ c=1$$

    $$ y= \frac{1}{\ln (x+1)+1} $$

3. $\displaystyle \diff{P}{t}=rP\left(1-\frac{P}{M}\right)$, $P(0)=P_0$, $r$ and $M$ are constants, and $0<P\ll M$.

    $$ \frac{1}{P \left(1-\frac{P}{M}\right)} \d P = r \d t $$

    $$ \left(\frac{1}{P} + \frac{1}{M-P}\right) \d P = r \d t $$

    $$ \d \ln P - d \ln (M-P) = \d (rt)$$

    $$ \d \ln \left(\frac{P}{M-P}\right) = \d (rt)$$

    $$ \ln \left(\frac{P}{M-P}\right) = rt + c_1 $$

    $$ \frac{P}{M-P} = c e^{rt} $$

    $$ P (1+c e^{rt}) = c e^{rt} M$$

    $$ P = \frac{c e^{rt} M}{1+c e^{rt}}$$

    $$ P(0) = \frac{cM}{1+c}=P_0$$

    $$ c(M-P_0)=P_0$$

    $$ c=\frac{P_0}{M-P_0}$$

    $$ P = \frac{\frac{P_0}{M-P_0} e^{rt} M}{1+\frac{P_0}{M-P_0} e^{rt}}$$

    $$ P = \frac{M P_0 e^{rt}}{M+P_0 (e^{rt}-1)}$$
```

%high-order ODEs
```{exercise}
:label: ch0-ex-q4

Solve the following homogeneous ODEs for $y=y(x)$, $x\in\R$

1. $y''+y=0 $

2. $y'''+3y''+3y'+y=0$

3. $2y''-5y'-3y=0$

4. $y''-10y'+25y=0$

5. $20y''+4y'+y=0$
```

```{solution} ch0-ex-q4
:class: dropdown
1. $y''+y=0 $

    $$z^2+1=0 $$

    $$z_{1, 2} = 0\pm \i$$

    $$ y & = e^{0x} (c_1 \cos x + c_2 \sin x) \\
         & = c_1 \cos x + c_2 \sin x
    $$
    
2. $y'''+3y''+3y'+y=0$

    $$ z^3+3z^2+3z+1 = 0 $$

    $$ & (z^3+1) + (3z^2+3z)\\
    = & (z+1)(z^2-z+1) + 3z(z+1) \\
    = & (z+1)(z^2+2z+1) \\
    = & (z+1)^3 \\
    = & 0  
    $$

    $$z_{1, 2, 3} = -1 $$

    $$ y=c_1 e^{-x}+c_2 x e^{-x} + c_3 x^2 e^{-x}$$

3. $2y''-5y'-3y=0$

    $$2z^2-5z-3 = 0$$

    $$(2z+1)(z-3)=0 $$

    $$z_{1}=-\tfrac{1}{2}, \quad z_2=3$$

    $$ y=c_1 e^{-\frac{1}{2}x} + c_2 e^{3x}$$

4. $y''-10y'+25y=0$
   
    $$z^2-10z+25=0$$

    $$(z-5)^2=0$$

    $$z_{1,2}=5$$

    $$y=c_1 e^{5x} + c_2 x e^{5x}$$    

5. $20y''+4y'+y=0$

    $$20z^2+4z+1=0$$

    $$
    z_{1,2} & =\frac{-4\pm \sqrt{4^2-4(20)(1)}}{2(20)} \\
            & = \frac{-4\pm 8 \i}{40} \\
            & = -0.1 \pm 0.2 \i
    $$

    $$ y=e^{-0.1x} (c_1 \cos 0.2x + c_2 \sin 0.2x) $$
```


```{exercise}
:label: ch0-ex-q5

Solve the following non-homogeneous ODEs for $y=y(x)$, $x \in \R$

1. $y''+3y'+2y=2e^{3x}$

2. $y''+3y'+2y=x^2$

3. $y'''+6y''+11y'+6y=\cos 5x$

```


```{solution} ch0-ex-q5
:class: dropdown
1. $y''+3y'+2y=2e^{3x}$

    $$y_h''+3y_h'+2y_h=0$$

    $$z^2+3z+2=0$$

    $$z_1=-1, \quad z_2 = -2$$

    $$y_h=c_1 e^{-x} + c_2 e^{-2x}$$

    $$y_p=Ae^{3x}$$

    $$y_p'=3Ae^{3x}$$

    $$y_p''=9Ae^{3x}$$

    $$
     & y_p''+3y_p'+2y_p \\
    = & ~ 9Ae^{3x} + 3 (3Ae^{3x})  + 2 (Ae^{3x}) \\
    = & ~ 20 Ae^{3x} \\
    = & ~ 2 e^{3x}
    $$

    $$A=\tfrac{1}{10}$$

    $$
    y & = y_h + y_p \\
      & =c_1 e^{-x} + c_2 e^{-2x} + \tfrac{1}{10}e^{3x}
    $$

2. $y''+3y'+2y=x^2$

    $$y_h''+3y_h'+2y_h=0$$

    $$z^2+3z+2=0$$

    $$z_1=-1, \quad z_2 = -2$$

    $$y_h=c_1 e^{-x} + c_2 e^{-2x}$$

    $$y_p=Ax^2+Bx+C$$

    $$y_p'=2Ax+B$$

    $$y_p''=2A$$

    $$
      & y_p'' + 3y_p'+2y_p \\ 
    = & ~ 2A+3(2Ax+B)+2(Ax^2+Bx+C) \\
    = & ~ 2Ax^2 + (6A+2B)x + (2A+3B+2C) \\
    = & x^2
    $$

    $$A=\tfrac{1}{2}, \quad B=-\tfrac{3}{2}, \quad C=\tfrac{7}{4}$$

    $$y_p=\tfrac{1}{2}x^2-\tfrac{3}{2}x+\tfrac{7}{4}$$

    $$
    y & = y_h + y_p \\
      & =c_1 e^{-x} + c_2 e^{-2x} + \tfrac{1}{2}x^2-\tfrac{3}{2}x+\tfrac{7}{4}
    $$

3. $y'''+6y''+11y'+6y=\cos 5x$

    $$z^3+6z^2+11z+6=0$$

    $$
      &   z^3+6z^2+11z+6 \\
    = & ~ z^3+6z^2+5z+6z+6 \\
    = & ~ z(z^2+6z+5)+6(z+1) \\
    = & ~ z(z+1)(z+5)+6(z+1) \\
    = & ~ (z+1)[z(z+5)+6] \\
    = & ~ (z+1)(z^2+5z+6) \\
    = & ~ (z+1)(z+2)(z+3) \\
    = & ~ 0
    $$

    $$
    z_1 = -1, \quad z_2 = -2, \quad z_3=-3
    $$

    $$y_h=c_1 e^{-x} + c_2 e^{-2x} + c_3 e^{-3x}$$

    $$y_p = A \cos 5x + B \sin 5x$$

    $$y_p'= -5A \sin 5x + 5B \cos 5x$$

    $$y_p''= -25A \cos 5x - 25B \sin 5x$$

    $$y_p'''= 125A \sin 5x - 125B \cos 5x$$

    $$
      & y_p'''+6y_p''+11y_p'+6y_p \\
    = &~(125A \sin 5x - 125B \cos 5x) \\
      & + 6(-25A \cos 5x - 25B \sin 5x) \\
      & + 11(-5A \sin 5x + 5B \cos 5x) \\
      & + 6(A \cos 5x + B \sin 5x) \\
    = & (70A-144B) \sin 5x + (-144A-70B) \cos 5x \\
    = & \cos 5x
    $$

    $$
    A=-\tfrac{36}{6409}, \quad B=-\tfrac{35}{12818}
    $$

    $$y=c_1 e^{-x}+c_2 e^{-2x}+c_3 e^{-3x}-\tfrac{36}{6409}\cos 5x - \tfrac{35}{12818}\sin 5x$$
```


```{exercise}
:label: ch0-ex-6

Solve the following initial value problems for $y=y(x)$, $x \in [0, \infty)$

1. $y'=y+x$, $y(0)=1$

2. $y'=-y+x+1$, $y(0)=1$

3. $y'=-40y+40x+1$, $y(0)=4$

4. $y'=-100y+\cos x$, $y(0)=1$

5. $y''=-20y'-19y$, $y(0)=2$, $y'(0)=-20$
```

```{solution} ch0-ex-6
:class: dropdown

1. $y'=y+x$, $y(0)=1$

    $$y'+y=x$$

    $$z-1=0$$

    $$z=1$$

    $$y_h = c e^x$$

    $$y_p=Ax+B$$

    $$y_p'=A$$

    $$y_p'-y_p = A- (Ax+B) = x$$

    $$A=-1, \quad B=-1 $$

    $$y_p=-x-1$$

    $$y=y_h+y_p=ce^x-x-1$$

    $$y(0)=c-1=1 $$

    $$c=2$$

    $$y=y_h+y_p=2e^x-x-1$$

2. $y'=-y+x+1$, $y(0)=1$

    $$y'+y=x+1$$

    $$z+1=0$$

    $$z=-1$$

    $$y_h=ce^{-x}$$

    $$y_p=Ax+B$$

    $$y_p'+y_p=A+(Ax+B)=x+1$$

    $$A=1, \quad B=0$$

    $$y_p=x$$

    $$y=y_h+y_p=ce^{-x}+x$$

    $$y(0)=c+0=1$$

    $$c=1$$

    $$y=e^{-x}+x$$

3. $y'=-40y+40x+1$, $y(0)=4$

    $$y'+40y=40x+1$$

    $$z+40=0$$

    $$z=-40$$

    $$y_h=ce^{-40x}$$

    $$y_p=Ax+B$$

    $$y_p'+40y_p = A + 40(Ax+B)=40x+1$$

    $$A=1, \quad B=0$$

    $$y_p=x$$

    $$y=y_h+y_p=ce^{-40x}+x$$

    $$y(0)=c=4$$

    $$y=4e^{-40x}+x $$

4. $y'=-100y+\cos x$, $y(0)=1$

    $$y'+100y=\cos x$$

    $$z+100=0$$

    $$z=-100$$

    $$y_h = c e^{-100x}$$

    $$y_p = A \cos x + B \sin x$$

    $$y_p'=-A \sin x + B \cos x$$

    $$y_p'+100 y_p & = (-A\sin x+ B \cos x)+100(A\cos x+B\sin x) \\
                   & = (100B-A) \sin x + (100A+B) \cos x \\
                   & = \cos x
    $$

    $$
    & 100B-A = 0\\
    & 100A+B = 1
    $$

    $$A=\tfrac{100}{10001}, \quad B=\tfrac{1}{10001} $$

    $$y_p = \tfrac{100}{10001} \cos x + \tfrac{1}{10001} \sin x$$

    $$y=y_h+y_p = c e^{-100x}+ \tfrac{100}{10001} \cos x + \tfrac{1}{10001} \sin x $$

    $$y(0)=c+\tfrac{100}{10001}=1$$

    $$c=\tfrac{9901}{10001}$$

    $$y=\tfrac{9901}{10001}e^{-100x} + \tfrac{100}{10001} \cos x + \tfrac{1}{10001} \sin x $$

5. $y''=-20y'-19y$, $y(0)=2$, $y'(0)=-20$

    $$y''+20y'+19y=0$$

    $$z^2+20z+19=0$$

    $$z_1 = -1, \quad z_2 = -19$$

    $$y=c_1 e^{-x}+c_2 e^{-19x}$$

    $$y'=-c_1 e^{-x}-19 c_2 e^{-19x}$$

    $$    
    y(0) & = c_1 + c_2 = 2\\
    y'(0)& = -c_1 -19 c_2 = -20    
    $$

    $$c_1= 1, \quad c_2 = 1$$

    $$ y=e^{-x} + e^{-19x} $$
```
