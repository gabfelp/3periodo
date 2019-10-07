function plotar_grafico(y,a,b);
k=1;
syms x;
for t=a:0.001:b
   V(k)=subs(y,x,t);
   T(k)=t;
   k=k+1;
end
    plot(T,V);
    hold on;
    ponto=double(subs(y,x,0.09611))
    plot(0.09611,ponto,'*')
end