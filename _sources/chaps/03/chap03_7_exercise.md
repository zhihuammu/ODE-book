(chap:derivation:exercises)=
# Chapter 4 Exercises 

You should try the following exercise questions first, then check with the answers. 

::::{exercise}
:label: ex3-q1

Use a G-N interpolation formula to derive the following multistep
formulae:

-   $ y_{j+2} = y_j + (f_{j+2} + 4f_{j+1} + f_j) $          [ G-N forward 0 to 2 ]
-   $ y_{j+2} = y_{j+1} + (5f_{j+2} + 8f_{j+1} - f_j) $     [ G-N forward 1 to 2 ]
-   $ y_{j+3} = y_{j-1} + (8f_{j+2} - 4f_{j+1} + 8f_j) $    [ G-N forward -1 to 3 ]
-   $ y_j     = y_{j-1} + (5f_j + 8f_{j-1} - f_{j-2}) $     [ G-N backward 0 to -1 ]

<!-- Find the detailed solutions in Moodle. -->
::::

::::{solution} ex3-q1
:class: dropdown

{download}`handwritten full solution for Exercise 3.1 </exSol/Ex3/Ex3_1_annotated.pdf>`

::::

::::{exercise}
:label: ex3-q2

The family of Multistep explicit Adams methods can be expanded as

$$\begin{aligned}
        y_{j+1} ~&=~ y_j + h(1 + \frac{1}{2}\nabla + \frac{5}{12}\nabla^2
        + \frac{3}{8}\nabla^3 + \frac{251}{720}\nabla^4 + \dots)f_j
        
\end{aligned}$$ 

Use this formula and the following difference table
to solve the initial value problem: 

$$\begin{aligned}
        y' ~&=~ -y - 2x, & y(0) ~&=~ -1,
        & \text{for $x = 0.1$ to $x = 0.5$ with $h = 0.1$.}
        
\end{aligned}$$

Work to four decimal places. Compare your results
with the analytical solution: $\,y(x) = -3e^{-x} - 2x + 2\,$.
Comment on the accuracy of your results.


| $j$ | $x$ | $y$ | $f$ | $\nabla f$ | $\nabla^2 f$ |
|:--:|:--:|:--:|:--:|:--:|:--:|
|0 | 0.0 | -1.00000 | 1.0000 |
|  |     |          |        |............|
|1 | 0.1 | ............   |  ............|      | ............|
|  |     |          |        |............|
|2 | 0.2 | ............   | ............ |
::::

::::{solution} ex3-q2
:class: dropdown

$y_1 = -0.9000$, $y_2 = -0.8450$, $y_3 = -0.8114$, $y_4 = -0.8019$,  $y_5 = -0.8102$.

- {download}`excel solution for Exercise 3.2 </exSol/Ex3/Ex3_2.xlsx>`

- {download}`handwritten solution for Exercise 3.2 </exSol/Ex3/Ex3_2_handSol.pdf>`

- A video explanation

<div align="center">
<iframe id="kaltura_player" src="https://cdnapisec.kaltura.com/p/1128062/sp/112806200/embedIframeJs/uiconf_id/27474902/partner_id/1128062?iframeembed=true&playerId=kaltura_player&entry_id=1_0l6yp5n6&flashvars[akamaiHD.loadingPolicy]=preInitialize&amp;flashvars[akamaiHD.asyncInit]=true&amp;flashvars[streamerType]=hdnetwork&amp;flashvars[localizationCode]=en&amp;flashvars[sideBarContainer.plugin]=true&amp;flashvars[sideBarContainer.position]=left&amp;flashvars[sideBarContainer.clickToClose]=true&amp;flashvars[chapters.plugin]=true&amp;flashvars[chapters.layout]=vertical&amp;flashvars[chapters.thumbnailRotator]=false&amp;flashvars[streamSelector.plugin]=true&amp;flashvars[EmbedPlayer.SpinnerTarget]=videoHolder&amp;flashvars[dualScreen.plugin]=true&amp;flashvars[hotspots.plugin]=1&amp;flashvars[Kaltura.addCrossoriginToIframe]=true&amp;&wid=1_k4lu5co3" width="575" height="360" allowfullscreen webkitallowfullscreen mozAllowFullScreen allow="autoplay *; fullscreen *; encrypted-media *" sandbox="allow-downloads allow-forms allow-same-origin allow-scripts allow-top-navigation allow-pointer-lock allow-popups allow-modals allow-orientation-lock allow-popups-to-escape-sandbox allow-presentation allow-top-navigation-by-user-activation" frameborder="0" title="ch2_q2_v3"></iframe>
</div>
::::

::::{exercise}
:label: ex3-q3

The family of Multistep explicit Adams methods can be expanded as

:::{math}
:label: eq:ch02:1

\begin{aligned}
        y_{j+1} ~&=~ y_j + h(1 + \frac{1}{2}\nabla + \frac{5}{12}\nabla^2
        + \frac{3}{8}\nabla^3 + \frac{251}{720}\nabla^4 + \dots)f_j   
\end{aligned}
:::

Similarly, the family of Multistep implicit Adams
methods can be expanded as 

:::{math}
:label: eq:ch02:2

\begin{aligned}
        y_{j+1} ~&=~ y_j + h(1 - \frac{1}{2}\nabla - \frac{1}{12}\nabla^2
        - \frac{1}{24}\nabla^3 - \frac{19}{720}\nabla^4 - \dots)f_{j+1}
        \label{eq:ch02:2}
        
\end{aligned}
:::

 Use formula {eq}`eq:ch02:1` as a predictor, formula {eq}`eq:ch02:2`
as a corrector and the following difference
table to solve the initial value problem: $y' = -y -2x$,
$y(0) = -1$, to advance the solution to $x = 0.4$. State results to
four decimal places. Compare your result at each step with the
corresponding solution obtained in question 2, above, and comment.\

| $j$ | $x$ | $y$ | $f$ | $\nabla f$ | $\nabla^2 f$ | $\nabla^3 f$ | $\nabla^4 f$ | $\nabla^5 f$|
|:--:|:--:|:--:|:--:|:--:|:--:| :--:|:--:|:--:|
|0 | 0.0 | -1.00000 | 1.0000|
| | | | | ............|
|1 | 0.1 | ............| ............|   | ............|
| | | | | ............|   | ............|
|2 | 0.2 | ............| ............|   | ............|   | ............|
| | | | | ............|  |............|  |............|
|3 | 0.3 | ............| ............|  |............|  |............|
| | | | | ............|  |............|
|4 | 0.4 | ............| ............|  |............|
| | | | | ............|
|5 | 0.5 | ............| ............|

::::

::::{solution} ex3-q3
:class: dropdown

$x = 0.1$, $y^p = -0.9000$, $y^c = -0.9150$, $y_{ex} = -0.9145$\
$x = 0.2$, $y^p = -0.8577$, $y^c = -0.8566$, $y_{ex} = -0.8562$\
$x = 0.3$, $y^p = -0.8227$, $y^c = -0.8228$, $y_{ex} = -0.8225$\
$x = 0.4$, $y^p = -0.8112$, $y^c = -0.8113$, $y_{ex} = -0.8110$

- {download}`excel solution </exSol/Ex3/Ex3_3.xlsx>`

- A video explanation

<div align="center">
<iframe id="kaltura_player" src="https://cdnapisec.kaltura.com/p/1128062/sp/112806200/embedIframeJs/uiconf_id/27474902/partner_id/1128062?iframeembed=true&playerId=kaltura_player&entry_id=1_t6hm00wx&flashvars[akamaiHD.loadingPolicy]=preInitialize&amp;flashvars[akamaiHD.asyncInit]=true&amp;flashvars[streamerType]=hdnetwork&amp;flashvars[localizationCode]=en&amp;flashvars[sideBarContainer.plugin]=true&amp;flashvars[sideBarContainer.position]=left&amp;flashvars[sideBarContainer.clickToClose]=true&amp;flashvars[chapters.plugin]=true&amp;flashvars[chapters.layout]=vertical&amp;flashvars[chapters.thumbnailRotator]=false&amp;flashvars[streamSelector.plugin]=true&amp;flashvars[EmbedPlayer.SpinnerTarget]=videoHolder&amp;flashvars[dualScreen.plugin]=true&amp;flashvars[hotspots.plugin]=1&amp;flashvars[Kaltura.addCrossoriginToIframe]=true&amp;&wid=1_klbv8o8b" width="575" height="360" allowfullscreen webkitallowfullscreen mozAllowFullScreen allow="autoplay *; fullscreen *; encrypted-media *" sandbox="allow-downloads allow-forms allow-same-origin allow-scripts allow-top-navigation allow-pointer-lock allow-popups allow-modals allow-orientation-lock allow-popups-to-escape-sandbox allow-presentation allow-top-navigation-by-user-activation" frameborder="0" title="odeEx2Q3">
</iframe>
</div>
::::


::::{exercise}
:label: ex3-q4

Consider the initial--value problem 

$$\begin{aligned}
        y' ~&=~ x^2 - y, & y(0) ~&=~ 1.        
\end{aligned}$$

1.  Use the step-by-step method applied in {prf:ref}`example-3.2`, to find
    approximate solutions at $x = 0.4$ and $x = 0.5$ using the
    $4^\text{th}$ order ABM predictor-corrector method (listed on
    page 6 Chapter 2), with $\,h = 0.1\,$. Use the exact solution,
    $y_{ex} = 2 - 2x + x^2 - e^{-x}$, to calculate the starting
    values. Work to 7 decimal places. Note: you can use an Excel
    spreadsheet to carry out your calculations.

2.  Modify **[](ch03:program1)** to find approximate solutions in the
    range $x = 0$ to $x=0.5$, with $\,h = 0.1\,$. Use the exact
    solution, $y_{ex} = 2 - 2x + x^2 - e^{-x}$, to calculate the
    starting values.

3.  Modify **[](ch03:program2)** to check your results at $x = 0.4$
    and $x = 0.5$. Run your program for smaller and larger step size
    values and comment on your results.

4.  Modify **[](ch03:program3)** - with the `ode113` solver - to find
    solution and comment on your results. Try different tolerance
    values for *AbsTol* and *RelTol* and comment on your findings.
::::

::::::{solution} ex3-q4

1.  ::::{dropdown} Answer
    $h = 0.1$,  \
    $x = 0.4$, $y^p = 0.6896771$, $y^c = 0.6896803$, $y_{ex} = 0.6896800$ \
    $x = 0.5$, $y^p = 0.6434670$, $y^c = 0.6434699$, $y_{ex} = 0.6434693$
    $y_{ex} = 0.6434693$

    {download}`excel solution </exSol/Ex3/Ex3_4_1.xlsx>`
    ::::

2.  ::::{dropdown} Answer
    $x = 0.4$, $y^c = 0.6896803$, $y_{ex} = 0.6896800$,
    $|y_{ex} - y| = 0.00000031$

    $x = 0.5$, $y^c = 0.6434699$, $y_{ex} = 0.6434693$,
    $|y_{ex} - y| = 0.00000056$

    Matlab code

    ```matlab
    %Exercise 3.4 Question 2
    %Scriptfile to solve a single 1st order Ordinary Differential Equation,
    %using the exact solution to calculate the starting values and the 4th order
    %Adams-Bashforth-Moulton method for the remaining integration time span.
    %The result table is also written to a file called ‘c2ex2p1.res'.
    %
    fout=fopen('c2ex2p1.res','w');
    h=0.1; %steplength h
    nsteps=11; %number of steps
    nsteps=6;
    t(1)=0.0;  %set starting value of the independent variable t
    y(1)=yexact(t(1));  %set initial value of the dependent variable y
    F(1)=feval('f',t(1),y(1)); %calculate the value of y'=F, at t(1), y(1).
    yp(1)=0.0; %set first predictor value=0 (for formatting table of output)

    for i=2:4
        %calculate the first 3 starting values using the exact solution
        t(i)=t(i-1)+h; %calculate the next step in t
        %y(i)=exp(-t(i))+t(i); %exact solution used for calculating starting values
        y(i)=yexact(t(i));
        F(i)=feval('f',t(i),y(i));
        yp(i)=0.0;
    end

    for i=5:nsteps %calculate the remaining y values using ABM 4th order method
        t(i)=t(i-1)+h;
        yp(i)=y(i-1)+(h/24)*(55*F(i-1)-59*F(i-2)+37*F(i-3)-9*F(i-4));
        F(i)=feval('f',t(i),yp(i));
        y(i)=y(i-1)+(h/24)*(9*F(i)+19*F(i-1)-5*F(i-2)+F(i-3));
        F(i)=feval('f',t(i),y(i));
    end

    disp(' t        yp          y         f       y_ex       AbsError');
    fprintf(fout,' t        yp          y         f       y_ex       AbsError\n');
    fprintf(fout,' ---------------------------------------------------------\n');
    for i=1:nsteps
        yex(i)=yexact(t(i));
        abserror(i)=abs(yex(i)-y(i));
        fprintf('%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f\n', t(i),yp(i),y(i),F(i),yex(i),abserror(i));
        fprintf(fout,'%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f\n',t(i),yp(i),y(i),F(i),yex(i),abserror(i));
    end
    fclose(fout);

    % --------------------------------------------------------------------------
    % Defining the ODE problem (or function) to be solved
    function f=f(t,y)
    f=t^2-y;
    end
    % --------------------------------------------------------------------------
    % The exact solution
    function yexact=yexact(x)
        yexact = 2-2*x+x^2-exp(-x);
    end
    % --------------------------------------------------------------------------

    ```
    ::::


3.  ::::{dropdown} Answer
    $x = 0.4$, $y = 0.6896806$, $y_{ex} = 0.6896800$,
    $|y_{ex} - y| = 0.00000064$

    $x = 0.5$, $y = 0.6434702$, $y_{ex} = 0.6434693$,
    $|y_{ex} - y| = 0.00000085$

    Matlab code

    ```matlab
    %Exercise 3.4 Question 3
    %Scriptfile to solve a single 1st order Ordinary Differential Equation,
    %using the standard 4th order RK method to calculate the starting values and
    %4th order ABM method for the solution of the remaining integration time span.
    %The result is written to a file called 'c2ex2p2.res'.
    function ch2_prog2
    fout=fopen('c2ex2p2.res','w');
    h=0.1; %steplength h
    nsteps=11; %number of steps
    nsteps=6;
    t(1)=0.0; %set starting value of the independent variable t
    y(1)=yexact(t(1)); %set initial value of the dependent variable y
    yp(1)=0.0; %set first predictor value =0 (in this program for formatting output)
    F(1)=feval('f',t(1),y(1)); %calculate the value of y'=F, at t(1), y(1).

    for i=2:4 % calculate the next 3 starting values using RK 4th order method
        k(1)=h*feval('f',t(i-1),y(i-1));
        k(2)=h*feval('f',t(i-1)+h*0.5,y(i-1)+k(1)*0.5);
        k(3)=h*feval('f',t(i-1)+h*0.5,y(i-1)+k(2)*0.5);
        k(4)=h*feval('f',t(i-1)+h,y(i-1)+k(3));
        y(i)=y(i-1)+(1/6)*(k(1)+2.0*(k(2)+k(3))+k(4));
        t(i)=t(i-1)+h;
        F(i)=feval('f',t(i),y(i));
        yp(i)=0.0;
    end

    for i=5:nsteps
        yp(i)=y(i-1)+(h/24)*(55*F(i-1)-59*F(i-2)+37*F(i-3)-9*F(i-4));
        t(i)=t(i-1)+h;
        F(i)=feval('f',t(i),yp(i));
        y(i)=y(i-1)+(h/24)*(9*F(i)+19*F(i-1)-5*F(i-2)+F(i-3));
        F(i)=feval('f',t(i),y(i));
    end

    disp(' t yp y F y_ex abs_err');
    fprintf(fout,' t yp y F y_ex abs_err\n');
    fprintf(fout,'------------------------------------------------------------\n');

    for i=1:nsteps
        yex(i)=yexact(t(i));
        abserror(i)=abs(yex(i)-y(i));
        fprintf('%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f\n', t(i),yp(i),y(i),F(i),yex(i),abserror(i));
        fprintf(fout,'%4.2f %10.7f %10.7f %10.7f %10.7f %11.8f\n',t(i),yp(i),y(i),F(i),yex(i),abserror(i));
    end


    % --------------------------------------------------------------------------
    fclose(fout);


    % --------------------------------------------------------------------------
    % Defining the ODE problem (or function) to be solved
    function f=f(t,y)
        f=t^2-y;

    % --------------------------------------------------------------------------
    % The exact solution
    function yexact=yexact(x)
        yexact = 2-2*x+x^2-exp(-x);

    % --------------------------------------------------------------------------

    ```
    ::::


4.  :::::{dropdown} Answer

    `````{tab-set}
    ````{tab-item} Case 1: RelTol=AbsTol=1.e-4
    $x = 0.4$, $y = 0.6896797$, $y_{ex} = 0.6896800$,
    $|y_{ex} - y| = 0.00000023$ \
    $x = 0.5$, $y = 0.6434691$, $y_{ex} = 0.6434693$,
    $|y_{ex} - y| = 0.00000021$

    Matlab code
    ```matlab
    %Exercise 3.4 Question 4
    %Scriptfile to solve a single 1st order ordinary differential equation, using
    %a non-stiff ODE solver, called ode113, from the Matlab ODE solver routines
    %based on Adam-Bashforth-Moulton methods.
    function ch2_prog3
    y0=1.0;  %set the initial value of the dependent variable y
    %tspan=[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1]; %set specific output point
    tspan=0:0.1:1;
    options = odeset('RelTol',1e-4,'AbsTol',1e-4); %set tolerances
    [t,y]=ode113(@f,tspan,y0,options); %call the ODE solver routine ode113


    disp('  t        y          f(t)      y_ex     Abs_error ');

    
    for i=1:length(t)  %in this case length(t)=11, from tspan
        yex(i)=yexact(t(i));  %calculating the exact solutions at each step
        abserror(i)=abs(yex(i)-y(i));  %calculating the absolute error
        fprintf('%5.2f %10.7f %10.7f %10.7f %11.8f\n', t(i),y(i),f(t(i),y(i)),yex(i),abserror(i));
    end

    plot(t,y(:,1),'LineWidth',2);
    title(['Solution of dy/dt = -y+t+1, y0 = ' num2str(y0),', using ode113']);
    xlabel('t');
    ylabel('solution y');
    %--------------------------------------------------------------------------
    %Defining the ODE to be solved
    function f=f(t,y)
    f=t.^2-y;

    % The exact solution
    function yexact=yexact(x)
        yexact = 2-2*x+x^2-exp(-x);        
    ```        
    ````

    ````{tab-item} Case 2: RelTol=AbsTol=1.e-6
    $x = 0.4$, $y = 0.6896799$, $y_{ex} = 0.6896800$,
    $|y_{ex} - y| = 0.00000001$\
    $x = 0.5$, $y = 0.6434693$, $y_{ex} = 0.6434693$,
    $|y_{ex} - y| = 0.00000001$

    Matlab code

    ```matlab
    %Exercise 3.4 Question 4
    %Scriptfile to solve a single 1st order ordinary differential equation, using
    %a non-stiff ODE solver, called ode113, from the Matlab ODE solver routines
    %based on Adam-Bashforth-Moulton methods.
    function ch2_prog3
    y0=1.0;  %set the initial value of the dependent variable y
    %tspan=[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1]; %set specific output point
    tspan=0:0.1:1;
    options = odeset('RelTol',1e-6,'AbsTol',1e-6); %set tolerances
    [t,y]=ode113(@f,tspan,y0,options); %call the ODE solver routine ode113


    disp('  t        y          f(t)      y_ex     Abs_error ');

    
    for i=1:length(t)  %in this case length(t)=11, from tspan
        yex(i)=yexact(t(i));  %calculating the exact solutions at each step
        abserror(i)=abs(yex(i)-y(i));  %calculating the absolute error
        fprintf('%5.2f %10.7f %10.7f %10.7f %11.8f\n', t(i),y(i),f(t(i),y(i)),yex(i),abserror(i));
    end

    plot(t,y(:,1),'LineWidth',2);
    title(['Solution of dy/dt = -y+t+1, y0 = ' num2str(y0),', using ode113']);
    xlabel('t');
    ylabel('solution y');
    %--------------------------------------------------------------------------
    %Defining the ODE to be solved
    function f=f(t,y)
    f=t.^2-y;

    % The exact solution
    function yexact=yexact(x)
        yexact = 2-2*x+x^2-exp(-x);        
    ```

    ````
    `````

    :::::
::::::
