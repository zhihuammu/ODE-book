clear
clc

x = linspace (0, 2, 64);

y = 4*exp (-40*x) + x;

file = fopen ("example2.csv", "w");
fprintf (file, "%f,%f", x(1), y(1));
for i = 2:length (x)
    fprintf (file, "\n%f,%f", x(i), y(i));
end
fclose (file);
