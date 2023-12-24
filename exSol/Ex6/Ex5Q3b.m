%Ex5Q3b
%Adams Bashforth 4th order

for h=-2:0.05:0
   p=[1, -1-55/24*h, 59/24*h, -37/24*h, 9/24*h];
   %disp([h,abs(roots(p))'])
   fprintf('%7.4f %7.4f %7.4f %7.4f %7.4f\n',h,abs(roots(p)))
end

theta=linspace(0,2*pi,1000);
w=exp(-i*theta);
z=(w.^4-w.^3)./(w.^3*55/24-w.^2*59/24+w*37/24-9/24);
plot(z)
xlabel('Re')
ylabel('Im')
axis square
grid on
xlabel('Re')
ylabel('Im')
title('Region of Absolute Stability for AB 4th order')