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
guardar_ultimoV=[];
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
   % para obtener los puntos medios
   % if vectY(cont) == 0
   %     disp (puntoEvalularX(aux2))
   % end
    cont = cont+1;
    
    aux2 =aux2 + 1;
end
%valor cd_in de inicio de bucle while para sacar los puntos
%de dececiente y creciente
cd_in=1;
while cd_in < length(vectY)
    if vectY(cd_in+1) < vectY(cd_in)
       %decreciente
       guardar_ultimoV(1)= puntoEvalularX(cd_in+1);
       else
         if vectY(cd_in+1) > vectY(cd_in)
           %crecciente
           guardar_ultimoV(2) = puntoEvalularX(cd_in+1);
         end
     end
    cd_in=cd_in+1;
end

zz1 =strcat('es decreciente desde:\n',num2str(a), '\n al\n ',num2str(guardar_ultimoV(1)));
zz2 =strcat('\nes creciente desde:\n',num2str(guardar_ultimoV(1)), ' \nal\n ',num2str(guardar_ultimoV(2)));
fprintf(zz1);
fprintf(zz2);