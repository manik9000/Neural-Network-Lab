clc
clear all
close all
w=input('input wt vector')
t1=sqrt(w(1,1)^2+w(1,2)^2);
t2=sqrt(w(2,1)^2+w(2,2)^2);
w=[w(1,:)/t1; w(2,:)/t2]
c=0.5;
x=[0.8 0.6; 0.707 -0.707; 0.707 0.707; 0.6 0.8; 6 7];
for i=1:1:5
if(sqrt(x(i,1)^2+x(i,2)^2)==1)
    net1=w(1,:)*x(i,:)';
    net2=w(2,:)*x(i,:)';
    if(net1>net2)
        disp('w1 is winner')
        dw=c*(x(i,:)-w(1,:));
        w1=w(1,:)+dw;
        w(1,:)=w1;
        y=sqrt(w(1,1)^2+w(1,2)^2);
        w=[w(1,:)/y; w(2,:)]
    else
        disp('w2 is winner')
         dw=c*(x(i,:)-w(2,:));
         w2=w(2,:)+dw;
         w(2,:)=w2;
         y=sqrt(w(2,i)^2+w(2,i+1)^2);
        w=[w(1,:); w(2,:)/y];
         w=[w(1,:);w(2,:)]
    end
else
     y=sqrt(x(i,1)^2+x(i,2)^2);
     y1=[x(i,1)/y x(i,2)/y];
     net1=w(1,:)*y1';
     net2=w(2,:)*y1';
    if(net1>net2)
        disp('w1 is winner')
        dw=c*(y1-w(1,:));
        w1=w(1,:)+dw;
        w(1,:)=w1;
        w=[w(1,:);w(2,:)]
    else
        disp('w2 is winner')
         dw=c*(y1-w(2,:));
         w2=w(2,:)+dw;
         w(2,:)=w2;
         w=[w(1,:);w(2,:)]
    end
end
end
    
    
