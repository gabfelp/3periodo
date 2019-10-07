clear
close 
clc
syms x y f g F G;
f=0.2*x^2+0.2*x*y-x+0.6;
g=0.4*x+0.1*x*y^2-y+0.5;

F=(- (0.2*x*y-x+0.6)/0.2)^(1/2);
G=(0.4*x+0.1*x*y^2+0.5);
mas(f,g,F,G,1.5,1.5);  
