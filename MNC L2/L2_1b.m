clear
close all
clc

syms x y;
y(x)=(x^4)-(x^3)-7*(x^2)+x+6;

isolamento(y,-9,0.033,5)
%bisseccao(-2.1,-1.9,y)
%bisseccao(-1.1,-0.9,y)
%bisseccao(0.9,1.1,y)
%bisseccao(2.9,3.1,y)