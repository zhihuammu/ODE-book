# Table of Integrals

(see Thomas' Calculus, Fourteenth Edition.)
:::{index} Integrals
:::

```{contents}
:local:
```

## Basic Forms

1. $\displaystyle \int k \dx = kx+C, \quad k \in \R $
2. $\displaystyle \int x^n \dx = \frac{x^{n+1}}{n+1}+C, \quad n \neq -1$
3. $\displaystyle \int \frac{1}{x} \dx = \ln |x|+C$
4. $\displaystyle \int e^x \dx = e^x + C$
5. $\displaystyle \int a^x \dx  = \frac{a^x}{\ln a} + C, \quad (a>0, a\neq -1) $
6. $\displaystyle \int \sin x \dx = -\cos x + C $
7. $\displaystyle \int \cos x \dx = \sin x + C $
8. $\displaystyle \int \sec^2 x \dx = \tan x + C $
9. $\displaystyle \int \csc^2 x \dx = -\cot x + C$
10. $\displaystyle \int \sec x \tan x \dx = \sec x + C$

11. $\displaystyle \int \csc x \cot x \dx = - \csc x + C$
12. $\displaystyle \int \tan x \dx = \ln |\sec x| +C $
13. $\displaystyle \int \cot x \dx = \ln |\sin x| + C$
14. $\displaystyle \int \sinh x \dx = \cosh x + C$
15. $\displaystyle \int \cosh x \dx = \sinh x + C$
16. $\displaystyle \int \frac{1}{\sqrt{a^2-x^2}} \dx = \sin^{-1}\biggl(\frac{x}{a}\biggl) + C$
17. $\displaystyle \int \frac{1}{\sqrt{a^2+x^2}} \dx = \frac{1}{a}\tan^{-1}\biggl(\frac{x}{a}\biggl)+C$
18. $\displaystyle \int \frac{1}{x\sqrt{x^2-a^2}} \dx = \frac{1}{a}\sec^{-1}\biggl| \frac{x}{a} \biggr| + C$
19. $\displaystyle \int \frac{1}{\sqrt{a^2+x^2}} \dx = \sinh^{-1}\biggl(\frac{x}{a}\biggl) + C, \quad (a>0)$
20. $\displaystyle \int \frac{1}{\sqrt{x^2-a^2}} \dx = \cosh^{-1}\biggl(\frac{x}{a}\biggl) + C, \quad (x>a>0)$


## Forms involving $ax+b$
21. $\displaystyle \int (ax+b)^n \dx = \frac{(ax+b)^{n+1}}{a(n+1)}+C, \quad n \neq -1$

22. $\displaystyle \int x(ax+b)^n \dx = \frac{(ax+b)^n}{a^2} \left[\frac{ax+b}{n+2}-\frac{b}{n+1}\right]+C, \quad n\neq -1, -2$

23. $\displaystyle \int (ax+b)^{-1} \dx = \frac{1}{a} \ln \left|ax+b\right| + C$

24. $\displaystyle \int x(ax+b)^{-1} \dx = \frac{x}{a} - \frac{b}{a^2} \ln |ax+b| + C$

25. $\displaystyle \int x(ax+b)^{-2} \dx = \frac{1}{a^2} \left[\ln |ax+b| + \frac{b}{ax+b}\right] + C$

26. $\displaystyle \int \frac{1}{x(ax+b)} \dx = \frac{1}{b} \ln \left| \frac{x}{ax+b} \right| +C$

27. $\displaystyle \int (\sqrt{ax+b})^n \dx = \frac{2}{a} \frac{(\sqrt{ax+b})^{n+2}}{n+2}  + C, \quad n\neq -2$

28. $\displaystyle \int \frac{\sqrt{ax+b}}{x} \dx = 2 \sqrt{ax+b} + b \int \frac{1}{x\sqrt{ax+b}} \dx$

29. 
    - $\displaystyle \int \frac{1}{x\sqrt{ax+b}} \dx = \frac{1}{\sqrt{b}} \ln \left| \frac{\sqrt{ax+b}-\sqrt{b}}{\sqrt{ax+b}+\sqrt{b}} \right| +  C$

    - $\displaystyle \int \frac{1}{x\sqrt{ax-b}} \dx = \frac{2}{\sqrt{b}} \tan^{-1} \sqrt{\frac{ax-b}{b}}+  C$

30. $\displaystyle \int \frac{\sqrt{ax+b}}{x} \dx = - \frac{\sqrt{ax+b}}{x} + \frac{a}{2} \int \frac{1}{x\sqrt{ax+b}} \dx + C$

31. $\displaystyle \int \frac{1}{x^2 \sqrt{ax+b}} \dx = - \frac{\sqrt{ax+b}}{bx} - \frac{a}{2b} \int \frac{1}{x\sqrt{ax+b}} \dx + C$

## Forms involving $a^2+x^2$
32. $\displaystyle \int \frac{1}{a^2+x^2} \dx = \frac{1}{a} \tan^{-1}\frac{x}{a} +C $

33. $\displaystyle \int \frac{1}{(a^2+x^2)^2} \dx= \frac{x}{2a^2(a^2+x^2)} + \frac{1}{2a^3} \tan^{-1} \frac{x}{a} + C$

34. $\displaystyle \int \frac{1}{\sqrt{a^2+x^2}} \dx = \sinh^{-1} \frac{x}{a} + C = \ln (x+\sqrt{a^2+x^2} + C)$

35. $\displaystyle \int \sqrt{a^2+x^2} \dx = \frac{x}{2}\sqrt{a^2+x^2} + \frac{a^2}{2} \ln (x+\sqrt{a^2+x^2}) + C$

36. $\displaystyle \int x^2 \sqrt{a^2+x^2} \dx = \frac{x}{8}(a^2+2x^2)\sqrt{a^2+x^2} - \frac{a^4}{8} \ln (x+\sqrt{a^2+x^2}) + C$

37. $\displaystyle \int \frac{\sqrt{a^2+x^2}}{x} \dx = \sqrt{a^2+x^2} - a \ln \left| \frac{a+\sqrt{a^2+x^2}}{x} \right| + C$

38. $\displaystyle \int \frac{\sqrt{a^2+x^2}}{x^2} \dx = \ln (x+\sqrt{a^2+x^2}) - \frac{\sqrt{a^2+x^2}}{x} + C$

39. $\displaystyle \int \frac{x^2}{\sqrt{a^2+x^2}} \dx = -\frac{a^2}{2}\ln (x+\sqrt{a^2+x^2}) + \frac{x\sqrt{a^2+x^2}}{2}+C$

40. $\displaystyle \int \frac{1}{x\sqrt{a^2+x^2}} \dx = -\frac{1}{a} \ln \left| \frac{a+\sqrt{a^2+x^2}}{x} \right| + C$

41. $\displaystyle \int \frac{1}{x^2 \sqrt{a^2+x^2}} \dx = -\frac{\sqrt{a^2+x^2}}{a^2x} + C$

## Forms involving $a^2-x^2$
42. $\displaystyle \int \frac{1}{a^2-x^2} \dx = \frac{1}{2a} \ln \left|\frac{x+a}{x-a}\right|+C$

43. $\displaystyle \int  \frac{1}{(a^2-x^2)^2} = \frac{x}{2a^2(a^2-x^2)} + \frac{1}{4a^3} \ln \left| \frac{x+a}{x-a} \right| + C$

44. $\displaystyle \int \frac{1}{\sqrt{a^2-x^2}} \dx= \sin^{-1} \frac{x}{a}+C$

45. $\displaystyle \int \sqrt{a^2-x^2} \dx = \frac{x}{2} \sqrt{a^2-x^2}+\frac{a^2}{2} \sin^{-1} \frac{x}{a}+C$

46. $\displaystyle \int x^2 \sqrt{a^2-x^2} \dx = \frac{a^4}{8} \sin^{-1} \frac{x}{a} - \frac{1}{8} x \sqrt{a^2-x^2} (a^2-2x^2) +C$

47. $\displaystyle \int \frac{\sqrt{a^2-x^2}}{x} \dx= \sqrt{a^2-x^2} - a \ln \left| \frac{a+\sqrt{a^2-x^2}}{x} \right| + C$

48. $\displaystyle \int \frac{\sqrt{a^2-x^2}}{x^2} \dx = -\sin^{-1}\frac{x}{a} - \frac{\sqrt{a^2-x^2}}{x} + C$

49. $\displaystyle \int \frac{1}{\sqrt{a^2-x^2}}\dx = \frac{a^2}{2} \sin^{-1} \frac{x}{a} - \frac{1}{2}x \sqrt{a^2-x^2} + C$

50. $\displaystyle \int \frac{1}{x\sqrt{a^2-x^2}} \dx = - \frac{1}{a} \ln \left| \frac{a+\sqrt{a^2-x^2}}{x} \right|+C$

51. $\displaystyle \int \frac{1}{x^2 \sqrt{a^2-x^2}} \dx = - \frac{\sqrt{a^2-x^2}}{a^2x} +C$

## Forms involving $x^2-a^2$
52. $\displaystyle \int \frac{1}{\sqrt{x^2-a^2}} \dx = \ln \left| x+\sqrt{x^2-a^2}\right|+C$

53. $\displaystyle \int \sqrt{x^2-a^2} \dx = \frac{x}{2} \sqrt{x^2-a^2} - \frac{a^2}{2} \ln \left| x+\sqrt{x^2-a^2}\right| + C$

54. $\displaystyle \int (\sqrt{x^2-a^2})^n \dx = \frac{x(\sqrt{x^2-a^2})^n}{n+1} - \frac{na^2}{n+1} \int (\sqrt{x^2-a^2})^{n-2} \dx, \quad n\neq -1 $

55. $\displaystyle \int \frac{1}{(\sqrt{x^2-a^2})^n} \dx= \frac{x(\sqrt{x^2-a^2})^{2-n}}{(2-n)a^2} - \frac{n-3}{(n-2)a^2} \int \frac{1}{(\sqrt{x^2-a^2})^{n-2}}, \quad n\neq 2$
<!-- 
## Trigonometric Forms

## Inverse Trigonometric Forms-->

## Exponential and Logarithmic Forms

109. $\displaystyle \int e^{ax} \dx = \frac{1}{a}e^{ax} + C$

110. $\displaystyle \int b^{ax} \dx = \frac{1}{a} \frac{b^{ax}}{\ln b} + C,  \quad b>0, ~ b\neq 1$

111. $\displaystyle \int x e^{ax} \dx = \frac{e^{ax}}{a^2}(ax-1) + C$

112. $\displaystyle \int x^n e^{ax} \dx = \frac{1}{a}x^n e^{ax}-\frac{n}{a} \int x^{n-1} e^{ax} \dx$

<!-- ## Forms involving $\sqrt{2ax-x^2}$, $a>0$

## Hyperbolic Forms

## Definite Integrals  -->