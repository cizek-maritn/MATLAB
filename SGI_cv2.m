close all;
clear all;
clc;

Fs=8;
T=4;
Ts=1/Fs;
A=4;
f=2;
fi=pi/2;
M=0;

t=0:Ts:T-Ts;
x = A*cos(2*pi*f*t+fi)+M;
subplot(2,1,1)
plot(t,x)
title('cos(t)')
xlabel('t[s]')
ylabel('cos(t)')
subplot(2,1,2)
stem(t,x)
title('cos(t)')
xlabel('t[s]')
ylabel('cos(t)')