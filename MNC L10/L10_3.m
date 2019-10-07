clear
close 
clc

syms x f;

f=exp(-x)*cos(x);


exata = double(int(f,0,pi/2));
soma = double(simon1(f,0,pi/2,exata));
fprintf('A solu��o Exata Anal�tica � %3.6f\n',exata);
fprintf('A Solu��o pelo M�todo de Simpson 1/3 � %3.6f\n',soma);