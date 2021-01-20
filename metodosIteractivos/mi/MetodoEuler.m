function [x,y] =MetodoEuler(f,a,b,n,y0)
    h = (b -a)/n;
    x = a:h:b;
    %y(1) = y0;
    y =zeros(n+1,length(y0));
    y(1,:)=y0;
    for i=1:n
        y(i+1,:)=y(i,:)+ (h* (feval(f,x(i),y(i,:))))';

    end


end