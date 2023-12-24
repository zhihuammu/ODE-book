%Ex5Q3d
%Adams Molton 4th order

for h=-10:1:0
   p=[1-9/24*h, -1-19/24*h, 5/24*h, -1/24*h];
   %disp([h,abs(roots(p))'])
   fprintf('%7.2f %7.4f %7.4f %7.4f\n',h,abs(roots(p)))
end


theta=linspace(0,2*pi,1000);
w=exp(-i*theta);
z=(w.^3-w.^2)./(w.^3*9/24+w.^2*19/24-w*5/24+1/24);

figure(2)
plot(z)

xlabel('Re')
ylabel('Im')
title('Region of Absolute Stability for AM 4th order')
axis square

grid on