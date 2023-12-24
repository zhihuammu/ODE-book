%Ex5Q3c
%Adams Molton 3rd order

for h=-10:1:0
   p=[1-5/12*h, -1-8/12*h, 1/12*h];
   %disp([h,abs(roots(p))'])
   fprintf('%7.2f %7.4f %7.4f\n',h,abs(roots(p)))
end

theta=linspace(0,2*pi,1000);
w=exp(-i*theta);
z=(w.^2-w)./(w.^2*5/12+w*8/12-1/12);

figure(1)
plot(z)
xlabel('Re')
ylabel('Im')
title('Region of Absolute Stability for AM 3rd order')
axis square
grid on