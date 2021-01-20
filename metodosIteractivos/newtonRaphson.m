clear; clc;
x0 = input('Ingrese el valor de X0: ');
error = input('Ingrese el error: ');
n = input('Ingrese el valor de maximo de interraciones: ');

ValorX=[];
ValorY=[];
ValorX(1)= x0;
for i=1:n
    numerador =(feval('funciones',ValorX(i)));
    denomiador = (feval('derivadaFuncionNR',ValorX(i)));
    ValorX(i+1) = ValorX(i) - (numerador /denomiador);
    ValorY(i) = abs(ValorX(i+1)) - abs(ValorX(i));
    if abs(ValorY(i)) <= error
        disp ('final');
        break;
    end    
end
ValorX = ValorX(:);
ValorY = ValorY(:);

[ValorX]
[ValorY]