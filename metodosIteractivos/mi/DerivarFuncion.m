% DERIVAR
% function [y] = DerivarFuncion(reemplaza)
%     syms x
%     
%     % Función
%     %f = ((4*x^2) + (3*x^3));
%         f= 442*cos(3*x);
%     % derivacion normal
%     y1 = diff(f);
%     disp(y1);
%     
%     % reemplazar el x en el punto obtenido y calcular
%     y = subs(y1, x, reemplaza);
% end

%DERIVAR
function [dy] = DerivarFuncion(x0, der)
syms x;
y=442*cos(3*x);
for i=1:1:der
    y1=diff(y);
    y = y1;
end
% x2=5;
%dy=subs(y,x,x0);
FUN = matlabFunction(y); 
dy = feval(FUN, x0);   
end