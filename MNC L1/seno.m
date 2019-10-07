clear
close all
clc
T = []
V= imput('Entre com um valor ');
k=1;
for t=0:0.001:0.04
    T(k)=t;
    Y(k)=V*sin(314*t);
    W(k)= V*sin(314*t+2*pi/3);
    Z(k)= V*sin(314*t-2*pi/3);
    
    k=k+1;
    clc
end
plot(T,Y,T,W,T,Z)
