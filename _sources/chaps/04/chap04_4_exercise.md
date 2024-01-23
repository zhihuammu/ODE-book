(chap:errorConstant:exercise)=
# Chapter 5 Exercises

You should try the following exercise questions first, then check with the answers. 

:::{exercise}
:label: chap04-ex-4.1
Use a Gregory-Newton interpolation formula to derive the error term
for the following integration formulae:

1.  $\displaystyle y_{{j}} ~=~ y_{j-1} + \tfrac{h}{12}(5f_{{j}} + 8f_{j-1} - f_{{j-2}})$
    Hint: G-N backward $0$ to $-1$

2.  $\displaystyle y_{j+1} ~=~ y_j + \tfrac{h}{2}(f_{j+1} + f_j)$
:::

:::{solution} chap04-ex-4.1
:class: dropdown
1. $\frac{-1}{24}h^4f'''(z)$,
1. $\frac{-1}{12}h^3f''(z)$

- {download}`handwritten solution for Exercise 4.1 </exSol/Ex4/Ex4_1_annotated.pdf>`

- Video explanation of Q1
    <div>
    <iframe id="kaltura_player" src="https://cdnapisec.kaltura.com/p/1128062/sp/112806200/embedIframeJs/uiconf_id/27474902/partner_id/1128062?iframeembed=true&playerId=kaltura_player&entry_id=1_t03zd840&flashvars[akamaiHD.loadingPolicy]=preInitialize&amp;flashvars[akamaiHD.asyncInit]=true&amp;flashvars[streamerType]=hdnetwork&amp;flashvars[localizationCode]=en&amp;flashvars[sideBarContainer.plugin]=true&amp;flashvars[sideBarContainer.position]=left&amp;flashvars[sideBarContainer.clickToClose]=true&amp;flashvars[chapters.plugin]=true&amp;flashvars[chapters.layout]=vertical&amp;flashvars[chapters.thumbnailRotator]=false&amp;flashvars[streamSelector.plugin]=true&amp;flashvars[EmbedPlayer.SpinnerTarget]=videoHolder&amp;flashvars[dualScreen.plugin]=true&amp;flashvars[hotspots.plugin]=1&amp;flashvars[Kaltura.addCrossoriginToIframe]=true&amp;&wid=1_bnqh8yy1" width="575" height="360" allowfullscreen webkitallowfullscreen mozAllowFullScreen allow="autoplay *; fullscreen *; encrypted-media *" sandbox="allow-downloads allow-forms allow-same-origin allow-scripts allow-top-navigation allow-pointer-lock allow-popups allow-modals allow-orientation-lock allow-popups-to-escape-sandbox allow-presentation allow-top-navigation-by-user-activation" frameborder="0" title="ODE_Ex3_Q1a.mkv"></iframe>
    </div>

- video explanation of Q2
   <div>
    <iframe id="kaltura_player" src="https://cdnapisec.kaltura.com/p/1128062/sp/112806200/embedIframeJs/uiconf_id/27474902/partner_id/1128062?iframeembed=true&playerId=kaltura_player&entry_id=1_227zut3y&flashvars[akamaiHD.loadingPolicy]=preInitialize&amp;flashvars[akamaiHD.asyncInit]=true&amp;flashvars[streamerType]=hdnetwork&amp;flashvars[localizationCode]=en&amp;flashvars[sideBarContainer.plugin]=true&amp;flashvars[sideBarContainer.position]=left&amp;flashvars[sideBarContainer.clickToClose]=true&amp;flashvars[chapters.plugin]=true&amp;flashvars[chapters.layout]=vertical&amp;flashvars[chapters.thumbnailRotator]=false&amp;flashvars[streamSelector.plugin]=true&amp;flashvars[EmbedPlayer.SpinnerTarget]=videoHolder&amp;flashvars[dualScreen.plugin]=true&amp;flashvars[hotspots.plugin]=1&amp;flashvars[Kaltura.addCrossoriginToIframe]=true&amp;&wid=1_zt14gln4" width="575" height="360" allowfullscreen webkitallowfullscreen mozAllowFullScreen allow="autoplay *; fullscreen *; encrypted-media *" sandbox="allow-downloads allow-forms allow-same-origin allow-scripts allow-top-navigation allow-pointer-lock allow-popups allow-modals allow-orientation-lock allow-popups-to-escape-sandbox allow-presentation allow-top-navigation-by-user-activation" frameborder="0" title="odeEx3_Q1b"></iframe>
   </div>
:::

:::{exercise}
:label: chap04-ex-4.2
Use the method described in the text (see {prf:ref}`chap04-example-3`) to find the
order and the error constants of the following formulae:

1.  $\displaystyle y_{j+1} ~=~ y_j
            + \tfrac{h}{12}(5f_{j+1} + 8f_j - f_{j-1})$

2.  $\displaystyle y_{j+1} ~=~ y_{j-1}
            + \tfrac{h}{3}(f_{j+1} + 4f_j + f_{j-1})$

3.  $\displaystyle y_{j+1} ~=~ y_j + \tfrac{h}{24}(55f_j - 59f_{j-1}
            + 37f_{j-2} - 9f_{j-3})$

4.  $\displaystyle y_{j+1} ~=~ y_j + \tfrac{h}{720}(1901f_j - 2774f_{j-1}
            + 2616f_{j-2} - 1274f_{j-3} + 251f_{j-4})$
:::

:::{solution} chap04-ex-4.2
:class: dropdown
1. $\frac{-1}{24}h^4f'''(z)$,
1. $\frac{-1}{90}h^5f^{iv}(z)$，
1. $\frac{251}{720}h^5f^{iv}(z)$,
1. $\frac{95}{288}h^6f^v(z)$

Video explanantion of 1 & 2
<div align="center">
<iframe id="kaltura_player" src="https://cdnapisec.kaltura.com/p/1128062/sp/112806200/embedIframeJs/uiconf_id/27474902/partner_id/1128062?iframeembed=true&playerId=kaltura_player&entry_id=1_mrrhokm2&flashvars[akamaiHD.loadingPolicy]=preInitialize&amp;flashvars[akamaiHD.asyncInit]=true&amp;flashvars[streamerType]=hdnetwork&amp;flashvars[localizationCode]=en&amp;flashvars[sideBarContainer.plugin]=true&amp;flashvars[sideBarContainer.position]=left&amp;flashvars[sideBarContainer.clickToClose]=true&amp;flashvars[chapters.plugin]=true&amp;flashvars[chapters.layout]=vertical&amp;flashvars[chapters.thumbnailRotator]=false&amp;flashvars[streamSelector.plugin]=true&amp;flashvars[EmbedPlayer.SpinnerTarget]=videoHolder&amp;flashvars[dualScreen.plugin]=true&amp;flashvars[hotspots.plugin]=1&amp;flashvars[Kaltura.addCrossoriginToIframe]=true&amp;&wid=1_sy5vqlkn" width="575" height="360" allowfullscreen webkitallowfullscreen mozAllowFullScreen allow="autoplay *; fullscreen *; encrypted-media *" sandbox="allow-downloads allow-forms allow-same-origin allow-scripts allow-top-navigation allow-pointer-lock allow-popups allow-modals allow-orientation-lock allow-popups-to-escape-sandbox allow-presentation allow-top-navigation-by-user-activation" frameborder="0" title="odeEx2Q2_a_b"></iframe>
</div>
:::

:::{exercise}
:label: chap04-ex-4.3

Derive a Milne's Device local error estimate for the Milne-Simpson
Predictor-Corrector method: 

$$\begin{aligned}
        y^{(p)}_{j+1} ~&=~ y_{j-3} + \tfrac{h}{3}(8f_j - 4f_{j-1} + 8f_{j-2})
        + \tfrac{28}{90}h^5y^v(z_1)
        \\
        y^{(c)}_{j+1} ~&=~ y_{j-1} + \tfrac{h}{3}(f_{j+1} + 4f_j + f_{j-1})
        - \tfrac{1}{90}h^5y^v(z_2)   
\end{aligned}$$
:::

:::{solution} chap04-ex-4.3
:class: dropdown

$$
\begin{aligned}
 \epsilon
& = \frac{C_n^{(c)}}{C_n^{(p)}-C_n^{(c)}} \left( y_{j+1}^{(c)} - y_{j+1}^{(p)} \right)  \\
& = \frac{- \tfrac{1}{90}}{\tfrac{28}{90}-\left(- \tfrac{1}{90}\right)} \left( y_{j+1}^{(c)} - y_{j+1}^{(p)} \right) \\
& = \frac{-1}{29} \left( y_{j+1}^{(c)} - y_{j+1}^{(p)} \right)
\end{aligned}
$$

:::

:::{exercise}
:label: chap04-ex-4.4

Modify [](ch03:program2) for Adams--Bashforth method (Chapter 2)
to implement Milne-Simpson Predictor-Corrector method given in {ref}`chap04-ex-4.3`. Use your
program to find solution for the initial--value--problem

$$\begin{aligned}
        && y' ~&=~ -y + x + 1
            & y(0) &= 1,
            & &0 \leq x \leq 1 &&   
\end{aligned}$$ 

with $h \!=\! 0.1$. Use the Milne's Device error
formula, derived in question 3 above to find an error estimate at
$\,x \!=\! 1.0\,$. Compare the error with the actual error and that
of the Adams--Bashforth--Moulton method calculated in the lecture
notes, {prf:ref}`chap04-example-5`, and comment.
:::    

:::{solution} chap04-ex-4.4
:class: dropdown
At $x = 1.0$:

The error in ABM method using Milne's Device error formula is
$\approx 1.2\times10^{-7}$, the actual error is
$\approx 1.2\times10^{-6}$;

The error in MS method using Milne's Device error formula is
$\approx 5.5\times10^{-8}$, the actual error is
$\approx 3.0\times10^{-7}$;

Video explanation
<div>
<iframe id="kaltura_player" src="https://cdnapisec.kaltura.com/p/1128062/sp/112806200/embedIframeJs/uiconf_id/27474902/partner_id/1128062?iframeembed=true&playerId=kaltura_player&entry_id=1_xjg10vmf&flashvars[akamaiHD.loadingPolicy]=preInitialize&amp;flashvars[akamaiHD.asyncInit]=true&amp;flashvars[streamerType]=hdnetwork&amp;flashvars[localizationCode]=en&amp;flashvars[sideBarContainer.plugin]=true&amp;flashvars[sideBarContainer.position]=left&amp;flashvars[sideBarContainer.clickToClose]=true&amp;flashvars[chapters.plugin]=true&amp;flashvars[chapters.layout]=vertical&amp;flashvars[chapters.thumbnailRotator]=false&amp;flashvars[streamSelector.plugin]=true&amp;flashvars[EmbedPlayer.SpinnerTarget]=videoHolder&amp;flashvars[dualScreen.plugin]=true&amp;flashvars[hotspots.plugin]=1&amp;flashvars[Kaltura.addCrossoriginToIframe]=true&amp;&wid=1_u6yq2gnk" width="575" height="360" allowfullscreen webkitallowfullscreen mozAllowFullScreen allow="autoplay *; fullscreen *; encrypted-media *" sandbox="allow-downloads allow-forms allow-same-origin allow-scripts allow-top-navigation allow-pointer-lock allow-popups allow-modals allow-orientation-lock allow-popups-to-escape-sandbox allow-presentation allow-top-navigation-by-user-activation" frameborder="0" title="odeEx2Q4"></iframe>
</div>
:::


