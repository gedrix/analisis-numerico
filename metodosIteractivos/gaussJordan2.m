clear; clc;
tamM =input('Ingrese tamaño matriz');
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
matriz
disp('termino idependiente');
vectorT

AuxM=[matriz vectorT]; %uno las 2 matrices para cuando toque dividir, se divida todo
for i=1:tamM
    for j=1: tamM
        if i == j
           if AuxM(i,j)~= 1
                 AuxM(i,:) =  AuxM(i,:) ./AuxM(i,j);
                disp(AuxM);   %imprimo
            end   
        end
    end    
    
    for k=1:tamM 
      if k~=i 
          AuxM(k,:)=-AuxM(k,i).*AuxM(i,:)+AuxM(k,:); %entonces se convierte a 0 
           disp(AuxM)
      end
    end
    
end
