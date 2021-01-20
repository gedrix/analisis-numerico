
function [x,y] = MetodoRunge(f,a,b,n,yIni)
    incremento = (b-a)/n;
    x = a:incremento:b;
    y(1,:) = yIni;
    for g=1:1:(n)
         aux= feval(f,x(g),y(g,:))';
         aux1= feval(f,x(g) + (incremento/2),(y(g,:) + ((incremento/2)*aux)))';
         aux2= feval(f,x(g) + (incremento/2),(y(g,:) + ((incremento/2)*aux1)))';
         aux3=feval(f,x(g+1),(y(g,:) + (incremento * aux2)))';
         y(g+1,:)=y(g,:)+ (incremento/6)*(aux + (2*(aux1)) + (2*(aux2)) + aux3);
    end
end