clear; clc;

iteraciones = input('Ingrese numero de Iteraciones: ');

matriz = [10  -1   2 0;-1 11  -1 3;2 -1  10  -1;0    3   -1  8];
vectorT = [6;25;-11;15];
vectorX = [0;0;0;0];
diagonalp = diag(diag(matriz));
ti = tril(matriz,-1);
ts = triu(matriz,+1);
for i=1:1:(iteraciones)
    mJacob = ((-1*(inv(diagonalp)))*((ti+ts)* vectorX)) + ((inv(diagonalp)) * vectorT);
    vectorX = mJacob;
    
    disp(i);
    disp(vectorX)
end