%Ex6 Q1, analytical solution
syms y1(t) y2(t)
cond='y1(0)==1,y2(0)==0';
eqns=[diff(y1,t)==-1000*y1 + y2, diff(y2,t)==1000*y1 - 2*y2];
S=dsolve(eqns,cond);
y1Sol(t)=S.y1
y2Sol(t)=S.y2