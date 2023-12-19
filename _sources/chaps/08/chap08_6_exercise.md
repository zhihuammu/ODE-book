(chap:sparseMatrix:exercise)=
# Chapter 8 Exercises



1.  1. Write a Matlab mfile that produces the adjacency graph for the symmetric matrix A given in {prf:ref}`ch08-example-comparison`. 
    
    1. Modify your mfile and repeat for the matrix :
    
    ```matlab
    A= [1 1 0 0 0 1,
        1 1 0 0 1 0, 
        0 0 1 0 1 0,
        0 0 0 1 0 1, 
        0 1 1 0 1 0, 
        1 0 0 1 0 1]
    ```

2.  Consider the following adjacency graph with 10 nodes:

    ```{tikz}
    :include: /images/08/ch7ex3.tikz
    ```
    
    1. Show the corresponding adjacency matrix $A$ and calculate its bandwidth using the MATLAB command *bandwidth*. 
        
    2. Reorder the matrix $A$ using the Cuthill-McKee (CM) algorithm and label the corresponding matrix $B$. 
        
    3. Reorder the matrix $A$ using the RCM algorithm and label the corresponding matrix $C$. 
    
    4. Compare the bandwidths of matrices $A$, $B$ and $C$ and comment on the computational efficiency when using matrix re-ordering. 
        
    5. Plot the sparsity pattern of matrices $A$, $B$, and $C$, and verify your results by using the MATLAB function `symrcm(A)`. 
    
    6. Reorder the Matrix $A$ by Column Count (label $D$) and Minimum Degree (label $M$) schemes, write down the corresponding adjacency matrices and plot the adjacency graphs. 
    
    7.  For the three schemes RCM, CC and MD (i.e. matrices $C$, $D$ and $M$), perform LU factorisation and record the number of fill-in elements in a table, prepare a summary result table (similar to Figure 6 shown in the lecture notes) and comment.

3.  Repeat question 2 with the following adjacency graph with 9 nodes.

    ```{tikz}
    :include: /images/08/ch7ex2v2.tikz
    ```

    Calculate the storage in units of bytes for the full and sparse
    matrix $A$ and the reordered Matrices $D$ (Column Count) and $M$
    (Minimum Degree), and comment.