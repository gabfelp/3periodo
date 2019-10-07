clear
close all
clc

syms x y;
y(x)=x^3+1.2*x^2-19*x;

%isolamento(y,-9,0.033,9)
secantes(-5.1,-4.9,y)
secantes(-0.1,0.1,y)
secantes(3.7,3.9,y)
%bisseccao(y,-5.1,-4.9)
%bisseccao(y,-0.1,0.1)
%bisseccao(y,3.7,3.9)
