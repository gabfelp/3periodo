clear
close 
clc
syms x y;
n=32;
y(x) = ((4*x)/n)-3*n*sin(x);

plotar_grafico(y,30,34);
grid;
secantes(31,31.5,y);

