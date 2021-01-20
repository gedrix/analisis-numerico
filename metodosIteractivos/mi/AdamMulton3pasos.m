%Adams Moulton de 3 pasos
function [x,y] = AdamMulton3pasos(f,a,b,n,yIni)
        %runge_kutta 437
    incremento = (b-a)/n;
    x = a:incremento:b;
    y(1,:) = yIni;
    for g=1:1:(n) %n
         k1= feval(f,x(g),y(g,:))';
         k2= feval(f,x(g) + (incremento/2),(y(g,:) + ((incremento/2)*k1)))';
         k3= feval(f,x(g) + (incremento/2),(y(g,:) + ((incremento/2)*k2)))';
         k4=feval(f,x(g+1),(y(g,:) + (incremento * k3)))';
         y(g+1,:)=y(g,:)+ (incremento/6)*(k1 + (2*(k2)) + (2*(k3)) + k4);   
         if(g > 2) 
             y(g+1,:)=y(g,:)+(incremento/24)*((feval(f,x(g-2),y(g-2,:))) - (5*(feval(f,x(g-1),y(g-1,:)))) +(19*(feval(f,x(g),y(g,:))))+ (9*(feval(f,x(g+1),y(g+1,:)))))';
         end    
    end
    
%     for g=3:1:(n)
%          aux= feval(f,x(g),y(g,:))';
%          aux1= feval(f,x(g) + (incremento/2),(y(g,:) + ((incremento/2)*aux)))';
%          aux2= feval(f,x(g) + (incremento/2),(y(g,:) + ((incremento/2)*aux1)))';
%          aux3=feval(f,x(g+1),(y(g,:) + (incremento * aux2)))';
%          y(g+1,:)=y(g,:)+ (incremento/6)*(aux + (2*(aux1)) + (2*(aux2)) + aux3);
%          
%          y(g+1,:)=y(g,:)+(incremento/24)*((feval(f,x(g-2),y(g-2,:))) - (5*(feval(f,x(g-1),y(g-1,:)))) +(19*(feval(f,x(g),y(g,:))))+ (9*(feval(f,x(g+1),y(g+1,:)))))';
%     end    
end