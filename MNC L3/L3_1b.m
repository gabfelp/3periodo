clear
close all
clc

syms x y;
y(x)=(x^4)-(x^3)-7*(x^2)+x+6;

%isolamento(y,-9,0.033,5)
secantes(-2.1,-1.9,y)
secantes(-1.1,-0.9,y)
secantes(0.9,1.1,y)
secantes(2.9,3.1,y)
%bisseccao(-2.1,-1.9,y)
%bisseccao(y,-1.1,-0.9)
%bisseccao(y,0.9,1.1)
%bisseccao(y,2.9,3.1)