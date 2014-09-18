% Auto associator

clc
s1=[1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1];

s2=[-1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1];

s3=[1 1 1 1 -1 1 1 -1 -1 1 1 -1 1 1 1 1 -1 1 1 -1 -1 1 1 -1 1 1 1 1 -1 1 1 -1 -1 1 1 -1];
s4=-s3;
I= eye(36);

% find weight matrix
disp('weight matrix is ...')
w = s1'*s1+s2'*s2+s3'*s3+s4'*s4-4*I
k=1:36;
%k = input('Enter the sequence of update ');
%t = input('Enter the test vector ');
t=[-1 1 1 -1 -1 1 1 -1 -1 1 -1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 -1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 -1 -1];
a=vec2mat(s1,6);
subplot(3,2,1)
imshow(a)

b=vec2mat(s2,6);
subplot(3,2,2)
imshow(b)

d=vec2mat(s3,6);
subplot(3,2,3)
imshow(d)


e=vec2mat(s4,6);
subplot(3,2,4)
imshow(e)

f=vec2mat(t,6);
subplot(3,2,5)
imshow(f)



% finding the output
%e= -0.5*t*w*t';
%e_old=e;

for i=1:36 
 %   e_old=e;
    o = w*t';
    t(k(i))= hardlims(o(k(i)));
  %  e= -0.5*t*w*t';
    
end
   
t
   
c=vec2mat(t,6);
subplot(3,2,6)
imshow(c)
