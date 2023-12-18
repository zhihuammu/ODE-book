%ODE chap6 example 2b, 
%using BDF-1: y_{n+1} = y_n + h*f_{n+1}
%clc
clear

Length=0.2;
N=101;
h=Length/(N-1);
x=0:h:Length;
%exact solution
ye=4*exp(-40*x)+x;

%numerical solution
y=x*0;
y(1)=4;

%forward Euler
for j=1:N-1
    y(j+1)=y(j)+h*f(x(j),y(j));
end
hold off;
plot(x,ye,'k-')

hold on;
%plot(x,y,'ro-')

%BDF1
yb=y;
for j=1:N-1
    yb(j+1)=1/(1+40*h)*(yb(j)+h*(40*x(j+1)+1));
end
plot(x,yb,'b')

%BDF2
yb2=y;
yb2(1)=ye(1);
yb2(2)=ye(2);

a=1+80*h/3;

for j=1:N-2
    tt=(4*yb2(j+1)-yb2(j))/3+(40*x(j+2)+1)*2*h/3;

    yb2(j+2)=tt/a;
end
plot(x,yb2,'g')

%BDF3
yb3=y*0;
yb3(1)=ye(1);
yb3(2)=ye(2);
yb3(3)=ye(3);

a=1+240*h/11;

for j=1:N-3
    tt=(2*yb3(j)-9*yb3(j+1)+18*yb3(j+2))/11+(40*x(j+3)+1)*6*h/11;

    yb3(j+3)=tt/a;
end
plot(x,yb3,'r')

%BDF4
yb4=y*0;
yb4(1)=ye(1);
yb4(2)=ye(2);
yb4(3)=ye(3);
yb4(4)=ye(4);

a=1+480*h/25;

for j=1:N-4
    t1=-(3*yb4(j)-16*yb4(j+1)+36*yb4(j+2)-48*yb4(j+3))/25;
    t2=(40*x(j+4)+1)*12*h/25;

    yb4(j+4)=(t1+t2)/a;
end
plot(x,yb4,'m')

%BDF5
yb5=y*0;
yb5(1)=ye(1);
yb5(2)=ye(2);
yb5(3)=ye(3);
yb5(4)=ye(4);
yb5(5)=ye(5);

a=1+2400*h/137;

for j=1:N-5
    t1=-(-12*yb5(j)+75*yb5(j+1)-200*yb5(j+2)+300*yb5(j+3)-300*yb5(j+4))/137;

    t2=(40*x(j+5)+1)*60*h/137;

    yb5(j+5)=(t1+t2)/a;
end
plot(x,yb5,"c")

%BDF6
yb6=y*0;
yb6(1)=ye(1);
yb6(2)=ye(2);
yb6(3)=ye(3);
yb6(4)=ye(4);
yb6(5)=ye(5);
yb6(6)=ye(6);

a=1+2400*h/147;

for j=1:N-6
    t1=-(10*yb6(j)-72*yb6(j+1)+225*yb6(j+2)-400*yb6(j+3)+450*yb6(j+4)-360*yb6(j+5))/147;

    t2=(40*x(j+6)+1)*60*h/147;

    yb6(j+6)=(t1+t2)/a;
end
plot(x,yb6,"r")

%legend('Exact','Euler','BDF1','BDF2','BDF3','BDF4')
legend('Exact','BDF1','BDF2','BDF3','BDF4','BDF5','BDF6')
%legend('Exact','BDF1','BDF2','BDF3')

hold off;


err1=norm(yb-ye);
err2=norm(yb2-ye);
err3=norm(yb3-ye);
err4=norm(yb4-ye);

fprintf('h=%f err1=%f err2=%f err3=%f err4=%f\n',h,err1,err2,err3,err4);



function f=f(x,y)
    f=-40*y+40*x+1;
end