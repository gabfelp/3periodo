clear
close 
clc
syms x y f g F G;
matrizX=[0.005 0.009 0.016 0.025 0.040 0.062 0.085 0.110];
matrizFX=[205 150 135 97 89 80 70 67];
lagrange(matrizX,matrizFX,8);

% O POLINOMIO INTERPOLADOR � = (53*x^4)/3750 - (479*x^3)/3750 +
% (2261*x^2)/5000 - (4193*x)/5000 + 1

% O VALOR DE F(3.5) � 373/1500