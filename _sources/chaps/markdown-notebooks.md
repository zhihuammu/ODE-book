---
jupytext:
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.11.5
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

# Notebooks with MyST Markdown

Jupyter Book also lets you write text-based notebooks using MyST Markdown.
See [the Notebooks with MyST Markdown documentation](https://jupyterbook.org/file-types/myst-notebooks.html) for more detailed instructions.
This page shows off a notebook written in MyST Markdown.

## An example cell

With MyST Markdown, you can define code cells with a directive like so:

```{code-cell}
print(2 + 2)
```

When your book is built, the contents of any `{code-cell}` blocks will be
executed with your default Jupyter kernel, and their outputs will be displayed
in-line with the rest of your content.

```{seealso}
Jupyter Book uses [Jupytext](https://jupytext.readthedocs.io/en/latest/) to convert text-based files to notebooks, and can support [many other text-based notebook files](https://jupyterbook.org/file-types/jupytext.html).
```

## Create a notebook with MyST Markdown

MyST Markdown notebooks are defined by two things:

1. YAML metadata that is needed to understand if / how it should convert text files to notebooks (including information about the kernel needed).
   See the YAML at the top of this page for example.
2. The presence of `{code-cell}` directives, which will be executed with your book.

That's all that is needed to get started!

## Quickly add YAML metadata for MyST Notebooks

If you have a markdown file and you'd like to quickly add YAML metadata to it, so that Jupyter Book will treat it as a MyST Markdown Notebook, run the following command:

```
jupyter-book myst init path/to/markdownfile.md
```


## BLOCK TEST

```{seealso}
blab
```

```{warning}
asaasa
```

```{important}
asasas
```


```{question}
how
```


```{example}

qwqw
```

::::{prf:example}
xxxx
::::

:::{versionchanged} 0.13.0
`myst_enable_extensions` replaces previous configuration options:
`admonition_enable`, `figure_enable`, `dmath_enable`, `amsmath_enable`, `deflist_enable`, `html_img_enable`
:::


:::{math}
:label: eqn:best

e = mc^2

:::

This is the best equation {eq}`eqn:best`


:::{admonition} This *is* also **Markdown**
:class: warning

This text is **standard** _Markdown_
:::

:::{admonition} Question
:class: important

How????
:::

:::{admonition} This *is* also **Markdown**
:class: important

This text is **standard** _Markdown_
:::


::::{tab-set}

:::{tab-item} Label1
Content 1
:::

:::{tab-item} Label2
Content 2
:::

::::

:::bg-primary
This is a container with a custom CSS class.

- It can contain multiple blocks
:::

:::{card} Card Title
Header
^^^
Card content
+++
Footer
:::

```{literalinclude} /codes/ch2_prog1.py
```

```{literalinclude} /codes/example3b.m
```

```{tikz}:: [>=latex',dotted,thick] 
:libs: arrows
\draw[->] (0,0) -- (1,1) -- (1,0) -- (2,0);
   
```

```{mermaid}

    sequenceDiagram
      participant Alice
      participant Bob
      Alice->John: Hello John, how are you?
```

```{tikz}
\draw (0,0) rectangle (1,1);
\filldraw (0.5,0.5) circle (.1);
```

```{tikz}
    \coordinate (N1) at (0,0);
    \coordinate (N2) at (1,1);
    \coordinate (N3) at (3,1);
    \coordinate (N4) at (2,0);
    \coordinate (N5) at (1,0);
    \foreach\n/\dir in {1/north,2/south,3/south,4/north,5/north}
    {   \node at (N\n) [anchor=\dir] {\n};
        \fill (N\n) circle (1pt);
    }
    \foreach\n/\m in {1/2,1/5,2/3,2/4,3/4,4/5}
    {   \draw (N\n) to (N\m);
    }
```

```{tikz}
    \foreach\n/\a in {1/7,2/5,3/3,4/1,5/15,6/13,7/9,8/11}
    {   \node[draw,circle] (N\n) at (22.5*\a:2.5) {\n};
    }
    \foreach\n/\m in {1/5,2/3,2/6,2/8,3/5,4/7,6/8}
    {   \draw (N\n) to (N\m);
    }    \coordinate (N2) at (1,1);
    \coordinate (N3) at (3,1);
    \coordinate (N4) at (2,0);
    \coordinate (N5) at (1,0);
    \foreach\n/\dir in {1/north,2/south,3/south,4/north,5/north}
    {   \node at (N\n) [anchor=\dir] {\n};
        \fill (N\n) circle (1pt);
    }
    \foreach\n/\m in {1/2,1/5,2/3,2/4,3/4,4/5}
    {   \draw (N\n) to (N\m);
    }
```

:::{tikz}
    \foreach\n/\a in {1/9,2/1,3/11,4/13,5/5,6/3,7/15,8/7}
    {   \node[draw,circle] (N\n) at (22.5*\a:2.5) {\n};
    }
    \foreach\n/\m in {1/2,3/4,3/5,4/5,5/6,6/7,7/8}
    {   \draw (N\n) to (N\m);
    }
:::

:::{tikz}
\begin{axis}
    [   unit vector ratio* = 1 1 1
    ,   title = {$A(p,p)$ -- Cuthill-McKee ordering by \texttt{symrcm}}
    ,   y dir = reverse
    ,   xmin = 0
    ,   ymin = 0
    ,   xmax = 9
    ,   ymax = 9
    ,   xlabel = {nnz=22}
    ,   xtick = {1,2,3,4,5,6,7,8}
    ,   ytick = {1,2,3,4,5,6,7,8}
    ]
    \addplot[only marks] coordinates
    {   (1,1)(1,2)
        (2,1)(2,2)
        (3,3)(3,4)(3,5)
        (4,3)(4,4)(4,5)
        (5,3)(5,4)(5,5)(5,6)
        (6,5)(6,6)(6,7)
        (7,6)(7,7)(7,8)
        (8,7)(8,8)
    };
\end{axis}
:::

```{tikz}
\begin{axis}
    [   unit vector ratio* = 1 1 1
    ,   y dir = reverse
    ,   xmin = 0
    ,   ymin = 0
    ,   xmax = 9
    ,   ymax = 9
    ,   xlabel = {nnz=22}
    ,   xtick = {1,2,3,4,5,6,7,8}
    ,   ytick = {1,2,3,4,5,6,7,8}
    ,   title style = {align = center}
    ,   title = {Ordering by Minimum Degree\\[1ex]ordering algorithm}
    ]
    \addplot[only marks] coordinates
    {   (1,1)(1,2)
        (2,1)(2,2)
        (3,3)(3,4)
        (4,3)(4,4)(4,5)
        (5,4)(5,5)(5,8)
        (6,6)(6,7)(6,8)
        (7,6)(7,7)(7,8)
        (8,5)(8,6)(8,7)(8,8)
    };
\end{axis}
```


```{tikz}
    \begin{axis}
        [   unit vector ratio* = 1 1 1
        ,   y dir = reverse
        ,   xmin = 0
        ,   ymin = 0
        ,   xmax = 21
        ,   ymax = 21
        ,   xlabel = {nnz=100}
        ,   xtick = {2,4,6,8,10,12,14,16,18,20}
        ,   ytick = {2,4,6,8,10,12,14,16,18,20}
        ,   title = {Original}
        ]
        \addplot[only marks] coordinates {
(1,1)(2,2)(2,9)(2,12)(2,14)(2,17)(3,3)(3,4)(3,9)(3,10)(3,13)(3,14)(3,16)(3,18)(4,3)(4,4)(4,12)(4,13)(4,14)(4,17)(5,5)(5,8)(5,20)(6,6)(6,10)(6,20)(7,7)(7,13)(7,18)(8,5)(8,8)(9,2)(9,3)(9,9)(9,10)(9,12)(9,14)(9,17)(9,18)(10,3)(10,6)(10,9)(10,10)(10,15)(10,16)(10,18)(10,20)(11,11)(12,2)(12,4)(12,9)(12,12)(12,13)(12,14)(12,17)(12,18)(13,3)(13,4)(13,7)(13,12)(13,13)(13,14)(13,17)(13,18)(14,2)(14,3)(14,4)(14,9)(14,12)(14,13)(14,14)(14,17)(15,10)(15,15)(15,16)(16,3)(16,10)(16,15)(16,16)(17,2)(17,4)(17,9)(17,12)(17,13)(17,14)(17,17)(18,3)(18,7)(18,9)(18,10)(18,12)(18,13)(18,18)(19,19)(19,20)(20,5)(20,6)(20,10)(20,19)(20,20)
        };
    \end{axis}
```

```{tikz}

    \foreach\n/\x/\y in {6/0/1,2/2/0,1/4/0,8/6/0,5/2/3,7/4/3,3/6/3,4/8/3}
    {   \node[draw,circle] (N\n) at (\x,\y) {\n};
    }
    \foreach\n/\m in {1/2,1/7,1/8,2/5,2/6,2/7,3/4,3/7,3/8,5/7}
    {   \draw (N\n) to (N\m);
    }
```

```{tikz}
    \foreach\n/\x/\y in {10/0/0,5/3/0,9/1.5/1,8/1.5/2,6/4/3,7/6/3,4/2.5/3,1/1.5/4,2/0.5/5,3/2.5/5}
    {   \node[draw,circle] (N\n) at (\x,\y) {\n};
    }
    \foreach\n/\m in {1/2,1/3,1/4,1/6,1/8,1/10,2/3,4/6,4/8,5/6,5/8,5/9,5/10,6/7,6/8,8/9,8/10,9/10}
    {   \draw (N\n) to (N\m);
    }
```

```{tikz}
    [   baseline = {(current bounding box.north)}
    ]
    \begin{axis}
        [   width = 0.9\linewidth
        ,   xmin = 0
        ,   xmax = 5
        ,   xtick = {0,1,2,3,4,5}
        ,   ymin = 0
        ,   ymax = 3
        ,   ytick = {0,1,2,3}
        ]
        \plot [black, mark = *, mark options = {solid}]
        coordinates {(2,2)(1,1)(4,1)};
        \plot [black, mark = *, mark options = {solid}]
        coordinates {(1,2)(4,2)(3,1)};
        \node[anchor = north] at (axis cs:1,1) {1};
        \node[anchor = north] at (axis cs:3,1) {2};
        \node[anchor = north] at (axis cs:4,1) {3};
        \node[anchor = south] at (axis cs:1,2) {4};
        \node[anchor = south] at (axis cs:2,2) {5};
        \node[anchor = south] at (axis cs:4,2) {6};
    \end{axis}
```

