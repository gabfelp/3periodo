clear
close all
clc

syms x y;
y(x)=x^3+1.2*x^2-19*x;

isolamento(y,-9,0.033,9)

%bisseccao(-5.1,-4.9,y)
%bisseccao(-0.1,0.1,y)
%bisseccao(3.7,3.9,y)
