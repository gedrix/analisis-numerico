clear; clc;
%format short;
%funcion es f, 0=a, 3=b, 10=n, [0,1,1]=y0 o Yin  0,3,10,[0,1,1,1]
%0,5,20,[0,1] [y(2); 442*cos(3*x) - 3*y(2)+ 10*y(1)]
[xe, ye] = MetodoEuler('funciones',0,5,20,[0,1]);
[xh, yh] = MetodoHeun('funciones',0,5,20,[0,1]);
[xr, yr] = MetodoRunge('funciones',0,5,20,[0,1]);
[xa, ya] = AdamMulton3pasos('funciones',0,5,20,[0,1]);
[xb, yb, d] = AdamBashforth3pasos('funciones',0,5,20,[0,1]);
[xks, yks] = rungekutaordenS('funciones',0,5,20,[0,1]);
resultados=table(xh(:),ye,yh,yr,ya,yb,yks);
resultados.Properties.VariableNames={'Valores_x' 'Resp_Euler' 'Resp_Heun' 'Runge_Kutta' 'Adams_Moulton' 'AdamBashforth' 'rungekutaordenS' }
disp(d)
% plot(xh,yh)
% hold on
% plot(xh,ye)
% hold on
% plot(xh,yr)
% hold off
% legend('yh','ye','yr')

%Para la función con Solución exacta dy = (1 - (2*x)) * y;
% for i=1:1:length(xh)
%     solE(i) = exp((1/4)-power((1/2 - xh(i)),2)); 
% end
% resultados=table(xh(:),ye(:),yh(:),yr(:),solE(:));
% resultados.Properties.VariableNames={'Valores_x' 'Resp_Euler' 'Resp_Heun' 'Runge_Kutta' 'Valor_Exacto' }
% plot(xh,yh)
% hold on
% plot(xh,ye)
% hold on
% plot(xh,yr)
% hold on
% plot(xh,solE)
% hold off
% legend('yh','ye','yr','solE')