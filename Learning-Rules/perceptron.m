clc
clear all
close all
c=0.1; 
w=[1 -1 0 0.5];
x=[1 -2 0 -1;0 1.5 -0.5 -1;-1 1 0.5 -1];
d=[-1;-1;1];
for i=1:1:3
    net=w*x(i,:)'
    op=sign(net)
    if((d(i)-op)==0)
        net=w*x(i+1,:)'
        op=sign(net)
        dw=c*(d(i)-op)*x(i,:)';
        w2=w+dw'
        w=w2
    else
         dw=c*(d(i)-op)*x(i,:)';
         w2=w+dw'
         w=w2
    end 
end
