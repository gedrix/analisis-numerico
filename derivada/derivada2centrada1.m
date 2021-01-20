clear; clc;
a = input('Ingrese el valor de a: ');
b = input('Ingrese el valor de b: ');
h = input('Ingrese el valor de h: ');
x = a:h:b;
y = [];

for i=1:length(x)
    y(i) =feval('funciones', x(i));
end

res = [];
auxA = a;
for j=1:1:length(x)
   termino1 = feval('funciones', (auxA-h));
   auxT2 = feval('funciones', (auxA));
   termino2 = 2 *auxT2;
   termino3 = feval('funciones', (auxA +h));
   divi = h^2;
   res(j)= (termino1 - termino2 + termino3 )/divi;
   auxA = auxA + h;
end
z = res(:);
y = y(:);
x = x(:);
[x,y,z]