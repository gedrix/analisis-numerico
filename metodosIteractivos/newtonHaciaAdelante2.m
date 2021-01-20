clc,clear
%Interpoblacion de Newton hacia adelante
%Formula -> 
grado = input('Ingrese el grado de la ecuación: ');
punto = input('Ingrese punto a evaluar: ');
tempo = 0;
salir = false;
h = 0;
s = 0;
disp('Ingrese Valores de X');
for i=0:1:(grado)
    prompt = (['El valor de X(',num2str(i),'): ']);
    x(i+1) = input(prompt);
end
disp('Ingrese Valores de Y');
for i=0:1:(grado)
    prompt = (['El valor de Y(',num2str(i),'): ']);
    y(i+1) = input(prompt);
end
h = x(2) - x(1);
for i=2:1:length(x)
    if (x(i) - x(i-1)) == h
        h = x(i) - x(i-1);
        salir = true;
    end
end
val=zeros(grado,1);
if (salir)
    disp('El valor de h es: ');
    disp(h);
    s = (punto - x(1))/ h;
    disp('El valor de s es: ');
    disp(s);
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
        valorG = (valorDelt(i+1)*s*(s-1))/factorial(i);
        if i > 2
            for j=2:i-1
                valorG = valorG * (s - j);
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