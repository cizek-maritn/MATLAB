close all;
clear all;
clc;

T=2;
f1=4;
f2=2;
A1=2;
A2=4;
fi1=pi/3;
fi2=pi/4;
Fs=50;
Ts=1/Fs;

t=0:Ts:T-Ts;
x=A1*cos(2*pi*f1*t+fi1);
y=A2*cos(2*pi*f2*t+fi2);
z=x./y;
q=y./x;

subplot(4,1,1)
stem(t,x)
xlabel('t [s]')
ylabel('cos[t]')
subplot(4,1,2)
stem(t,y)
xlabel('t [s]')
ylabel('cos[t]')
subplot(4,1,3)
plot(t,z)
xlabel('t [s]')
ylabel('cos[t]')
subplot(4,1,4)
plot(t,q)
xlabel('t [s]')
ylabel('cos[t]')