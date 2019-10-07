function mas(f,g,F,G,x0,y0)%G � EM RELA��O A Y E F � EM RELA��O A X F � X isolado e G � Y isolado
tol=1e-4;
syms x y;
syms Fx;
Fx=diff(F,x);
syms Fy;
Fy=diff(F,y);
syms Gx;
Gx=diff(G,x);
syms Gy;
Gy=diff(G,y);

valorfx= subs(Fx,[x y],[x0 y0]);
valorfy= subs(Fy,[x y],[x0 y0]);
valorfxy=abs(valorfx)+abs(valorfy);
valorgx= subs(Gx,[x y],[x0 y0]);
valorgy= subs(Gy,[x y],[x0 y0]);
valorgxy=abs(valorgx)+abs(valorgy);
%if(valorfxy<1 && valorgxy<1)
    fprintf('ITERACAO\tx0\t\t\ty0\t\t\tf(x,y)\t\tg(x,y)\n');
    for i = 1:1:200
        fxy = double(subs(f,[x y],[x0 y0]));
        gxy = double(subs(g,[x y],[x0 y0]));
        if(abs(double(subs(f,[x y],[x0 y0])))<tol && abs(double(subs(g,[x y],[x0 y0])))<tol)
            fprintf('%3.0f\t\t\t%3.6f\t%3.6f\t%3.6f\t%3.6f\n',i,x0,y0,fxy,gxy);
            fprintf ('M�todo convergiu. Raiz aproximada encontrada.\n')
            break
        end
        fprintf('%3.0f\t\t\t%3.6f\t%3.6f\t%3.6f\t%3.6f\n',i,x0,y0,fxy,gxy);
        x0 = double(subs(F,[x y],[x0 y0])); %% P MUDAR QUEM EST� ISOLADO, S� ALTERAR ENTRE F E G
        y0 = double(subs(G,[x y],[x0 y0]));
        
        if(i==20)
            fprintf('M�todo n�o convergiu. N�mero m�ximo de itera��es atingido.')
        end 
    end 
%end
end