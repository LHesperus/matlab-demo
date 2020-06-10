%% 
%参考：数字信号处理C语言程序集
clc
clear all
close all
%%
j=sqrt(-1);
len=1000;
s=rand(1,len);
s_h=hilbert(s);
S=fft(s);
S(1)=0;
S(len/2+1)=0;
S(2:len/2)=S(2:len/2)*(-j);
S(len/2+2:end)=S(len/2+2:end)*j;

s_h2=ifft(S);
s_h2=s+s_h2*j;
err=mean(abs(s_h-s_h2));
disp(err)