clc;
clear;

b=[6; 5; 9];
%A=[0 2 0;1 1 0;0 0 3];
%A=[1 2 3;4 5 6;7 8 1];
A=[1 2 3;5 5 5;6 7 8];

%A=full(gallery('poisson',2));
%b=ones(4,1);
gauss_elim(A,b)