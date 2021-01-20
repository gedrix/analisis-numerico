clear; clc;

a = input('Ingrese valor de a: ');
b = input('Ingrese valor de b: ');
incremento = input('Ingrese valor incremento: ');
limite = 1;
cont = 0;
coe = [];
y = 0;
arreglo =[];
% c = 1;
exp = 0;
punto = [];
valor = 0;
x = a:incremento:b;
%disp(x)
grado = input('Ingrese grado de polinomio: ');
while (cont < grado+1)
    aux = input(['Ingrese Valor de x^',num2str(cont),': ']);
    coe = [coe,aux];
    cont = cont +1; 
end
terminar = 1;
while (length(punto) ~= grado)
    punto = [];
    x = a:incremento:b;
    for i = 1 : length(x)
        y = 0;
        for c = 1 : length(coe)
            y = y +(coe(c)* (x(i).^(c-1)));
        end
        if round(y,3) == 0.000
            punto = [punto,x(i)];
        end
        arreglo = [arreglo,y];
    end
%     while (limite < length(x)+1)
%         c = 1;
%         y = 0;
%         while (c < length(coe)+1)
%             y = y +(coe(c)* (x(limite).^(c-1)));
%             c = c + 1;
%         end
%         if round(y,3) == 0.000
%         %if (y >= 0 && y <= 0.001)
%             punto = [punto,x(limite)];
%         end
%         arreglo = [arreglo,y];
%         limite = limite + 1;
%     end
    incremento = incremento / 10;
end
disp('El valor de raices es: ');
disp(punto);
