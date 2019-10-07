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
p =simplify(polinomioTotal);
p

fprintf('O VALOR DE F(3.5) É');
k =subs(p,x,3.5)
%plotar_grafico(r,0,3);


end


