clear
close 
clc
syms x y z w f g h i;
n=32;
Valores =[5 -1 2 0;-1 n -1 3;2 -1 10 -1;0 3 -1 n];
Constantes =[6;10;-11;15];
f= 5*x-1*y+2*z-6;
g= -1*x+n*y-1*z+3*w-10;
h= 2*x-1*y+10*z-1*w+11;
i= 3*y-1*z+n*w-15;


fprintf('JACOBI\n\n');
mgj4(Valores,Constantes,f,g,h,i,0,0,0,0);
fprintf('\n');
fprintf('SEIDEL\n\n');
mgs(Valores,Constantes,f,g,h,i,0,0,0,0);

fprintf('\n');
fprintf('O MÉTODO DE SEIDEL É MAIS RÁPIDO QUE O DE JACOBI');
fprintf('\n');

