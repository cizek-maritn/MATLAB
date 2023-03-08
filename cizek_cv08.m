clear
close all
clc

%prvni cviceni numericky
k=0.01;
y=0:k:(2*pi)-k;
z=0:k:sqrt(3)-k;
x=-10:k:5;
q=-1000:k:1000;
I1n=sum(1./(2+cos(y+k/2))*k)
I2n=sum(z.*atan(z+k/2)*k)
I3n=sum(sqrt(1-sin(2*(y+k/2)))*k)
I4n=sum(exp(-(x+k/2).^2)*k)
I5n=sum(exp(-(q+k/2).^2)*k)

%prvni cviceni analyticky
syms b;
I1a=vpa(int(1/(2+cos(b)),b,0,2*pi),5)
I2a=vpa(int(b*atan(b),b,0,sqrt(3)),5)
I3a=vpa(int(sqrt(1-sin(2*b)),b,0,2*pi),5)
I4a=vpa(int(exp(-b^2),b,-10,5),5)
I5a=vpa(int(exp(-b^2),b,-1000,1000),5)

%druhe cviceni odhad
n=1:1000;
S1o=sum(((-1).^n)./(2.^(n-1)))
S2o=sum(1./(n.*(n+1)))
S3o=sum(((-1).^n)./n)
S4o=sum(((2.*n)-1)./2.^n)

%druhe cviceni analyticky
syms a c;
S1a=symsum(((-1)^a)/(2^(a-1)),1,c)
(2*(-1/2)^1000)/3 - 2/3     %dosazeni do vysledku S1a, lepsi zpusob me nenapadl
S2a=symsum(1/(a*(a+1)),1,c)
1000/1001
S3a=symsum(1/a,a,1,c)    %nebyl jsem schopny zprovoznit

S4a=symsum(((2*a)-1)/2^a,a,1,c)
3 - 2/2^(1001)*(2003)

%treti cviceni
syms r;
Mat1=[1 7 r ; r.^2 3 (1-r) ; 0 5 6];
Mat2=[r 8 -3*r ; 1 (1-r)^2 r ; 3 -1 4];
det1=det(Mat1)
det2=det(Mat2)
rr=-10:0.1:10;
f=5.*rr.^3 - 42.*rr.^2 + 5.*rr + 13;
g=13.*rr.^3 - 25.*rr.^2 + 40.*rr - 32;
f1=figure;
plot(rr,f)
f2=figure;
plot(rr,g)
%v obou pripadech je lokalni minimum v -10 a ma hodnotu kolem -9000
%v obou pripadech je lokalni maximum v 10,
%u prvni matice ma hodnotu kolem 860, u druhe kolem 10800