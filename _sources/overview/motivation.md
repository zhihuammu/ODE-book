# Overview

:Unit Title: Computational Methods in Ordinary Differential Equations

- Runge-Kutta Methods and Linear Algebra -- Jon Shiach
- Linear Multistep Methods and Sparse Matrices -- Zhihua Ma

## What will we learn?

Our main focus is to learn and apply a range of numerical methods to solve a single or a system of **First-Order** Ordinary Differential Equation(s) given as

- A single equation: $\displaystyle \diff{y}{t}=f(t, y)$

- A system of equations: $\displaystyle \diff{\mathbf{Y}}{t}=\mathbf{F}(t, \mathbf{Y})$

We will also touch on graph theory and sparse matrix computation to:

- Form adjacency matrix for a graph,

- Reorder a graph to reduce the bandwidth and fill-ins of its adjacency matrix.

## Why are we learning about Ordinary Differential Equations?

Ordinary differential equations have wide applications in science and engineering:

- Physics
    - Fluid Dynamics

    <!-- ```{image} /images/dam3d_0006b.png
    :width: 500px
    :align: center
    ``` -->

    - Electrical Engineering

- Biology
    <!-- ```{image} /images/virus.png
    :width: 500 px
    :align: center
    ``` -->

- Chemical Kinetics

    <!-- $$
    \begin{aligned}
        \frac{\partial A}{\partial t}&=-k_1 A \\
        \frac{\partial B}{\partial t}&=k_1 A - k_2 B \\
        \frac{\partial C}{\partial t}&=k_2 B
    \end{aligned}
    $$ -->

- Economics

- Finance

- Life Insurance

Cultivating skills in dealing with Ordinary Differential Equations opens a door for mathematicians to solve real problems in lots of areas.

## Why are we learning Computational Methods?

In general there are two ways to solve ordinary differential equations:

- analytical methods

- computational methods

Analytical methods only work for a very limited number of simple cases, for most of the realistic complex problems we need to solve them numerically.



## Learning Objectives

<!-- - Successfully use a range of practical computational methods in ODEs for solving initial value and boundary value problems, and recognise their limitations and applications.

- Successfully use a range of practical computational methods in linear algebra and their applications to ODEs.

- Use MATLAB/PYTHON to compute numerical solutions and display results for analysis and interpretation.

- Model and solve real-world systems of linear and ordinary differential equations. -->


-    Apply a range of practical computational methods in ODEs and determine their limitations and advantages through stability properties of the methods.

-    Apply a range of matrix computational methods and perform re-ordering of matrices for the treatment of large sparse matrices.

-    Use a range of mathematical software and numerical algorithms.

-    Solve IVPs, BVPs and linear systems of equations, plot results, perform comparison analysis and determine the most suitable methods for the solution of a given problem. Prepare an academic report.  

-    Model and solve real-world systems of linear and ordinary differential equations.