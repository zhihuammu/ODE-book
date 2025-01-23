(chap:pre:4)=
# Applications of ODEs

## Kinetics
::::{prf:example}

```{figure} /images/00/ball.svg
---
height: 250px
name: Free fall
---
A free falling object and the forces acting on it.
```

The motion of a free falling object with mass $m$ is given by

$$
    m\diff{v}{t}  = m g - \gamma v
$$(eq:ode:freefall)

where $v$ is its speed, $g$ the gravitational acceleration, $\gamma$ the air friction coefficient.

Find $v(t)$ given that $m=0.025$kg, $\gamma=0.007$kg/s, $g=9.8$ m/s<sup>2</sup> and $v(0)=0$m/s.

:::{admonition} Solution
:class: solution, dropdown

The given equation describing the physics is a first-order linear non-homogeneous equation, we will find its analytical solution then use a numerical method to solve the problem.

Re-arrange Eq. {eq}`eq:ode:freefall` as

$$
    \diff{v}{t}+\frac{\gamma}{m} v = g,
$$

we can decompose the equations into homogeneous and non-homogenous parts

$$
    \begin{aligned}
    v'_{h} + \frac{\gamma}{m} v_h & = 0 \\
    v'_{p} + \frac{\gamma}{m} v_p & = g 
    \end{aligned}
$$

The homogeneous solution is

$$
    v_h(t)=C e^{-\frac{\gamma}{m} t}
$$

where $C$ is a constant to be determined, and the non-homogeneous solution is

$$
    v_p(t)= \frac{mg}{\gamma},
$$

so the overall solution is

$$
    v(t)=v_h(t)+v_p(t)=C e^{-\frac{\gamma}{m} t}+\frac{mg}{\gamma},
$$

By using the initial condition $v(0)=0$, we can find 

$$
    C=-\frac{mg}{\gamma}
$$

and

$$
    v(t)=\frac{mg}{\gamma} \biggl(1-e^{-\frac{\gamma}{m} t}\biggr) = \frac{245}{7}\biggl(1-e^{-\frac{7}{25} t}\biggr).
$$
:::
::::

## Heat Transfer -- Forensic Science
::::{prf:example}

A forensic scientist is called to the scene of a murder. The temperature of the corpse is found to be $75$<sup>o</sup>F  and one hour later the temperature has dropped to $70$<sup>o</sup>F. If the temperature of the room in which the body was discovered is a constant $68$<sup>o</sup>F, how long before the first temperature reading was taken did the murder occur? Assume that the body obeys Newton's Law of Cooling,

$$
 \diff{T}{t}=\beta(T-T_R),	
$$

where $T$ is the temperature of the corpse, $\beta$ is a constant, and $T_R$ is room temperature. A normal body temperature for adults is generally around $98.6$<sup>o</sup>F ($37$<sup>o</sup>C).

Note: **This will be a coursework question!**


## Chemical Reactions

::::{prf:example}
A chemical substance $A$ changes into substance $B$ at a rate $\alpha$ times the amount of $A$ present. Substance $B$ changes into $C$ at a rate $\beta$ times the amount of $B$ present. 

```{figure} /images/00/chemical.svg
---
height: 80px
name: Chemical reactions
---
Chemical reactions of three substances.
```

If initially only substance $A$ is present and its amount is $M$, show that the amount of $C$ present at time $t$ is

$$
    M + M \biggl(  \frac{\beta e^{-\alpha t}-\alpha e^{-\beta t}}{\alpha-\beta} \biggr).
$$

:::{admonition} Solution
:class: solution, dropdown

From the given question, we can form a system of ODEs

$$
    \begin{aligned}
        \diff{A}{t} & = - \alpha A \\
        \diff{B}{t} & = \alpha A - \beta B \\
        \diff{C}{t} & = \beta B
    \end{aligned}
$$

By using the initial condition $A(0)=M$, we can find the solution for substance $A$

$$
    A(t) = M e^{-\alpha t}.
$$

The equation for substance $B$ then is

$$
    \diff{B}{t} + \beta B = M e^{-\alpha t},
$$

so its general solution is

$$
    B(t) = K e^{-\beta t} - \frac{\alpha M}{\alpha - \beta} e^{-\alpha t},
$$

by using the initial condition $B(0)=0$, we can find the solution for substance 

$$
    B(t) = \frac{\alpha M}{\alpha - \beta} ( e^{-\beta t} - e^{-\alpha t}).
$$

Thus the equation for substance $C$ is

$$
    \diff{C}{t} = \beta B(t) = \frac{\alpha \beta M}{\alpha - \beta} ( e^{-\beta t} - e^{-\alpha t}),
$$

so we can obtain the general solution by integrating the equation

$$
    \begin{aligned}
    C(t) & = \int \frac{\alpha \beta M}{\alpha - \beta} ( e^{-\beta t} - e^{-\alpha t}) \dt \\
         & = \frac{\alpha \beta M}{\alpha - \beta} \biggl( \frac{e^{-\beta t}}{-\beta}- \frac{e^{-\alpha t}}{-\alpha}\biggr) + K_2 \\
         & = \frac{M}{\alpha - \beta} (\beta e^{-\alpha t} - \alpha e^{-\beta t}) + K_2 \\
    \end{aligned}
$$

By using the initial condition $c(0)=0$, we can find $K_2=M$ and so the solution is

$$
    C(t) = M + \frac{M}{\alpha - \beta} (\beta e^{-\alpha t} - \alpha e^{-\beta t})
$$


:::
::::

## Population Dynamics

:::::{prf:example}
The population of a certain species of fish living in a large lake at time $t$ can be modelled using Verhulst’s equation, otherwise known as the logistic equation,

$$
    \diff{P}{t} = P (\beta - \delta P),
$$

where $P(t)$ is the population of fish measured in tens of thousands, and $\beta$ and $\delta$ are constants representing the birth and death rates of the fish living in the lake, respectively. Suppose that $\beta=1$, $\delta = 10^{-3}$, and the initial population is 800. Solve this initial value problem and interpret the results in physical terms.	

::::{admonition} Solution
:class: solution, dropdown

Using the methods of separation of variables gives

$$ 
    \int \frac{1}{P (\beta - \delta P)} \d P = \int \dt.
$$	

The solution to the integral on the left may be determined using partial fractions. The general solution is	

$$ 
    P(t) = \frac{\beta N e^{\beta t}}{\beta - \delta N + N \delta e^{\beta t}}.
$$

Substituting the initial conditions, the solution is

$$ 
    P(t) = \frac{800}{0.8+0.2 e^{-t}}.
$$

Thus as time increases, the population of fish tends to a value of 1000. The solution curve is plotted in the following figure

```{figure} /images/00/population.svg
---
height: 300px
name: fish population
---
The population of fish in a lake.
```

::::
:::::



## Economics

::::{prf:example}
The Harrod-Domar model was developed to analyse business cycles originally but later was used to explain an economy’s growth rate through savings and capital productivity. Output, $Y$, is a function of capital stock, $K$, $Y=F(K)$, and the marginal productivity, 

$$
    \diff{Y}{K}=c=\text{constant}.
$$


The model postulates that the output growth rate is given by

$$
    \frac{1}{Y} \diff{Y}{t} = sc - \delta,
$$


where $s$ is the savings rate, and $\delta$ the capital depreciation rate. The straightforward solution,

$$
    Y(t) = Y_0 e^{(sc-\delta)t},
$$


clearly demonstrates that increasing investment through savings and productivity boosts economic growth but does not take into account labour input and population size. 

::::

See [*Anastasios Tsoularis (2020)*](https://www.intechopen.com/chapters/76374) for more examples of ODEs in dynamic economics.


