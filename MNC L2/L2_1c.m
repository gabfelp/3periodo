clear
close all
clc

syms x y;
y(x)=(x^2)+3.3*x+exp(x)+2.42;

isolamento(y,-10,0.033,10)
%bisseccao(-2.1,-2.0,y)
%bisseccao(-1.5,-1.4,y)

