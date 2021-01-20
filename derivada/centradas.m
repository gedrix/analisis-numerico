%diferencias finitas centradas con 2 puntos
clear; clc;
%diferencias finitas progresiva
a = input('ingrese el valor de a');
b = input('ingrese el valor de b');
h = input('ingrese el valor de h');
x = [];
y = [];

x=a:h:b;
%evalular la funcion%
for i=1:length(x+1)
    y(i) =feval('funciones', x(i));
    if i +1  == length(x)+1
        aux = feval('funciones', x(length(x))+h);
    end
end
%disp(aux);
%-10 en 0
res = [];
auxA= a;
for j=1:1:length(x) 
    
    termino1= feval('funciones',(auxA+ h)) ;
    termino2 = feval('funciones',(auxA - h));
    divi = 2*h;
    res(j)= (termino1-termino2)/(divi);
    auxA = auxA +h;
end

z = res(:);
y = y(:);
x = x(:);
%disp(z);
[x,y,z]

%la derivada%

