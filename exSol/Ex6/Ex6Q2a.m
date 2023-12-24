%Ex5 Q2
%pi(a, h*)=a^2-1/2*h*a-(1+3/2*h)

h=[-2 -5/3 -4/3 -2/3 -1/3 0 1/3 1];

%roots
a1=1/4*h+1/2*sqrt(1/4*h.^2+6*h+4);

a2=1/4*h-1/2*sqrt(1/4*h.^2+6*h+4);

%format rat
disp('h')
disp([h])

%format
disp('abs(a1)')
disp([abs(a1)])

disp('abs(a2)')
disp([abs(a2)])

h2=-5/3;
p=[1 -h2/2 -(1+3*h2/2) ];
disp(abs(roots(p)))

h2=-4/3;
p=[1 -h2/2 -(1+3*h2/2) ];
disp(abs(roots(p)))

theta=linspace(0,2*pi);
