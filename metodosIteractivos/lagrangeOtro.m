clc,clear
%Procedimiento de Lagrange
%Formula -> P(x) = Y0.L0(x) + Y1.L1(x) + Yn.Ln(x)
grado = input('Ingrese el grado de la ecuación: ');
punto = input('Ingrese punto a evaluar: ');
tempo = 0;
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
disp('valores de x ingresados');
%disp(x)
x
disp('valores de y ingresados');
%disp(y)
y
for i=1:1:length(x)
    tempoM = 1;
    tempoD = 1;
    for j=1:1:length(x)
        if j~=i
            tempoM = tempoM * (punto - x(j));
            tempoD = tempoD * (x(i) - x(j));
        end
    end
    valor = tempoM / tempoD;
    l(i) = valor;
    tempo = tempo + (y(i) * l(i));
end
disp('Los valores de L son: ');
disp(l)
disp('La Respuesta al evaluar el Punto es: ');
disp(tempo)