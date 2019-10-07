clear
close
clc
syms x y;
y= x^3+(3.8*x^2)-(8.6*x)-24.4;
a=-5;
b=4;
plotar_grafico(y,a,b);
grid;
%Possui 3 raízes aprx
% [-4.5,0] > Intervalo [-5 -4]
% [-2,0] > Intervalo [-2.5 -1.5]
% [2.7,0] > Intervalo [2 3]