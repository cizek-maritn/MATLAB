clear all;
close all;
clc;

[sig,Fs]=audioread('cv04_00.wav');
subplot(3,1,1)
plot(sig);
title('Původní signál')

n=floor(length(sig)/100);
E=1:n;
d=1:100;
k=0;
der=1:n;

for c = 0:n-1 
    k=0;
    k=sum((sig((c*100)+d)).^2);
    E(c+1)=k;
end

for c=1:n
    if c==1
        der(c)=E(c);
    else
        der(c)=E(c)-E(c-1);
    end
end

subplot(3,1,2)
plot(E);
subplot(3,1,3)
plot(der);

