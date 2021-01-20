clc
clear 
syms x n 
limite_superior_aux = 'Ingrese el valor a limite superior : ';
limite_superior= input(limite_superior_aux);

limite_inferior_aux = 'Ingrese el valor a Limite inferior : ';
limite_inferior= input(limite_inferior_aux);
num_repeticiones_aux = 'Ingrese el valor a repetir : ';
num_repeticiones = input(num_repeticiones_aux);

funcion_aux = 'Ingrese la uncion: ';
funcion1 = input(funcion_aux);



%saco la inversa para poder darle la forma a la grafica

%fplot la funcion original
figure(1)
fplot(funcion1,[limite_inferior,2*limite_superior+limite_inferior]);
 
title('F. Original')

%funcion 1
A0= F1(funcion1,x,limite_inferior,limite_superior );
an_aux=F2(funcion1,limite_superior, x, limite_inferior, n);
bn_aux= F3( funcion1,limite_superior, x, limite_inferior, n);
An=an_aux*cos(2*pi*n*x/limite_superior);
Bn=bn_aux*sin(2*pi*n*x/limite_superior);
suma=A0;



for N=1:num_repeticiones
    suma=suma+subs(An,n,N)+subs(Bn,n,N); %funcion 1
end
    figure(2)
    fplot(suma);
    
   title('F. Fourier')
   
%%%%%%%%%%FUNCIONES%%%%%%%%

function A0 = F1(f,x,limite_inferior,limite_superior)
    A0=(1/limite_superior)*int(f,x,limite_inferior,limite_superior+limite_inferior);
end
function an = F2(f,limite_superior,x,limite_inferior,n)
    an=(2/limite_superior)*int((f*cos(2*pi*n*x/limite_superior)),x,limite_inferior,limite_superior+limite_inferior);
end
function bn = F3(f,limite_superior,x,limite_inferior,n)
    bn=(2/limite_superior)*int((f*sin(2*pi*n*x/limite_superior)),x,limite_inferior,limite_superior+limite_inferior);
end