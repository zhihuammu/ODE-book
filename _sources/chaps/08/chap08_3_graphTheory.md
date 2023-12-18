# Matrix Sparsity and Graph Theory

A graph $G = \{v,E\}$ consists of a set of vertices $v\text{(nodes)}$
and a set of edges $E$ connecting the vertices. A graph can be used to
represent the nonzero pattern of a sparse matrix. Any symmetric sparse
matrix can be represented by a graph $G$ where there is an edge from
vertex $i\ts\text{(row)}$ to vertex $j\ts\text{(column)}$ and a letter
or symbol represents the nonzero entry, e.g. $a_{ij}$:

Associated with each graph is an adjacency matrix $A = (a_{ij})$:

$$(a_{ij})=\begin{cases}
        1, & \text{if an edge exists},\\
        0, & \text{otherwise}.
    \end{cases}$$

The degree of a node in a graph is the number of nodes adjacent to it
(or the number of edges connected to it). **[Example 1]{.underline}**
Consider the following matrix $A$ and its corresponding adjacency graph.

$A=
    \begin{bmatrix}
      1 & 1 & 0 & 0 & 1 \\
      1 & 1 & 1 & 1 & 0 \\
      0 & 1 & 1 & 1 & 0 \\
      0 & 1 & 1 & 1 & 1 \\
      1 & 0 & 0 & 1 & 1
    \end{bmatrix}$

![image](main/07/extex_1.tikz){width="7cm"}

The following MATLAB .m file produces the adjacency graph of matrix A:

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

**[Example 2]{.underline}**

Consider the following matrix $A$ and its corresponding adjacency graph.

$A=
    \begin{bmatrix}
      1 & 1 & 0 & 0 & 1 & 0\\
      1 & 1 & 1 & 0 & 0 & 1\\
      0 & 1 & 1 & 0 & 0 & 0\\
      0 & 0 & 0 & 1 & 1 & 0\\
      1 & 0 & 0 & 1 & 1 & 1\\
      0 & 1 & 0 & 0 & 1 & 1\\
    \end{bmatrix}$

 ![image](main/07/extex_2.tikz){width="7cm"}

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

In MATLAB the function $\emph{spy}$ plots the sparsity pattern (i.e. the
non-zero elements) of any matrix A. **[Example 3]{.underline}**

Enter the matrix A in MATLAB

    >> A=[1 0 2 3 0
          0 0 0 5 0
          0 1 0 0 8
          1 0 0 0 4
          0 0 6 7 0]

    Followed by the command spy
    >> spy(A)

MATLAB will produce the sparsity pattern (nonzero elements) for matrix
$A$ as:

The number of nonzero elements in matrix $A$ is $10$ and this is noted
by $nnz=10$ in Fig. 3.

**[Example 4]{.underline}** Define the matrix $A$, from Example 2, in
MATLAB, followed by the command spy(A), gives:

    >> A=[1 1 0 0 1 0
          1 1 1 0 0 1
          0 1 1 0 0 0
          0 0 0 1 1 0
          1 0 0 1 1 1
          0 1 0 0 1 1]

    >> spy(A)
