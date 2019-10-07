clear
close 
clc
syms x y z f g h;
Valores =[5 1 1;3 4 1;3 3 6];
Constantes = [5;6;0];
f=5*x+y+z-5;
g=3*x+4*y+z-6;
h=3*x+3*y+6*z;

mgj1(Valores,Constantes,f,g,h,0,0,0);
fprintf('\n');
