clear
close 
clc

syms x f;

f=sin(x);


exata = double(int(f,0,pi));
soma = double(simon3(f,0,pi,exata));
fprintf('A solu��o Exata Anal�tica � %3.6f\n',exata);
fprintf('A Solu��o pelo M�todo de Simpson 3/8 � %3.6f\n',soma);