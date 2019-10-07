clear
close 
clc
syms x y f g;
f=y+3*x*y^2-50;
g=x^2+x*y-20;

mnr2(f,g,4,0.5);
