clear
close 
clc
syms x y;
y(x) = (x^4)-(x^3)-7*(x^2)+x+6;

muller(-2.1,-1.9,-2.0001,y)
muller(-1.1,-0.9,-1.0001,y)
muller(0.9,1.1,1.0001,y)
muller(2.9,3.1,3.0001,y)
