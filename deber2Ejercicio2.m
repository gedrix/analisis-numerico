%SERIE DE TYLOR DE RAIZ DE X
clear; clc;
lim =('ingrese el limite');
limite = input(lim);
a =0;
denominador =1;
exponente =1 ;
inicioSerie =1/2;
aux= 1/2;
fprintf('1 +');

while(a <limite)
    charDenominador = int2str(denominador); %convierto de int a char
    charExponente = int2str(exponente);
    charInicioSerie = num2str(aux);

    %strcat me permite concatenar
    serie = strcat('(',charInicioSerie,'/',charDenominador,'!',')','*','(x-1)','^',charExponente,'+');

    %fprintf imprime si dar salto de linea como disp
    fprintf(serie); 
    inicioSerie = inicioSerie - 1;
    aux = aux * inicioSerie; 
    denominador = denominador+1;
    exponente = exponente+1;
    a = (a+1);
end