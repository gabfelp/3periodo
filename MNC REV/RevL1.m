clear
close 
clc
syms x y f g F G;
f=4*x^2-y^3+28;
g=3*x^3+4*y^2-145;

F=(4*x^2+28)^(1/3);
G=((-4*y^2+145)/3)^(1/3);
mas(f,g,F,G,1,1);
