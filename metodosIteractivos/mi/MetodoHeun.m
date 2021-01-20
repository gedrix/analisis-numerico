function [x,y] = MetodoHeun(f,a,b,n,yIni)
    incremento = (b-a)/n;
    x = a:incremento:b;
    y = zeros(n+1,length(yIni));
    y(1,:) = yIni;
    for g=1:1:(n)
         aux = incremento * (feval(f,x(g),y(g,:)))';
         aux1 = incremento * (feval(f,x(g+1),(y(g,:) + aux)))';
         y(g+1,:)=y(g,:)+((aux + aux1)/2);
    end
end