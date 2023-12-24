clc
clear

np=0;   %number of points
ne=0;   %number of edge

%--1-->>input data from a file
fileName=input("Give the connect file name:",'s');
fprintf('%s\n',fileName)

fileID=fopen(fileName,'r');

linetxt=fgetl(fileID);
A=sscanf(linetxt,'%d %d');

np=A(1);
ne=A(2);

%read points
for i=1:np
    linetxt=fgetl(fileID);
    A=sscanf(linetxt,'%f %f');
    x(i)=A(1);
    y(i)=A(2);
end

%read edges
for i=1:ne
    linetxt=fgetl(fileID);
    A=sscanf(linetxt,'%i %i');
    %disp(A);
    ep(i,1)=A(1);
    ep(i,2)=A(2);
end

fclose(fileID);

fprintf('np=%i \t ne=%i \n',np,ne);

matrix=adjacencyG(np,ne,x,y,ep);

