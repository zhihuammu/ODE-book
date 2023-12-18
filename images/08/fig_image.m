clear

function ntikzspy (M, title, fname)

    file = fopen (fname, "w");

    fprintf (file, "\\begin{tikzpicture}\n");
    fprintf (file, "    \\begin{axis}\n");
    fprintf (file, "        [   unit vector ratio* = 1 1 1\n");
    fprintf (file, "        ,   y dir = reverse\n");
    fprintf (file, "        ,   xmin = 0\n");
    fprintf (file, "        ,   ymin = 0\n");
    fprintf (file, "        ,   xmax = 9\n");
    fprintf (file, "        ,   ymax = 9\n");
    fprintf (file, "        ,   xlabel = {nnz=%i}\n", nnz(M));
    fprintf (file, "        ,   xtick = {1,2,3,4,5,6,7,8}\n");
    fprintf (file, "        ,   ytick = {1,2,3,4,5,6,7,8}\n");
    fprintf (file, "        ,   title = {%s}\n", title);
    fprintf (file, "        ]\n");

    fprintf (file, "        \\addplot[only marks] coordinates {\n");
    [r,c] = find (M);
    for i = 1:length (r)
        fprintf (file, "(%i,%i)", c(i), r(i));
    end
    fprintf (file, "\n        };\n");

    fprintf (file, "    \\end{axis}\n");
    fprintf (file, "\\end{tikzpicture}");

    fclose (file);

end

A =[1,1,0,0,0,0,1,1;
    1,1,0,0,1,1,1,0;
    0,0,1,1,0,0,1,1;
    0,0,1,1,0,0,0,0;
    0,1,0,0,1,0,1,0;
    0,1,0,0,0,1,0,0;
    1,1,1,0,1,0,1,0;
    1,0,1,0,0,0,0,1];

ntikzspy (A, "Original A", "image_orig1.tikz")
ntikzspy (lu (A), "spy(lu(A)), LU original A", "image_orig2.tikz")
[L,U] = lu (A);
ntikzspy (U, "[L,U]=lu(A); spy(U)", "image_orig3.tikz")

q = symrcm (A);
C = A(q,q);

ntikzspy (C, "p=sysrcm(A); C=A(p,p); spy(C)", "image_rcm1.tikz")
ntikzspy (lu (C), "spy(lu(C)), LU of RCM", "image_rcm2.tikz")
[L,U] = lu (C);
ntikzspy (U, "[L,U]=lu(C); spy(U), RCM", "image_rcm3.tikz")

q = colperm (A);
D = A(q,q);

ntikzspy (D, "q=colperm(A); D=A(q,q); spy(D)", "image_col1.tikz")
ntikzspy (lu (D), "spy(lu(D)), LU Column Count", "image_col2.tikz")
[L,U] = lu (D);
ntikzspy (U, "[L,U]=lu(D); spy(U), Col Count", "image_col3.tikz")
