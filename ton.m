clear all;
close all;
clc;

F=440;
Fs=8000;
T=2;
t=0:1/Fs:T-(1/Fs);

sig = cos(2*pi*F*t);
plot(t,sig)
sound(sig,Fs)