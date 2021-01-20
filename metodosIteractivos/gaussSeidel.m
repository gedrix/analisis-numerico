clear; clc;

iteraciones = input('Ingrese numero limite de Iteraciones: ');
tamM =input('Ingrese tamaño matriz');
%matriz = [4 -1; 2 4];
%vectorT = [10; 14];
%matriz =[2 4 8; 5 9 2; 2 6 11];
%vectorT = [-4; -70; -16];

for i=1: tamM
   for j = 1: tamM
        matriz(i,j) = input(['El elemento (',num2str(i),',',num2str(j),'): ']);
    end
end


disp('Ingrese el vector B');
for i = 1:tamM
    for j = 1: 1
        vectorT(i,j) = input(['El elemento (',num2str(i),',',num2str(j),'): ']);
    end
end
disp('matriz');

%syms x y
%ecu1= solve('4*x-y=10',x);
%disp(ecu1);


%    for j = 1: (iteraciones)
%       X= ((matriz(1,1+1)*(-1)*y)+vectorT(1))/(matriz(1,1));
%        Y= ((matriz(1+1,1)*(-1)*X)+vectorT(1+1))/(matriz(1+1,1+1));
 %       disp(X);
  %      disp(Y);
   %    y = Y;
    %end
matriz
x =zeros(tamM,1);
x
disp('termino idependiente');
vectorT

aux =0;

for i=1:+1:iteraciones
    for j=1:+1:tamM
        aux=vectorT(j,1);
            for k=1:+1:tamM
                if j~=k
                aux=aux-(matriz(j,k)*x(k,1));
                end
            end
            itPrev=x(j,1);
        x(j,1)=aux/matriz(j,j); 
    end
disp(i)
x
end