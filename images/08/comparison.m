function comparison

%S = sparse (+(rand (20,20) < 1/10));
%B = full (S);
%A = B'*B;

A = [
1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
0,1,0,0,0,0,0,0,1,0,0,1,0,1,0,0,1,0,0,0;
0,0,1,1,0,0,0,0,1,1,0,0,1,1,0,1,0,1,0,0;
0,0,1,1,0,0,0,0,0,0,0,1,1,1,0,0,1,0,0,0;
0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1;
0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,1;
0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,1,0,0;
0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0;
0,1,1,0,0,0,0,0,1,1,0,1,0,1,0,0,1,1,0,0;
0,0,1,0,0,1,0,0,1,1,0,0,0,0,1,1,0,1,0,1;
0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0;
0,1,0,1,0,0,0,0,1,0,0,1,1,1,0,0,1,1,0,0;
0,0,1,1,0,0,1,0,0,0,0,1,1,1,0,0,1,1,0,0;
0,1,1,1,0,0,0,0,1,0,0,1,1,1,0,0,1,0,0,0;
0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,1,0,0,0,0;
0,0,1,0,0,0,0,0,0,1,0,0,0,0,1,1,0,0,0,0;
0,1,0,1,0,0,0,0,1,0,0,1,1,1,0,0,1,0,0,0;
0,0,1,0,0,0,1,0,1,1,0,1,1,0,0,0,0,1,0,0;
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1;
0,0,0,0,1,1,0,0,0,1,0,0,0,0,0,0,0,0,1,1];

ntikzspy (A, "Original", "fig6a1.tikz")
[A_L,A_U] = lu (A);
ntikzspy (A_U, "Original U", "fig6a2.tikz")

q = symrcm (A);
B = A(q,q);

ntikzspy (B, "RCM", "fig6a3.tikz")
[B_L,B_U] = lu (B);
ntikzspy (B_U, "RCM U", "fig6a4.tikz")

q = colperm (A);
C = A(q,q);

ntikzspy (C, "Column Count", "fig6a5.tikz")
[C_L,C_U] = lu (C);
ntikzspy (C_U, "Column Count U", "fig6a6.tikz")

q = symamd (A);
D = A(q,q);

ntikzspy (D, "Degree Ordering", "fig6a7.tikz")
[D_L,D_U] = lu (D);
ntikzspy (D_U, "Degree Ordering U", "fig6a8.tikz")

end

function ntikzspy (M, title, fname)

    file = fopen (fname, "w");

    fprintf (file, "\\begin{tikzpicture}\n");
    fprintf (file, "    \\begin{axis}\n");
    fprintf (file, "        [   unit vector ratio* = 1 1 1\n");
    fprintf (file, "        ,   y dir = reverse\n");
    fprintf (file, "        ,   xmin = 0\n");
    fprintf (file, "        ,   ymin = 0\n");
    fprintf (file, "        ,   xmax = 21\n");
    fprintf (file, "        ,   ymax = 21\n");
    fprintf (file, "        ,   xlabel = {nnz=%i}\n", nnz(M));
    fprintf (file, "        ,   xtick = {2,4,6,8,10,12,14,16,18,20}\n");
    fprintf (file, "        ,   ytick = {2,4,6,8,10,12,14,16,18,20}\n");
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
