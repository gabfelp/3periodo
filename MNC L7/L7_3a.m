clear
close 
clc
syms x y f g F G;
matrizX=[2 3 4 5 6 7];
matrizFX=[0.13 0.19 0.27 0.38 0.51 0.67];
NDD(matrizX,matrizFX,6);

% O POLINOMIO INTERPOLADOR É = x^5/3000 - (3*x^4)/400 + (13*x^3)/200 - (103*x^2)/400 + (1589*x)/3000 - 31/100

% O VALOR DE F(6.5) É 467/800