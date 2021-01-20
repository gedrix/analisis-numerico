%evalular funcio intervalo
%a =3;
%b =12;
%h =0.1; 
%x=a:b;
%x= a:h:b;
%hacer todo esto desde consola
clear; clc;
grado = input('ingrese el grado del polinomio');
%puntoEvalular = input('ingrese el punto a evualar');
terminoIndependiente = input('ingrese el termino independiente');
%esto es para los puntos a evaluar
a = input('ingrese el valor de a');
b = input('ingrese el valor de b');
h = input('ingrese el valor de h');
puntoEvalularX=[];
puntoEvalularX=a:h:b;
vectY= [];
vect = [];
sum = 0;
sum_total=0;
cont =1;
aux2=1;
for  n=1:grado
    terminoAladoX =input(['ingresa el termino alado x^(',num2str(n),'):']);
    vect(n)=terminoAladoX;
end

for i=puntoEvalularX %a:b
    aux = 0;
    for  n=1:grado
        sum= vect(n) * puntoEvalularX(aux2).^ n;
        aux = aux + sum;
    end
    
    sum_total = aux + terminoIndependiente;
    %disp(sum_total);
    vectY(cont)= sum_total;
    aux2 =aux2 + 1;
    %fprintf('x%d   y%d\n',puntoEvalularX(cont),sum_total);
    cont = cont+1;
end
puntoEvalularX = puntoEvalularX (:);
vectY =vectY(:);
[puntoEvalularX,vectY]
%disp(puntoEvalularX);
%disp(vectY);

