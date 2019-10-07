clear
close 
clc
syms x y z f g h;
Valores =[10 2 1;1 5 1;2 3 10];
Constantes = [7;-8;6];
f=10*x+2*y+z-7;
g=x+5*y+z+8;
h=2*x+3*y+10*z-6;

fprintf('JACOBI\n\n');
mgj(Valores,Constantes,f,g,h,0.7,-1.6,0.6);
fprintf('\n');
fprintf('SEIDEL\n\n');
mgs3(Valores,Constantes,f,g,h,0.7,-1.6,0.6);

fprintf('\n');
fprintf('O MÉTODO DE SEIDEL É MAIS RÁPIDO QUE O DE JACOBI');
fprintf('\n');



