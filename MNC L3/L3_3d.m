clear
close 
clc
syms x y;
y(x)=(x^3)+1.2*(x^2)-19*x;

muller(-5.1,-4.9,-5.01,y)
muller(-0.1,0.1,0.01,y)
muller(3.7,3.9,3.81,y)