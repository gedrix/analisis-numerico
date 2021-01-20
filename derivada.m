clear; clc;
grado = input('ingrese el grado del polinomio');
vect =[];
res =0;

for  n=0:grado
    terminoAladoX =input(['ingresa el termino alado x^(',num2str(n),'):']);
    vect(n+1)=terminoAladoX;
end
derivando =0;
while(derivando ~=1)
    res =0;
    c = 1;
    b =0;
    vectAux = [];
    for  n=1:length(vect)
            res= vect(n) *b;
            msj = strcat('x^',num2str(b),'= ',num2str(res),'\n');
            fprintf(msj);
            if (res ~= 0)
                vectAux(c)= res;
                c = c+1;
            end    
            b =b +1;
    end
     %disp(vectAux);
     vect = vectAux;
    derivando = input('Deseas segir derivando, ingrese 0, caso que no 1');
 
end

