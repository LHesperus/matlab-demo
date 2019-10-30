function Rxy=xcorr_lcg(x,y)
lenx=length(x);
leny=length(y);
N=max(lenx,leny);
if lenx>=leny
    y=[y,zeros(1,N-leny)];
else
    x=[x,zeros(1,N-lenx)];
end
Rxy=zeros(1,2*N-1);

for nn=0:N-1
    Rxy(nn+N)=x(nn+1:end)*y(1:end-nn)';
end
for nn=-(N-1):-1
   Rxy(nn+N)=x(1:end+nn)*y(1-nn:end)';
end

end