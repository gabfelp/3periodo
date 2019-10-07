clear
close 
clc

syms x f;

f=0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5;

soma = double(regraTrapezio(f,0,0.8,4));
exata = double(int(f,0,0.8));
fprintf('A solu��o Exata Anal�tica � %3.6f\n',exata);
fprintf('A Solu��o pelo M�todo da Regra do Trap�zio � %3.6f\n',soma);