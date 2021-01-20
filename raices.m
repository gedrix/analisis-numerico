
clear; clc;
grado = input('ingrese el grado del polinomio');
terminoIndependiente = input('ingrese el termino independiente');
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
    vectY(cont)= sum_total;
    
    if vectY(cont) == 0
        disp (puntoEvalularX(aux2))
    end
    cont = cont+1;
    
    aux2 =aux2 + 1;%mueve de posicion en puntoEvaluarX
end
%puntoEvalularX = puntoEvalularX (:);
%vectY =vectY(:);
%[puntoEvalularX,vectY]

