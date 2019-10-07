function isolamento(y,a,k,b)
syms x;
for x=a:k:b
    X=y(x);
    Y=y(x+k);
    if(X*Y<0)
        %fprintf('Tem raiz entre %3.5f e 3.5f',x,x+k);
        bisseccao(x,x+k,y);
    end
end