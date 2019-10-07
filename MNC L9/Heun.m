function v=Heun(h,f,x1,x0,y0)
    syms x y;
    k=0;
    cont=0;
    for i=x0:h:x1
        cont = cont+1;
        vetX(cont)=i;
        vetY(cont)=y0;
        if(i ~= x1)
       k = y0 + h*(double(subs(f,[x y],[i,y0])));
       y0=y0+(h/2)*(double(subs(f,[x y],[i y0]))+double(subs(f,[x y],[i+h,k])));
        end
    end
    v=y0;
    plot(vetX,vetY);
    
    
end

