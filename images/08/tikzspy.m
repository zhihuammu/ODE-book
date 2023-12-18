function tikzspy (M, t, path)

out = 0;

if exist ('path', 'var')
  out = fopen (path, "w");
else
  out = stdout;
end

[R,C] = size (M);

% start picture
fprintf (out, '\\begin{tikzpicture}[point/.style={circle,fill,inner sep=1pt}]\n')
% bounds
mid = (C+1)/2;
fprintf (out, '\\draw (0,0) rectangle (%i,%i);\n', C+1, R+1)
fprintf (out, '\\node[anchor=south] at (%.1f,%i) {\\textbf{%s}};\n', mid, R+1, t)
fprintf (out, '\\node[anchor=north] at (%.1f,-1) {nnz = %i};\n', mid, nnz (M))
% marks
for i = 1:R
  fprintf (out, '\\draw (0,%i) to ++(0.1,0);\n', i)
  fprintf (out, '\\draw (%i,%i) to ++(-0.1,0);\n', C+1, i)
  fprintf (out, '\\node[anchor=east] at (0,%i) {%i};\n', i, C+1-i)
end
for i = 1:C
  fprintf (out, '\\draw (%i,0) to ++(0,0.1);\n', i)
  fprintf (out, '\\draw (%i,%i) to ++(0,-0.1);\n', i, R+1)
  fprintf (out, '\\node[anchor=north] at (%i,0) {%i};\n', i, i)
end
% points
for i = 1:R
  for j = 1:C
    if M(i,j)
      %fprintf (out, '\\node[point] at (%i,%i) {};\n', C+1-j, i)
      fprintf (out, '\\node[point] at (%i,%i) {};\n', j, R+1-i)
    end
  end
end
% end picture
fprintf (out, '\\end{tikzpicture}\n')

if exist ('path', 'var')
  out = fclose (out);
end

end