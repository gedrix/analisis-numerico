clear; clc;
grado = input('ingrese el grado de L'); %se tiene que agregar un valor mas
%xq inicia 0; si es grado 3, seria L0, L1, L2, L3
Xin =input('Ingrese Valor de X');

disp('Ingrese el vector X');
for i = 1:grado +1
    for j = 1: 1
        vectorX(i,j) = input(['El elemento (',num2str(i),',',num2str(j),'): ']);
   end
end

disp('Ingrese el vector Y');
for i = 1:grado+1
    for j = 1: 1
        vectorY(i,j) = input(['El elemento (',num2str(i),',',num2str(j),'): ']);
   end
end

 vectorX
 vectorY



for i=1:(grado+1)
    p=1;
    for j=1:(grado+1)
        if i ~= j
            p = p *((Xin - vectorX(j,1))/(vectorX(i,1)-vectorX(j,1)));
        end
     vectorL(i,1) = p;   
    end
   
end
  vectorL
 
 sum =0;
    for j=1:(grado+1)
        sum = sum +  vectorY(j,1) * vectorL(j,1);
    end
disp(sum)