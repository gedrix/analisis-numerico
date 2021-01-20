clear; clc;
tamM =input('Ingrese tamaño matriz');
for i=1: tamM
   for j = 1: tamM
        A(i,j) = input(['El elemento (',num2str(i),',',num2str(j),'): ']);
    end
end


disp('Ingrese el vector B');
for i = 1:tamM
    for j = 1: 1
        B(i,j) = input(['El elemento (',num2str(i),',',num2str(j),'): ']);
   end
end
disp('matriz');
A
disp('termino idependiente');
B


C=[A B]; %%unión de los datos en una solo matriz
for i=1:length(C(:,1)) %%para i desde la primera fila  hasta el número de filas existentes 
if C(i,i)~=1 %%si el elemento i,i de la diagonal es diferente de 1 
    C(i,:)= C(i,:)./C(i,i);  %entonces se convierte a 1  dividiendo toda la fila por dicho elemento
    disp(C)   %salida de datos
end
%además el resto de elementos de la columna deben convertirse a 0 :  
%es decir si  n es diferente de i ya que si i y n son iguales entonces el
%elemento se encuentra en la diagonal 

    for n=1:length(C(:,1)) %para n desde la primera fila hasta el número de filas existentes
      if n~=i % si n en la columna i no está en la diagonal es decir si i no es igual a n
          C(n,:)=-C(n,i).*C(i,:)+C(n,:); %entonces se convierte a 0 
           disp(C)
      end
    end
end