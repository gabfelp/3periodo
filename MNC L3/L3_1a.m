clear
close all
clc

syms x y;
y(x)=(x+1)^2*exp(x^2-2)-1;

secantes(-1.7,-1.6,y)
secantes(0.8,0.9,y)
%newton(-2,y)
%newton(1,y)

%bisseccao(-1.7,-1.6,y)
%bisseccao(0.8,0.9,y)