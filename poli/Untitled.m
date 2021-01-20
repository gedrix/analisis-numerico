clear; clc;
cont = 0;
coe = [];
derivada = [];
limite = 1;
c = 1;
a = input('Ingrese valor de a: ');
b = input('Ingrese valor de b: ');
incremento = input('Ingrese valor incremento: ');
x = a:incremento:b;
%aux = x(length(x))+incremento;
while (limite < length(x)+1)
    derivada(limite) = feval('funciones', x(limite));
    if (limite +1  == length(x)+1);
        aux = feval('funciones', x(length(x))+incremento);
    end
    limite = limite + 1;
end

valores = [];
for g=2:1:length(x)
    valores(g-1) = (derivada(g) - derivada(g-1))/incremento;
    if (g+1  == length(x)+1)
        f = feval('funciones', (g));
        valores(g) = (aux - derivada(g))/incremento;
    end
end
derivada=derivada(:);
valores = valores(:);
x=x(:);
disp('los valores de la funci?n son: ');
[x,derivada,valores]
% disp('la funci?n evaluada es: ');
% [x,valores]