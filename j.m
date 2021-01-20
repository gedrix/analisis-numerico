clear; clc;
prompt = 'Ingrese el valor de inicio  ';
in = input(prompt);
prompt = 'Ingrese el valor final  ';
fn = input(prompt);
prompt = 'Ingrese el valor de incremento  ';
h = input(prompt);
prompt = 'Ingrese el grado del polinomio  ';
n = input(prompt);

for i=0:+1:n
    a= ['Ingrese el coeficiente de x^',num2str(i),' = '];
    prompt = a;
    p(i+1) = input(prompt);      
end
p;
x=in:h:fn;
size(x');
for v=1:+1:size(x')
    temp=0;
    for k=1:+1:size(p')
        temp=temp+p(k)*(x(v)^(k-1));
    end
    y(v)=temp;   
end

for g=2:+1:size(y')
    x1=x(g-1);
    x2=x(g);
    y1=y(g-1);
    y2=y(g);
    if y2>y1
        z=['Es creciente en el rango', num2str(x1),' - ',num2str(x2)];
        prompt=z
    else
        z=['Es decreciente  en el rango', num2str(x1),' - ',num2str(x2)'];
         prompt=z
    end
end