%diferencias finitas regresiva con 2 puntos
clear; clc;
a = input('ingrese el valor de a');
b = input('ingrese el valor de b');
h = input('ingrese el valor de h');
x = [];
y = [];

x=a:h:b;
%evalular la funcion%
for i=1:length(x+1)
    y(i) =feval('funciones', x(i));
    if i   == length(x)
        aux = feval('funciones', x(length(x))+h);
    end
end

res = [];
auxA= a;
for j=2:1:length(x)+1
    aux2 = feval('funciones',(auxA-h)) ;
    aux1 = y(j-1);
    res(j-1)= (aux1- aux2)/h;
    auxA = auxA +h;
end
z = res(:);
y = y(:);
x = x(:);
%disp(z);
[x,y,z]

%la derivada%

