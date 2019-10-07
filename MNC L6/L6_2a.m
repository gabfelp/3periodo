clear
close 
clc
syms x y z w f g h r;
Valores =[9 -2 3 2;2 8 -2 3;-3 2 11 -4;-2 3 2 10];
Constantes = [54.5;-14;12.5;-21];
f=9*x-2*y+3*z+2*w-54.5;
g=2*x+8*y-2*z+3*w+14;
h=-3*x+2*y+11*z-4*w-12.5;
r=-2*x+3*y+2*z+10*w+21;

mgs(Valores,Constantes,f,g,h,r,0,0,0,0);