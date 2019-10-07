clear
close 
clc

syms x y;
n=32;

f=-1.2*y+n*exp(-0.3*x);

fprintf('Y(1.5)= ');
v=RK4(0.1,f,1.5,0,3);
fprintf('%3.8f\n',v);

syms y(x);
y(x) = dsolve(diff(y,x) == -1.2*y+n*exp(-0.3*x), y(0) == 3)
hold on;
plotar_grafico(y(x),0,1.5,0,3,1.5,v);
legend('Sol. Numérica','Sol. Analítica','X e Y Dados','X e Y Procurados','Location','North');
grid;