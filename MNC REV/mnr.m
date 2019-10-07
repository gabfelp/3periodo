function mnr(F,G,H,x0,y0,z0)%G É EM RELAÇÃO A Y E F É EM RELAÇÃO A X F é y isolado e G é x isolado
tol=1e-4;
syms x y z;
syms Fx;
Fx=diff(F,x);
syms Fy;
Fy=diff(F,y);
syms Fz;
Fz=diff(F,z);

syms Gx;
Gx=diff(G,x);
syms Gy;
Gy=diff(G,y);
syms Gz;
Gz=diff(G,z);

syms Hx;
Hx=diff(H,x);
syms Hy;
Hy=diff(H,y);
syms Hz;
Hz=diff(H,z);

Vfunc =[F;G;H];
Vdfunc =[Fx Fy Fz;Gx Gy Gz;Hx Hy Hz];
Vatual = [x0;y0;z0];

fprintf('ITERACAO\tx0\t\t\ty0\t\t\tz0\t\t\tf(x,y)\t\tg(x,y)\t\th(x,y)\n');
for i = 1:1:20
    fxy = double(subs(F,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));
    gxy = double(subs(G,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));
    hxy = double(subs(H,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));
    if(abs(double(subs(F,[x y z],[Vatual(1) Vatual(2) Vatual(3)])))<tol && abs(double(subs(G,[x y z],[Vatual(1) Vatual(2) Vatual(3)])))<tol && abs(double(subs(H,[x y z],[Vatual(1) Vatual(2) Vatual(3)])))<tol)
        fprintf('%3.0f\t\t\t%3.6f\t%3.6f\t%3.6f\t%3.6f\t%3.6f\t%3.6f\n',i,Vatual(1),Vatual(2),Vatual(3),fxy,gxy,hxy);
        fprintf ('Método convergiu. Raiz aproximada encontrada.\n')
        break
    end
    %ATUALIZAR X E Y E Z
    fprintf('%3.0f\t\t\t%3.6f\t%3.6f\t%3.6f\t%3.6f\t%3.6f\t%3.6f\n',i,Vatual(1),Vatual(2),Vatual(3),fxy,gxy,hxy); % VFUNC SÃO F,G e H COM VALORES SUBSTITUIDOS
    Vfunc =[double(subs(F,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));double(subs(G,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));double(subs(H,[x y z],[Vatual(1) Vatual(2) Vatual(3)]))];
    Vdfunc =[double(subs(Fx,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Fy,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Fz,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));double(subs(Gx,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Gy,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Gz,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));double(subs(Hx,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Hy,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Hz,[x y z],[Vatual(1) Vatual(2) Vatual(3)]))];
    %VDFUNC SÃO AS DERIVADAS COM VALORES SUBSTITUIDOS
    Vatual = Vatual - inv(Vdfunc)*Vfunc;
    
    if(i==20)
        fprintf('Método não convergiu. Número máximo de iterações atingido.')
    end
end

end