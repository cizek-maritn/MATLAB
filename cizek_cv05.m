% k treti uloze
% BMP soubor byl nejvetsi, PDF nejmensi
% PDF soubor byl nejkvalitnejsi, JPG soubor naopak

clear
close all
clc

% prvni uloha
a=[-1 -0.5 0.5 1];
b=[0 -1 -1 0];
c=-b;
f1 = figure;
hold on
plot(a,b,'b')
plot(a,c,'b')

% treti uloha za a
f2=figure;
x=-5:0.05:5;
hold on
plot(x,funkce(x),'b')
plot(x,funkce(x,1),'g')
plot(x,funkce(x,2),'r')
title('Function f for various arguments')
xlabel('x')
ylabel('f(x,y)')
legend('f(x)','f(x,1)','f(x,2)')

% treti uloha za b
f3=figure;
subplot(1,3,1)
ax1 = subplot(1,3,1);
plot(x,funkce(x),'b')
legend('f(x)')
xlabel('x')
ylabel('f(x,y)')

subplot(1,3,2)
ax2 = subplot(1,3,2);
plot(x,funkce(x,1),'g')
legend('f(x,1)')
xlabel('x')
ylabel('f(x,y)')

subplot(1,3,3)
ax3 = subplot(1,3,3);
plot(x,funkce(x,2),'r')
legend('f(x,2)')
xlabel('x')
ylabel('f(x,y)')

linkaxes([ax1 ax2 ax3], 'xy')

% ctvrta uloha
f4=figure;
x=-5:0.1:5;
y=-6:0.2:6;
[X,Y]=meshgrid(x,y);
Z=funkce(X,Y);
surf(X,Y,Z)
title('Function f for various arguments')
xlabel('x')
ylabel('y')
zlabel('f(x,y)')

% funkce
function f=funkce(x,y)
    switch nargin
        case 2
            f = x .* exp(-(x.^2)-(y.^2)) + tanh(x.*y);
        case 1
            f = x .* exp(-(x.^2));
    end
end