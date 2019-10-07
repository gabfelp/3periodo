clear
close 
clc
syms x y f g F G;
matrizX=[0 1 1.5 2.5 3];
matrizFX=[1 0.5 0.4 0.286 0.25];
lagrange(matrizX,matrizFX,5);

% O POLINOMIO INTERPOLADOR É = (53*x^4)/3750 - (479*x^3)/3750 +
% (2261*x^2)/5000 - (4193*x)/5000 + 1

% O VALOR DE F(3.5) É 373/1500