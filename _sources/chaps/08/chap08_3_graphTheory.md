# Matrix Sparsity and Graph Theory

A graph $G = \{v,E\}$ consists of a set of vertices $v\text{(nodes)}$
and a set of edges $E$ connecting the vertices. A graph can be used to
represent the nonzero pattern of a sparse matrix. Any symmetric sparse
matrix can be represented by a graph $G$ where there is an edge from
vertex $i\text{(row)}$ to vertex $j\text{(column)}$ and a letter
or symbol represents the nonzero entry, e.g. $a_{ij}$:

Associated with each graph is an {index}`adjacency matrix` $A = (a_{ij})$:

$$(a_{ij})=\begin{cases}
        1, & \text{if an edge exists},\\
        0, & \text{otherwise}.
    \end{cases}$$

The degree of a node in a graph is the number of nodes adjacent to it
(or the number of edges connected to it).

:::::{prf:example}

Consider the following matrix $A$ and its corresponding adjacency graph.

::::{grid}
:::{grid-item-card} Matrix
$$
A=
    \begin{bmatrix}
      1 & 1 & 0 & 0 & 1 \\
      1 & 1 & 1 & 1 & 0 \\
      0 & 1 & 1 & 1 & 0 \\
      0 & 1 & 1 & 1 & 1 \\
      1 & 0 & 0 & 1 & 1
    \end{bmatrix}
$$
:::

:::{grid-item-card} Graph
```{tikz}  
:xscale: 60

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
:::
::::


The following MATLAB .m file produces the adjacency graph of matrix A:

```matlab
%Example 1 - Adjacency graph using gplot function
A=[1 1 0 0 1;1 1 1 1 0;0 1 1 1 0;0 1 1 1 1;1 0 0 1 1];
% Enter the Cartesian coordinates for the vertices
xy=[1 1; 2 2; 5 2; 4 1; 3 1];
gplot(A,xy,'k-*');% marking the elements using * in black font
axis([0 6 0 3]);
text(1,0.9,'1');
text(2,2.1,'2');
text(5,2.1,'3');
text(4,0.9,'4');
text(3,0.9,'5');        
```
:::::

:::::{prf:example}

Consider the following matrix $A$ and its corresponding adjacency graph.
::::{grid}
:::{grid-item-card} Matrix
$$
A=
    \begin{bmatrix}
      1 & 1 & 0 & 0 & 1 & 0\\
      1 & 1 & 1 & 0 & 0 & 1\\
      0 & 1 & 1 & 0 & 0 & 0\\
      0 & 0 & 0 & 1 & 1 & 0\\
      1 & 0 & 0 & 1 & 1 & 1\\
      0 & 1 & 0 & 0 & 1 & 1\\
    \end{bmatrix}
$$
:::

:::{grid-item-card} Graph
```{tikz}  
:xscale: 60

\coordinate (N1) at (1,0);
\coordinate (N2) at (2,0);
\coordinate (N3) at (3,0);
\coordinate (N4) at (0,1);
\coordinate (N5) at (1,1);
\coordinate (N6) at (2,1);
\foreach\n/\dir in {1/north,2/north,3/north,4/south,5/south,6/south}
{   \node at (N\n) [anchor=\dir] {\n};
    \fill (N\n) circle (1pt);
}
\foreach\n/\m in {1/2,1/5,2/3,2/6,4/5,5/6}
{   \draw (N\n) to (N\m);
}
```
:::
::::

```matlab
%Example 2 - Adjacency plot
A=[1 1 0 0 1 0;1 1 1 0 0 1;0 1 1 0 0 0;0 0 0 1 1 0;
    1 0 0 1 1 1; 0 1 0 0 1 1];
xy=[2 1;3 1;4 1;1 2;2 2;3 2];
gplot(A,xy,'k-*');
axis([0 5 0 3]);
text(2,0.9,'1');
text(3,0.9,'2');
text(4,0.9,'3');
text(1,2.1,'4');
text(2,2.1,'5');
text(3,2.1,'6');
%End                                            
```

In MATLAB the function **spy** plots the sparsity pattern (i.e. the
non-zero elements) of any matrix A. 

:::::

:::{prf:example}

Enter the matrix A in MATLAB

```matlab
>>   A=[1 0 2 3 0
        0 0 0 5 0
        0 1 0 0 8
        1 0 0 0 4
        0 0 6 7 0] 
>> spy(A)
```
MATLAB will produce the sparsity pattern (nonzero elements) for matrix
$A$ as:

```{tikz}  

\begin{axis}
    [   unit vector ratio* = 1 1 1
    ,   y dir = reverse
    ,   xmin = 0
    ,   ymin = 0
    ,   xmax = 6
    ,   ymax = 6
    ,   xlabel = {nnz=10}
    ,   xtick = {1,2,3,4,5}
    ,   ytick = {1,2,3,4,5}
    ,   title = {Fig 3. Sparsity pattern for matrix $A$}
    ]
    \addplot[only marks] coordinates
    {   (1,1) (1,4) (2,3) (3,1) (3,5) (4,1) (4,2) (4,5) (5,3) (5,4)
    };
\end{axis}
```

The number of nonzero elements in matrix $A$ is $10$ and this is noted
by $nnz=10$ in Fig. 3.
::::

:::{prf:example}
Define the matrix $A$, from Example 2, in
MATLAB, followed by the command spy(A), gives:

```matlab

>>   A=[1 1 0 0 1 0
        1 1 1 0 0 1
        0 1 1 0 0 0
        0 0 0 1 1 0
        1 0 0 1 1 1
        0 1 0 0 1 1]

>> spy(A)
```    

```{tikz}
\begin{axis}
    [   unit vector ratio* = 1 1 1
    ,   title = {Fig 4. Sparsity pattern for matrix $A$}
    ,   y dir = reverse
    ,   xmin = 0
    ,   ymin = 0
    ,   xmax = 7
    ,   ymax = 7
    ,   xlabel = {nnz=18}
    ,   xtick = {1,2,3,4,5,6}
    ,   ytick = {1,2,3,4,5,6}
    ,   scale = 0.95
    ]
    \addplot[only marks] coordinates
    {   (1,1)(1,2)(1,5)
        (2,1)(2,2)(2,3)(2,6)
        (3,2)(3,3)
        (4,4)(4,5)
        (5,1)(5,4)(5,5)(5,6)
        (6,2)(6,5)(6,6)
    };
\end{axis}
```
:::