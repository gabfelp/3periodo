clear
close 
clc
syms x y z  f g h;
Valores =[5 2 2;1 3 1;0 6 8];
Constantes = [3;-2;-6];
f=5*x+2*y+2*z-3;
g=x+3*y+z+2;
h=6*y+8*z+6;


fprintf('JACOBI\n\n');
mgj(Valores,Constantes,f,g,h,0.7,-1.6,0.6);
fprintf('\n');
fprintf('SEIDEL\n\n');
mgs3(Valores,Constantes,f,g,h,0.7,-1.6,0.6);

fprintf('\n');
fprintf('O MÉTODO DE SEIDEL É MAIS RÁPIDO QUE O DE JACOBI');
fprintf('\n');
