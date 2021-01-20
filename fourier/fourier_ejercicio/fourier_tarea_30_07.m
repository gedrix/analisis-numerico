clear; clc;
N=21; %numero de terminos de la serie de fourier
x = -pi:0.01:pi;  %dominio donde se va a graficar
f = x;
%x =  0:0.001:2*pi;
%f = (x>=0)+ (x>=pi).*-2;
A_0 = 0; %coeficiente de fourier
sum = A_0; 

for n=1:1:N
    A_n =0;
    B_n= 2 * ((-1)^(n+1))/n;
    % B_n = (2/(n*pi)) * (1-(-1)^n);
    sum =sum + A_n* cos(n*x) + B_n * sin(n*x);
   
end

plot(x, f)
hold on
plot(x, sum, 'red')