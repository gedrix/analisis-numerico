%dy = cos(2*x) + sin(3*y);
%a =0, b=1, y=0, n=5
clear; clc;

y = [];
a = input('Ingrese valor de a: ');
b = input('Ingrese valor de b: ');
n = input('Ingrese valor de n: ');
Yin = input('Ingrese valor y: ');
h = (b-a)/n;
x = a:h:b;
y(1) = Yin;
for i=1:1:(n)
    auxK1 = h * (feval('funciones',x(i),y(i)));
    auxK2 = h * (feval('funciones',x(i+1),(y(i) + auxK1)));
    y(i+1)=y(i)+((auxK1 + auxK2)/2);
end

for j=1:1:length(x)
    solE(j) = exp(1/4- power(1/2 -x(j),2));
end    
resultados=table(x(:),y(:), solE(:));
resultados.Properties.VariableNames={'Valores_x' 'Valores_y', 'sol'}


%resultados2 = table(solE(:));
%resultad0s2.Properties.VariableNames={'Punto'}