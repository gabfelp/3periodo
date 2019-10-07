clear
close 
clc
syms x y f g F G;
f=y+3*x*y^2-50;
g=x^2+x*y-20;

F=((-x*y +20)^(1/2)); % X² ISOLADO em g
G=(((-y+50)/(3*x))^(1/2)); % Y² ISOLADO em f


%F=((-x^2+10)/x); %teste y isolado
%G=((-y+57)/(3*y)); %teste x isolado
mas(f,g,F,G,3.5,2.1);  
