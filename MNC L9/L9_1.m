clear
close 
clc

syms x y;

f=y^2+1;

fprintf('Y(1.5)= ');
v =Euler(0.1,f,1.5,0,0);
fprintf('%3.6f\n',v);

syms y(x);
y(x) = dsolve(diff(y,x) == y^2+1, y(0) == 0)
%plotar_grafico(y(x),0,1.5);
hold on;
plotar_grafico(y(x),0,1.5,0,0,1.5,v);
legend('Sol. Numérica','Sol. Analítica','X e Y Dados','X e Y Procurados','Location','North');
grid;