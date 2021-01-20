
%metodo de Heun
%k1 = F(Xk,Yk)
%K2 = F(Xk+H/2,(Yk + h/2.K1))
%K3 = F(Xk+H/2,(Yk + H/2.K2))
%K4 = F(Xk+1,(Yk + HK3))
%Y(k+1) = Y(k) + H/2.(K(1),2K(2)+2k3+k4)
function [x,y] = MetodoRunge(f,a,b,n,yIni)
    incremento = (b-a)/n;
    x = a:incremento:b;
    y(1) = yIni;
    for g=1:1:(n)
         aux= feval(f,x(g),y(g));
         aux1= feval(f,x(g) + (incremento/2),(y(g) + ((incremento/2)*aux)));
         aux2= feval(f,x(g) + (incremento/2),(y(g) + ((incremento/2)*aux1)));
         aux3=feval(f,x(g+1),(y(g) + (incremento * aux2)));
         y(g+1)=y(g)+ (incremento/6)*(aux + (2*(aux1)) + (2*(aux2)) + aux3);
    end
end