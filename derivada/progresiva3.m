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
for j=2:1:length(x)
    aux2 = feval('funciones',(auxA+ 2 *h)) ;
   %disp(aux2);
   termino1 = -3 * y(j-1);
   termino2 = 4  * y(j);  
   termino3 = aux2;
   divi      = 2*h;
   res(j-1)= (termino1 + (termino2 - termino3))/divi;
   
   if j+1 == length(x)+1
    auxA = auxA +h;
    termino1 = -3 * y(j);
    termino2 = 4  * aux;
    aux2 = feval('funciones',(auxA+ 2 *h));
    res(j)= (termino1 + (termino2 - aux2))/divi;
   end
   auxA = auxA +h; 
end

z = res(:);
y = y(:);
x = x(:);
[x,y, z]