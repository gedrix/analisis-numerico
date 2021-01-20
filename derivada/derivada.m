%diferencias finitas progresiva con 2 puntos
clear; clc;
%format long; para que transforme de que de notacion a numeros decimales
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


res = [];
for j=2:1:length(x)
    res(j-1)= (y(j)- y(j-1))/h;
   if (j+1  == length(x)+1) %con valor en h de 0.00001 da el resultado -3
        %f = feval('funciones', (j));
        res(j) = (aux - y(j))/h;
    end

end
%z = res(:);
%y = y(:);
%x = x(:);
%[x,y,z]
resultados = table(x(:), y(:), res(:));
resultados.Properties.VariableNames ={'x' 'derivada' 'Progresiva'} 
%la derivada%

