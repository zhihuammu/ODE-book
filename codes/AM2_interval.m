%6G6Z3002 - Computational methods in ODEs 
%Interval of Absolute Stability (script 1)
%Matlab script for producing a table for interval of absolute stability
%using Root Locus Method of a given LMS method- here AM2-step
%Note: the result is printed in columns, and not in rows as given in the
%lecture notes
out=[];
for h=1:-1:-7
	p=[(1-5*h/12) -(1+8*h/12) (h/12)];
	r=abs(roots(p));
	out=[h;r(1);r(2)];
	fprintf('%6.1f %6.2f %6.2f\n',out) 
end