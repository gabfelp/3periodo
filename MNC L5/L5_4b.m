clear
close 
clc
syms x y z f g h;
f=x^2+y^2+z^2-9;
g=x*y*z-1;
h= x + y - z^2;

mnr(f,g,h,0.7,1.5,1.5);