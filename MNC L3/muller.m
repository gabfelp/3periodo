function muller(a,b,c,y)
syms x;
%i=0;
%raiz=0;
erro=1e-4;
% if(abs(y(a))>=0)&&(abs(y(a))<=erro)
%     tr=true;
% end
% if(abs(y(b))>=0)&&(abs(y(b))<=erro)
%     tr=true;
% end
fprintf('ITERACAO\ta\t\t\tb\t\t\tc\t\t\tRAIZ\t\tf(RAIZ)\n');
for t=1:1:20
    if(y(a)==0)
        z = double(y(a));
        fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,c,a,z);
        fprintf ('Método convergiu. Raiz exata encontrada.\n')
        break
    else
        if(y(b)==0)
            z = double(y(b));
            fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,c,b,z);
            fprintf ('Método convergiu. Raiz exata encontrada.\n')
            break
        else
            if(y(c)==0)
                z = double(y(c));
                fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,c,c,z);
                fprintf ('Método convergiu. Raiz exata encontrada.\n')
                break
            else
                if(abs(y(a))<=erro)&&(abs(y(a))>=0)
                    z = double(y(a));
                    fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,c,a,z);
                    fprintf ('Método convergiu. Raiz aproximada encontrada.\n')
                    break
                else
                    if(abs(y(b))<=erro)&&(abs(y(b))>=0)
                        z = double(y(b));
                        fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,c,b,z);
                        fprintf ('Método convergiu. Raiz aproximada encontrada.\n')
                        break
                    else
                        if(abs(y(c))<=erro)&&(abs(y(c))>=0)
                            z = double(y(c));
                            fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,c,c,z);
                            fprintf ('Método convergiu. Raiz aproximada encontrada.\n')
                            break
                        else
                            %k-1 = c     k-2 = b    k-3 = a
                            ck2=double((y(c)-y(b))/(c-b));
                            ck3=double((y(b)-y(a))/(b-a));
                            dk3=double((ck2-ck3)/(c-a));
                            s=double(ck2+dk3*(c-b));
                            x1 = double(c-((2*y(c))/(s+sign(s)*((s^2-4*y(c)*dk3)^1/2))));
                            if(y(x1)==0)
                                z = double(y(x1));
                                fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,c,x1,z);
                                fprintf ('Método convergiu. Raiz exata encontrada.\n')
                                break
                            else
                                if(abs(y(x1))<=erro)&&(abs(y(x1))>=0)
                                    z = double(y(x1));
                                    fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,c,x1,z);
                                    fprintf ('Método convergiu. Raiz aproximada encontrada.\n')
                                    break
                                end
                            end
                        end
                    end
                end
            end
            z=double(y(x1));
            fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\t%3.8f',t,a,b,c,x1,z);
            aux=c;
            c=x1;
            x1=b;
            b=aux;
            a=x1;
            %fprintf('\n');
            if(t==20)
                fprintf('\n');
                fprintf('Método não convergiu. Número máximo de iterações atingido.')
            end
        end
        fprintf ('\n')
        
        
    end
end
end
