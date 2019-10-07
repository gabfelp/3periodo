function plotar_grafico_add(y,a,b);
k=1;
syms x;
for t=a:0.03:b
   V(k)=subs(y,x,t);
   T(k)=t;
   k=k+1;
   end
    hold on;
    plot(T,V);
end