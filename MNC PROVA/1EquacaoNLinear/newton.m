function newton(a,y)
syms x w;
erro=1e-4;
fprintf('\n')
fprintf('ITERACAO  \t\t RAIZ \t\t f(RAIZ)\n');

for t=1:1:20
    if (y(a)==0)
        z = double(y(a));
        %fprintf('%3.0f\t\t\t%3.8f\t\t%3.8f\n',t,double(a),z);
        fprintf ('Método convergiu. Raiz exata encontrada.\n')
        break
    else
        if(abs(y(a))<=erro)&&(abs(y(a))>=0)
            z = double(y(a));
            %fprintf('%3.0f\t\t\t%3.8f\t\t%3.8f\n',t,double(a),z);
            fprintf ('Método convergiu. Raiz aproximada encontrada.\n')
            break
        else
            w = subs(diff(y,x),x,a);
            a = double (a-((y(a))/w));
        end
        z=double(y(a));
        fprintf('%3.0f\t\t\t%3.8f\t\t%3.8f\n',t,double (a),z);
        if t==20
            fprintf ('Método não convergiu. Número máximo de iterações atingido.')
        end
    end
end
