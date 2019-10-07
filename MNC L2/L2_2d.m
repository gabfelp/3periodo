clear
close 
clc
syms x y;
y(x)=(x^3)+1.2*(x^2)-19*x;

a=-5.1;
newton(a,y)
a=-0.1;
newton(a,y)
a=3.7;
newton(a,y)