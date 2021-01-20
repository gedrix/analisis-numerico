%diferencias finitas centrada con 3 puntos
%diferencias finitas progresivas con 3 puntos
clear; clc;
a = input('Ingrese el valor de a: ');
b = input('Ingrese el valor de b: ');
h = input('Ingrese el valor de h: ');
x = a:h:b;
y = [];

for i=1:length(x+1)
    y(i) =feval('funciones', x(i));
    if i   == length(x)
        aux = feval('funciones', x(length(x))+h);
    end
end
res = [];
auxA = a;
for j=1:1:length(x)
    termino1 = feval('funciones',(auxA - 2 *h)) ;
    auxT2 = feval('funciones',(auxA - h)) ;
    termino2 = 8 * auxT2;
    auxT3 = feval('funciones',(auxA+ h)) ;
    termino3 = 8 *auxT3;
    termino4 = feval('funciones',(auxA+ 2 *h)) ;
    divi      = 12*h;
    res(j)= (termino1-termino2+(termino3-termino4))/divi;
    auxA = auxA +h;
end

z = res(:);
y = y(:);
x = x(:);
[x,y, z]