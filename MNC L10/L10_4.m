clear
close 
clc

syms x f;

f=sin(x);


exata = double(int(f,0,pi));
soma = double(simon3(f,0,pi,exata));
fprintf('A solução Exata Analítica é %3.6f\n',exata);
fprintf('A Solução pelo Método de Simpson 3/8 é %3.6f\n',soma);