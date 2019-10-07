clear
close
clc
syms x y;
y= x^5+5.1*x^4+(149/50)*x^3-(729/50)*x^2-(451/50)*x+(363/25);
a=-4;
b=2;
plotar_grafico(y,a,b);
grid;
%Possui 5 raízes aprx
% [-3,0] > Intervalo [-3.5 -2.5]
% [-2.2,0] > Intervalo [-2.3 -2.1]
% [-2,0] > Intervalo [-2.07 -1.93]
% [1,0] > Intervalo [0.95 1.05]
% [1.1,0] > Intervalo [1.09 1.11]