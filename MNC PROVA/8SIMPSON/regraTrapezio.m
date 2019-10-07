function soma=regraTrapezio(f,x0,x1,N)
    h = (x1-x0)/N
    syms x;
    soma =0;
    for i=x0:h:x1
        if(i~=x0 & i~=x1)
           soma = soma+2*subs(f,x,i)
        else
            soma = soma+subs(f,x,i)
        end
    end
    soma=(h/2)*soma;
    
end

