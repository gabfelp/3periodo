clear
close all
clc

syms x y;
y(x)=(x^2)+3.3*x+exp(x)+2.42;

%isolamento(y,-10,0.033,10)
secantes(-2.1,-2.0,y)
secantes(-1.5,-1.4,y)
%bisseccao(y,-2.1,-2.0)
%bisseccao(y,-1.5,-1.4)

