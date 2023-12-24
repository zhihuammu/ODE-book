%Ex5 Q2
%pi(a, h*)=a^2-1/2*h*a-(1+3/2*h)
%rho(a)=1-a^2, sigma(a)=a/2+3/2

theta=linspace(0,2*pi);
w=exp(1i*theta);
z=(w.^2-1)./(w/2+3/2);
plot(z)
axis square
grid on