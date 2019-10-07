clear
close 
clc
syms x y z f g h;
f=15*x+y^2-4*z-13;
g=x^2+10*y-z-11;
h=y^3-25*z+22;

mnr(f,g,h,0,0,0);