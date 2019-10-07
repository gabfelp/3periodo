clear
close 
clc

syms x f;
n = 32;
f=n*x*(1-(x^2))*(((1-x^2)^(3))^(1/2));


exata = double(int(f,0,1));
soma = double(simon3(f,0,1,exata));
fprintf('A solu��o Exata Anal�tica � %3.8f\n',exata);
fprintf('A Solu��o pelo M�todo de Simpson 3/8 � %3.8f\n',soma);