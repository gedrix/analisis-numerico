clc,clear

grado = input('ingrese el tamaño del vector-1: ');
punto = input('Ingrese punto a xIn: ');
tempo = 0;
salir = false;
h = 0;
s = 0;

disp('Ingrese el vector X');
for i = 0:1:grado
    x(i +1) = input(['El elemento (',num2str(i),'): ']);
end


disp('Ingrese el vector Y');
for i = 0:1:grado
    y(i +1) = input(['El elemento (',num2str(i),'): ']);
end
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
%--------------------------------------------------------------
if (exit)
    disp('El valor de h es: ');
    disp(h);
    s = (punto - x(length(x)))/ h;
    disp('El valor de s es: ');
    disp(s);
    delt=y;
    valorDelt(1)=delt(length(delt));
    cont=2;
    delTemp=0;
    tempoDelt = 0;
    while length(delt)>1
      delTemp=calcDelt(delt,delTemp);
      delt=delTemp;
      valorDelt(cont)=delt(length(delt));
      cont=cont+1;
    end
    g = valorDelt(1) + valorDelt(2) * s;
    for i=2:1:grado
        valorG = (valorDelt(i+1)*s*(s+1))/factorial(i);
        if i > 2
            for j=2:i-1
                valorG = valorG * (s + j);
            end
        end
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