%PROGRAMA PARA OBTENER LAS RAICES DE UNA ECUACION LINEAL
clear; clc;
g =('ingrese el grado del polinomio\n');
grado = input(g);
a =('ingrese el punto a A: ');
A = input(a);
b =('ingrese el punto a B: ');
B = input(b);
h =('ingrese el punto a H: ');
H = input(h);
x = A:H:B;
c=0;
y=0;
vector=[];
raiz=[];
vector(1)=5;%valor inicial
while c <= grado
     if c==0
        vector(c+1)=input('Ingrese el valor la variable independiente: ');
        c=c+1;
    else
        vector(c+1)=input(['Ingrese el coeficiente de x^' num2str(c)  ': ']);
        c=c+1;
     end
end

r1=1;
a=1;
while r1 <= length(x)
    f=0;
    y=0;
   while f < length(vector)
       t = x(r1).^f;
       v=vector(f+1);
       y = y + v*t;
       vc(r1)=y;
       f=f+1;
   end
   %disp(y);
   r1=r1+1;
end
%x=x(:);
%vc=vc(:);

%[x,vc]
%plot(x,vc);

vl=1;
while vl < length(vc)
    if vc(vl+1) < vc(vl)
               %decreciente
               raiz(1)= x(vl+1);
           else
               if vc(vl+1) > vc(vl)
                   %crecciente
                   raiz(2) = x(vl+1);
               end
           end
    vl=vl+1;
end
r1=raiz(1);
fprintf('\nLos rangos son:\n');
n1 =strcat('desde ',num2str(A),' hasta ',num2str(r1),' es decreciente \n');
n2 =strcat('desde ',num2str(raiz(2)),' hasta ',num2str(B),' es creciente \n');
fprintf(n1);
fprintf(n2);