
%metodo de Runge-Kutta
%k1 = F(Xk,Yk)
%K2 = F(Xk+H/2,(Yk + h/2.K1))
%K3 = F(Xk+H/2,(Yk + H/2.K2))
%K4 = F(Xk+1,(Yk + HK3))
%Y(k+1) = Y(k) + H/2.(K(1),2K(2)+2k3+k4)
function [x,y] = AdanMulton3(f,a,b,n,yIni)
    incremento = (b-a)/n;
    x = a:incremento:b;
    y = zeros(n+1,length(yIni));
    y(1,:) = yIni;
    for g=1:1:n
        if g <= 2
             aux= feval(f,x(g),y(g,:))';
             aux1= feval(f,x(g) + (incremento/2),(y(g,:) + ((incremento/2)*aux)))';
             aux2= feval(f,x(g) + (incremento/2),(y(g,:) + ((incremento/2)*aux1)))';
             aux3=feval(f,x(g+1),(y(g,:) + (incremento * aux2)))';
             y(g+1,:)=y(g,:)+ (incremento/6)*(aux + (2*(aux1)) + (2*(aux2)) + aux3);
        else
            aux= feval(f,x(g),y(g,:))';
             aux1= feval(f,x(g) + (incremento/2),(y(g,:) + ((incremento/2)*aux)))';
             aux2= feval(f,x(g) + (incremento/2),(y(g,:) + ((incremento/2)*aux1)))';
             aux3=feval(f,x(g+1),(y(g,:) + (incremento * aux2)))';
             y(g+1,:)=y(g,:)+ (incremento/6)*(aux + (2*(aux1)) + (2*(aux2)) + aux3);
             %y(g+1,:)=y(g,:)+ ((incremento/24)*(feval(f,x(g-2),y(g-2,:))-5*(feval(f,x(g-1),y(g-1,:)))+19*(feval(f,x(g),y(g,:)))+9*(feval(f,x(g+1),y(g+1,:))))');
             
            aux4 = feval(f,x(g-2),(y(g-2,:)))';
            aux5 = feval(f,x(g-1),(y(g-1,:)))';
            aux6 = feval(f,x(g),(y(g,:)))';
            aux7 = feval(f,x(g+1),(y(g+1,:)))';
            y(g+1,:)=y(g,:)+ (incremento/24)*((aux4) - (5*(aux5)) + (19*(aux6)) + (9*(aux7)));
        end
    end
end