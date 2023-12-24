%Ex5Q5
%Adams Molton 4th order
clc
clear
for h=-10:1:10
   p=[1-h/3, -4/3*h, -1-h/3];
   disp([h,abs(roots(p))'])
   %fprintf('%7.2f %7.4f %7.4f\n',h,abs(roots(p)))
end

theta=linspace(0,2*pi);
w=exp(-i*theta);
z=(w.^2-1)./(w.^2/3+w*4/3+1/3);
plot(z)
