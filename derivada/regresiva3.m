%diferencias finitas regresiva con 4 puntos
clear; clc;
a = input('Ingrese el valor de a: ');
b = input('Ingrese el valor de b: ');
h = input('Ingrese el valor de h: ');
x = a:h:b;
y = [];

for i=1:length(x+1)
    y(i) =feval('funciones', x(i));
end
res = [];
auxA =a;
for j=1:1:length(x)
    termino1 = feval('funciones',(auxA - 2 *h)) ;
    auxT2 = feval('funciones',(auxA - h)) ;
    termino2 = 4 * auxT2;
    termino3 = 3 * y(j);
    divi = 2 *h;
    res(j)= ((termino1 - termino2) + termino3)/divi;
    auxA = auxA+h;
end

z = res(:);
y = y(:);
x = x(:);
[x,y, z]