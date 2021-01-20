%margen de error
clear; clc;
a = input('ingrese el valor de a');
b = input('ingrese el valor de b');
h = input('ingrese el valor de h');
grado = input('ingrese el grado del polinomio');
terminoIndependiente = input('ingrese el termino independiente');
%puntoEvalularX=[];
%puntoEvalularX=a:h:b;

vect = [];


for  n=1:grado
    terminoAladoX =input(['ingresa el termino alado x^(',num2str(n),'):']);
    vect(n)=terminoAladoX;
end

raices = [];
raizAux=1;


while(length(raices) ~= grado)
    raices = [];
    x_aux=[];
    sum = 0;
    sum_total=0;
    cont =1;
    aux2=1;
    aux3 =1;
    c =1;
    x_aux = a:h:b;
     for i = 1 : length(x_aux)
        aux = 0;
        for n=1:grado
            sum= vect(n) * x_aux(aux2).^ n;
            aux = aux + sum;
        end
           sum_total = aux + terminoIndependiente;
           vectY(cont)= sum_total; 
           
           if round(vectY(cont),3) ==0.000
               raices(c) = x_aux(cont);
               c = c+1;
           end
           cont = cont+1;
           aux2 =aux2 + 1;
     end
        %disp(vectY)
        h = h / 10;    
end
    msj = ['las raices en valor x son' num2str(raices)];
    disp(msj);



