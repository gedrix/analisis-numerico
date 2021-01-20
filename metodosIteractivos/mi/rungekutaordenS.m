function [x,y] = rungekutaordenS(f,a,b,n,yIni)
        %runge_kutta 437
    incremento = (b-a)/n;
    x = a:incremento:b;
    y(1,:) = yIni;
    for g=1:1:(n) %n
         k1= feval(f,x(g),y(g,:))';
         %aux1= feval(f,x(g) + (incremento/2),(y(g,:) + ((incremento/2)*aux)))';
         k2= feval(f,x(g)+(incremento/4), (y(g,:)+((incremento/4)*k1)))';
         k3= feval(f,x(g)+(incremento/4),(y(g,:)+((incremento/8)*k1)+((incremento/8)*k2)))';
         k4= feval(f,x(g)+(incremento/2),(y(g,:)-((incremento/2)*k2)+(incremento*k3)))';  
         k5= feval(f,x(g)+((3/4)*incremento),(y(g,:)+((3/16)*k1*incremento)+((9/16)*k4*incremento)))';  
         k6= feval(f,x(g)+incremento,(y(g,:)-((3/7)*k1*incremento)+((2/7)*k2*incremento)+((12/7)*k3*incremento)-((12/7)*k4*incremento)+((8/7)*k5*incremento)))';
        y(g+1,:)=y(g,:)+(incremento/90)*((7*k1)+(32*k3)+(12*k4)+(32*k5)+(7*k6));
    end