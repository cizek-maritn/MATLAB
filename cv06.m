clear all;
close all;
clc;

[sig,Fs]=audioread('ovcaci-housle.wav');
subplot(3,1,1)
plot(sig);
title('Původní signál')

ramec=256;
prekryv=ramec/2;
n=2*floor(length(sig)/ramec);
ZCR=1:n-1;
k=1/(2*(ramec-1));

for c = 1:n-1
    step=(c-1)*128;
    s=0;
    for i = 2:ramec
        s=s+(abs(sign(sig(i+step))-sign(sig(i-1+step))));
    end
    ZCR(c)=k*s;
end

subplot(3,1,2)
plot(ZCR);

subplot(3,1,3)
spectrogram(sig, hamming(256), 128, 256, Fs, 'yaxis');

