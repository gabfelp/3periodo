function mgj1(matrizValor,matrizConst,F,G,H,x0,y0,z0)%G É EM RELAÇÃO A Y E F É EM RELAÇÃO A X F é y isolado e G é x isolado
tol=1e-4;

syms x y z;


%Vfunc =[F;G;H];
%Vdfunc =[Fx Fy Fz;Gx Gy Gz;Hx Hy Hz];
Vatual = [x0;y0;z0];
Vantigo =[x0;y0;z0];

fprintf('ITERACAO\tx0\t\t\ty0\t\t\tz0\t\t\tf(x,y,z)\tg(x,y,z)\th(x,y,z)\n');
for i = 1:1:200
    fxy = double(subs(F,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));
    gxy = double(subs(G,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));
    hxy = double(subs(H,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));
    if((abs(double(fxy)))<tol && (abs(double(gxy)))<tol && (abs(double(hxy))<tol))
        fprintf('%3.0f\t\t\t%3.6f\t%3.6f\t%3.6f\t%3.6f\t%3.6f\t%3.6f\n',i,Vatual(1),Vatual(2),Vatual(3),fxy,gxy,hxy);
        fprintf ('Método convergiu. Raiz aproximada encontrada.\n')
        fprintf('\n');
        fprintf('CONVERGE PARA VALORES MENORES QUE A TOLERÂNCIA COM %3.0f ITERAÇÕES',i);
        break
    end
    %ATUALIZAR X E Y E Z
    fprintf('%3.0f\t\t\t%3.6f\t%3.6f\t%3.6f\t%3.6f\t%3.6f\t%3.6f\n',i,Vatual(1),Vatual(2),Vatual(3),fxy,gxy,hxy); % VFUNC SÃO F,G e H COM VALORES SUBSTITUIDOS
    %Vfunc =[double(subs(F,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));double(subs(G,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));double(subs(H,[x y z],[Vatual(1) Vatual(2) Vatual(3)]))];
    %Vdfunc =[double(subs(Fx,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Fy,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Fz,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));double(subs(Gx,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Gy,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Gz,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));double(subs(Hx,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Hy,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Hz,[x y z],[Vatual(1) Vatual(2) Vatual(3)]))];
    %VDFUNC SÃO AS DERIVADAS COM VALORES SUBSTITUIDOS
    Vantigo = Vatual;
    Vatual(1) = ((1/matrizValor(1,1))*(matrizConst(1)-matrizValor(1,2)*Vantigo(2)-matrizValor(1,3)*Vantigo(3)));
    Vatual(2) = ((1/matrizValor(2,2))*(matrizConst(2)-matrizValor(2,1)*Vantigo(1)-matrizValor(2,3)*Vantigo(3)));
    Vatual(3) = ((1/matrizValor(3,3))*(matrizConst(3)-matrizValor(3,1)*Vantigo(1)-matrizValor(3,2)*Vantigo(2)));
    

end

end