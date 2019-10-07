function lagrange(matrizX,matrizFX,nPontos)


syms x;
syms emBaixo emCima polinomio polinomioTotal;

polinomioTotal=0;
for atual = 1:1:nPontos
    polinomio=1;
    emCima=1;
    emBaixo=1;
    for i =1:1:nPontos
    if(i~=atual)
    emCima=(emCima)*(x-matrizX(i));
    emBaixo= (emBaixo)*(matrizX(atual)-matrizX(i));
    end
    end
    polinomio = (emCima)/(emBaixo);
    polinomioTotal=polinomioTotal+matrizFX(atual)*polinomio;
    
end

fprintf('O POLINOMIO INTERPOLADOR É ');
p =simplify(polinomioTotal)
plotar_grafico(p,-5,90);
%p
%n = 32;
%value = double((3*n + 0.11)/1000)
%fprintf('O VALOR PEDIDO É');
%k =double(subs(p,x,0.09611))
%plotar_grafico(p,0,0.11);
grid


end


