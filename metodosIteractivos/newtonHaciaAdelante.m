clear; clc;
grado = input('ingrese el tamaño del vector-1: '); %delta es el triangulito


disp('Ingrese el vector X');
for i = 0:1:grado
    x(i +1) = input(['El elemento (',num2str(i),'): ']);
end

disp('Ingrese el vector Y');
for i = 0:1:grado
    y(i +1) = input(['El elemento (',num2str(i),'): ']);
end
Xin =input('Ingrese Valor del Xin: ');
x
y

%--------------------------------------------------------------
%verifico que la H sea siempre igual 
exit = false;
h = x(2) - x(1);
for i=2:1:length(x)
    if (x(i) - x(i-1)) == h
        h = x(i) - x(i-1);
        exit = true;
    end
end
    disp('El valor de h es: ');
    disp(h);
    s = (Xin - x(1))/ h;
    disp('El valor de s es: ');
    disp(s);
%--------------------------------------------------------------
if (exit)
    delt=y;
    valorDelt(1)=delt(1);
    cont=2;
    delTemp=0;
    tempoDelt = 0;
    while length(delt)>1
      delTemp=calcDelt(delt,delTemp);
      delt=delTemp;
      valorDelt(cont)=delt(1);
      cont=cont+1;
    end
    g = valorDelt(1) + valorDelt(2) * s;
    for i=2:1:grado
        %valorG = (valorDelt(i+1)*s*(s-1))/factorial(i);
        valorG = (valorDelt(i+1)*s*(s-1));
        if i > 2
            for j=2:i-1
                valorG = valorG * (s - j);
            end
        end
        valorG = valorG/factorial(i);
        g = g + valorG;
    end
    disp('La respuesta es:');
    disp(g);
else
    disp('El valor de h debe ser constante');
end


function [delTemp]= calcDelt(x,deltTemp)
    for i=2:length(x)
        delTemp(i-1) = x(i)-x(i-1);
    end
end