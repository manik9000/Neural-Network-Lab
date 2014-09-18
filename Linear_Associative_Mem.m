% Linear Associator
clc
s1=[0.5 0.5 0.5 0.5]
s2= [0.5 -(5/6) (1/6) (1/6)]
s3=[0.5 (1/6) (1/6) -(5/6)]

f1=[0 1 0];
f2=[1 0 1];
f3=[1 0 0];
% Chek for orthonormal

t1= s1*s1';
t2= s1*s2';
t3= s1*s3';
if (t1==1 && t2<=0.0005 && t3<=0.0005)
    x1=1;
    disp('s1 is orthonormal')
else
    x1=0;
    disp('s1 is not orthonormal')
end
t4= s2*s2';
t5= s2*s1';
t6= s2*s3';
if (t4==1 && t5<=0.0005 && t6<=0.0005)
    x2=1;
    disp('s2 is orthonormal')
else
    x2=0;
    disp('s2 is not orthonormal')
end

t7= s3*s3';
t8= s3*s2';
t9= s3*s1';
if (t7==1 && t8<=00.0005 && t9<=0.0005)
    x3=1;
    disp('s3 is orthonormal')
else
    x3=0;
    disp('s3 is not orthonormal')
end

% find wight 
disp('Weight matrix....')
if (x1==1 && x2==1 && x3==1)
    w = f1'*s1+f2'*s2+f3'*s3
else
    disp('can not be calculated because one of input pattern is not orthonormal')
end

% retriving stored data
z=input('test vector');
 a=w*z';
 a'
