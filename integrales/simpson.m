
clear; clc;
a = input('Ingrese el valor de a: ');
b = input('Ingrese el valor de b: ');
n = input('Ingrese el valor de n: ');
h = (b-a)/n;
x = a:h:b;
y = [];

for i=1:1:length(x)
    y(i) =feval('funciones', x(i));
end
sum =0;
for i=1:1:length(x)
    if i == 1
    sum = sum+ y(i);
    else
        if i == length(x)
            sum = sum+ y(i);
        else
            if mod (i,2)==0
                 sum = sum + (4* y(i));
            else
                 sum = sum + (2* y(i));    
            end        
        end   
    end
    
end
 mul = (b -a)/(3*n);
 total = mul * sum;
 disp (total);
 fprintf(num2str(total));
 %fprintf(strcat('\nIntegral es: \t', num2str(resultado), '\n'));