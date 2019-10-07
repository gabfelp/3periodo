clear
close 
clc

syms x y;

f=y*x^2-1.1*y;

fprintf('Y(2)= ');
v=RK4(0.1,f,2,0,1);
fprintf('%3.6f\n',v);

syms y(x);
y(x) = dsolve(diff(y,x) == y*x^2-1.1*y, y(0) == 1)
hold on;
plotar_grafico(y(x),0,2,0,1,2,v);
legend('Sol. Numérica','Sol. Analítica','X e Y Dados','X e Y Procurados','Location','North');
grid;