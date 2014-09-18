clc;
clear all;
close all;
c=0.6;
w=[1 -1 0 0.5];
x=[1 -2 1.5 0; 1 -2 1.5 0; 1 -0.5 -2 -1.5; 0 1 -1 1.5];
for i=1:1:4
    net=w*x(i,:)'
    op=sign(net)
    dw=c*op*x(i,:)
    w2=w+dw
    w=w2
end
