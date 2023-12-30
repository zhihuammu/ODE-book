---
jupytext:
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

# TEST ONLY

This chapter is just for testing jupyter-book functionality.

```{margin} Look, some margin content!
On wider screens, this content will pop out to the side!
```

Here's my sentence and a sidenote[^sn1].

[^sn1]: And here's my sidenote content.

Here's my sentence and a marginnote[^mn1].

[^mn1]: {-} And here's my marginnote content.

```{margin} **Here is my margin content**
It is pretty cool!
```


```{code-block} python
:caption: python.py
:linenos: 

print("A code block with a caption and line numbers.")
print("A code block with a caption and line numbers.")
print("A code block with a caption and line numbers.")
```

```{code-block} matlab
:caption: matlab.py
:linenos: 

printf("A code block with a caption and line numbers.")
printf("A code block with a caption and line numbers.")
printf("A code block with a caption and line numbers.")
```


```{code-block} c
:caption: hello.c
:linenos: 

int main()
{
    fprintf("Hello World C!\n");    
    return 0;
}
```

```{code-block} c++
:caption: hello.cpp
:linenos: 

#include <iostream>
using namespace std;
int main()
{
    cout<<"Hello World C++|"<<endl;
    return 0;
}
```

```{code-block} f90
:caption: hello.f90
:linenos: 

program main
    implicit none

    print*,'Hello World Fortran'
end program main
```

This is a normal reST {index}`paragraph` that contains several

This is a normal reST {index}`codeblock` that contains several

```{index} Index names
:name: index-names
```

```{index} single: Jupyter Book ; installation
```

```{index} double: references ; index terms
```

```{index} seealso: citations ; bibliographies
```


First two tabs showing off defining a function.

````{tab} Python
```python
def main():
    print("Hello World Python!")
    return
```
````
````{tab} C++
```c++
int main(const int argc, const char **argv) {
    fprintf("Hello World C++!\n");
    return 0;
}
```
````
````{tab} Fortran
```f90
program main
    print*,'Hello World!'
end program main
```
````

Second two tabs showing off printing.

````{tab} Python
```python
print("Hello World!")
```
````

````{tab} C++
```c++
#include <iostream>

int main() {
  std::cout << "Hello World!" << std::endl;
}
```
````


```{code-cell} ipython3
note = "Python syntax highlighting"
print(note)
```

```{code-cell} ipython3
from myst_nb import glue
import sympy as sym
x, y = sym.symbols('x y')
z = sym.Function('z')
z = sym.sqrt(x**2+y**2)
glue("example_eq", z, display=False)
```

To glue a math equation try
```{glue:math} example_eq
:label: glue-eq-example
```

```{code-cell} ipython3
from myst_nb import glue
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 200)
y = np.sin(x)
fig, ax = plt.subplots()
ax.plot(x, y, 'b-', linewidth=2)

glue("glued_fig", fig, display=False)
```

This is an inline glue example of a figure: {glue:}`glued_fig`.
This is an example of pasting a glued output as a block:
```{glue:} glued_fig
```

```{code-cell} ipython3
from myst_nb import glue
import numpy as np
import pandas as pd

ss = pd.Series(np.random.randn(4))
ns = pd.Series(np.random.randn(100))

glue("ss_mean", ss.mean())
glue("ns_mean", ns.mean(), display=False)
```

Here is an example of how to glue numbers: {glue:}`ss_mean` and {glue:}`ns_mean`.

```{admonition} Check out my custom icon
:class: admonition-icon

Lorem ipsum dolor sit amet, consectetur adipiscing elit.
```