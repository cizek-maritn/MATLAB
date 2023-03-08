clear all;
close all;
clc;

Fs=10;
T=2;
t=0:1/Fs:T-(1/Fs);

c1=cos(2*pi*4*t);
c2=cos(2*pi*2.5*t);
c3=cos(2*pi*12*t);
c4=cos(2*pi*7.25*t);


subplot(4,2,1)
stem(abs(DFT(c1,10)));
subplot(4,2,2)
stem(abs(DFT(c1,20)));
subplot(4,2,3)
stem(abs(DFT(c2,10)));
subplot(4,2,4)
stem(abs(DFT(c2,20)));
subplot(4,2,5)
stem(abs(DFT(c3,10)));
subplot(4,2,6)
stem(abs(DFT(c3,20)));
subplot(4,2,7)
stem(abs(DFT(c4,10)));
subplot(4,2,8)
stem(abs(DFT(c4,20)));