clear
close all
clc

x=-10:0.1:10;
f=atan((x+1)./(x-1));
g=x./sqrt((x.^2)-1);
h=x.^x;
f(111)=NaN; %nebude fungovat pro jiny interval x, nic lepsiho me nenapadlo
g(imag(g)~=0)=nan;
h(imag(h)~=0)=nan;
f1=figure;
plot(x,f)
f2=figure;
plot(x,g)
f3=figure;
plot(x,h)