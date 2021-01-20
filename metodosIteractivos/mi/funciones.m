
function [dy] = funciones(x, y)
  %y1' = y2
  % y2' = y3
  %y3'= 2*t -2*y3 +y2-3*y1
  %dy = [y(2);y(3);2*x-2*y(3)+y(2)-3*y(1)];
  
  
  %y1' = y2
  % y2' = y3
  %y3' = y4
  %y4' = x - 3*y2 - y(1);
%  dy = [y(2);y(3);y(4); x - 3*y(2)- y(1)];

  dy = [y(2); 442*cos(3*x) - 3*y(2)+ 10*y(1)];
  %  dy = y-x^2+1;
end
