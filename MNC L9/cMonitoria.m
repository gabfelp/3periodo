clear
close 
clc

syms x y;

f=(x^2)/y*(1+x^3);

fprintf('Y(2.5) por RK3= ');
v=RK3(0.1,f,2.5,0,1);%os valores s�o 0.1 ; funcao ; o valor que voc� quer encontrar; x = 0 ; y(x)=1;
fprintf('%3.6f\n',v);

fprintf('Y(2.5) por RK4= ');
v=RK4(0.1,f,2.5,0,1);%os valores s�o 0.1 ; funcao ; o valor que voc� quer encontrar; x = 0 ; y(x)=1;
fprintf('%3.6f\n',v);

syms y(x);
y(x) = dsolve(diff(y,x) == (x^2)/y*(1+x^3), y(0) == 1)
hold on;
plotar_grafico(y(x),0,2,0,1,2,v);
legend('Sol. Num�rica','Sol. Anal�tica','X e Y Dados','X e Y Procurados','Location','North');
grid;