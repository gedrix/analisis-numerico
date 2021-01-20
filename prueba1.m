clear; clc;
valor_1 = 'ingrese valor 1';
x = input(valor_1);
valor_2 = 'ingrese valor 2';
y = input(valor_2);
disp('elija operacion a realizar, 1 =suma, 2=resta, 3 = mult, 4 = div');
msj ='opera';
operacion = input(msj);
switch (operacion)
    case 1
        z = x +y;
    case 2
        z = x-y;
    case 3
        z = x*y;
    case 4 
        z = x/y;
end

disp(z);
