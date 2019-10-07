clear
close 
clc
syms x y;
y(x) = ((x+1)^2) * exp((x^2)-2)-1;

a=-1.7;
newton(a,y)
a=0.8;
newton(a,y)