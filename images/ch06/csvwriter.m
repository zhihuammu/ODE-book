function csvwriter (filename, data)

re = real (data);
im = imag (data);
n = length (data);

file = fopen (filename, "w");
fprintf (file, "%f,%f", re(1), im(1));
for i = 2:n
    fprintf (file, "\n%f,%f", re(i), im(i));
end
fclose (file);

end
