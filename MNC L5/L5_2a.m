clear
close 
clc
syms x y f g F G;
f=x^2+x*y-10;
g=y+3*x*y^2-57;

F=((-x*y+10)^(1/2)); % x ISOLADO
G=(((-y+57)/(3*x))^(1/2)); % y ISOLADO

%F=((-x^2+10)/x); %teste y isolado
%G=((-y+57)/(3*y)); %teste x isolado
mas(f,g,F,G,1.5,3.5);  
