# Example MATLAB Programs

## Script 1
```{literalinclude} /codes/AM2_interval.m
:language: matlab
```

Output:

:::none
 1.0   2.81   0.05
 0.0   0.00   1.00
-1.0   0.39   0.15
-2.0   0.41   0.22
-3.0   0.62   0.18
-4.0   0.78   0.16
-5.0   0.91   0.15
-6.0   1.00   0.14
-7.0   1.07   0.14
:::


## Script 2

```{literalinclude} /codes/AM2_interval_v2.m
:language: matlab
```
Output

::: none
-7.00	-6.00	-5.00	-4.00	-3.00	-2.00	-1.00	 0.00	 1.00	
-------------------------------------------------------------
1.07	 1.00	 0.91	 0.78	 0.62	 0.41	 0.39	 0.00	 2.81	
0.14	 0.14	 0.15	 0.16	 0.18	 0.22	 0.15	 1.00	 0.05	
:::

## Script 3

```{literalinclude} /codes/AB2_lines.m
:language: matlab
```

Output

```{figure} /images/06/AB2_lines_result.svg
---
width: 500px
name: figure-AB2-2
---
Stability region of AB 2-step method.
```



## Script 4

``` matlab
%A very simple version
%Region of absolute stability for the 2-step AB method
w=exp(1i*linspace(0,2*pi));
z=2*(w.^2-w)./(3*w-1);
plot(z)
```

## Script 5
```{literalinclude} /codes/AB2shaded.m
:language: matlab
```

Output

```none
  θ     Re(hλ)     Im(hλ)
------------------------------
  0      0.00       0.00
  6     -0.00       0.10
 12     -0.00       0.21
 18     -0.00       0.30
 24     -0.01       0.39
 30     -0.01       0.47
 36     -0.03       0.54
 42     -0.05       0.61
  .         .          .
  .         .          .
  .         .          .    
168     -0.99       0.16
174     -1.00       0.08
180     -1.00       0.00
  .         .          .
  .         .          .
  .         .          .    
276     -0.34      -0.80
282     -0.29      -0.80
288     -0.23      -0.79
294     -0.19      -0.77
300     -0.14      -0.74
306     -0.10      -0.71
312     -0.07      -0.66
318     -0.05      -0.61
324     -0.03      -0.54
330     -0.01      -0.47
336     -0.01      -0.39
342     -0.00      -0.30
348     -0.00      -0.21
354     -0.00      -0.10
360      0.00       0.00
```

```{figure} /images/06/AB2shaded_result.svg
---
width: 500px
name: figure-AB2-3
---
Stability region of AB 2-step method.
```