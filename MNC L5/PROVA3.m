clear
close 
clc
n=32;
syms x y f g;
f=y-(1/2)*(exp(x/2)+exp((-x)/2));

g=n*x^2+2.5*y^2-225;

mnr2(f,g,2,3);
