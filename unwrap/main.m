clc
clear all
close all
%% 
j=sqrt(-1);
len=1000;
x=randn(1,len)+randn(1,len)*j;
figure
subplot(211)
plot(real(x))
subplot(212)
plot(imag(x))

ang=angle(x);
unwrap_ang=unwrap(ang);
unwrap_ang2=unwrap_p(ang);
figure
plot(ang)
figure
subplot(211)
plot(unwrap_ang)
subplot(212)
plot(unwrap_ang2)
err=sum(unwrap_ang-unwrap_ang2);
disp(['��',num2str(err)]);
