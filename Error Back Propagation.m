
clc;

z1=[1 1 1 -1 1 -1 -1 -1 1 -1 -1 -1 1 1 1 -1];
z2=[1 -1 -1 1 1 1 -1 1 1 -1 1 1 1 -1 -1 1];
z3=[1 1 1 1 -1 -1 1 -1 -1 1 -1 -1 1 1 1 1];



d1=[1 0 0];
d2=[0 1 0];
d3=[0 0 1];

pat1= vec2mat(z1,4);
pat2= vec2mat(z2,4);
pat3= vec2mat(z3,4);

subplot(1,3,1); 
    imshow(pat1)
subplot(1,3,2); 
    imshow(pat2)
subplot(1,3,3); 
    imshow(pat3)
    % agumented
z1=[z1 -1];
z2=[z2 -1];
z3=[z3 -1];    
    
k=[2 1 3]; % sequence of patterns to be trained    
   
W=[1 0.5 -0.8 0.3 0.5 -1 -2 -0.9 1.5;1 0.5 -0.8 0.3 0.5 -1 -2 -0.9 1.5;1 0.5 -0.8 0.3 0.5 -1 -2 -0.9 1.5];
v=randn(9,17);
Emax=0.01;
eta=1;


z=[z1;z2;z3];
d =[d1;d2;d3];
%
%


E=0;
 for m=1:500
for p=1:3
for j=1:9
    f=v(j,:)*z(p,:)';
    y(j)= hardlim(f);   % 
end

for k=1:3
    o(k)= hardlim(W(k,:)*y');
    E = 0.5*(d(p,k)-o(k))^2+E;
    del_ok(k)=0.5*(d(p,k)-o(k))*(1-o(k)^2);
end

for j=1:9
    for k=1:3
    sum= del_ok(k)*W(k,j);
    end
        del_yj(j)=0.5*(1-y(j)^2)* sum;

end
for k=1:3
    for j=1:9
        W(k,j)= W(k,j)+eta*del_ok(k)*y(j);
    end
end

for j=1:9
    for i=1:17
        v(j,i)= v(j,i)+eta*del_yj(j)*z(p,i);
    end;
end;
end;
end;



y1= sign(v*z(3,:)');
o1= sign(W*y1);
