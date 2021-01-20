clc
clear 
syms x n 

limite_superior= 6.1;
limite_inferior= -6.1;

num_repeticiones_aux = 'Ingrese el valor a repetir : ';
num_repeticiones = input(num_repeticiones_aux);

funcion1 = sin(x);
funcion2 = funcion1 * -1; 
%saco la inversa para poder darle la forma a la grafica

%fplot las 2 funciones
figure(1)
fplot(funcion1,[limite_inferior,2*limite_superior+limite_inferior]);
 hold on 
fplot(funcion2,[limite_inferior,2*limite_superior+limite_inferior]);
title('F. Original')

%funcion 1
A0= F1(funcion1,x,limite_inferior,limite_superior );
an_aux=F2(funcion1,limite_superior, x, limite_inferior, n);
bn_aux= F3( funcion1,limite_superior, x, limite_inferior, n);
An=an_aux*cos(2*pi*n*x/limite_superior);
Bn=bn_aux*sin(2*pi*n*x/limite_superior);
suma=A0;

%funcion 2
A02= -1*F1(funcion2,x,limite_inferior,limite_superior );
an_aux2=-1*F2(funcion2,limite_superior, x, limite_inferior, n);
bn_aux2=-1*F3( funcion2,limite_superior, x, limite_inferior, n);
An2=-1*an_aux2*cos(2*pi*n*x/limite_superior);
Bn2=-1*bn_aux2*sin(2*pi*n*x/limite_superior);
suma2=A02;


for N=1:num_repeticiones
 suma=suma+subs(An,n,N)+subs(Bn,n,N); %funcion 1
 suma2=suma2+subs(An2,n,N)+subs(Bn2,n,N); %funcion 2

end
    figure(2)
    fplot(suma);
    hold on
   fplot(suma2);
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