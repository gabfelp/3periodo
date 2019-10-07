function v=RK4(h,f,x1,x0,y0)
    syms x y;
    cont=0;
    for i=x0:h:x1
         cont = cont+1;
        vetX(cont)=i;
        vetY(cont)=y0;
        if(i ~= x1)
       k1 = (double(subs(f,[x y],[i,y0])));
       k2=(double(subs(f,[x y],[i+(h/2) y0+(h*k1)/2])));
       k3=(double(subs(f,[x y],[i+(h/2) y0+(h*k2)/2])));
       k4=(double(subs(f,[x y],[i+h y0+h*k3])));
       y0=y0+(h/6)*(k1+2*k2+2*k3+k4);
        end
    end
    v=y0;
    plot(vetX,vetY);
    
    
end

