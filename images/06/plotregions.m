clear
clc

w = exp (1i*linspace (0, 2*pi, 128));

z = 2*(w.^2-w) ./ (3*w-1);
csvwriter ("example3.csv", z);

z = 12*(w.^3 - w.^2) ./ (23*w.^2 - 16*w + 5);
csvwriter ("ab3.csv", z);

z = 24*(w.^4 - w.^3) ./ (55*w.^3 - 59*w.^2 + 37*w - 9);
csvwriter ("ab4.csv", z);

z = 720*(w.^5 - w.^4) ./ (1901*w.^4 - 2774*w.^3 + 2616*w.^2 - 1274*w + 251);
csvwriter ("ab5.csv", z);

z = 12*(w.^2 - w) ./ (5*w.^2 + 8*w - 1);
csvwriter ("am2.csv", z);

z = 24*(w.^3 - w.^2) ./ (9*w.^3 + 19*w.^2 - 5*w + 1);
csvwriter ("am3.csv", z);

z = 720*(w.^4 - w.^3) ./ (251*w.^4 + 646*w.^3 - 264*w.^2 + 106*w - 19);
csvwriter ("am4.csv", z);
