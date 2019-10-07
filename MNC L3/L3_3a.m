clear
close 
clc
syms x y;
y(x) = ((x+1)^2) * exp((x^2)-2)-1;

muller(-1.7,-1.6,-1.65,y)
muller(0.8,0.9,0.85,y)