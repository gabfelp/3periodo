function falsaposicao(a,b,y)
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
fprintf('ITERACAO\ta\t\t\tb\t\t\tRAIZ\t\tf(RAIZ)\n');
for t=1:1:20
    if(y(a)==0)
        z = double(y(a));
        fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,a,z);
        fprintf ('Método convergiu. Raiz exata encontrada.\n')
        break
    else
        if(y(b)==0)
            z = double(y(b));
            fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,b,z);
            fprintf ('Método convergiu. Raiz exata encontrada.\n')
            break
        else
            if(abs(y(a))<=erro)&&(abs(y(a))>=0)
                z = double(y(a));
                fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,a,z);
                fprintf ('Método convergiu. Raiz aproximada encontrada.\n')
                break
            else
                if(abs(y(b))<=erro)&&(abs(y(b))>=0)
                    z = double(y(b));
                    fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,b,z);
                    fprintf ('Método convergiu. Raiz aproximada encontrada.\n')
                    break
                else
                    %x1 = double(((a*y(b))-(b*y(a)))/(y(b)-y(a)));
                    x1 =double((a*y(b)-b*y(a))/(y(b)-y(a)));
                    if(y(x1)==0)
                        z = double(y(x1));
                        fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,x1,z);
                        fprintf ('Método convergiu. Raiz exata encontrada.\n')
                        break
                    else
                        if(abs(y(x1))<=erro)&&(abs(y(x1))>=0)
                            z = double(y(x1));
                            fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,x1,z);
                            fprintf ('Método convergiu. Raiz aproximada encontrada.\n')
                            break
                        else
                            z=double(y(x1));
                            
                            fprintf('%3.0f\t\t\t%3.8f\t%3.8f\t%3.8f\t%3.8f\n',t,a,b,x1,z);
                            if(y(a)*y(x1)<0)
                                b=x1;
                            else
                                if(y(a)*y(x1)>0)
                                    a=x1;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    %fprintf('\n');
    if(t==20)
        fprintf('Método não convergiu. Número máximo de iterações atingido.')
    end
end
fprintf ('\n')


end

