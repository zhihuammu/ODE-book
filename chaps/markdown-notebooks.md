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