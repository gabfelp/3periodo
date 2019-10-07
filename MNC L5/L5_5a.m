clear
close 
clc
syms x y z f g h;
f=3*x-cos(y*z)-1/2;
g=x^2-81*(y+0.1)^2+sin(z)+1.06;
h=exp(-x*y)+20*z+((10*pi-3)/3);

mnr(f,g,h,0.1,0.1,-0.1);