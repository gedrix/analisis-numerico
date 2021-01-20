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
   auxT1 = feval('funciones', auxA);
   termino1 = 2 *auxT1;
   auxT2 = feval('funciones', (auxA +h));
   termino2 =5 * auxT2;
   auxT3 = feval('funciones', (auxA +(2*h)));
   termino3 = 4*auxT3;
   termino4 =feval('funciones', (auxA +(3*h)));
   divi = h^2;
   res(j)= (termino1 - termino2 + termino3 - termino4 )/divi;
   auxA = auxA + h;
end
z = res(:);
y = y(:);
x = x(:);
[x,y,z]