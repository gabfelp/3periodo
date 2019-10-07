function q = MQ(valorX,valorY,qnt)
syms q x;
somaX=0;
somaY=0;
somaXY=0;
somaX2=0;
for i=1:1:qnt
   somaX = somaX+valorX(i);
   somaY = somaY+valorY(i);
   somaXY = somaXY + valorY(i)*valorX(i);
   somaX2 = somaX2+valorX(i)*valorX(i);
end
mediaX = somaX/qnt;
mediaY = somaY/qnt;

a1 = ((qnt*somaXY-(somaX*somaY))/(qnt*somaX2-(somaX*somaX)));
a0= mediaY - a1*mediaX;

q = a1*x + a0
end

