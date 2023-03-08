close all;
clear all;
clc;

A=440;
q=2^(1/12);
Fs=8000;
bpm=120;
T4=60/bpm;
T2=T4*2;
t4=0:1/Fs:T4-(1/Fs);
t2=0:1/Fs:T2-(1/Fs);

G4=cos(2*pi*(A/(q^2))*t4);
E4=cos(2*pi*(A/(q^5))*t4);
pomlka4=0*(cos(2*pi*(A/(q^5))*t4));
A4=cos(2*pi*A*t4);
G2=cos(2*pi*(A/(q^2))*t2);
F2=cos(2*pi*(A/(q^4))*t2);
F4=cos(2*pi*(A/(q^4))*t4);
D4=cos(2*pi*(A/(q^7))*t4);
E2=cos(2*pi*(A/(q^5))*t2);

hudba = [G4 G4 E4 pomlka4 G4 G4 E4 pomlka4 G4 G4 A4 G4 G2 F2 F4 F4 D4 pomlka4 F4 F4 D4 pomlka4 F4 F4 G4 F4 F2 E2];
sound(hudba,Fs)