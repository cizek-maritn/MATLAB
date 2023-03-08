% SOUCTCOS.M - ukazka souctu kosinusovek tvoricich jednotkovy impuls
clc;
close all;
clear all;

Fs = 1000;
pocet = 1000;
f=2;


t=0:1/Fs:1;
s=cos((2*pi*f*t)-(pi/2));
x=s;
for n = 1:pocet
   k=(2*n)+1;
   a=n+1;
   s=s+((1/k)*cos((2*pi*t*f*k)-(pi/2)));
   x=x+((1/a)*cos((2*pi*t*f*a)-(pi/2)));
end
subplot(2,2,1);
plot(t,s);
N = 1000;
F = 0:Fs/N:Fs/2-Fs/N;
X = fft(s,N);
subplot(2,2,2);
stem(F(1:40),1/(N/2)*abs(X(1:40)),'.');
subplot(2,2,3);
plot(t,x);
N = 1000;
F = 0:Fs/N:Fs/2-Fs/N;
X = fft(x,N);
subplot(2,2,4);
stem(F(1:40),1/(N/2)*abs(X(1:40)),'.');


