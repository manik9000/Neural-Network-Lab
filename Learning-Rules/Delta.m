clc
clear all
close all
c=0.1;
y=1;
w=[1 -1 0 0.5];
x=[1 -2 0 -1;0 1.5 -0.5 -1;-1 1 0.5 -1];
d=[-1;-1;1];
for i=1:1:3
    net=w*x(i,:)'
    op=(2/(1+expm(-net*y))-1);
    op1=0.5*(1-op*op);
    dw=c*(d(i)-op)*op1*x(i,:);
    w1=dw+w;
    w=w1
end
