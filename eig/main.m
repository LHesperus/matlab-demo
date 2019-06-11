clc
clear 

a=[1 2;3 4];
[u,v]=eig(a);
%% eig test
test1_1=u*v*inv(u);
test1_2=u*v*u';
test1_3=sqrt(sum(u(:,1).^2));
test1_4=u'*u;
test1_5=u(:,1)'*u(:,2);


%% svd test
[u,s,v]=svd(a);
test2_1=u*s*v';
test2_2=v*v';
test2_3=u*u';