%SERIE DE TYLOR
% F(X) E^X
clear; clc;
lim =('ingrese el limite');
limite = input(lim);
a =0;
denominador =1;
exponente =1 ;
inicioSerie =2;

fprintf('1');
while(a <limite)
charDenominador = int2str(denominador); %convierto de int a char
charExponente = int2str(exponente);
charInicioSerie = int2str(inicioSerie);
%disp('+');
%strcat me permite concatenar
serie = strcat('+','(',charInicioSerie,'/',charDenominador,'!',')','*','x','^',charExponente);

%fprintf imprime si dar salto de linea como disp
fprintf(serie); 
 inicioSerie = inicioSerie*2;
 denominador = denominador+1;
 exponente = exponente+1;
a = (a+1);

end
    