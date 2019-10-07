clear
close 
clc
syms x y;
y(x) = (x^4)-(x^3)-7*(x^2)+x+6;

a=-2.1;
newton(a,y)
a=-1.1;
newton(a,y)
a=0.9;
newton(a,y)
a=2.9;
newton(a,y)
