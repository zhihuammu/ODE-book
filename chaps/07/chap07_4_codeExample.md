(chap:stiff:code)=
# MATLAB Program 4

```{literalinclude} /codes/ch7_stiff_1.m
:language: matlab
```


Computed result using Matlab stiff ODE solver -- ode15s, for t=0:60,
RelTol=1.e-6, AbsTol=1.e-6

::: none
 i      t         y1         y2         y3 
------------------------------------------------
 1   0.00e+00   1.00e+00   0.00e+00   0.00e+00
 2   1.00e-05   1.00e+00   4.00e-07   4.05e-11
 3   1.00e-03   1.00e+00   2.78e-05   1.22e-05
 4   1.00e-01   9.96e-01   3.58e-05   3.89e-03
 5   5.00e-01   9.82e-01   3.33e-05   1.82e-02
 6   1.00e+00   9.66e-01   3.07e-05   3.35e-02
 7   2.00e+00   9.42e-01   2.70e-05   5.84e-02
 8   4.00e+00   9.06e-01   2.24e-05   9.45e-02
 9   6.00e+00   8.79e-01   1.96e-05   1.21e-01
10   8.00e+00   8.59e-01   1.77e-05   1.41e-01
11   1.00e+01   8.41e-01   1.62e-05   1.59e-01
12   2.00e+01   7.82e-01   1.23e-05   2.18e-01
13   3.00e+01   7.44e-01   1.04e-05   2.56e-01
14   4.00e+01   7.16e-01   9.19e-06   2.84e-01
15   5.00e+01   6.93e-01   8.34e-06   3.07e-01
16   6.00e+01   6.74e-01   7.71e-06   3.26e-01
:::


```{figure} /images/07/ch6_stiff_1_result1.svg
---
width: 500px
name: figure-ch6_stiff_1_result1
---
```

```{figure} /images/07/ch6_stiff_1_result2.svg
---
width: 500px
name: figure-ch6_stiff_1_result2
---
```