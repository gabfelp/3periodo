clear
close 
clc

syms x f;

f=exp(-x)*cos(x);


exata = double(int(f,0,pi/2));
soma = double(simon1(f,0,pi/2,exata));
fprintf('A solução Exata Analítica é %3.6f\n',exata);
fprintf('A Solução pelo Método de Simpson 1/3 é %3.6f\n',soma);