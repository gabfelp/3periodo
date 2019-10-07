clear
close 
clc

syms x y;

f=(-x*y);

fprintf('Y(0.5)= ');
v=RK3(0.1,f,0.5,0,2);
fprintf('%3.6f\n',v);

syms y(x);
y(x) = dsolve(diff(y,x) == (-x*y), y(0) == 2)
%plotar_grafico(y(x),0,0.5);
hold on;
plotar_grafico(y(x),0,0.5,0,2,0.5,v);
legend('Sol. Numérica','Sol. Analítica','X e Y Dados','X e Y Procurados');
grid;