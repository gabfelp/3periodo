function soma=simon3(f,x0,x1,real)
erro = 1e-3;

n=5;
    h = (x1-x0)/(3*n);
    syms x;
    soma =0;
    cont =1;
    for i=x0:h:x1
        if(i~=x0 & i~=x1)
            if(mod(cont-1,3)==0)
              soma = soma+2*double(subs(f,x,i));
            else
                soma = soma + 3*double(subs(f,x,i));
            end
        else
            soma = soma+double(subs(f,x,i));
        end
        cont = cont+1;
    end
    soma=(3*h/8)*soma;
        valor = abs(abs(soma)-abs(real));
        if( valor < erro)
            menor = true;
        end
fprintf('O H que dá um erro menor que 1e-3 é : %3.8f\n',h)
fprintf('O N que dá um erro menor que 1e-3 é : %3.1f\n',n)
end