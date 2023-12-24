%Ex5Q3a
%Adams Bashforth 3rd order

for h=-2:0.05:0
   p=[1, -1-23/12*h, 4*h/3 -5/12*h];
   %disp([h,abs(roots(p))'])
   fprintf('%7.4f %7.4f %7.4f %7.4f\n',h,abs(roots(p)))
end

theta=linspace(0,2*pi,1000);
w=exp(-i*theta);
z=(w.^3-w.^2)./(w.^2*23/12-w*4/3+5/12);
plot(z)
axis square
grid on
xlabel('Re')
ylabel('Im')
title('Region of Absolute Stability for AB 3rd order')