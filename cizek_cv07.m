clear
close all
clc

prvni=((sym(12)/63 + 21/51)*7/5)-22/7 %prvni ukol

%parciální diferenciál
syms x y k a b;
f(x,y)=log(abs(cos(x)))+y*x*(exp(-x^2));
g(y)=subs(f(x,y),x,1/y);
g3=vpa(g(3),100)
i1f=vpa(int(g(y),y,1,2),7) %integral spocteny funkci
i1o=vpa((2-1)*g(1.5),7) %integral spocteny obdelnikovou metodou
i2=int(f(x,y),x)
h(k)=sin(2*pi*k/3);
sSuma=symsum(h(k),k)
nSumaC=vpa(symsum(h(k),k,1,40),6) %cislo
nSumaZ=symsum(h(k),k,1,40) %zlomek
lm=limit(f(x,y),x,pi/2)
i3=int((integrateByParts(i2,diff(y))/integrateByParts(y,diff(y))),y,0,Inf)
A=[1 -3 a; 2 -6 9; -a 3 0];
solve(det(A)) %10. nema jednoznacne reseni
p=det(A-b*eye(3))
p(a)=det(A-a*eye(3)) %char polynom
roots([-2 -11 60 -27])
B=[1 -3 1; 2 -6 9; -1 3 0];
eig(A) %vlastnim cislem je nula, protoze si muzeme vyjadrit x=3y
solve(exp((-x^2)+4*x-9)-1) %analyticky
roots([-1 4 -9]) %numericky