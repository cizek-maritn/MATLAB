clear
close all
clc

x=-10:0.1:10; x(x==0)=[];
a=-2:0.05:2; b=a;
fig1=figure;
plot(x,fce(x))
fig2=figure;
plot(x,gce(x))
fig3=figure;
[A,B]=meshgrid(a,b);
C=hce(A,B);
surf(A,B,C);
minf1=fminbnd(@fce,2,4)
minf2=fminbnd(@fce,4,6)
ming=fminbnd(@gce,10,2000)
minh=fminsearch(@(v) hce(v(1),v(2)),[-1 2])

f=[-5 -2 -6];
A=[1 -1 1; 3 2 4; 3 2 0];
b=[20 ; 42 ; 30];
lb=[0 0 0];
ub=[Inf Inf Inf];
lprog=linprog(f,A,b,[],[],lb,ub)

syms q o p
ff=(4*q^2)+(2*o^2)+(3*p^2)+(2*q*o)-(3*o*p)-q;
H=double(hessian(ff,[q,o,p]));
f=[-1;0;0];
A=[1 -1 1;1 2 -6];
b=[-1;5];
lb=zeros(3,1);
qprog=quadprog(H,f,A,b,[],[],lb)

function y=fce(x)
y=(sin(x)./x)+exp(-(x-4).^2);
end

function k=gce(x)
k=((x.^4)/4)-(x.^3).*(41/6)+(x.^2).*(209/4)-x.*135;
end

function l=hce(a,b)
l=100.*((b-a.^2).^2)+(1-a).^2;
end
