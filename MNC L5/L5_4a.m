clear
close 
clc
syms x y z f g h F G H;
f=x^2+y^2+z^2-9;
g=x*y*z-1;
h= x + y - z^2;

F=((9-y^2-z^2)^(1/2)); % x ISOLADO
G=(1/(x*z)); % y ISOLADO
H=((x+y)^(1/2)); % Z ISOLADO

%F=((-x^2+10)/x); %teste y isolado
%G=((-y+57)/(3*y)); %teste x isolado
mas3(f,g,h,F,G,H,0.7,1.5,1.5);  