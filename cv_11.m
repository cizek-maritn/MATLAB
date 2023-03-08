clear all;
close all;
T = 1;
Fs = 1000;

% Vytvoření signálu x o složkách 100, 200, 300 a 400 Hz
t=0:1/Fs:T-(1/Fs);
s1=cos(2*pi*100*t);
s2=cos(2*pi*200*t);
s3=cos(2*pi*300*t);
s4=cos(2*pi*400*t);
x=s1+s2+s3+s4;

N = 1000;
F = 0:Fs/N:Fs-Fs/N;

X = fft(x,N);

subplot(2, 1 ,1)
stem(F,abs(X)/(N));
title('Spektrum signálu x');
xlabel('f [Hz]');
ylabel('|A|');

% Koeficienty nulovacího filtru pro frekvenci 300 Hz
p=(-exp(i*pi*0.6)-exp(-i*pi*0.6));
B = [1 p 1];
A = 1;

y = filter(B,A,x);
Y = fft(y,N);
subplot(2, 1 ,2)
stem(F,abs(Y)/(N));
title('Spektrum signálu y');
xlabel('f [Hz]');
ylabel('|A|');


figure;
zplane(B,A);
figure;
freqz(B,A);





