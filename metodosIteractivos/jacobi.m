%metodo de jacobi
% inv invertir matriz
% diag diagoal principal
% tril traingular inferior
% triu traingular superior
clear; clc;
%vectorx =[0 0 0 0];
%k=0;
%vectorT =  [6 25 -11 15];
%matriz = [10 -1 2 0; -1 11 -1 3; 2 -1 10 -1; 0 3 -1 8];
%disp ('matriz');
%disp(matriz);
%disp ('diagonal principal');
%diagonalp = diag(diag(matriz));
%disp(diagonalp);
%disp ('invertida');
%diagonalinv = inv(diagonalp);
%disp(diagonalinv)
%disp ('triagular inferior');
%ti = tril(matriz,-1);
%disp (ti);
%disp ('triangular superior');
%ts = triu(matriz,1);
%disp (ts);

prompt = 'Ingrese el número de iteracciones: ';
n = input(prompt);
prompt = 'Ingrese el número de matriz: ';
bucleM = input(prompt);
matriz=[];
x = [];
disp('Ingrese valores al vector');
for i = 1:(bucleM)
    for j = 1: (bucleM)
        prompt = (['El elemento (',num2str(i),',',num2str(j),'): ']);
        matriz(i,j) = input(prompt);
    end
end

disp('Ingrese el vector B');
for i = 1:(bucleM)
    for j = 1: 1
        prompt = (['El elemento (',num2str(i),',',num2str(j),'): ']);
        b(i,j) = input(prompt);
    end
end

disp('Ingrese el vector X');
for i = 1:(bucleM)
    for j = 1: 1
        prompt = (['El elemento (',num2str(i),',',num2str(j),'): ']);
        x(i,j) = input(prompt);
    end
end

x=x(:);
b=b(:);
disp('matriz');
disp(matriz);

disp('b');
disp(b);

disp('x');
disp(x);

diagonalp = diag(diag(matriz));

ti = tril(matriz,-1);
ts = triu(matriz,+1);

for i=1: (n)
jacob = (((inv(diagonalp)*-1)*(ti+ts))*(x))+(inv(diagonalp)*b);
format short;
x = jacob;
disp([i]);
x
end
 