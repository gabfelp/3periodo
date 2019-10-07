function NDD(matrizX,matrizFX,nPontos)


syms x;
syms emBaixo emCima polinomio polinomioTotal;
%matrizD;

for g = 1:1:length(matrizX)
    matrizD(g,1)=matrizFX(1,g); 
end


%Vfunc =[F;G;H];
%Vdfunc =[Fx Fy Fz;Gx Gy Gz;Hx Hy Hz];
%Vatual = [x0;y0;z0];
%Vantigo =[x0;y0;z0];

%emBaixo=1;
%emCima=1;
%polinomio=1;
polinomioTotal=0;
nPontosleng = nPontos;
for atual = 1:1:nPontos-1
    emCima=1;
    emBaixo=1;
    length(matrizD);
    j=1;
    for i =1:1:nPontosleng-1
    emCima = (matrizD(i+1,atual)-matrizD(i,atual));
    emBaixo=(matrizX(1,i+atual)-matrizX(1,i));
    %matrizDdeCada(i)=((emCima)/(emBaixo));
    matrizD(i,atual+1)=((emCima)/(emBaixo));
    end

    nPontosleng=nPontosleng-1;
    %matrizD()=matrizDdeCada;
    
end
matrizD

nPontosleng=1;

for k = 2:1:nPontos
    dx=1;
    dx=dx*matrizD(1,k);
   for ateX = 1:1:nPontosleng
            dx=dx*(x-matrizX(ateX));
   end
   nPontosleng=nPontosleng+1;
   polinomioTotal = polinomioTotal+dx;
end
polinomioTotal = polinomioTotal+matrizFX(1);
fprintf('O POLINOMIO INTERPOLADOR É ');
p =simplify(polinomioTotal);
p
n = 32;
value = double((3*n + 0.11)/1000)
fprintf('O VALOR PEDIDO É');
q =double(subs(p,x,value))
%plotar_grafico(r,0,3);


end


