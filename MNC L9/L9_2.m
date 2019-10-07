clear
close 
clc

syms x y;

f=(x^2/(1+y^2));

fprintf('Y(2)= ');
v=Heun(0.1,f,2,1,3);
fprintf('%3.6f\n',v);

syms y(x);
y(x) = dsolve(diff(y,x) == (x^2/(1+y^2)), y(1) == 3)
%plotar_grafico(y(x),1,2);
hold on;
plotar_grafico(y(x),1,2,1,3,2,v);
legend('Sol. Numérica','Sol. Analítica','X e Y Dados','X e Y Procurados','Location','Southeast');
grid;