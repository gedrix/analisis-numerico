%metodo de euler
clear; clc;
a = input('Ingrese el valor de a: ');
b = input('Ingrese el valor de b: ');
n = input('Ingrese el valor de n: ');
y0 = input('Ingrese el valor de y: ');
h = (b -a)/n;
x = a:h:b;
y=[];
y(1) = y0;
for i=1:n
    y(i+1)=y(i)+ (h* (feval('funciones',x(i),y(i))));
    
end
y = y(:);
x = x(:);
[x,y]