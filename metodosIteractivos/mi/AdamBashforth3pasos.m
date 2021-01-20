function [x,y,d] = AdamBashforth3pasos(f,a,b,n,yIni)
        %runge_kutta 437
    incremento = (b-a)/n;
    x = a:incremento:b;
    y(1,:) = yIni;
    for g=1:1:(n) %n
         aux= feval(f,x(g),y(g,:))';
         aux1= feval(f,x(g) + (incremento/2),(y(g,:) + ((incremento/2)*aux)))';
         aux2= feval(f,x(g) + (incremento/2),(y(g,:) + ((incremento/2)*aux1)))';
         aux3=feval(f,x(g+1),(y(g,:) + (incremento * aux2)))';
         y(g+1,:)=y(g,:)+ (incremento/6)*(aux + (2*(aux1)) + (2*(aux2)) + aux3);   
         if(g > 3) 
             auxB1=(feval(f,x(g), y(g,:)))' ;
             auxB2=(feval(f,x(g-1), y(g-1,:)))';
             auxB3=(feval(f,x(g-2), y(g-2,:)))';
             auxB4=(feval(f,x(g-3), y(g-3,:)))';
             %bas
             y(g+1,:)=y(g,:)+(incremento/24)* ((55*auxB1)-(59*auxB2)+(37*auxB3)-(9*auxB4));
             
             %multon
             y(g+1,:)=y(g,:)+(incremento/24)*((feval(f,x(g-2),y(g-2,:))) - (5*(feval(f,x(g-1),y(g-1,:)))) +(19*(feval(f,x(g),y(g,:))))+ (9*(feval(f,x(g+1),y(g+1,:)))))';
         end 
    end
   % f = (442*cos(3*x));
    %d = feval('DerivarFuncion',y(n),4);
    d= y(21,:);
end