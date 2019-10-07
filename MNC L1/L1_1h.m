ciclear
close
clc
syms x y;
y= (2^(1/2))*(sin(2*x+2*pi/3)+sin(5*x-(2*pi)/3));
a=-5;
b=4;
plotar_grafico(y,a,b);
grid;
%Possuí 14 raízes aprx
%[-4.5,0] > Intervalo [-4.7 -4.3]
%[-3.85,0] > Intervalo [-3.9 -3.8]
%[-3.6,0] > Intervalo [-3.7 -3.5]
%[-2.7,0] > Intervalo [-2.9 -2.5]
%[-1.8,0] > Intervalo [-1.825 -1.775]
%[-1.75,0] > Intervalo [-1.765 -1.735]
%[-0.9,0] > Intervalo [-1.1 -0.7]
%[0,0] > Intervalo [-0.1 0.1]
%[0.35,0] > Intervalo [0.2 0.5]
%[0.9,0] > Intervalo [0.7 1.1] 
%[1.8,0] > Intervalo [1.7 2]
%[2.45,0] > Intervalo [2.35 2.55]
%[2.7,0] > Intervalo [2.6 2.8]
%[3.6,0] > Intervalo [3.5 3.8]
