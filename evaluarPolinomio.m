%evalular el polinomio
%var = puntoEval .^i;
clear; clc;
grado = input('ingrese el grado del polinomio');
puntoEvalular = input('ingrese el punto a evualar');
terminoIndependiente = input('ingrese el termino independiente');
sum = 0;
aux = 0;
cont =1;
vect= [];
for  n=1:grado
    terminoAladoX =input(['ingresa el termino alado x^(',num2str(n),'):']);
    vect(n)=terminoAladoX;
end
 disp(vect);
 
for  n=1:grado
    sum= vect(n) * puntoEvalular.^ cont;
    aux = aux + sum;
    cont = cont+1;
end
aux = aux + terminoIndependiente;
disp(aux);