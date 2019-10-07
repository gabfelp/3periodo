function soma=simon1(f,x0,x1,real)
erro = 1e-3;
menor=false;
n=0;
while(menor==false)
    n=n+1
    h = (x1-x0)/(2*n);
    syms x;
    soma =0;
    cont =1;
    for i=x0:h:x1
        if(i~=x0 && i~=x1)
            if(mod(cont,2)==0)
                soma = soma+4*double(subs(f,x,i));
            else
                soma = soma + 2*double(subs(f,x,i));
            end
        else
            soma = soma+double(subs(f,x,i));
        end
        cont = cont+1;
    end
    soma=(h/3)*soma;
        valor = abs(abs(soma)-abs(real));
        if(valor < erro)
            menor = true;    
        end
end
fprintf('O H que dá um erro menor que 1e-3 é : %3.8f\n',h)
fprintf('O N que dá um erro menor que 1e-3 é : %3.1f\n',n)

end

