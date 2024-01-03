# Introduction

To better understand the advanced ODE solvers and their connection with
computational linear algebra, we first need to briefly consider the
solution methods underlying stiff systems of ODEs and their
corresponding matrix algebra. In general some classes of multistep
methods are used for the solution of a system of ODEs of size
$N \times N$ of the form: 

$$
    y'= \frac{\dy}{\dt} = f(t,y), \quad {y}(t_0)= { {a}}
$$(E:linde:1)



To advance the solution at time $t$ from one mesh point to the next,
considering a discrete time mesh $\{t_0,t_1,t_2, ...,t_n\}$, multistep
methods make use of several past values of the variable $y$ and its rate
of change $f$ with respect to time $t$. The general form of a $k$-step
multistep method is: 

$$
    \sum_{i=0}^k \alpha_i y_{j+i} = h \sum_{i=0}^k \beta_i f_{j+i},

$$(E:linde:2)


where $\alpha_k=1$, $\alpha_i$ and $\beta_i$ are constants and depend on
the order of the method, $h$ is the stepsize in time and $j$ denotes the
mesh number. The well-known family of Adams methods: 

$$
    y_{j+k} = y_{j+k-1} + h \sum_{i=0}^{k} \beta_i f_{j+i},

$$(E:linde:3)

 which use
mostly the past values of $f$, are the best-known multistep methods for
solving nonstiff problems. Each step requires the solution of a
nonlinear system and often a simple functional iteration with an initial
guess, or a predictor estimate, is used to advance the integration which
is terminated by a convergence test. For stiff problems, where sudden
changes in the variables can occur (i.e. where there are sharp changes
in variables $y$ over small time intervals say) simple iteration methods
lead to an unacceptable restriction of the stepsize and functional
iteration fails to converge. Thus, stiffness forces the use of implicit
methods, with infinite regions of stability, when there is no
restriction on the choice of the stepsize $h$. The backward difference
formulae (BDF) methods with unbounded region of absolute stability were
the first numerical methods developed for solving stiff ODEs (Curtiss
and Hirschfelder, 1952). The BDF methods used in ODE solvers, are of the
general form: 

$$

    \sum_{i=0}^k \alpha_i y_{j+i}= h \beta_k f_{j+k}

$$(E:linde:4)

 where $\alpha_i$
and $\beta_k$ are coefficients of $k^{th}$ order, $k \rm -step$ BDF
methods. As noted earlier, a simple functional iteration will usually
fail to converge when problems are stiff and instead some form of Newton
iteration is used for the solution of the resulting nonlinear system.
The Newton iteration involves the solution of an $N \times N$ matrix
$P$, 

$$

    P \approx I + h \beta_k J

$$(E:linde:5)



where $J = \frac{\partial{f}}{\partial{y}}$ is the associated Jacobian
matrix and $I$ is an $N \times N$ identity matrix.

The solution to this linear algebraic system contributes significantly
to the total computational time for the stiff problems, as well as
affecting the accuracy of the solution ( and hence, also affecting
computational time). For stiff problems the ODE solvers use a modified
Newton iteration that allows time saving strategies for the computation,
storage and the use of the Jacobian matrix. When solving a linear
algebraic system there are generally two classes of solution methods,
direct methods and indirect methods. The most common direct method used
to solve linear systems is the Gaussian Elimination method based on
factorization of the matrix in lower and upper triangular factors. The
GEAR, LSODE and VODE solvers all use such a method for the solution of
the resulting linear system. The simplest iterative scheme used to solve
linear systems is the Jacobi iteration, although the more sophisticated
solution methods of Krylov subspace methods, based on a sequence of
orthogonal vectors and matrix-vector multiplications, have been widely
used in practical applications such as computational fluid dynamics. The
ODE solvers, LSODPK and VODEPK implement preconditioned Krylov iterative
techniques for the solution of the resulting linear system.

:::{prf:remark}
The introduction here is a bit wordy. You just need to grasp the idea that

- Solving stiff problems efficiently request the use of fully implict methods;

- Using implicit methods will usually involve sparse matrices;

- Sparse matrices should be handled appropriately in particular for large scale problems.


:::