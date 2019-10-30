clc
clear all
close all
%%
len=100;
delay=4;
x=rand(1,len);
y=[zeros(1,delay),x(1:end-delay)];
Rxy=xcorr(x,y);
[~,max_p]=max(Rxy);

Rxy2=xcorr_lcg(x,y);
figure
subplot(211)
plot(Rxy);title('xcorr')
disp(['delay:',num2str(max_p-len)])
subplot(212)
plot(Rxy2);title('xcorr\_lcg')
disp(['delay:',num2str(max_p-len)])
err=sum(abs(Rxy2-Rxy).^2);
disp(['err:',num2str(err)]);

