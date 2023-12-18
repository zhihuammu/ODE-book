## Chapter 8 Exercises

**[Exercise (7)]{.underline}**

1.  \(a\) Write a Matlab mfile that produces the adjacency graph for the
    symmetric matrix A given in Example 4. (b) Modify your mfile and
    repeat for the matrix A: A=\[1 1 0 0 0 1, 1 1 0 0 1 0, 0 0 1 0 1 0,
    0 0 0 1 0 1, 0 1 1 0 1 0, 1 0 0 1 0 1\].

2.  Consider the following adjacency graph with 10 nodes:

    ![image](main/07/ch7ex3.tikz)

    Show the corresponding adjacency matrix $A$ and calculate its
    bandwidth using the MATLAB command *bandwidth*. Reorder the matrix
    $A$ using the Cuthill-McKee (CM) algorithm and label the
    corresponding matrix $B$. Reorder the matrix $A$ using the RCM
    algorithm and label the corresponding matrix C. Compare the
    bandwidths of matrices $A$, $B$ and $C$ and comment on the
    computational efficiency when using matrix re-ordering. Plot the
    sparsity pattern of matrices $A$, $B$, and $C$, and verify your
    results by using the MATLAB function *symrcm(A)*. Reorder the Matrix
    $A$ by Column Count (label $D$) and Minimum Degree (label $M$)
    schemes, write down the corresponding adjacency matrices and plot
    the adjacency graphs. For the three schemes RCM, CC and MD (i.e.
    matrices $C$, $D$ and $M$), perform LU factorisation and record the
    number of fill-in elements in a table, prepare a summary result
    table (similar to Figure 6 shown in the lecture notes) and comment.

3.  Repeat question 2 with the following adjacency graph with 9 nodes.

    <figure>
    <p><span
    class="math inline">$\includegraphics{main/07/ch7ex2v2.tikz}$</span></p>
    </figure>

    Calculate the storage in units of bytes for the full and sparse
    matrix $A$ and the reordered Matrices $D$ (Column Count) and $M$
    (Minimum Degree), and comment.