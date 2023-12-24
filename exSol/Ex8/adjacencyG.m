function A=adjacencyG(np,ne,x,y,ep)

A=eye(np);
%disp(x)
%disp(y)
%disp(ep)
%--1-->>the connectivity matrix
disp(ne)
for i=1:ne
    pa=ep(i,1);
    pb=ep(i,2);
    A(pa,pb)=1;
    A(pb,pa)=1;
    %disp([i, pa, pb])
end

xleft=min(x);
xright=max(x);
ybottom=min(y);
ytop=max(y);

Lx=xright-xleft;
Ly=ytop-ybottom;
Ly=max(Ly,1);

%--2-->>plot the adjacencey graph
subplot(1,2,1)
for i=1:1
   pa=ep(i,1);
   pb=ep(i,2);
   xa=x(pa);
   xb=x(pb);
   ya=y(pa);
   yb=y(pb);
   tx=[xa xb];
   ty=[ya yb];
   plot(tx,ty,'r-o')
end
hold on
for i=2:ne
   pa=ep(i,1);
   pb=ep(i,2);
   xa=x(pa);
   xb=x(pb);
   ya=y(pa);
   yb=y(pb);
   tx=[xa xb];
   ty=[ya yb];
   plot(tx,ty,'r-o')
end


%label node
theta=0:0.1:2*pi;
r=0.15;
cirX=r*cos(theta);
cirY=r*sin(theta);

for i=1:np
    patch(cirX+x(i),cirY+y(i),'white')
    text(x(i),y(i),num2str(i),'FontSize',16,'Color','black','HorizontalAlignment','center')
end

axis([xleft-Lx/8 xright+Lx/8 ybottom-Ly/8 ytop+Ly/8]);
axis square
pbaspect([Lx Ly 1])
hold off
title('Adjacency graph')

%--3-->>plot the sparsity of the matrix
subplot(1,2,2)
spy(A)
title('Sparsity of A')
end