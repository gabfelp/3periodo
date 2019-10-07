clear
close 
clc
syms x y;
n=32;
y(x) = (((1/6)*(n*n)*(x-sin(x)))+n);

plotar_grafico(y,-5,5);
grid;
falsaposicao(-1,-1.1,y);

