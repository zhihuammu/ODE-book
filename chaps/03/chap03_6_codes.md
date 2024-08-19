# Computer Programs
(ch03:program-design)=
## Program Design

::::::{grid}
::::{grid-item-card}
:columns: 4
```{mermaid}
:align: center
flowchart TD
    id1([Start]) --> 
    id2[Define IVP] -->
    id3[Produce Starting Values] -->
    id4[Apply Multistep Method] -->
    id5[/Output Result/] -->
    id6([END])   
```
::::
::::{grid-item}
:columns: 8
```{prf:algorithm} Linear Multistep Method for IVPs
:label: algorithm-LMM

**Define** the IVP
- The ODE $y'=f(t, y)$
- The interval of definition $I=[\text{tStart}, \text{tEnd}]$
- Number of points $N$ on $I$
- Step size $h=(\text{tEnd}-\text{tStart})/(N-1)$
- Initial values: $t_0$, $y_0$, $f_0$

**Produce** starting values from step $1$ to step $k-1$:
- $y_1$, $y_2$, ..., $y_{k-1}$
- $f_1$, $f_2$, ..., $f_{k-1}$

**Apply** the linear multistep method for the remaining steps

$$
\sum_{i=0}^{k} \alpha_i y_{j-k+i} = h\sum_{i=0}^{k}\beta_i f_{j-k+i},
\quad j=k, \ldots, N-1
$$

**Output** the result $\{y_j\}_{j=0}^{N-1}$
```
::::
::::::

(ch03:example-program)=
## Example Programs

In order to illustrate the predictor-corrector methods computationally,
three programs with the corresponding function definitions and
the solution tables are appended below:

- **[](ch03:program1)**  - solves the problem using the exact solution to find the
starting values, followed by the $4^\text{th}$order ABM method for the
remaining integration points.

- **[](ch03:program2)**  - implements the classic $4^{th}$--order Runge--Kutta
method for computing the starting values, followed by the $4^{th}$order
ABM method for the remaining integration points.

- **[](ch03:program3)**  - uses the ODE solver ode113 (based on non-stiff ABM
methods) from the ODE solver routines built-in Matlab. This will be
discussed in detail using Matlab documentation attached. 

Run these programs to check your results for {prf:ref}`example-3.2`.

(ch03:program1)=
### Program 1 (Matlab and Python)
Using the **analytical solution** to produce starting values.
:::::{tab-set}

::::{tab-item} MATLAB
The following code has been tested under **Matlab 2022**

```{literalinclude} /codes/ch2_prog1.m
:linenos: True
:language: matlab
:emphasize-lines: 24,26
```

The output of this code is:

```none
x        yp         y          F         y_ex      AbsError
0.00  0.0000000  1.0000000  0.0000000  1.0000000  0.00000000
0.10  0.0000000  1.0048374  0.0951626  1.0048374  0.00000000
0.20  0.0000000  1.0187308  0.1812692  1.0187308  0.00000000
0.30  0.0000000  1.0408182  0.2591818  1.0408182  0.00000000
0.40  1.0703229  1.0703197  0.3296803  1.0703200  0.00000031
0.50  1.1065330  1.1065301  0.3934699  1.1065307  0.00000056
0.60  1.1488135  1.1488109  0.4511891  1.1488116  0.00000075
0.70  1.1965868  1.1965844  0.5034156  1.1965853  0.00000091
0.80  1.2493301  1.2493279  0.5506721  1.2493290  0.00000103
0.90  1.3065705  1.3065685  0.5934315  1.3065697  0.00000111
1.00  1.3678800  1.3678783  0.6321217  1.3678794  0.00000117
```
::::

::::{tab-item} Python

```{literalinclude} /codes/ch2_prog1.py
:linenos: True
:language: python
:emphasize-lines: 34,37
```

The output of this code is:

```none
 t       yp         y          F         y_ex      AbsError
0.00  0.0000000  1.0000000  0.0000000  1.0000000  0.00000000
0.10  0.0000000  1.0048374  0.0951626  1.0048374  0.00000000
0.20  0.0000000  1.0187308  0.1812692  1.0187308  0.00000000
0.30  0.0000000  1.0408182  0.2591818  1.0408182  0.00000000
0.40  1.0703229  1.0703197  0.3296803  1.0703200  0.00000031
0.50  1.1065330  1.1065301  0.3934699  1.1065307  0.00000056
0.60  1.1488135  1.1488109  0.4511891  1.1488116  0.00000075
0.70  1.1965868  1.1965844  0.5034156  1.1965853  0.00000091
0.80  1.2493301  1.2493279  0.5506721  1.2493290  0.00000103
0.90  1.3065705  1.3065685  0.5934315  1.3065697  0.00000111
1.00  1.3678800  1.3678783  0.6321217  1.3678794  0.00000117
```
::::

::::: 

(ch03:program2)=
### Program 2 (Matlab and Python)
Using the **RK4** method to produce starting values.
:::::{tab-set}

::::{tab-item} MATLAB
The following code has been tested under **Matlab 2022**

```{literalinclude} /codes/ch2_prog2.m
:linenos: True
:language: matlab
:emphasize-lines: 25,28
```

Output:
```none
x        yp         y          F         y_ex      AbsError
0.00  0.0000000  1.0000000  0.0000000  1.0000000  0.00000000
0.10  0.0000000  1.0048375  0.0951625  1.0048374  0.00000008
0.20  0.0000000  1.0187309  0.1812691  1.0187308  0.00000015
0.30  0.0000000  1.0408184  0.2591816  1.0408182  0.00000020
0.40  1.0703231  1.0703199  0.3296801  1.0703200  0.00000013
0.50  1.1065332  1.1065303  0.3934697  1.1065307  0.00000039
0.60  1.1488136  1.1488110  0.4511890  1.1488116  0.00000060
0.70  1.1965869  1.1965845  0.5034155  1.1965853  0.00000077
0.80  1.2493302  1.2493281  0.5506719  1.2493290  0.00000090
0.90  1.3065706  1.3065687  0.5934313  1.3065697  0.00000100
1.00  1.3678801  1.3678784  0.6321216  1.3678794  0.00000108
```
::::

::::{tab-item} Python
```{literalinclude} /codes/ch2_prog2.py
:linenos: True
:language: python
:emphasize-lines: 38,41
```

Output:
```none
 t       yp         y          F         y_ex      AbsError
0.00  0.0000000  1.0000000  0.0000000  1.0000000  0.00000000
0.10  0.0000000  1.0048375  0.0951625  1.0048374  0.00000008
0.20  0.0000000  1.0187309  0.1812691  1.0187308  0.00000015
0.30  0.0000000  1.0408184  0.2591816  1.0408182  0.00000020
0.40  1.0703231  1.0703199  0.3296801  1.0703200  0.00000013
0.50  1.1065332  1.1065303  0.3934697  1.1065307  0.00000039
0.60  1.1488136  1.1488110  0.4511890  1.1488116  0.00000060
0.70  1.1965869  1.1965845  0.5034155  1.1965853  0.00000077
0.80  1.2493302  1.2493281  0.5506719  1.2493290  0.00000090
0.90  1.3065706  1.3065687  0.5934313  1.3065697  0.00000100
1.00  1.3678801  1.3678784  0.6321216  1.3678794  0.00000108
```
::::

:::::

(ch03:program3)=
### Program 3 (Matlab only)
The following code has been tested under **Matlab 2022**

:::{literalinclude} /codes/ch2_prog3.m
:linenos: True
:language: matlab
:::

Output:
```none
t        y          f(t)      y_ex     Abs_error 
0.00  1.0000000  0.0000000  1.0000000  0.00000000
0.10  1.0048374  0.0951626  1.0048374  0.00000001
0.20  1.0187308  0.1812692  1.0187308  0.00000006
0.30  1.0408184  0.2591816  1.0408182  0.00000018
0.40  1.0703202  0.3296798  1.0703200  0.00000013
0.50  1.1065307  0.3934693  1.1065307  0.00000007
0.60  1.1488116  0.4511884  1.1488116  0.00000000
0.70  1.1965852  0.5034148  1.1965853  0.00000006
0.80  1.2493289  0.5506711  1.2493290  0.00000011
0.90  1.3065696  0.5934304  1.3065697  0.00000009
1.00  1.3678794  0.6321206  1.3678794  0.00000008
```

```{figure} /images/fig-ch3program3_result.svg
---
width: 600px
name: fig-ch3program3_result
---

```