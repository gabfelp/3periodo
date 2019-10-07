function mnr2(F,G,x0,y0)%G É EM RELAÇÃO A Y E F É EM RELAÇÃO A X F é y isolado e G é x isolado
tol=1e-4;
syms x y ;
syms Fx;
Fx=diff(F,x);
syms Fy;
Fy=diff(F,y);


syms Gx;
Gx=diff(G,x);
syms Gy;
Gy=diff(G,y);

Vfunc =[F;G];
Vdfunc =[Fx Fy;Gx Gy];
Vatual = [x0;y0];

fprintf('ITERACAO\tx0\t\t\ty0\t\t\tf(x,y)\t\tg(x,y)\n');
for i = 1:1:20
    fxy = double(subs(F,[x y],[Vatual(1) Vatual(2)]));
    gxy = double(subs(G,[x y],[Vatual(1) Vatual(2)]));
    if(abs(double(subs(F,[x y],[Vatual(1) Vatual(2)])))<tol && abs(double(subs(G,[x y],[Vatual(1) Vatual(2)])))<tol)
        fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',i,Vatual(1),Vatual(2),fxy,gxy);
        fprintf ('Método convergiu. Raiz aproximada encontrada.\n')
        break
    end
    %ATUALIZAR X E Y E Z
    fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',i,Vatual(1),Vatual(2),fxy,gxy); % VFUNC SÃO F,G  COM VALORES SUBSTITUIDOS
    Vfunc =[double(subs(F,[x y],[Vatual(1) Vatual(2)]));double(subs(G,[x y],[Vatual(1) Vatual(2)]))];
    Vdfunc =[double(subs(Fx,[x y],[Vatual(1) Vatual(2)])) double(subs(Fy,[x y],[Vatual(1) Vatual(2)]));double(subs(Gx,[x y],[Vatual(1) Vatual(2)])) double(subs(Gy,[x y],[Vatual(1) Vatual(2)]))];
    %VDFUNC SÃO AS DERIVADAS COM VALORES SUBSTITUIDOS
    Vatual = Vatual - inv(Vdfunc)*Vfunc;
    
    if(i==20)
        fprintf('Método não convergiu. Número máximo de iterações atingido.')
    end
end

end