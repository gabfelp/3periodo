clear
close 
clc

syms x f;

f=0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5;

soma = double(regraTrapezio(f,0,0.8,4));
exata = double(int(f,0,0.8));
fprintf('A solução Exata Analítica é %3.6f\n',exata);
fprintf('A Solução pelo Método da Regra do Trapézio é %3.6f\n',soma);