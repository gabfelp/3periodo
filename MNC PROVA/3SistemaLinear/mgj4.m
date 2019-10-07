function mgj4(matrizValor,matrizConst,F,G,H,R,x0,y0,z0,w0)%G É EM RELAÇÃO A Y E F É EM RELAÇÃO A X F é y isolado e G é x isolado
tol=1e-4;

syms x y z w;


%Vfunc =[F;G;H];
%Vdfunc =[Fx Fy Fz;Gx Gy Gz;Hx Hy Hz];
Vatual = [x0;y0;z0;w0];
Vantigo =[x0;y0;z0;w0];

fprintf('ITERACAO\tx1\t\t\tx2\t\t\tx3\t\t\tx4\t\t\tf(x1,x2,x3,x4)\tg(x1,x2,x3,x4)\th(x1,x2,x3,x4)\tr(x1,x2,x3,x4)\n');
for i = 1:1:40
    fxy = double(subs(F,[x y z w],[Vatual(1) Vatual(2) Vatual(3) Vatual(4)]));
    gxy = double(subs(G,[x y z w],[Vatual(1) Vatual(2) Vatual(3) Vatual(4)]));
    hxy = double(subs(H,[x y z w],[Vatual(1) Vatual(2) Vatual(3) Vatual(4)]));
    rxy = double(subs(R,[x y z w],[Vatual(1) Vatual(2) Vatual(3) Vatual(4)]));
    if((abs(double(fxy)))<tol && (abs(double(gxy)))<tol && (abs(double(hxy))<tol) && (abs(double(rxy))<tol))
        fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\t%3.8f\t\t%3.8f\t\t%3.8f\t\t%3.8f\n',i,Vatual(1),Vatual(2),Vatual(3),Vatual(4),fxy,gxy,hxy,rxy);
        fprintf ('Método convergiu. Raiz aproximada encontrada.\n')
        break
    end
    %ATUALIZAR X E Y E Z
    fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\t%3.8f\t\t%3.8f\t\t%3.8f\t\t%3.8f\n',i,Vatual(1),Vatual(2),Vatual(3),Vatual(4),fxy,gxy,hxy,rxy); % VFUNC SÃO F,G e H COM VALORES SUBSTITUIDOS
    %Vfunc =[double(subs(F,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));double(subs(G,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));double(subs(H,[x y z],[Vatual(1) Vatual(2) Vatual(3)]))];
    %Vdfunc =[double(subs(Fx,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Fy,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Fz,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));double(subs(Gx,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Gy,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Gz,[x y z],[Vatual(1) Vatual(2) Vatual(3)]));double(subs(Hx,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Hy,[x y z],[Vatual(1) Vatual(2) Vatual(3)])) double(subs(Hz,[x y z],[Vatual(1) Vatual(2) Vatual(3)]))];
    %VDFUNC SÃO AS DERIVADAS COM VALORES SUBSTITUIDOS
    Vantigo = Vatual;
    Vatual(1) = ((1/matrizValor(1,1))*(matrizConst(1)-matrizValor(1,2)*Vantigo(2)-matrizValor(1,3)*Vantigo(3)-matrizValor(1,4)*Vantigo(4)));
    Vatual(2) = ((1/matrizValor(2,2))*(matrizConst(2)-matrizValor(2,1)*Vantigo(1)-matrizValor(2,3)*Vantigo(3)-matrizValor(2,4)*Vantigo(4)));
    Vatual(3) = ((1/matrizValor(3,3))*(matrizConst(3)-matrizValor(3,1)*Vantigo(1)-matrizValor(3,2)*Vantigo(2)-matrizValor(3,4)*Vantigo(4)));
    Vatual(4) = ((1/matrizValor(4,4))*(matrizConst(4)-matrizValor(4,1)*Vantigo(1)-matrizValor(4,2)*Vantigo(2)-matrizValor(4,3)*Vantigo(3)));
    
    if(i==40)
        fprintf('Método não convergiu. Número máximo de iterações atingido.')
    end
end

end