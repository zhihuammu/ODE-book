::: center
::: tabular
P2cm \| P2cm P2cm P2cm P2cm P2cm Original nodes & No. of connections &
Results/ Head & Queue & RCM & New nodes\
1 & 1 & 1 & 5 &7 &1\
2 & 3 & 5 & 3 &4 &2\
3 & 2 & 3 & 2 &8 &3\
4 & 1 & 2 & 6,8 &6 &4\
5 & 2 & 6 & - &2 &5\
6 & 2 & 8 & - &3 &6\
7 & 1 & 4 & 7 &5 &7\
8 & 2 & 7 & - &1 &8\
:::
:::

Note that the labels of new nodes are the reverse of the elements in the
array Results. See below the re-ordered matrix and the adjacency graph
(note the diagram remains unchanged, but nodes are now relabelled).

::: center
$B=
        \begin{bmatrix}
          1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 \\
          1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 \\
          0 & 0 & 1 & 1 & 1 & 0 & 0 & 0 \\
          0 & 0 & 1 & 1 & 1 & 0 & 0 & 0 \\
          0 & 0 & 1 & 1 & 1 & 1 & 0 & 0 \\
          0 & 0 & 0 & 0 & 1 & 1 & 1 & 0 \\
          0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 \\
          0 & 0 & 0 & 0 & 0 & 0 & 1 & 1
        \end{bmatrix}$
:::

::: center
![image](main/07/Fig7b.tikz){width="5cm"}
:::

It can be seen that the algorithm keeps all nonzero elements close to
the diagonal. You can see visibly that there are more zero elements
below and above the main diagonal and nonzero elements are close to the
main diagonal and the re-ordered matrix exhibits a banded structure.
Using MATLAB the bandwidths of the original matrix A and the reordered
matrix B can be found as:-

      >> [i,j]=find(A); %returns the row and col indices
                        %of the nonzero entries
      >> bw=max(i-j)
      bw =6
      
      >> [i,j]=find(B);
      >> bw=max(i-j)
      bw =2

i.e. The (half) bandwidth of the matrix has been reduced to 2 instead of
6; hence, the full bandwidth of the matrices A and B are 13 and 5
respectively. Note that the relabeling described above used the reverse
of the array RCM of the reordered nodes, hence this is the Reverse
Cuthill-McKee (RCM) re-ordering technique. In the original Cuthill-McKee
(CM) algorithm, the elements of array Results are relabelled without
reversing the elements. i.e.

::: center
    Original nodes 1   2   3   4   5   6   7   8      
  ---------------- --- --- --- --- --- --- --- --- -- --
     Cuthill-McKee 1   5   3   2   6   8   4   7      
        Reverse CM 7   4   8   6   2   3   5   1      
:::

In MATLAB, the command $symrcm(A)$ returns the symmetric reverse
Cuthill-McKee ordering of A. This is a permutation matrix p such that
$A(p,p)$ tends to have its nonzero elements closer to the main diagonal.
Example MATLAB code:

      p = symrcm(A);
      spy(A(p,p)), title('A(p,p) after Cuthill-McKee ordering')
      nz = nnz(A);
      pct = 100/numel(A);
      xlabel(sprintf('nonzeros=%d (%.1f%%)',nz,nz*pct));

<figure>
<div class="center">
<img src="main/07/example7_1fig1.tikz" style="width:6cm" />
</div>
</figure>

Figure 5 below shows the nonzero pattern of the original matrix A, the
ordered matrix B, matrix C, ordered by the CM method, and matrix D is
found by using the MATLAB function $\emph{symrcm}$:-

<figure>
<div class="center">
<table>
<tbody>
<tr class="odd">
<td style="text-align: center;"><img src="main/07/example7_1sub1.tikz"
style="width:6cm" alt="image" /></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"><img src="main/07/example7_1sub2.tikz"
style="width:6cm" alt="image" /></td>
</tr>
<tr class="even">
<td style="text-align: center;"><img src="main/07/example7_1sub3.tikz"
style="width:6cm" alt="image" /></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"><img src="main/07/example7_1sub4.tikz"
style="width:6cm" alt="image" /></td>
</tr>
</tbody>
</table>
</div>
</figure>

Note that the half bandwidth of the reordered matrix $C$, using the
original Cuthill-Mckee method is $bw =5$, and the half bandwidth of the
reordered matrix $D$ is $bw =2$, using the MATLAB function $sysmrcm$ for
the reverse Cuthill-Mckee is $bw =2$, i.e. the same as that for matrix
$B$. Hence, the Reverse Cuthill-Mckee algorithm for bandwidth reduction
of sparse matrices seems to be the most effective reordering method.

## Column Count Reordering

The idea of the column count reordering algorithm is to move rows and
columns with higher nonzero count towards the end of the matrix. This
algorithm reduces the time and storage for computing matrix operations
such as the LU factorization and the Cholesky factorization, but its
performance is not consistent overall and depends on the original
matrix. **[Example 7.2]{.underline}** Consider the sparse matrix and its
corresponding adjacency graph from Example 7.1:

::: center
$A=
        \begin{bmatrix}
          1 & 0 & 0 & 0 & 1 & 0 & 0 & 0 \\
          0 & 1 & 1 & 0 & 0 & 1 & 0 & 1 \\
          0 & 1 & 1 & 0 & 1 & 0 & 0 & 0 \\
          0 & 0 & 0 & 1 & 0 & 0 & 1 & 0 \\
          1 & 0 & 1 & 0 & 1 & 0 & 0 & 0 \\
          0 & 1 & 0 & 0 & 0 & 1 & 0 & 1 \\
          0 & 0 & 0 & 1 & 0 & 0 & 1 & 0 \\
          0 & 1 & 0 & 0 & 0 & 1 & 0 & 1
        \end{bmatrix}$
:::

::: center
![image](main/07/Fig7a.tikz){width="5cm"}
:::

The degrees of all vertices are obtained in the following:

::: center
  vertex          1   2   3   4   5   6   7   8
  --------------- --- --- --- --- --- --- --- ---
  no. of degree   1   3   2   1   2   2   1   2
:::

Since vertex 7 has the least degrees, it is labelled as 1 - (Note: since
vertices 1, 4, and 7 have the same number of degrees, therefore the new
labels are interchangeable, as any of these vertices can be chosen in
any order) and then vertices 4 and 1 are labelled (again since vertices
4 and 1 have the same number of degrees, therefore the new labels are
interchangeable). The algorithm is then continued in the same steps
until complete labelling is obtained as shown:

::: center
  new vertex   1   2   3   4   5   6   7   8
  ------------ --- --- --- --- --- --- --- ---
  old vertex   7   4   1   8   6   5   3   2
:::

The resulting adjacency matrix and graph are shown below:

::: center
$CC=
        \begin{bmatrix}
          1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 \\
          1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 \\
          0 & 0 & 1 & 0 & 0 & 1 & 0 & 0 \\
          0 & 0 & 0 & 1 & 1 & 0 & 0 & 1 \\
          0 & 0 & 0 & 1 & 1 & 0 & 0 & 1 \\
          0 & 0 & 1 & 0 & 0 & 1 & 1 & 0 \\
          0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 \\
          0 & 0 & 0 & 1 & 1 & 0 & 1 & 1
        \end{bmatrix}$
:::

![image](main/07/F7CCalog.tikz){width="5cm"}

Similar to the command $\emph{symrcm}$ for RCM reordering, in MATLAB the
command $\emph{colperm}$ returns the column count reordering of A. This
is a permutation matrix q such that $A(q,q)$ tends to move rows and
columns with higher nonzero count towards the end of the matrix (a
down-arrow effect).

Example MATLAB code:

      q = colperm(A);
      spy(A(q,q)),title('A(q,q)-Column Count ordering by colperm')
      nz = nnz(A);
      pct = 100 / numel(A);
      xlabel(sprintf('nonzeros=%d (%.1f%%)',nz,nz*pct));

<figure>
<div class="center">
<table>
<tbody>
<tr class="odd">
<td style="text-align: center;"><img src="main/07/cc_comb_1.tikz"
style="width:40.0%" alt="image" /></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"><img src="main/07/cc_comb_2.tikz"
style="width:40.0%" alt="image" /></td>
</tr>
</tbody>
</table>
</div>
</figure>

## Minimum Degree Reordering

The minimum degree algorithm attempts to reduce the fill-in caused by
elimination such as Gaussian elimination, LU decomposition or the
Cholesky decomposition. The computational costs of this algorithm is
inexpensive, and it is easy to apply and effective for most problems
which are not too large. However, most mathematical software packages
such as MATLAB use an approximation minimum degree, rather than the
exact degree to minimise the computational costs. The minimum degree
algorithm is re-labelling of the vertices in ascending degree order.
Nodes with lower degrees are labelled early to reduce adding many
fill-ins.

**[Example 7.3]{.underline}** Consider the sparse matrix and its
corresponding adjacency graph from Example 7.1:

::: center
$A=
        \begin{bmatrix}
          1 & 0 & 0 & 0 & 1 & 0 & 0 & 0 \\
          0 & 1 & 1 & 0 & 0 & 1 & 0 & 1 \\
          0 & 1 & 1 & 0 & 1 & 0 & 0 & 0 \\
          0 & 0 & 0 & 1 & 0 & 0 & 1 & 0 \\
          1 & 0 & 1 & 0 & 1 & 0 & 0 & 0 \\
          0 & 1 & 0 & 0 & 0 & 1 & 0 & 1 \\
          0 & 0 & 0 & 1 & 0 & 0 & 1 & 0 \\
          0 & 1 & 0 & 0 & 0 & 1 & 0 & 1
       \end{bmatrix}$
:::

::: center
![image](main/07/Fig7a.tikz){width="4cm"}
:::

The minimum degree algorithm is re-labelling of the vertices in
ascending degree order. Nodes with lower degrees are labelled early to
reduce adding many fill-ins.

The degrees of all vertices are shown in the following table:

::: center
           vertex 1   2   3   4   5   6   7   8
  --------------- --- --- --- --- --- --- --- ---
    no. of degree 1   3   2   1   2   2   1   2
:::

where vertex 7 has the least degrees, then vertex 7 is numbered with
first as 1. Since vertex 7 is connected to vertex 4, then vertex 4 must
be updated by subtracting 1 (if it is already 1 then just write it down
as 1 and number it immediately after 7) as shown in the following
Table - where the eliminated node is represented by X , and the vertex
is numbered with a new label. Note: if no tie-breaking strategy has been
established, all three vertices 1, 4, and 7 can be selected in this
case, and proceed to elimination. The completed ordering using the
Minimum Degree algorithm is shown in the following table, together with
the resulting adjacency matrix and graph:

::: center
  --- -------------- -------------------------- --- --- --- --- --- --- ---
                      vertex and no. of degree                          
                                 1               2   3   4   5   6   7   8
       New ordering              1               3   2   1   2   2   1   2
   1      \(7\)                  1               3   2   1   2   2   X   2
   2      \(4\)                  1               3   2   X   2   2   X   2
   3      \(1\)                  X               3   2   X   1   2   X   2
   4      \(5\)                  X               3   1   X   X   2   X   2
   5      \(3\)                  X               2   X   X   X   2   X   2
   6      \(6\)                  X               1   X   X   X   X   X   1
   7      \(8\)                  X               1   X   X   X   X   X   X
   8      \(2\)                  X               X   X   X   X   X   X   X
  --- -------------- -------------------------- --- --- --- --- --- --- ---
:::

::: center
$MD=
        \begin{bmatrix}
          1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 \\
          1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 \\
          0 & 0 & 1 & 1 & 0 & 0 & 0 & 0 \\
          0 & 0 & 1 & 1 & 1 & 0 & 0 & 0 \\
          0 & 0 & 0 & 1 & 1 & 0 & 0 & 1 \\
          0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 \\
          0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 \\
          0 & 0 & 0 & 0 & 1 & 1 & 1 & 1
        \end{bmatrix}$
:::

::: center
![image](main/07/F7MDalgo.tikz){width="4cm"}
:::

Similar to the commands $\emph{symrcm}$ and $\emph{colperm}$, in MATLAB
the command $\emph{symamd}$ returns the approximate Minimum Degree
reordering of A to produce large blocks of zeros in the matrix. The
permutation matrix r is calculated such that $A(r,r)$ tends to move rows
and columns with higher nonzero elements towards the end of the matrix -
similar to the Column Count algorithm.

Example MATLAB code:

      r = symamd(A);
      spy(A(r,r)),title('A(r,r)-Minimum Degree ordering by symamd')
      nz = nnz(A);
      pct = 100 / numel(A);
      xlabel(sprintf('nonzeros=%d (%.1f%%)',nz,nz*pct));

<figure>
<div class="center">
<table>
<tbody>
<tr class="odd">
<td style="text-align: center;"><img src="main/07/MD_comb_1.tikz"
style="width:40.0%" alt="image" /></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"><img src="main/07/MD_comb_2.tikz"
style="width:40.0%" alt="image" /></td>
</tr>
</tbody>
</table>
</div>
</figure>

## Comparison between various ordering schemes and fill-in effect

For a more effective comparison we consider a symmetric $20 \times 20$
sparse matrix A, which was generated by using MATLAB's *rand* command:

      >> S = sparse(+(rand(20,20) < 1/3)); % should allow <10% nonzeros
      >> B=full(S);
      >> A=B'*B  % makes A a symmetric matrix

Using the MATLAB $\emph{spy}$ command the corresponding sparsity
patterns from the results of the reordering by the RCM, CC and MD
methods are summarised in Figure 6. Furthermore, using the MATLAB
command $[L,U] = lu(A)$ the upper triangular matrix in $U$ for the full
matrix A and the reordered matrices are also shown in Figure 6. \[ Note:
for the original matrix $bw =18$ and for the RCM reordered matrix
$bw =7$ were found using MATLAB\]

<figure>
<div class="center">
<table>
<tbody>
<tr class="odd">
<td style="text-align: center;"><img src="main/07/fig6a1.tikz"
style="width:35.0%" alt="image" /></td>
<td style="text-align: center;"><img src="main/07/fig6a2.tikz"
style="width:35.0%" alt="image" /></td>
</tr>
<tr class="even">
<td style="text-align: center;"><img src="main/07/fig6a3.tikz"
style="width:35.0%" alt="image" /></td>
<td style="text-align: center;"><img src="main/07/fig6a4.tikz"
style="width:35.0%" alt="image" /></td>
</tr>
<tr class="odd">
<td style="text-align: center;"><img src="main/07/fig6a5.tikz"
style="width:35.0%" alt="image" /></td>
<td style="text-align: center;"><img src="main/07/fig6a6.tikz"
style="width:35.0%" alt="image" /></td>
</tr>
<tr class="even">
<td style="text-align: center;"><img src="main/07/fig6a7.tikz"
style="width:35.0%" alt="image" /></td>
<td style="text-align: center;"><img src="main/07/fig6a8.tikz"
style="width:35.0%" alt="image" /></td>
</tr>
</tbody>
</table>
</div>
<p>Figure 6. Comparison between reordering schemes for a <span
class="math inline">20 × 20</span> symmetric matrix</p>
</figure>

In summary, the re-ordering or permutation of matrices provides a
pre-conditioning for the solution of matrices and the resulting matrix
is already nearly in LU factorization or banded form depending on the
chosen ordering method. Applying methods for the solution of full
matrices will produce more nonzero elements (fill-in effect) and no
computational advantage from the sparsity of matrix can be achieved. For
the $20 \times 20$ matrix $A$ the number of fill-in required to form the
upper triangular using LU factorization of the permuted matrix is shown
in the following table:

::: center
   $20 \times 20$   Original Matrix   Reverse CM   Column Count   Min Degree
  ---------------- ----------------- ------------ -------------- ------------
   No. of nz in U        $66$            $54$          $53$          $58$
:::

For large matrices with a high percentage of zero elements, reordering
process of matrices significantly reduces the number of fill-in and the
CPU processing time , as well as the amount of memory required for data
storage when solving large sparse linear system of equations. For a
$3000\times 3000$ matrix as an example the effect of reordering on the
LU factors are presented in the following table:

::: center
   $3000 \times 3000$   nnz (percentage)               CPU$(sec)$
  -------------------- ------------------ ----------- ------------
    Original Matrix        $1783708$        $(100)\%$   $5.500$
       Reverse CM           $862448$         $(48)\%$   $1.438$
      Column Count          $521582$         $(29)\%$   $1.016$
     Minimum Degree         $692034$         $(39)\%$   $1.047$
:::

**[Example 7.4]{.underline}** Consider the following sparse matrix and
its corresponding adjacency graph.

$A=
          \begin{bmatrix}
        1 & 1 & 0 & 0 & 0 & 0 & 1 & 1 \\
        1 & 1 & 0 & 0 & 1 & 1 & 1 & 0 \\
        0 & 0 & 1 & 1 & 0 & 0 & 1 & 1 \\
        0 & 0 & 1 & 1 & 0 & 0 & 0 & 0 \\
        0 & 1 & 0 & 0 & 1 & 0 & 1 & 0 \\
        0 & 1 & 0 & 0 & 0 & 1 & 0 & 0 \\
        1 & 1 & 1 & 0 & 1 & 0 & 1 & 0 \\
        1 & 0 & 1 & 0 & 0 & 0 & 0 & 1
      \end{bmatrix}$

![image](main/07/ex74_2.tikz){width="6cm"}

For the RCM and Column Count reordering methods, use the MATLAB commands
$symrcm(A)$ and $colperm(A)$ to find the corresponding reordered
matrices $C$ and $D$. Plot the pattern of matrices $A$, $C$ and $D$.
Apply the MATLAB command $[L,U]=lu(A)$ for finding the LU factorisation
of matrices $A$, and similarly $C$ and $D$. Plot the pattern of the
resulting matrices using $spy(lu(A))$, $spy(lu(C))$ and $spy(lu(D))$.
Comment on the number of non-zero elements following LU factorisation.
Plot the upper triangular matrix U for each of the factorised matrices
and record the number of non-zero (nz) elements in U for each of the
resulting upper triangular matrices in a table. Comment on the
advantages of the LU factorisation and the effect of fill-in when using
ordered matrices. The three stages of the required solution together
with the MATLAB commands are summerised in Figure 7.

<figure>
<div class="center">
<table>
<tbody>
<tr class="odd">
<td style="text-align: center;"><img src="main/07/image_orig1.tikz"
style="width:30.0%" alt="image" /></td>
<td style="text-align: center;"><img src="main/07/image_rcm1.tikz"
style="width:30.0%" alt="image" /></td>
<td style="text-align: center;"><img src="main/07/image_col1.tikz"
style="width:30.0%" alt="image" /></td>
</tr>
<tr class="even">
<td style="text-align: center;"><img src="main/07/image_orig2.tikz"
style="width:30.0%" alt="image" /></td>
<td style="text-align: center;"><img src="main/07/image_rcm2.tikz"
style="width:30.0%" alt="image" /></td>
<td style="text-align: center;"><img src="main/07/image_col2.tikz"
style="width:30.0%" alt="image" /></td>
</tr>
<tr class="odd">
<td style="text-align: center;"><img src="main/07/image_orig3.tikz"
style="width:30.0%" alt="image" /></td>
<td style="text-align: center;"><img src="main/07/image_rcm3.tikz"
style="width:30.0%" alt="image" /></td>
<td style="text-align: center;"><img src="main/07/image_col3.tikz"
style="width:30.0%" alt="image" /></td>
</tr>
</tbody>
</table>
</div>
<p>Figure 7. Comparison of the LU factorisation and fill-in effect on
original and ordered matrices.</p>
</figure>

Following LU factorisation, we find the number of non-zero elements in
various reordering methods in $U$ as:

::: center
    $8 \times 8$    Original Matrix   Reverse CM   Column Count
  ---------------- ----------------- ------------ --------------
   No. of nz in U        $24$            $17$          $18$
:::

Hence, using the re-ordering methods, both RCM and Column Count,
significantly reduces the generation of fill-in elements compared to the
LU factorisation of the original matrix $A$, even for an $8\times8$
matrix.

Furthermore, the solution to the original linear algebraic system
contributes significantly to the total computational time for the
solution of stiff problems, as well as affecting the accuracy of the
solution (and hence, affecting the computational time). Note that
re-ordering enhances the computational accuracy through a reduction in
rounding errors (due to fewer computational steps, resulting from
reduced fill-in elements). In terms of application in the solutions of
large systems of stiff differential equations (which require treatment
of the associated Jacobinan metrix), the re-ordering of the system of
equations resulting from the Newton iteration will lead to the solution
of a banded matrix instead of a full matrix treatment, and hence
resulting in fewer fill-ins, more accurate solutions and shorter
computing time.

**[References]{.underline}** MATLAB Help/documentation on Sparse
Matrices, e.g.:

http://www.mathworks.co.uk/help/matlab/math/accessing-sparse-matrices.html

http://www.mathworks.co.uk/help/matlab/examples/sparse-matrices.html

Saad, Y., 2003. Iterative Methods for Sparse Linear System 2nd ed.
Philadelphia: SIAM- Society for Industrial and Applied Mathematics

Golub, G. and Van Loan, C., 1996g. Matrix Computations 3rd edition.
London: The Johns Hopkins University Press


