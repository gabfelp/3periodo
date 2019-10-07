function v=Euler(h,f,x1,x0,y0)
    syms x y;
    cont=0;
    %vetX(1)=x0;
    %vetY(1)=y0;
    for i=x0:h:x1
       cont = cont+1;
        vetX(cont)=i;
        vetY(cont)=y0;
        if(i ~= x1)
       y0 = y0 + h*(double(subs(f,[x y],[i,y0])));
        end
    end
    v=y0;
    plot(vetX,vetY);
    
    
end

