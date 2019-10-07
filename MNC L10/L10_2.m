clear
close 
clc

syms x f;

f=exp(3*x)+5*x;
fintegrada=int(f,x);
%real = double(int(f,0,1));
real=double(subs(fintegrada,x,1)) - double(subs(fintegrada,x,0));

soma =double(regraTrapezio2(f,0,1,real));

%soma = double(regraTrapezio(f,0,0.8,4));
%exata = double(int(f,0,0.8));
fprintf('A solução Exata Analítica é %3.6f\n',real);
fprintf('A Solução pelo Método da Regra do Trapézio é %3.6f\n',soma);