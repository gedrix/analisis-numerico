clear; clc;
prompt = 'Ingrese el numero maximo de iteraciones  ';
it = input(prompt);
prompt = 'Ingrese el error  ';
er = input(prompt);
prompt = 'Ingrese el tamaño de la matriz ';
m = input(prompt);

for i = 1:(m)
    for j = 1: (m)
        prompt = (['El elemento (',num2str(i),',',num2str(j),'): ']);
        a(i,j) = input(prompt);
    end
end
disp('Ingrese el vector B');
for i = 1:(m)
    for j = 1: 1
        prompt = (['El elemento (',num2str(i),',',num2str(j),'): ']);
        b(i,j) = input(prompt);
    end
end

a
x =zeros(m,1)
b
temp=0;

for v=1:+1:it
for k=1:+1:m
    temp=b(k,1);
        for w=1:+1:m
            if k~=w
            temp=temp-(a(k,w)*x(w,1));
            end
        end
        itPrev=x(k,1);
    x(k,1)=temp/a(k,k); 
   % val(k,1)= abs(x(k,1)-itPrev);
end
x
%val
   
end

