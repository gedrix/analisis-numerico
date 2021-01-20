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
   termino1 = feval('funciones', (auxA-(3*h)));
   auxT2 = feval('funciones', (auxA -(2*h)));
   termino2 = 4 * auxT2;
   auxT3 = feval('funciones', (auxA -h));
   termino3 = 5*auxT3;
   auxT4 =feval('funciones', (auxA));
   termino4 = 2*auxT4;
   divi = h^2;
   res(j)= (-termino1 + termino2 - termino3 +termino4 )/divi;
   auxA = auxA + h;
end
z = res(:);
y = y(:);
x = x(:);
[x,y,z]