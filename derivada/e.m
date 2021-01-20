% Diferencias Finitas Progresivas en 3 puntos
% F'(x) = (-3*F(x) + 4*F(x + h) - F(x - 2*h)) / 2*h
clear; clc;

puntoA = input('Ingrese el punto A: ');
puntoB = input('Ingrese el punto B: ');
intervalo = input('Ingrese el punto H (intervalo): ');

dosH = intervalo * 2;
while puntoA <= puntoB
   f1 = puntoA;
   f2 = puntoA + intervalo;
   f3 = puntoA + dosH;
   % evaluar funciones
   f1 = feval('funciones', f1);
   f2 = feval('funciones', f2);
   f3 = feval('funciones', f3);
   % formula
   puntoY = ((-3 * f1) + (4 * f2) - f3) / dosH;
   fprintf(strcat('puntoX: ', num2str(puntoA), '\t\t   dy: ', num2str(puntoY), '\n'));
   puntoA = puntoA + intervalo;
end