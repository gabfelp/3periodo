clear
close 
clc
syms x y;
y(x)=(x^2)+3.3*x+exp(x)+2.42;

a=-2.1;
newton(a,y)
a=-1.5;
newton(a,y)
