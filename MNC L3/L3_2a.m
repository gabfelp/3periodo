clear
close 
clc
syms x y;
y(x) = ((x+1)^2) * exp((x^2)-2)-1;

falsaposicao(-1.7,-1.6,y)
falsaposicao(0.8,0.9,y)