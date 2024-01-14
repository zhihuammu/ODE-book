# Sparse Matrices Storage and Reordering

## Storing Sparse Matrices

The coordinate scheme is the most preferred way to specify a sparse
matrix in the form of an unordered set of triples $(i,j, a_{ij})$.
Consider the following example. 

:::{prf:example}
:label: example-8.5
Consider a $5\times5$ sparse matrix A: 

$$A=
\begin{bmatrix}
1 & 0 & 2 & 3 & 0 \\
0 & 0 & 0 & 5 & 0 \\
0 & 1 & 0 & 0 & 8 \\
1 & 0 & 0 & 0 & 4 \\
0 & 0 & 6 & 7 & 0
\end{bmatrix}$$

where $i$ denotes the row and $j$ denotes the column
numbers. Note that the number of nonzero elements is 10. The coordinate
scheme representation of matrix $A$ is shown in the following table:


|    Subscripts | 1 |  2 |  3 |  4 |  5 |  6 |  7 |  8 |  9 |  10 |
|   ------------|---| ---| ---| ---| ---| ---| ---| ---| ---| ----|
|           $i$ | 1 |  4 |  3 |  1 |  5 |  1 |  2 |  5 |  3 |  4  |
|           $j$ | 1 |  1 |  2 |  3 |  3 |  4 |  4 |  4 |  5 |  5  |
|      $a_{ij}$ | 1 |  1 |  1 |  2 |  6 |  3 |  5 |  7 |  8 |  4  |


From the table, the second column $i = 4$, $j= 1$. This means the matrix
element is 1 in this example. For sparse matrices, MATLAB uses the same
approach to store the nonzero elements and their indices. The
`sparse` function generates matrices in the MATLAB sparse storage
organisation. It converts a full matrix to sparse form by only
considering the nonzero elements.
:::

:::{prf:example}
Consider matrix $A$ in {prf:ref}`example-8.5`, with 10
nonzero elements. To convert matrix $A$ to sparse form in MATLAB use
`sparse` function:

    >> A=[
    1 0 2 3 0
    0 0 0 5 0
    0 1 0 0 8
    1 0 0 0 4
    0 0 6 7 0];

    >> sparse(A)
    ans =
       (1,1)        1
       (4,1)        1
       (3,2)        1
       (1,3)        2
       (5,3)        6
       (1,4)        3
       (2,4)        5
       (5,4)        7
       (3,5)        8
       (4,5)        4
:::

## Matrix Storage Information

A matrix can be stored in full or only by its nonzero elements. For
example, it will have the same entries and their elements, eigenvalues
and determinants are equal but the computation storages are different.
In general, the computation storage of sparse matrices is proportional
to the number of nonzero elements. The **whos** command in MATLAB
provides the general information about matrix size and storage as shown
in {prf:ref}`example-8.5`.


|  Name    |   Size       |  Bytes Class|
|  --------|-------------|--------------|
|  Full A  |   $5\times 5$ |  200 double|
|  Sparse A|   $5\times 5$ |  144 double|


The number of bytes used in the sparse version is less than the full
version, since the zero elements are not stored. For a large scale
sparse matrix system, this leads to significant savings in data storage.
For example for a $1100\times 1100$ matrix the storage saving is
significant:-

    full      1100x1100          9680000    double
    sparse    1100x1100          5004       double

For full matrices, MATLAB stores every matrix element internally.
Zero-valued elements require the same amount of storage space as any
other matrix element. For large matrices with a high percentage of
zero-valued elements, this scheme significantly reduces the amount of
memory required for data storage.
